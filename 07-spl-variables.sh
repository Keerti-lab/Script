#!/bin/bash

echo "ALL Variables: $@"
echo "Number of variables passed: $#"
echo "Script  Name: $0"
echo "Current working directory: $PWD"
echo "Home of Current user: $HOME"
echo "Which user is running the script: $USER"
echo "Host name of the current server: $HOSTNAME"
echo "Process id of the current shell script: $$"
sleep 20
echo "Process id of last background command : $!"