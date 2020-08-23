This is a basic sample of how to do video streaming using Node.js and HTML5

# Install


- git clone to /home/pi
- crontab -e and add the following lines:
```
0 7-17 * * * /home/pi/Timelapse-Photographer/bash-scripts/take-photo.sh >/tmp/timelapse.log 2>&1
0 18 * * *   /home/pi/Timelapse-Photographer/bash-scripts/make-video.sh >/tmp/timelapse.log 2>&1
```
- npm install
- npm start
- open browser in `localhost:3000`
