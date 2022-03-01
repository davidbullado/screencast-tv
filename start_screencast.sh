#!/bin/bash
ffmpeg -video_size 832x576 -framerate 25 -f x11grab -i :0.0+0,100 -f alsa -i default -c:v libx264 -preset ultrafast -tune zerolatency -f mpegts udp://127.0.0.1:23000 &
hacktv -m l -f 663250000 -s 16000000 -g 30 --nonicam --interlace --nocolour udp://127.0.0.1:23000 &
wait

