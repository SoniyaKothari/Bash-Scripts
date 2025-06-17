#!/bin/bash

# Create N number of directories by passing arguments: prefix, start, and end

for (( i=$2; i<=$3; i++ ))
do
	mkdir "$1$i"
done

# execute ./3.sh Day 1 10 

