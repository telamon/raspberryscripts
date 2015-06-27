#!/bin/bash
# This script starts capturing frames from an raspberry pi camera and
# makes it available as an rtp media stream on port 8554

RES="-fps 25"

if [ -n $1 ]; then
	echo "Streaming LQ"
	RES="-w 640 -h 360 -fps 12"
fi

raspivid -o - -t 0 -hf $RES |  cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264
