#!/bin/bash


SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if $3 is empty then defult is 14 days
R="\e[31m" 
G="\e[32m"
N="\e[0m"
Y="\e[33m"

# check the source and des dir  are provided

USAGE(){
    echo -e  "$R USAGE:: $N sh 12.backup.sh <source> <dest> <days> #days optional"


if [ $# -lt 2 ]
then
    USAGE
fi
