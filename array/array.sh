#!/bin/bash 

ARRAY=($(ls *.txt))
COUNT=0
echo -e "FILENAME \t WRITEABLE"

for file in "${ARRAY[@]}"
do 
   echo -n $FILE
   echo -n "[${#ARRAY[$COUNT]}]"
   if [ -w "$FILE" ]; then 
	echo -e "\t YES"
   else 
        echo -e "\t NO"
   fi 

   let COUNT++
done 


