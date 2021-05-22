#!/bin/bash
touch nohup.out
nohup google-chrome https://discord.com/channels/@me &
disown
rm nohup.out
exit
