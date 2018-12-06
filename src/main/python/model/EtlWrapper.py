# Copyright 2018 The Hyve
#
# Licensed under the GNU General Public License, version 3,
# or (at your option) any later version (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.gnu.org/licenses/
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# !/usr/bin/env python3
import csv
import os
import re
import time
from sqlalchemy import text


class EtlWrapper(object):
    """ This module coordinates the execution of the sql files
        If debug mode is on, the primary key constraints are applied before loading
        to get direct feedback if there are issues. This does make loading slower.
    """
    ROW_COUNT_FORMAT = '{:<30.30} {:>10}'

    def __init__(self, connection, source_schema, debug, skip_vocab, sql_dir):
        self.connection = connection
        self.source_schema = source_schema
        self.debug = debug
        self.do_skip_vocabulary = skip_vocab
        self.sql_dir = sql_dir

        self.n_queries_executed = 0
        self.n_queries_failed = 0
        self.total_rows_inserted = 0
        self.is_constraints_applied = False
        self.log_file = None
        self.t_start = None
        self.cwd = os.getcwd()

    def run(self):
        """Run ETL procedure"""
        raise NotImplementedError('Method is not implemented')

    def set_log_file(self, f):
        self.log_file = f

    def reset_summary_stats(self):
        self.n_queries_executed = 0
        self.n_queries_failed = 0
        self.total_rows_inserted = 0

    def log(self, message='', leading_newline=False, trailing_newline=True):
        """Write to standard output and the log file (if set)"""
        message = '\n' + message if leading_newline else message
        end = '\n' if trailing_newline else ''

        print(message, end=end, flush=True)
        if self.log_file:
            self.log_to_file(message, end)

    def log_to_file(self, message, end='\n'):
        self.log_file.write(message)
        self.log_file.write(end)
        self.log_file.flush()

    def log_timestamp(self):
        self.log(time.strftime('%a %Y-%m-%d %H:%M:%S'), leading_newline=True)

    def start_timing(self):
        self.t_start = time.time()

    def log_runtime(self):
        """Prints total execution time on subsequent"""
        if self.t_start is None:
            self.log("To report runtime, please execute .start_timing() first")
            return

        total_seconds = time.time() - self.t_start
        m, s = divmod(total_seconds, 60)
        h, m = divmod(m, 60)
        self.log('Run time: {:>20.1f} seconds ({:>1.0f}:{:>02.0f}:{:>02.0f})'.format(total_seconds, h, m, s),
                 leading_newline=True)

    def log_summary(self):
        self.log("Queries successfully executed: %d" % self.n_queries_executed, leading_newline=True)
        self.log("Queries failed: %d" % self.n_queries_failed)
        self.log("Rows inserted: {:,}".format(self.total_rows_inserted))

    def execute_sql_file(self, filename, verbose=True):
        # Open and read the file as a single buffer
        file_path = os.path.join(self.sql_dir, filename)
        with open(file_path, 'r') as f:
            query = f.read().strip()

        if verbose:
            self.log_query_in_progress(filename)

        return self.execute_sql_query(query, verbose)

    def execute_sql_query(self, query, verbose=True):
        # Prepare parameterized sql
        query = query.replace('@absPath', self.cwd)
        query = query.replace("@source_schema", self.source_schema)

        t1 = time.time()
        try:
            statement = text(query).execution_options(autocommit=True)
            result = self.connection.execute(statement)
        except Exception as msg:
            error = msg.args[0].split('\n')[0]
            if verbose:
                self.log("###")  # newline before error
            self.log("Query failed:")
            self.log_to_file(query)
            self.log("\t%s" % error)
            self.n_queries_failed += 1
            return
        t2 = time.time()

        if verbose:
            # NOTE: if multiple queries, then rowcount only last number of inserted/updated rows
            self.log_query_completed(query, result.rowcount, t2 - t1)

        # Note: only tracks row count correctly if 1 insert per file and no update/delete scripts
        if result.rowcount > 0 and self.parse_query_type(query) in ['INTO', 'CREATE']:
            self.total_rows_inserted += result.rowcount

        self.n_queries_executed += 1
        return result

    def load_csv(self, source_file_path, target_table, target_schema=None, has_header=True):
        self.log_query_in_progress(os.path.basename(source_file_path))

        # Note: Postgres will do the data conversion work
        with open(source_file_path) as f_in:
            csv_reader = csv.reader(f_in)
            if has_header:
                next(csv_reader)

            sql_rows = []
            for row in csv_reader:
                sql_rows.append(','.join(["'{}'".format(x.replace("'", "''")) for x in row]))

        values = '),('.join(sql_rows)
        if target_schema:
            target = '%s.%s' % (target_schema, target_table)
        else:
            target = '%s' % target_table

        self.execute_sql_query('INSERT INTO {} VALUES ({})'.format(target, values), verbose=True)

    def log_query_in_progress(self, filename):
        basename = os.path.basename(filename)
        self.log("{:<30.30} => ".format(basename), trailing_newline=False)

    def log_query_completed(self, sql_query, row_count, execution_time=None):
        """ Create message on how many lines inserted into which table """
        if row_count >= 0:
            # NOTE: if multiple queries, then rowcount only last number of inserted/updated rows
            table_into = self.parse_target_table(sql_query)
            prefix = self.parse_query_type(sql_query)

            return self.log_table_completed(table_into, row_count, execution_time, prefix)

        return self.log_table_completed(None, row_count, execution_time)

    def log_table_completed(self, table_into, row_count, execution_time, prefix='INTO', show_count_per_record=False):
        if table_into:
            table_into_message = prefix + ' ' + table_into
        else:
            table_into_message = 'Nothing inserted'

        message = '{:<40.40} {:>9,} [{:>8.2f} s'.format(table_into_message, row_count, execution_time)

        if show_count_per_record and row_count > 0:
            message += '| {:>.1e} s/#]'.format(execution_time/row_count)
        else:
            message += ']'

        self.log(message)

    @staticmethod
    def parse_query_type(query):
        match = re.search(r'^\s*((?:INSERT )?INTO|CREATE TABLE|DELETE\s+FROM|UPDATE)\s+(.+?)\s',
                          query,
                          re.IGNORECASE | re.MULTILINE
                          )
        if match:
            statement = match.group(1).upper()
        else:
            return ''

        if 'INTO' in statement:
            return 'INTO'
        elif 'DELETE' in statement:
            return 'DELETE'
        elif 'CREATE' in statement:
            return 'CREATE'
        elif 'UPDATE' in statement:
            return 'UPDATE'
        else:
            return ''

    @staticmethod
    def parse_target_table(query):
        match = re.search(r'^\s*((?:INSERT )?INTO|CREATE TABLE|DELETE\s+FROM|UPDATE)\s+(.+?)\s',
                          query,
                          re.IGNORECASE | re.MULTILINE
                          )
        if match:
            return match.group(2)
        else:
            return '?'

    def log_tables_rowcounts(self, tables, do_log_total=True):
        """
        Writes the row count of all given source tables to the log.
        If do_log_total is set to True, it will write the sum of the row counts as well.
        Will ONLY write to file log, not to command line.
        :param tables: list of source table names
        :param do_log_total: boolean, default True
        """
        total = 0
        for t in tables:
            total += self.log_table_rowcount(t)

        if len(tables) > 1 and do_log_total:
            self.log_to_file('+' * (30 + 1 + 10))
            self.log_to_file(self.ROW_COUNT_FORMAT.format('TOTAL', total))

    def log_table_rowcount(self, table_name):
        """
        Writes the row count of given source table to the log.
        Will ONLY write to file log, not to command line.
        :param table_name: name of the source table
        :return: row count
        """
        try:
            count = self.connection.execute(
                'SELECT count(*) FROM %s.%s' % (self.source_schema, table_name)
            ).fetchone()[0]
        except Exception:
            self.log_to_file(self.ROW_COUNT_FORMAT.format(table_name, '-'))
            return 0
        self.log_to_file(self.ROW_COUNT_FORMAT.format(table_name, count))
        return count

    def query_to_dictionary(self, query_result):
        """
        Converts a SQL query from execute_sql_query to a python dictionary
        :param query_result: query object (sqlalchemy).
        :return query_dicts: list of dictionaries from the query. Each row from the query will be appended as a dict
        with keys = column names and values = column values
        """
        d, a = {}, []
        for rowproxy in query_result:
            # Iterate through the .items() (format: [(key0, value0), (key1, value1), etc...])
            for tup in rowproxy.items():
                d = {**d, **{tup[0]: tup[1]}}
            a.append(d)
        return a