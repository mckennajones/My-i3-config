#!/bin/zsh

xrandr | grep "HDMI1 connected"

if [ $? -eq 0 ]
then
	xrandr --dpi 100 && xrandr --output HDMI1 --auto --output eDP1 --off && sed -i 's/Source Code Pro 20/Source Code Pro 12/g' ~/.config/terminator/config
else
	xrandr --dpi 190 && xrandr --output eDP1 --auto --output HDMI1 --off && sed -i 's/Source Code Pro 12/Source Code Pro 20/g' ~/.config/terminator/config
fi

i3-msg restart
