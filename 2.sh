#!/bin/bash

#creating multiple folders using loop 

for ((i=1; i<3; i++))
do
	if  [[ -d "demo$i" ]];
	then
		echo "Directories Already Exists"
		exit 1
	fi
done

for((i=1; i<3; i++))
do
	mkdir "demo$i"
	echo "Directories demo$i created"
done


