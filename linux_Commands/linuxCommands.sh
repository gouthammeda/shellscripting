files --location /etc/ --extension conf 
files --location /etc/ --extension conf --stats

code hello.txt
spaces hello.txt
# fixes the leading and trailing spaces in the file.
spaces hello.txt --fix 

#prints the location of the current directory we are in 
pwd 

#changes to the required path or directory
cd /Users/gouthamkumarreddymeda/Documents/shellscripting

# we can just give relative path if we are in the home directory.
cd /Documents/shellscripting

#takes to home directory
cd ~  

#takes to previous working directory before using cd ~ command.
cd - 

#takes to one directory before the current one 
cd ..

#lists all the files in the current working directory.
ls

#lists all the files with more details.
ls -l 

#lists all the hidden files in the directory.
ls -al 

# manual for listing the options in ls
man ls 

# sorts all the files in the descending order of time.
ls -lt 

# lists all the files inside the /Users/gouthamkumarreddymeda folder.
ls -l /Users/gouthamkumarreddymeda

#creates a new directory test1
mkdir test1

#creates a directory recursively first with test2 and test1.
mkdir -p test2/test1 

#lists all the files inside directory test2 
ls -l test2

# creates file with name hello.txt
touch hello.txt

# we can create multiple files using touch command 
touch one.txt two.txt three.pdf

# displays the current system date.
date 

#takes hours from date and print it on console
date +%H

# prints hours, minutes and seconds.
date +%H%M%S

# prints hours, minutes and seconds.
date +%H:%M:%S

#prints hours,minutes and seconds.
date +%H-%M-%S

#prints the current week number in the year.
date +%V

# displays content of a file.
cat /Users/gouthamkumarreddymeda/Documents/shellscripting/sample.txt

# displays the content with line numbers.
cat -n /Users/gouthamkumarreddymeda/Documents/shellscripting/sample.txt

# removes the file with the file name.
rm sample.txt

# removes the folder with the given name.
rmdir deleteme

# removes the folder with the given name.
rm -r deleteme

# copies file from one directory to another directory.
cp dir1/sample.txt dir2

# copies file to current working directory 
cp dir1/sample.txt .

# moves file from one directory to another directory
mv dir1/sample.txt dir2

# moves file from one location to another directory which is one level up.
mv sample.txt ../dir1

# wc gives number of new lines, words and size of the file.
wc article.txt
wc -l article.txt # gives count of lines in the files.

# output of cat is given to wc command which gets number of lines in file 
cat article.txt | wc -l #(4)

# searches for the word second in article.txt file and returns the matched line.
grep Second article.txt

# displays the content of file and output is used to search for the word Second in file
cat article.txt | grep Second

# we can search for particular word in the /etc/passwd file
cat /etc/passwd | grep root

# returns the count of word in the file.
grep -o root /etc/passwd

# returns 3 as number of lines that contains the matching word root is 3.
grep -c root /etc/passwd

# it returns all the non-matching words in the file without # symbol.
grep -v "#" config

# try running these commands online on bash shell and see if it works.
# prints if there are any numbers in the file.
grep [[:digit:]] config

# prints 2 lines below the matching number 
grep -A 2 [[:digit:]] config

# prints 2 lines above the matching number.
grep -B 2 [[:digit]] config

# finds the file with name config under the given directory  
find /Users/gouthamkumarreddymeda/Documents/ -name config

# we can search all the files under the given directory.
find /Users/gouthamkumarreddymeda/Documents/ -name config -type f

# we can search for directory with name config from below given directory.
find /Users/gouthamkumarreddymeda/Documents/ -name config -type d

# lists all the files ending with name '.sh' under the given directory. 
find /Users/gouthamkumarreddymeda/Documents -name "*.sh"

# searches for file with name ending *.sh just 1 level under the given directory.
find /Users/gouthamkumarreddymeda/Documents -maxdepth 1 -name '*.sh' -type f

# find files that are modified more than 50 days ago 
find /Users/gouthamkumarreddymeda/Documents -maxdepth 1 -name '*.sh' -type f -mtime +50

# find files that are modified less than 50 days ago.
find /Users/gouthamkumarreddymeda/Documents -maxdepth 1 -name '*.sh' -type f -mtime +50

# find files that are accessed less than 3 days ago.
find /Users/gouthamkumarreddymeda/Documents -maxdepth 2 -name '*.sh' -type f -atime -3

# finds all the files with size greater than 5 MB under the home directory.
find ~ -type f -size +5M