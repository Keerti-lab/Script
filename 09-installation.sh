#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes.
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql is failed"
    exit 1
else 
     echo "Installation of mysql is successful"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "Installation of git is failed"
    exit 1
else 
     echo "Installation of gitis successful"
fi




echo "is script still proceeding?"
