#!/bin/bash

RES="-fps 25"

if [ -n $1 ]; then
	echo "Streaming LQ"
	RES="-w 640 -h 360 -fps 12"
fi

raspivid -o - -t 0 -hf $RES |  cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264
