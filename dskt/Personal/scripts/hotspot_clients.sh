#!/bin/bash
sudo arp-scan -l -t 200 -I $(ls /sys/class/net | grep -o "wl[^\t]\+")
