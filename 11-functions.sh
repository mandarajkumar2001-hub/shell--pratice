#!/bin/bash
USERID=$(id -u)

if [ $USERID - ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
else 
    echo "You are running with root access"
fi

VALIDATE(){
    if [ $1 -eq 0]
    then 
       echo "Installing $2 is ... SUCCESS"
    else
       echo  "Installing $2 is ... FAILURE"
       exit 1
    fi
}

dnf list installed mysql

if [ $? -ne o ]
then 
   echo "MySQL is not installed... going to install it"
   dnf install mysql -y
   VALIDATE $? "MYSQL"
else 
    echo "MySQL is already installed...Nothing to do"
fi