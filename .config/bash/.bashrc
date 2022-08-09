#
# ~/.bashrc
#

# Modified by 0xBooper

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Allow cding into directories by typing directory name
shopt -s autocd

# Infinite history
HISTSIZE=
HISTFILESIZE=

# Default prompt
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
alias sl="sudo !!"
alias sysU="sudo pacman -Sy archlinux-keyring && sudo pacman -Su"
alias conf="cd ~/.config/"
alias repos="cd ~/Repos"
alias repos="cd ~/Repos"
alias clr="clear"
alias pac="sudo pacman"
alias ..="cd .."
alias bchange="nitrogen --set-zoom-fill --random ~/Wallpapers"
alias config="cd .config; ls"
alias parrot="curl parrot.live"
alias SS="systemctl"
alias ss="sudo poweroff"
alias sr="sudo reboot"
alias sv="sudo nvim"
alias v="nvim"
alias g="git"
alias la="exa -a"
alias lal="exa -lah"
alias ls="exa"
alias c="sudo corepack"
alias cyarn="sudo corepack yarn"

# Colored commands
alias grep="grep --color=auto"
alias cat="bat" # better cat
alias ucat="cat"

# Exports
export EDITOR="nvim"
export PATH=$PATH:/home/jandrew/Scripts/
export TERM="kitty"
export term="kitty"

# Autorun

# SSH init
SSHAGENT=/usr/bin/ssh-agent
SSHAGENTARGS="-s"
if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
    eval `$SSHAGENT $SSHAGENTARGS` &
    trap "kill $SSH_AGENT_PID" 0
fi

sudo mount /dev/sdf1 ~/NTFS # Some USB mounting stuff.
[ "$CURRENTDIR" != "$HOME" ] && cd ~
clear
pfetch
# neofetch
