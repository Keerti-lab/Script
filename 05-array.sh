#!/bin/bash

MOVIES=("RRR" "DJ" "Hello")

#List always starts with 0.
#size of above array is 3.
#index are 0,1,2

echo "First Movie is: ${MOVIES[0]}"
echo "First Movie is: ${MOVIES[@]}"
