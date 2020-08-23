#!/bin/bash

# Generate filename from date and time
imgnames=`date +"/home/pi/Timelapse-Photographer/timelapse-photos/%Y_%m_%d-photos/*.jpg"`
vidname=`date +"/home/pi/Timelapse-Photographer/timelapse-videos/%Y_%m_%d-video.mp4"`

# echo "$imgnames"
# echo $vidname

ffmpeg \
	-framerate 24 \
	-pattern_type glob \
	-i "$imgnames" \
	-c:v h264_omx \
	-b:v 5000k \
	-y \
	"$vidname"
