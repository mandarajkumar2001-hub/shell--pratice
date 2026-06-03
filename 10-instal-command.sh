#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "ERROR: plesae run with root acces"
    exit 1
else
    echo "You running with root acces"

fi

dnf install mysql -y

if [ $? -eq 0 ]
then
    echo "instal mysql is ...... success"
else
    echo "instal mysql is ..... failure"
    exit 1

fi