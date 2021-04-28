#!/bin/bash
name=$1

if [[ -n "$name" ]]; then
	cd "/home/shivang/Projects/C++/Samples/$name/" 
	for input in *; do
		echo "For $input my output is"
		echo "==============================================="
		"/home/shivang/Projects/C++/Contest/$name" < "$input"
		echo "==============================================="
		#"/home/shivang/Projects/C++/Contest/$name" < "/home/shivang/Projects/C++/Contest/Samples/$name/in1.txt"
    done
    #"./%e" < "./Samples/%e/in1.txt"
else
    echo "No file provided"
fi
echo "The command exited with status $?. Press Enter to close the terminal."
read line
