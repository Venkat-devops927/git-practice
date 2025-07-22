#!/bin/bash/

USERID=$(id -u)
#echo "user id is :$USERID"


if [ $USERID -ne 0 ]
then
    echo "please run this script with root previlizes"
    exit 1

fi

dnf list installed git
 
if [ $? -ne 0 ]
then  echo "git is not installed going to install it"
    dnf install git -y
else 
    echo "git is already installed ,nothing to do it"
fi


dnf list insatlled nginx

if [ $? -ne 0 ]
then 
    echo "nginx is not installed , going to install it"
    dnf install nginx -y
else
    echo "nginx is already installed,nothing to do it"
fi