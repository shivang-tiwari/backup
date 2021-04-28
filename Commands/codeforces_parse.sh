#!/bin/bash
cd $HOME
cd ./cf/contest/
cd $(ls -d */|head -n 1)
for problem in * ; do
	cd "$problem"
	mkdir "/home/shivang/Projects/C++/Samples/${problem^^}"
	for input in in* ; do
		echo $input
		cp $input /home/shivang/Projects/C++/Samples/${problem^^}/
		#cp "$input /home/shivang/Projects/C++/Contest/Samples/${problem^^}/"
	done
	cd -
done
cd $home
rm -r cf
