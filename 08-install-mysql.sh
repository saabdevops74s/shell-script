#!/bin/bash

# our program goal is to install mysql

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: Please run this script with root access"
    exit 1
# else
#     echo "Info: You are root user"
fi

# it is our responsibility again to check installation is success or not
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of Mysql is Failure"   
    exit 1 
else
    echo "Installation of mysql is Success"
fi  

yum install postfix -y

if [ $? -ne 0 ]
then
    echo "Installation of Mysql is Failure"   
    exit 1 
else
    echo "Installation of mysql is Success"
fi 