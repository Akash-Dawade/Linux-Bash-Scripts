#!/bin/bash

host="localhost"
ports=( 22 80 443 8080 )

echo "checking ports on $host"
echo ""
for port in ${ports[@]};do
	if nc -zv $host $port -w 2  2>&1 | grep -q "succcessded"; then
		echo " port $port is open"
	else
		echo " port $port is close"
	fi
done	
