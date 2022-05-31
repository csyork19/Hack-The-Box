#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Please specify 2 line arguments."
    echo "./enumerate.sh <ip address> <output file name>"
    exit 1
fi

ip_address=$1
output_file=$2

## Perform nmap scan
printf "\n------ NMAP ------\n\n"
nmap -sV -sC -A $ip_address >> $output_file-nmap-results.txt

while read line
do
    if [[ $line == *open*]] && [[ $line == *http*]]
    then
    echo "Running dirb"
    echo "I will run dirb at a later time when I add it in...."
    fi
done < results
echo "NMAP scan is complete."