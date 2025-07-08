#!/bin/bash


declare -i curBrightness
curBrightness=$(<"$1")

echo "brightness before modification is: $curBrightness"
if [ $2 = 'down' ]; then
    curBrightness=$(($curBrightness - $3))
elif [ $2 = 'up' ]; then
    curBrightness=$(($curBrightness + $3))
    # if parsed incorrectly, will assume it is setting
else
    echo "setting brightness to: $curBrightness / 255"
fi
if [ $curBrightness -ge 255 ]; then
    curBrightness=255
elif [ $curBrightness -le 10 ]; then
    curBrightness=10
fi

> $1
echo "$curBrightness" > $1
#echo "If below command fails, try running script with sudo perms. brightness is: $curBrightness"

brightnessctl s $curBrightness
