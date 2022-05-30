#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Please specify 2 line arguments."
    echo "./enumerate.sh <ip address> <output file name>"
    exit 1
fi

ip_address=$1
output_file=$2

## Perform nmap scan
echo "Performing NMAP scan on $ip_address"
nmap -sV -sC -oN $output_file-nmap.txt $ip_address
echo "NMAP scan is complete."