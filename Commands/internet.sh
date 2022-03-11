#!/bin/bash
nohup google-chrome https://internet.iitb.ac.in/ > /dev/null 2>&1&
disown
sleep 5
xdotool getactivewindow windowmove 0 0
while :
do
	case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
	  [23]) break;;
	  5) echo "The web proxy won't let us through";;
	  *) echo "Working on it";;
	esac
	xdotool mousemove 1000 430
	xdotool click 1
	sleep 2
done
echo "Successful !!"
