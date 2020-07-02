# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/akinozgen/.zshrc'
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
autoload -Uz compinit
compinit

export ZSH="/home/akinozgen/.oh-my-zsh"

ZSH_THEME="spaceship"
plugins=(git)
source ~/.bashrc
eval "$(starship init zsh)" 
pfetch
