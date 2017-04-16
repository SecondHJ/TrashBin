# coding:utf-8
from sys import argv
import getpass
from os import popen, path, mkdir

# create ~/trash dir if not exist
userHomePath = '/home/' + getpass.getuser()
hasTrash = path.exists(userHomePath + "/trash")
hasTrash
if not hasTrash:
    username = getpass.getuser()
    mkdir(userHomePath + "/trash")

# get delete file params
params = argv
for index in range(1, len(params)):
    param = params[index]
    # move file to ~/trash
    popen("mv " + param + " " + userHomePath + "/trash")



