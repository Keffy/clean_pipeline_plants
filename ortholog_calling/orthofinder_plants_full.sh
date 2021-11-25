#!/bin/bash

### Run orthofinder with the plant species.

### Running only orthogroup calling / Diamond
### -og to stop after finding the groups (--only-groups)
### Used OrthoFinder version 2.5.2

#######
# Help
######

Help()
{
    #Displays help for this script.
    echo "This script takes a directory of protein fasta files and runs OrthoFinder until the -og --only-groups flag. Orthofinder will only find the orthogroups."
    echo
    echo "Options:"
    echo
    echo "-h      Print this help text."
    echo "-i      Give Orthofinder the directory of the protein fasta files."
    echo "-o      Directory for output."
    echo
}

if [ $# -eq 0 ]
    then 
        Help
else
    cd $1
    gunzip *.gz
    orthofinder -o $2 -t 24 -S diamond -og -f $1
fi
