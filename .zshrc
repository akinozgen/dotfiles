export ZSH="/home/akinozgen/.oh-my-zsh"
ZSH_THEME="edvardm"
plugins=(git fzf)
source $ZSH/oh-my-zsh.sh
source $HOME/.bashrc
# aplay $HOME/.welcome.wav > /dev/null
clear
#nerdfetch-ohio2
eval $(thefuck --alias)
neofetch --ascii $HOME/.aperture.txt
