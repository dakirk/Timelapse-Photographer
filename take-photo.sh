#!/bin/bash

# Set camera settings
v4l2-ctl --set-ctrl=exposure_auto=1
v4l2-ctl --set-ctrl=exposure_absolute=5

# Generate filename from date and time
filename=`date +"%Y_%m_%d-%H_%M_%S-photo.jpg"`

# Take photo
fswebcam -r 1280x1024 --no-banner "/home/pi/Timelapse-Photographer/timelapse-photos/$filename" -S 2
