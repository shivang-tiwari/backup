#!/bin/bash
contestCode=$1

rm -r /home/shivang/Projects/C++/Contest
rm -r /home/shivang/Projects/C++/Samples
mkdir /home/shivang/Projects/C++/Contest
mkdir /home/shivang/Projects/C++/Samples
mkdir /home/shivang/Projects/C++/Samples/Outputs

cd /home/shivang/Projects/C++/Samples
alpha="abcdefghijklmnopqrstuvwxyz"
alpha_cap="ABCDEFGHIJKLMNOPQRSTUVWXYZ"


for (( i=0; i<${#alpha}; i++ )); do
	url="https://atcoder.jp/contests/${contestCode}/tasks/${contestCode}_${alpha:$i:1}"
	status=$(curl -s --head -w %{http_code} ${url} -o /dev/null)
	if [ "$status" = "200" ]; then
		name="${alpha_cap:$i:1}"
		echo "Parsing $name"
		mkdir $name
		mkdir "Outputs/$name"
		touch "$name/output.txt"
		num=1
		oj download $url > /dev/null 2>&1
		for input in test/*.in ; do
			cp $input "./${name}/in${num}.txt"
			num=$((num+1))
		done
		num=1
		for input in test/*.out ; do
			cp $input "Outputs/${name}/ans${num}.txt"
			num=$((num+1))
		done
		rm -rf ./test
		else
			break
	fi
done
touch contest_name.txt
echo $contestCode > /home/shivang/Projects/C++/Samples/contest_name.txt
google-chrome "https://atcoder.jp/contests/${contestCode}/tasks" & > /dev/null 2>&1
geany &
disown
exit
