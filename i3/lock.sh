#!/bin/bash
#scrot /tmp/screen.png
#convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
#convert /tmp/screen.png ~/.config/i3/lock.png -gravity center -composite -matte /tmp/screen.png
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
#i3lock -u -i /tmp/screen.png
#rm /tmp/screen.png

xrandr | grep "HDMI1 connected"

if [ $? -eq 0 ]
then
	~/repos/i3lock/i3lock -i ~/Dropbox/Backgrounds/linusFU.png -c '#000000' -o '#191d0f' -w '#572020' -l '#ffffff' -e -f
else
	~/repos/i3lock/i3lock -i ~/Dropbox/Backgrounds/linusFUBig.png -c '#000000' -o '#191d0f' -w '#572020' -l '#ffffff' -e -f
fi
