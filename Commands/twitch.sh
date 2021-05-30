#!/bin/bash
nohup google-chrome https://www.twitch.tv/directory > /dev/null 2>&1&
disown
exit
