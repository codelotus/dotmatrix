# ~/.bashrc
# vim:set ft=sh sw=2 sts=2:

#source "$HOME/.hashrc"

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

export RI="--format ansi --width 70"

VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"
RI="--format ansi -T"

export VISUAL EDITOR LESS RI

export TERM="xterm-256color"
export CLICOLOR=1
export LSCOLORS=gxgxcxdxbxegedabagacad

export CLICOLOR LSCOLORS

bind 'set bind-tty-special-chars off'
bind '"\ep": history-search-backward'
bind '"\en": history-search-forward'
bind '"\C-w": backward-kill-word'

git_completion='/usr/local/Cellar/git/1.7*/etc/bash_completion.d/git-completion.bash'

if [ -f $git_completion ]; then
  source $git_completion
fi

[ -z "$PS1" ] || stty -ixon

[ -z "$PS1" ] || export PS1='\[$(tput bold)$(tput setb 4)$(tput setaf 2)\]\u@\h:\w $(__git_ps1 "<%s>")\nλ \[$(tput sgr0)\]'

[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"

[ ! -f "$HOME/.alias.local" ] || . "$HOME/.alias.local"

[ -s "$HOME/.rvm/scripts/rvm" ] && . "$HOME/.rvm/scripts/rvm"

