#!/bin/bash
while [ "$select" != "Cancel" -a "$select" != "Logout" -a "$select" != "Shutdown" -a "$select" != "Reboot" ]; do
    select=$(echo -e 'Cancel\nLogout\nReboot\nShutdown' | dmenu -nb "#333333" -nf "#e0ddd3" -sb "#F93360" -fn '-San Francisco Display-22-medium-r-normal-*-*-*-*-*-*-100-*-*' -l 4 -i -p "Exit i3?")
    [ -z "$select" ] && exit 0
done
if [ "$select" = "Logout" ]
then
	i3-msg exit
elif [ "$select" = "Reboot" ]
then
	reboot
elif [ "$select" = "Shutdown" ]
then
	shutdown
fi

exit
