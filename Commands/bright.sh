#!/bin/bash
state=$1
var=$(xrandr --verbose | grep -A 5 HDMI-1-0 | grep -i brightness)
var=${var#*:}

var=$(python3 - << EOF
x = ${var}
if(${state} == 1):
	x += 0.1
else:
	x -= 0.1
print(x)
EOF
)

xrandr --output HDMI-1-0 --brightness $var
