#!/bin/bash 

# we can get the return value or exit status of a command using 'echo $?'

VAR=1

let VAR++
let VAR++
echo "var:$VAR"

let VAR++
let VAR++
echo "var:$VAR"
exit 1 

let VAR++
let VAR++
echo "var:$VAR"

# AFTER running script we can run below command to check the exit_status.
# STATUS=$?;echo "EXIT STATUS = $STATUS"
# we should always use the exit status from 0 to 255, if we use 256 for exit it returns to exit 0.
