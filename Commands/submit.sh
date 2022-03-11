#!/bin/bash
name=$1
if [[ -n "$name" ]]; then
	contest_name=""
	if [ ! -e "/home/shivang/Projects/C++/Samples/contest_name.txt" ]; then
		echo "Contest name unknown, please enter contest id"
		read contest_name
	else
		while read -r line; do
			contest_name="$line"
		done < "/home/shivang/Projects/C++/Samples/contest_name.txt"
    fi
	cd "/home/shivang/Projects/C++/Contest"
	/home/shivang/Projects/Commands/cf submit -f "$name".cpp "$contest_name$name"
else
    echo "No file provided"
fi
echo "
------------------
(program exited with code: $?)
Press return to continue"
read line
