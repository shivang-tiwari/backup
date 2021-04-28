#!/bin/bash
contestCode=$1
/home/shivang/Projects/Commands/cf race $1
cd $HOME
rm -r /home/shivang/Projects/C++/Contest
rm -r /home/shivang/Projects/C++/Samples
mkdir /home/shivang/Projects/C++/Contest
mkdir /home/shivang/Projects/C++/Samples
/home/shivang/Projects/Commands/codeforces_parse.sh
nohup geany &
disown
exit
