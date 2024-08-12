#!/bin/bash

NUMBER=$1
NUMBER=$2
if [ $1 -gt $2 ]
then
    echo "Given number $1 is greater than $2"
else
    echo "Given number $1 is less than $2"
fi 