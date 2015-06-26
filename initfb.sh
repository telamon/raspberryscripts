#!/bin/bash

DC=3
WR=2
CS=27
RST=17

DB00=9
DB01=11
DB02=18
DB03=23
DB04=24
DB05=25
DB06=8
DB07=7


# Free SPI pins configuration
#DC=3
#WR=2
#CS=4
#RST=7
#
#DB00=17
#DB01=27
#DB02=22
#DB03=18
#DB04=23
#DB05=24
#DB06=25
#DB07=8


ROTATE=90
PERF="speed=32000000  fps=10"
DEBUG=""
if [ -n $1 ]; then
	DEBUG="debug=$((1<<5))"
fi

sudo rmmod fb_ili9325 && sudo rmmod fbtft_device && sudo rmmod fbtft

sudo modprobe fbtft_device name=itdb28 rotate=3 gpios=dc:$DC,wr:$WR,cs:$CS,reset:$RST,db00:$DB00,db01:$DB01,db02:$DB02,db03:$DB03,db04:$DB04,db05:$DB05,db06:$DB06,db07:$DB07 $DEBUG
dmesg | tail -n 30
#con2fbmap 1 1
