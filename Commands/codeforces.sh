#!/bin/bash
contestCode=$1
cd $HOME
rm -r /home/shivang/Projects/C++/Contest
rm -r /home/shivang/Projects/C++/Samples
mkdir /home/shivang/Projects/C++/Contest
mkdir /home/shivang/Projects/C++/Samples
touch /home/shivang/Projects/C++/Samples/contest_name.txt
echo $contestCode > /home/shivang/Projects/C++/Samples/contest_name.txt
/home/shivang/Projects/Commands/cf race $1
/home/shivang/Projects/Commands/codeforces_parse.sh
nohup geany > /dev/null 2>&1&
disown
exit
