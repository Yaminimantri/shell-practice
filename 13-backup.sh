#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} # if not provided considered as 14 days

LOGS_FOLDER="/var/log/shell-roboshop"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/backup.log"

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

USAGE(){
    echo -e "$R USAGE:: sudo sh 24-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS>[optional, default 14 days] $N"
    exit 1
}

if [ $# -lt 2 ]; then
    USAGE
fi

if [ ! -d $SOURCE_DIR ]; then 
    echo " source $SOURCE_DIR does not exist"
    exit 1
fi

if [ ! -d $DEST_DIR ]; then 
    echo " source $DEST_DIR does not exist"
    exit 1
fi

### Find the files ####
FILES=$(find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS)


if [ ! -z "${FILES}" ]; then
    ### Start Archeiving ###
    echo "Files found: $FILES"
    TIMESTAMP=$(date +%F-%H-%M)
    ZIP_FILE_NAME="$DEST_DIR/app-logs-$TIMESTAMP.zip"
    echo "Zip file name: $ZIP_FILE_NAME"
    find $SOURCE_DIR -name "*.log" -type f -mtime +$DAYS | zip -@ -j "$ZIP_FILE_NAME"

    ### Check Archieval Success or not ###
    if [ -f $ZIP_FILE_NAME ]
    then
        echo -e "Archeival ... $G SUCCESS $N"

        ### Delete if success ###
        while IFS= read -r filepath
        do
            echo "Deleting the file: $filepath"
            rm -rf $filepath
            echo "Deleted the file: $filepath"
        done <<< $FILES
    else
        echo "Archieval ... $R FAILURE $N"
        exit 1
    fi
else
    echo -e "No files to archeive ... $Y SKIPPING $N"
fi