#!/bin/bash
location=$1
mydir=$(pwd)
mydir="${mydir}/${location}"
if [[ -n "$location" ]]; then
	sed -i 's/int main()/int32_t main()/g' $location
	sed -i 's/\<ll\>/int/g' $location
	sed -i 's/#define ll long long int/#define int long long int/g' $location
else
	echo "No file provided"
fi
