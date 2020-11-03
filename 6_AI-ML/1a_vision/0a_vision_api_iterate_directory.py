"""make a file that iterates """

import os

text_file = open("output.txt", "w")
path = os.getcwd() + "/data"

list_of_files = [name for name in os.listdir(path)]

for file_in_dir in list_of_files:
    text_file.write(path + "{} 5:10\n".format(file_in_dir))

text_file.close()