#!/bin/bash
cd $HOME

if [ -d "/home/shivang/cf/gym/" ]; then
	cd ./cf/gym/
else
	cd ./cf/contest/
fi

cd $(ls -d */|head -n 1)
mkdir "/home/shivang/Projects/C++/Samples/Outputs"
for problem in * ; do
	cd "$problem"
	mkdir "/home/shivang/Projects/C++/Samples/${problem^^}"
	touch "/home/shivang/Projects/C++/Samples/${problem^^}/output.txt"
	mkdir "/home/shivang/Projects/C++/Samples/Outputs/${problem^^}"
	for input in in* ; do
		cp $input /home/shivang/Projects/C++/Samples/${problem^^}/
	done
	for input in ans* ; do
		cp $input /home/shivang/Projects/C++/Samples/Outputs/${problem^^}/
	done
	cd -
done
cd $home
rm -r cf


cd /home/shivang/Projects/C++/Samples

for problem in */ ; do
	cd $problem
	
	for filename in *.txt ; do
/home/shivang/Projects/Commands/parse << EOF
/home/shivang/Projects/C++/Samples/$problem$filename
EOF
	done
	
	cd -
done
