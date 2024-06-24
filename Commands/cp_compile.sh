#!/bin/bash
e=$1
f=$2
if grep "TODO" $f
then
	:
fi
g++ -std=c++17 -include stdc++.h -fsanitize=address -I /home/shivang/Projects/C++/Headers -Wshadow -Wall -o $e $f -O2 -Wno-unused-result -Wno-unused-variable -Wno-unused-but-set-variable -D shivang_ka_laptop
#g++ -std=c++17 -o $e $f -O2 -Wno-unused-result -Wno-unused-variable -Wno-unused-but-set-variable -D shivang_ka_laptop
