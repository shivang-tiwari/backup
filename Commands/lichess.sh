#!/bin/bash
nohup google-chrome https://www.lichess.org > /dev/null 2>&1&
disown
exit
