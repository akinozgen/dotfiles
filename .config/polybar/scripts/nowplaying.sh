#!/bin/bash

re='^[0-9]+$'

while true; do
	exists="$(pgrep deadbeef)"
	if [[ $exists =~ $re ]] ; then
		output="$(deadbeef --nowplaying-tf '%artist% - %title%')"
		clear
		echo $output
	else
		echo 'Not playing'
	fi
	sleep 2 &
	wait
done
