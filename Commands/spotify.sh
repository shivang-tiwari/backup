#!/bin/bash
nohup google-chrome https://open.spotify.com/ > /dev/null 2>&1&
disown
exit
