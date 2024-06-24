#!/bin/bash
name=$1
if [[ -n "$name" ]]; then
	
	if grep -q "int32_t main()" "$1.cpp"; then
		mainchange=true
	else
		mainchange=false
	fi
	
	if grep -q "#define int long long int" "$1.cpp"; then
		overflow=true
	else
		overflow=false
	fi
	
	
	if [ "$mainchange" != "$overflow" ]; then
		echo "You have used int32_t but not #define int long long int. Fix it!!"
		read line
		exit
	fi

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
	if [[ $contest_name == a* ]]; then
		echo "Submitting Problem ${name} to ${contest_name}"
		name_sml="${name,,}"
		url="https://atcoder.jp/contests/${contest_name}/tasks/${contest_name}_${name_sml}"
		printf 'abca\nabcb\n' | oj submit $url "${name}.cpp"
		echo "Successfully Submitted"
	else
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
