# Media Player Controls
alias play="playerctl play-pause"
alias pause="playerctl play-pause"
alias v+="pactl set-sink-volume 0 +5%"
alias v-="pactl set-sink-volume 0 -5%"
alias v="pactl set-sink-volume 0 "

# Quick Terminal Actions
alias q="exit"
alias e="exit"
alias c="clear"
alias !="sudo"
alias pss="ps aux | grep"
alias l="ls -h"
alias ll="ls -lh"
alias lll="ls -lah"

alias dockup='sudo docker-compose up'
alias laradockconnect='sudo docker-compose exec --user=laradock workspace bash'

# Directories
alias dwns="cd ~/dwns" 
alias docs="cd ~/docs" 
alias dskt="cd ~/dskt" 
alias musx="cd ~/musx" 
alias pblc="cd ~/pblc" 
alias pics="cd ~/pics" 
alias vids="cd ~/vids" 

# Quick Edit
alias i3c="vim ~/.config/i3/config"
alias pbc="vim ~/.config/polybar/config"
alias brc="vim ~/.bashrc"
alias zrc="vim ~/.zshrc"
alias neo=neofetch

alias i='sudo apt install -y'
alias gc="git clone"
alias ga="git add"
alias gm="git commit -m"
alias gp="git push"
alias gs="git status"
alias gsuno="git status -uno"

alias slideshow="feh -zsrZFD"
alias slideshow2="feh -srFdZD 10"
alias ytdl="youtube-dl --extract-audio --audio-format mp3 --output '%(title)s.%(ext)s'";
alias shufflevids="nohup find . | sort -R | mpv --image-display-duration=20 --playlist=- > /dev/null 2>&1&"

alias o="xdg-open"
#alias ccat='pygmentize -g'
alias ccat="bat"
