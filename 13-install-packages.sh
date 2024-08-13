#!/bin/bash

USERID=(id -u)
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e  "$2... $Y SUCCESS $N"
    fi
}




if [ $USERID -ne 0 ]
then
    echo "Please run using root acess"
    exit 1

else    
    echo "you are super user"
fi

for i in $@
do
    echo "All Packages: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ] 
    then
        echo -e "$i is already installed... $Y skipping $N"
    else
        echo dnf install $i -y  &>>$LOGFILE
        VALIDATE $? "Installation of $i"

    fi
done
    
    
