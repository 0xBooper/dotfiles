#
# ~/.bashrc
#
# Modified by 0xBooper

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

CURRENTDIR=$(pwd)

# Fancy prompt
PS1="[ \[\033[1;32m\]\u" # Shows username
PS1+="\[\033[0;39m\]@" # Does a "@"
PS1+="\[\033[1;96m\]\h" # Shows hostname
PS1+=" \[\033[1;94m\]\@" # Shows time in PM/AM format
PS1+=" \[\033[1;91m\]\s \[\033[0;39m\] ]" # Shows shell (bash) and does a closing ]
PS1+="\n\[\033[1;34m\]\w " # Shows directory
PS1+="\[\033[1;97m\]\$\[\033[0;39m\] " # Shows  a $ or #

# Alias
alias syncScripts="cp ~/Scripts/* ~/Repos/Scripts/Scripts"
alias bashconf="nvim ~/.config/bash/bashconfig"
alias pac="sudo pacman"
alias ..="cd .."
alias bchange="nitrogen --set-zoom-fill --random ~/Wallpapers"
alias config="cd .config; ls"
alias parrot="curl parrot.live"
alias SS="systemctl"
alias sv="sudo nvim"
alias v="nvim"
alias la="exa -la"
alias ls="exa"
alias c="sudo corepack"
alias cyarn="sudo corepack yarn"

# Exports
export EDITOR="nvim"
export PATH=$PATH:/home/jandrew/Scripts/

# Autorun
[ "$CURRENTDIR" != "$HOME" ] && cd ~
clear
neofetch

