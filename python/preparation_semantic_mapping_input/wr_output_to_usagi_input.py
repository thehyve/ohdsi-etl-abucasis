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

import pandas as pd
import sys
import os

# dependency pip install xlrd

# global variables
wr_report = '../Documents/ABUCASIS/ScanReport_oct2018.xlsx'
out_dir = 'resources/mapping_frequencies/'
mapping_tables_dir = '../Documents/ABUCASIS/tba_tables_csv/'

def import_csv(filename, delim = ',', end_line = '\n'):

    return pd.read_csv(filename, sep = delim)

def read_excel_sheet(filename, path = ''):
    xls = pd.ExcelFile(path + filename)

    # Compute the number of sheets
    return xls

def available_mapping_tables(mapping_tables_dir, ini_file = 'tba_', end_file = '.csv'):
    """
    Retrieves the list of available mapping tables
    """
    return ['cod_' + x.split(end_file)[0].split(ini_file)[1] for x in os.listdir(mapping_tables_dir)]

def create_mapping_dictionary(column_name, mapping_tables_dir, ini_file = 'tba_', end_file = '.csv',
                              col_code = 0):
    """
    Creates a mapping dictionary for a specified column
    """
    d =  import_csv(mapping_tables_dir + ini_file + column_name + end_file)
    code_index = col_code
    if col_code == 0:
        translated_code_index = 1
    else:
        translated_code_index = 0
    description_translated_code_index = 2

    indices = d.iloc[:,code_index].values
    translated_values = d.iloc[:,translated_code_index].values
    description_values = d.iloc[:,description_translated_code_index].values

    return dict(zip([str(x) for x in indices], zip(translated_values, description_values)))

def split_white_rabbit(filename, path = '', n_sheet = 1):
    """
    Splits WR report in single files column/table combination
    """
    excel_object = read_excel_sheet(filename)

    # Retrieve list of sheets in WR report
    sheetnames = read_excel_sheet(wr_report).sheet_names

    for sheet_name in sheetnames:
        # Exclude overview table from WR report
        if sheet_name != 'Overview':
            # Read excel sheet
            temp_df = excel_object.parse(sheet_name)
            csv_file_from_sheet(temp_df, sheet_name)


def translate_values(values_list, col_name, mapping_tables_dir, col_code = 0, ini_col = 'cod_'):
    # Generate dictionary
    translator = create_mapping_dictionary(col_name.split(ini_col)[1], mapping_tables_dir, col_code = col_code)


    translated_list = []
    for x in values_list:
        if x in translator.keys():
            translated_list.append(translator[str(x)])
        else:
            translated_list.append(['Unknown', 'Unknown'])

    return [(str(x), str(y)) for x,y in translated_list]



def csv_file_from_sheet(sheet_df, sheet_name):
    """
    Splits a WR sheet from a specific file in multiple csv files for each column
    """
    # Retrieve list of available mapping columns
    avail_map = available_mapping_tables(mapping_tables_dir)

    for ix in range(0, len(sheet_df.columns), 2):
        col_name = sheet_df.columns[ix]
        subset_df = sheet_df.iloc[:,[ix,ix+1]].dropna(0)

        #print(avail_map)
        if col_name in avail_map:
            values_to_translate = subset_df.iloc[:,0].values.tolist()
            translated_values  = translate_values(values_to_translate, col_name, mapping_tables_dir)
            if [x[0] for x in translated_values].count('Unknown') == len(translated_values):
                #print(translated_values.count('Unknown'))
                n_translated_values = translate_values(values_to_translate, col_name, mapping_tables_dir, col_code = 1)
                #if l.count('Unknown') > 0:
                    #print(col_name)
            else:
                n_translated_values = translated_values


            if col_name == 'cod_variable_clinic':
                if sheet_name == 'tb_variables':
                    print(subset_df.iloc[:,0].values)
                    print(translate_values(values_to_translate, col_name, mapping_tables_dir, col_code = 0))
                    print(translated_values.count('Unknown'))
                    print(len(translated_values))
                    print(translate_values(values_to_translate, col_name, mapping_tables_dir, col_code = 1))
                    print(out_dir + sheet_name + '__' + col_name + '.csv')
            subset_df['codes'] = [x[0] for x in n_translated_values]
            subset_df['spanish description'] = [x[1] for x in n_translated_values]
            subset_df['english description'] = [''] * len(n_translated_values)
            subset_df['comment'] = [''] * len(n_translated_values)


            subset_df.to_csv(out_dir + sheet_name + '__' + col_name + '.csv', sep = ',',
                             encoding='utf-8', index = False)

        else:

            subset_df.to_csv(out_dir + sheet_name + '__' + col_name + '.csv', sep = ',',
                                          encoding='utf-8', index = False)

def main():

    split_white_rabbit(wr_report)

    #create_mapping_dictionary(available_mapping_tables(mapping_tables_dir)[0], mapping_tables_dir)
    #print(available_mapping_tables(mapping_tables_dir)[0])
    #print(mapping_tables_dir)
    #print(l)

if __name__ == "__main__":
    if sys.version_info > (3, 0):
        # Python 3, that's good
        sys.exit(main())
    else:
        # Python 2, not supported
        sys.exit('ERROR: Python version <2 NOT supported. Please use Python 3.x')


