#!/bin/bash

ffmpeg -framerate 24 -pattern_type glob -i 'timelapse-photos/*.jpg' -c:v h264_omx -b:v 5000k -y timelapse-video.mp4
