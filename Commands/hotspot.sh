#!/bin/bash
case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
  [23]) :;;
  5) echo "The web proxy won't let us through";;
  *) /home/shivang/Projects/Commands/internet.sh;;
esac
nmcli connection up Hotspot
xset dpms force off
