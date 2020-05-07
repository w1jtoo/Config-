"""this script copy needed files to current path + value in dict """


import os
import  shutil 
from collections import namedtuple


PathWrapper = namedtuple('PathWrapper', 'copy_file to_dir')
files = [PathWrapper(".zshrc", "zsh"), PathWrapper(".vimrc", ".")]


current_dir = os.path.dirname(os.path.realpath(__file__))
home_dir = os.getenv("HOME")

for wrapper in files:
    shutil.copy2(str(os.path.join(home_dir, wrapper.copy_file)),\
         str(os.path.join(current_dir, wrapper.to_dir)))
