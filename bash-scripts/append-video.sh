#!/bin/bash

shopt -s nullglob

vidname=`date +"/home/pi/Timelapse-Photographer/timelapse-videos/%Y_%m_%d-video.mp4"`

ffmpeg \
	-i "$vidname" \
	-i "/home/pi/Timelapse-Photographer/timelapse-videos/full-timelapse.mp4" \
	-filter_complex "[0]setsar=1[latestvid];[1]setsar=1[totalvid];[totalvid][latestvid]concat=n=2:v=1:a=0" \
	-c:v h264_omx \
	-b:v 5000k \
	-y \
	/tmp/temp-concat-video.mp4

mv /tmp/temp-concat-video.mp4 /home/pi/Timelapse-Photographer/timelapse-videos/full-timelapse.mp4

