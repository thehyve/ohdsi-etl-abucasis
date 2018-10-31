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
import os
import sys
import time
from src.main.python.AbucasisWrapper import AbucasisWrapper
from sqlalchemy import create_engine
import click

__version__ = '0.1.0'


@click.command()
@click.option('--hostname', '-h', default='localhost', metavar='<host>',
              help='Database server host or socket directory (localhost)')
@click.option('--port', '-p', default='5432', metavar='<port>',
              help='Database server port (5432)')
@click.option('--database', '-d', default='etl1', metavar='<database>',
              help='Database name to connect to (etl1)')
@click.option('--username', '-u', default='postgres', metavar='<username>',
              help='Database user name (postgres)')
@click.option('--password', '-w', default='', metavar='<pw>',
              help='User password ()')
@click.option('--source', '-s', default='native', metavar='<schema_name>',
              help='Source schema containing the source tables (native)')
@click.option('--debug', default=False, metavar='<debug_mode>', is_flag=True,
              help='In debug mode, the table constraints are applied before loading')
@click.option('--skipvocab', default=False, metavar='<skip_vocab>', is_flag=True,
              help='When provided, the loading and pre-processing '
                   'of source to target vocabularies is skipped')
@click.option('--logfile', '-l', default=None, metavar='<file_name>',
              help='Filename of the file where the log will be written (logs/log_<timestamp>.txt)')
def main(database, username, password, hostname, port, source, debug, skipvocab, logfile):
    if not os.path.exists('./logs'):
        os.makedirs('./logs')

    if not logfile:
        logfile = os.path.join('./logs', '{}_{}.txt'.format(__version__, time.strftime('%Y-%m-%dT%H%M%S')))

    # Connect to database
    eng = create_engine('postgresql://%s:%s@%s:%s/%s' % (username, password, hostname, port, database))

    with eng.connect() as connection, open(logfile, 'w') as f_log:
        etl = AbucasisWrapper(connection, source, debug, skipvocab, sql_dir='./src/main/sql')
        etl.set_log_file(f_log)
        etl.log("ETL version " + __version__)
        etl.run()


if __name__ == "__main__":
    sys.exit(main())
