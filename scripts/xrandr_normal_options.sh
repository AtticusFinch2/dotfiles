#!/bin/bash


case $1 in
    "left" )
        xrandr --output HDMI-A-0 --auto --left-of eDP ;;
    "right" )
        xrandr --output HDMI-A-0 --auto --right-of eDP ;;
    "above" )
        xrandr --output HDMI-A-0 --auto --above eDP ;;
    "below" )
        xrandr --output HDMI-A-0 --auto --below eDP ;;
    "off" )
        xrandr --output HDMI-A-0 --off ;;
esac

