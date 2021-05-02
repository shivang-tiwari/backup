#!/bin/bash
name=$1

if [[ -n "$name" ]]; then
	if [ ! -d "/home/shivang/Projects/C++/Samples/$name/" ]; then
		mkdir "/home/shivang/Projects/C++/Samples/$name/"
	fi
	cd "/home/shivang/Projects/C++/Samples/$name/"
	numfiles=$(ls -1 | grep -v '/$' | wc -l)


	numfiles=$((numfiles+1))
	touch "/home/shivang/Projects/C++/Samples/$name/mytest$numfiles.txt" &
	geany "/home/shivang/Projects/C++/Samples/$name/mytest$numfiles.txt" &
else
    echo "No file name provided"
fi

