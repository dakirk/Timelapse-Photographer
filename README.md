This is a fork of the video streaming example daspinola/video-stream-sample, which adds automatic timelapse generation via bash scripts and cronjobs.

# Install


- `git clone` to /home/pi
- `crontab -e` and add the following lines:
```
0 7-17 * * * /home/pi/Timelapse-Photographer/bash-scripts/take-photo.sh >>/tmp/timelapse.log 2>&1
0 18 * * *   /home/pi/Timelapse-Photographer/bash-scripts/make-video.sh >>/tmp/timelapse.log 2>&1
```
- `npm install`
- `npm start`
- open browser in `localhost:3000`

To run in the background instead:
- `sudo npm install -g pm2`
- `pm2 start server.js -l /tmp` (I have tmp set up as a ramdisk, to reduce SD card usage)
