#!/bin/bash
name=$1

if [[ -n "$name" ]]; then
	if [ ! -d "/home/shivang/Projects/C++/Samples/$name/" ]; then
		mkdir "/home/shivang/Projects/C++/Samples/$name/"
		mkdir "/home/shivang/Projects/C++/Samples/Outputs/$name/"
	fi
	cd "/home/shivang/Projects/C++/Samples/$name/"
	numfiles=$(ls -1 | grep -v '/$' | wc -l)
	numfiles=$((numfiles+1))
	touch "/home/shivang/Projects/C++/Samples/$name/mytest$numfiles.txt"
	echo "Enter the INPUT. Press Ctrl + D to finish. Input file is mytest$numfiles.txt"
	cat > "/home/shivang/Projects/C++/Samples/$name/mytest$numfiles.txt"
	
	echo "Do you want to make expected output file ? (Type any key and Enter for Yes)"
	read line
	if [[ $line == "" ]]; then
		:
	else
		touch "/home/shivang/Projects/C++/Samples/Outputs/$name/ansmytest$numfiles.txt"
		echo "Enter the EXPECTED OUTPUT. Press Ctrl + D to finish"
		cat > "/home/shivang/Projects/C++/Samples/Outputs/$name/ansmytest$numfiles.txt"
	
	fi
else
    echo "No file name provided"
fi

