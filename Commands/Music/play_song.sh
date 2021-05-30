#!/bin/sh
song_name="'$*'"
len=${#song_name}
song_name="${song_name:1:(($len - 2))}"

if [[ "$song_name" == "-"* ]]; then
	if [[ "$song_name" == "-clear" ]]; then
		echo "Are you sure that you want to clear all songs saved till now ? (Y/N)"
		read inp
		if [[ "$inp" == "Y" ]]; then
			rm /home/shivang/Projects/Commands/Music/list_songs.txt
			touch /home/shivang/Projects/Commands/Music/list_songs.txt
		fi
	elif [[ "$song_name" == "-r" ]]; then
		cat /home/shivang/Projects/Commands/Music/list_songs.txt | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- > /home/shivang/Projects/Commands/Music/temp.txt
		rm /home/shivang/Projects/Commands/Music/list_songs.txt
		cp /home/shivang/Projects/Commands/Music/temp.txt /home/shivang/Projects/Commands/Music/list_songs.txt
		rm /home/shivang/Projects/Commands/Music/temp.txt
		song_name=$(shuf -n 1 /home/shivang/Projects/Commands/Music/list_songs.txt)
		tizonia --youtube-audio-search "$song_name"
	elif [[ "$song_name" == "-list" ]]; then
		cat /home/shivang/Projects/Commands/Music/list_songs.txt
	elif [[ "$song_name" == "-modify" ]]; then
		geany /home/shivang/Projects/Commands/Music/list_songs.txt &
	fi
elif [[ "$song_name" == *"youtube.com"* ]]; then
	tizonia --youtube-audio-stream $song_name
else
	song_name=${song_name//\/}
	if grep -q "$song_name" /home/shivang/Projects/Commands/Music/list_songs.txt; then
		:
	else
		echo "$song_name" >> /home/shivang/Projects/Commands/Music/list_songs.txt
	fi
	tizonia --youtube-audio-search "$song_name"
fi
