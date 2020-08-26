# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/akinozgen/.zshrc'
autoload -Uz compinit
compinit

bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

backward-kill-dir () {
    local WORDCHARS=${WORDCHARS/\/}
    zle backward-kill-word
}
zle -N backward-kill-dir
bindkey '^[^?' backward-kill-dir

export ZSH="/home/akinozgen/.oh-my-zsh"

#ZSH_THEME="spaceship"
plugins=(git)
source ~/.bashrc
#eval "$(starship init zsh)" 
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
clear
pfetch
