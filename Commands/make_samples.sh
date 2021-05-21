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
	touch "/home/shivang/Projects/C++/Samples/$name/in$numfiles.txt" &
	touch "/home/shivang/Projects/C++/Samples/Outputs/$name/ans$numfiles.txt" &
	geany "/home/shivang/Projects/C++/Samples/Outputs/$name/ans$numfiles.txt" &
	geany "/home/shivang/Projects/C++/Samples/$name/in$numfiles.txt" &
else
    echo "No file name provided"
fi

