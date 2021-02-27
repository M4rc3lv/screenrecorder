#!/bin/bash
Uitvoer=/eenofanderpad/schermvideo.mp4

ScreenRes=$(xdpyinfo | awk '/dimensions:/ { print $2; exit }')
ffmpeg -video_size $ScreenRes -framerate 25 -f x11grab -i :0.0+0,0 $Uitvoer
