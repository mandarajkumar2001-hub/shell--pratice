#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo"ERROR:: Please run this script with root access"
    Exit 1
else
     echo "You are running with root access"
fi

dnf list installed mysl
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf isntal mysql -y
    if [ $? -eq 0 ]
    then
       echo echo "MySQL is not installed... going to install it"
    else
       echo "Installing MySQL is ... FAILURE"
       exit 1
fi
else
    echo " echo "MySQL is already installed...Nothing to do"

fi
