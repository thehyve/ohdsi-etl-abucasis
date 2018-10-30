

file = 'mapping_test.csv'

#def change_delim(file, in_delim, out_delim = ','):
#    #with in_file as open(file):
#        lines = in_file.readlines().strip('\n')


def remove_first_colum(file, out_file = 'test.csv', in_delim = ',', out_delim = ','):
    with in_file as open(file):
        lines = in_file.readlines().strip(in_delim)

    ofile = open(out_file, 'r')
    for line in lines:
        line.strip('\n')
