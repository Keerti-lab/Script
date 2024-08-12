#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
SCRIPTNAME=$(echo $0 | cut -d "." -f1)


VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2..Failure"
        exit 1
    fi

}

if [ $USERID -ne 0 ]
then
    echo "Please run script with root access"
    exit 1
else 
    echo "You are super user"
fi


dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installing Mysql"


dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"

