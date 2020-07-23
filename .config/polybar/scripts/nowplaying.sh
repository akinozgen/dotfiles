#!/bin/bash

while true; do
    output=$(playerctl metadata | grep -E 'artist |title' | awk '{ $1=""; $2=""; print}' | sed ':a;N;$!ba;s/\n/ - /g;s/ *$/ /g')
		clear > /dev/null;echo $output
	sleep 2 &
	wait
done
