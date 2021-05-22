#!/bin/bash
touch nohup.out
nohup google-chrome https://web.whatsapp.com/ &
disown
rm nohup.out
exit
