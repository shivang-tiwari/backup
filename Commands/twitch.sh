#!/bin/bash
touch nohup.out
nohup google-chrome https://www.twitch.tv/directory &
disown
rm nohup.out
exit
