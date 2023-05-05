#!/bin/bash
# in the output we see the backspace character is missing.
# and "'" is given as error without double quotes around echo.
COUNT=5
#COUNT= 6
echo "count=$COUNT"
echo We have $COUNT oranges 
MESSAGE="hello buddy"
echo "message: $MESSAGE"
#echo hello \ - just want to display backslash 
#echo It's a good day to learn
