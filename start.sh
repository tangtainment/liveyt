#!/bin/bash

while true
do
  ffmpeg -re -stream_loop -1 -i video.mp4 \
  -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
  -pix_fmt yuv420p -g 50 \
  -c:a aac -b:a 128k \
  -f flv rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY

  echo "Stream terputus. Restart 5 detik..."
  sleep 5
done
