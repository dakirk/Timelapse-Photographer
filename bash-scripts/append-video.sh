#!/bin/bash

shopt -s nullglob

UNPROCESSED_IMAGES=new-photos/*.jpg

for f in $UNPROCESSED_IMAGES
do
	# Append a single jpg frame to the end of an mp4 video
	ffmpeg \
		-framerate 24 \
		-i "$f" \
		-i "timelapse-test-video.mp4" \
		-filter_complex "[0]setsar=1[im];[1]setsar=1[vid];[vid][im]concat=n=2:v=1:a=0" \
		-c:v h264_omx \
		-b:v 5000k \
		-y \
		temp-concat-video.mp4

	mv temp-concat-video.mp4 timelapse-test-video.mp4
	mv $f timelapse-photos/
done

