#!/bin/bash

### Script takes directory for database / data.

if [ $# -eq 0 ]
    then
        echo "Error: Please input the directory path for your database."
elif [ $# -eq 1 ]
    then
        if [ ! -d "$1" ]
            then
                mkdir $1
        fi
        cd $1  ### cd to given directory
        touch plantDB.db ### create database file
else
    echo "You have entered too many arguments. This script only takes the directory for the database."
fi