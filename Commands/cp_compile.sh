#!/bin/bash
e=$1
f=$2
if grep "TODO" $f
then
	:
fi
g++ -std=c++17 -include stdc++.h -I /home/shivang/Projects/C++/Headers -Wshadow -Wall -o $e $f -O2 -Wno-unused-result -D shivang_ka_laptop
