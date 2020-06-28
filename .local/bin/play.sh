#!/bin/bash

selected="$(find ~/Müzik/NCS/*.mp3 | dmenu -i -l 15 -fn 'SF Mono')"
option="$(echo -e 'Play\nQueue' | dmenu -i -l 2 -fn 'SF Mono')"

if [ "$option" = "Play" ]
then
	deadbeef "$selected" &
elif [ "$option" = "Queue" ]
then
	deadbeef --queue "$selected" &
fi
disown
clear
exit
