#!/bin/bash
nohup google-chrome https://youtube.com/ > /dev/null 2>&1&
disown
exit
