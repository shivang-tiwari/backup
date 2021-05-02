#!/bin/bash
name=$1

if [[ -n "$name" ]]; then
	cd "/home/shivang/Projects/C++/Samples/$name/" 
	for input in *; do
		echo "For $input my output is"
		echo "==============================================="
		"/home/shivang/Projects/C++/Contest/$name" < "$input"
		echo "==============================================="
    done
else
    echo "No file provided"
fi
echo "
------------------
(program exited with code: $?)
Press return to continue"
read line
