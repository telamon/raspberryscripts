#!/bin/bash

VO=""

if [ -n $1 ]; then
	echo "Setting output directly to frame buffer"
	VO="-vo fbdev2:/dev/fb1"
fi

raspivid -o - -t 0 -hf -w 320 -h 240 -fps 10 | mplayer -fs -zoom -framedrop -x 320 -y 240 -nosound $VO - 
