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
    read -p "coutput m4a name [${TODAY}.m4a]: " outname
    if [ "$outname" == "" ]; then
	outname=${TODAY}.m4a
    fi
    ffmpeg -i ./temp.wav ./$outname	
fi
