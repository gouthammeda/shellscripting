# script is a sequence of system commands pasted in a file.
#ls
#pwd
#date  
#now we can put below 3 commands in a script.

# to exit a file after making changes hit esc and :wq to write changes and quit.

#!/bin/bash 

ls 
pwd
date


#Run the script.
#./first_script.sh 
#/Users/gouthamkumarreddymeda/workspace/shellscripting/first_script.sh
# we can run the script from anywhere just by adding the path containing the script into PATH variable 

echo $PATH

#add file path to the path variable using export
#how to edit path variable.
export PATH=$PATH:$(pwd)
