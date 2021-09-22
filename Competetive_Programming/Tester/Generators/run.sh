#!/bin/bash
name=$1
cd /home/shivang/Projects/C++/Tools/Tester/Testcase_generator/
if [[ -n "$name" ]]; then
	if [ "$name" = "tree" ]; then
		"./tree_generator"
	fi
	if [ "$name" = "array" ]; then
		"./array_generator"
	fi
	if [ "$name" = "string" ]; then
		"./string_generator"
	fi
	geany 0_Test_case &
else
    echo "No test case type provided
Test case types are - 
1) tree 
2) array
3) string
"
fi
