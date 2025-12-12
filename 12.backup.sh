#!/bin/bash

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # if $3 is empty then default is 14 days

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

USAGE() {
    echo -e "${R}USAGE:${N} sh 12.backup.sh <source> <dest> <days>"
    echo -e "${Y}# 'days' is optional (default = 14 days)${N}"
}

# Check if source and destination directories are provided
if [ $# -lt 2 ]; then
    USAGE
    exit 1
fi
