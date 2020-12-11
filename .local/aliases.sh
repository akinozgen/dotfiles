
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
alias shufflevids="nohup find . -name '*.mp4' -or -name '*.gif' -or -name '*.ts' | sort -R | mpv --image-display-duration=20 --playlist=- > /dev/null 2>&1&"

#alias ccat='pygmentize -g'
alias ccat="bat"

alias please=sudo
