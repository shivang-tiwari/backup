#!/bin/bash
name=$1


if [[ -n "$name" ]]; then
	"$name"
else
    echo "No file provided"
fi
#read line
echo "
------------------
(program exited with code: $?)
Press return to continue"
read line
