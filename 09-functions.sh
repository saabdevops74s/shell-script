#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "Installation....Failure"   
        exit 1 
    else
        echo "Installation....Success"
    fi  
}

if [ $USERID -ne 0 ]
then
    echo "Error: Please run this script with root access"
    exit 1
# else
#     echo "Info: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

VALIDATE $?

yum install postfix -y

VALIDATE $?