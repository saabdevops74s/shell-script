#!/bin/bash

# our program goal is to install mysql
USER=$(id -u)

if [ $USER -ne 0 ]
then
   echo "Error: Please run this script with root access"
else
   echo "Info: You are root user"
fi

yum install git -y