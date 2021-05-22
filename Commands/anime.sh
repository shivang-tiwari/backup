#!/bin/bash
touch nohup.out
nohup google-chrome https://animepahe.com/ &
disown
rm nohup.out
exit
