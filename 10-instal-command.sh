#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root success"
    exit 1
else
     echo "You are running with root success"
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MySqL is not installed... going to install it"
    dnf isntal mysql -y
    if [ $? -eq 0 ]
    then
       echo "Installing MySQL is ... SUCCESS"
    else
       echo "Installing MySL is ... FAILURE"
       exit 1
fi
else
    echo "MySqL is already installed...Nothing to do"

fi
