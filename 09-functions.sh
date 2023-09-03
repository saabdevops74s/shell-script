#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

# this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....Failure"   
        exit 1 
    else
        echo "$2....Success"
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

VALIDATE $? "Installing MYSQL"

yum install postfix -y

VALIDATE $? "Installing Postfix"