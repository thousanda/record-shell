#!/bin/bash

# date command for mac
TODAY=$(date +"%Y%m%d")

echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "start"

# record by sox
rec ./temp.wav

# convert by ffmpeg
read -p "convert? y/[n]: " willConvert
if [ "$willConvert" = "y" ]; then
    ffmpeg -i ./temp.wav ./${TODAY}.m4a
fi
