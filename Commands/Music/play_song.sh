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
		song_name=$(shuf -n 1 /home/shivang/Projects/Commands/Music/list_songs.txt)
		tizonia --youtube-audio-search "$song_name"
	fi
elif [[ "$song_name" == *"youtube.com"* ]]; then
	tizonia --youtube-audio-stream $song_name
else
	if grep -q "$song_name" /home/shivang/Projects/Commands/Music/list_songs.txt; then
		:
	else
		echo "$song_name" >> /home/shivang/Projects/Commands/Music/list_songs.txt
	fi
	tizonia --youtube-audio-search "$song_name"
fi
