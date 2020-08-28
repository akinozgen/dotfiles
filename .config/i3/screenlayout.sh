#!/bin/bash
layouts="$(find $HOME/.screenlayout -name '*.sh' | awk '{ split($0,a,"/"); print a[5] }')"
selection=$(echo "$layouts" | dmenu  -nb "#333333" -nf "#e0ddd3" -sb "#F93360" -fn '-San Francisco Display-22-medium-r-normal-*-*-*-*-*-*-100-*-*' -l 4 -i -p  'Screenlayout: ')
bash "$HOME/.screenlayout/$selection"
