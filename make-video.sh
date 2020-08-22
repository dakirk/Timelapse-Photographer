#!/bin/bash

time=${1:-12}

ffmpeg -framerate 24 -pattern_type glob -i "timelapse-photos/*-${time}_00*.jpg" -c:v h264_omx -b:v 5000k -y timelapse-video-${time}_00.mp4

