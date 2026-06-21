#!/bin/bash

threshold=80
usage=$(df -h |awk 'NR==2 {print $5}' | sed 's/%//')

echo "Disk usage: $usage%"

if [ $usage -gt $threshold ] ; then 
	echo "WARNING: disk usage exceeds $threshold%!"
else
	echo "Disk usage is okay"
fi

