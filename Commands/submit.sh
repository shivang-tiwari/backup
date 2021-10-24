#!/bin/bash
name=$1
if [[ -n "$name" ]]; then
	if [ ! -e "/home/shivang/Projects/C++/Samples/contest_name.txt" ]; then
		echo "Contest name unknown"
	else
		contest_name=""
		while read -r line; do
			contest_name="$line"
		done < "/home/shivang/Projects/C++/Samples/contest_name.txt"
		cd "/home/shivang/Projects/C++/Contest"
		/home/shivang/Projects/Commands/cf submit -f "$name".cpp "$contest_name$name"
    fi
else
    echo "No file provided"
fi
echo "
------------------
(program exited with code: $?)
Press return to continue"
read line
