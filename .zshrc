# The following comes from:
#   https://github.com/robbyrussell/oh-my-zsh

# colors
export TERM="xterm-256color"

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
# export ZSH_THEME="wizard"
# export ZSH_THEME="gentoo"
export ZSH_THEME="jreese"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git node npm ssh-agent vi-mode nvm)

source $ZSH/oh-my-zsh.sh

# The following was inspired/partially copied from:
#   https://github.com/hashrocket/dotmatrix/blob/master/.zshrc

path=(
  "$HOME/bin"
  /usr/local/bin
  /usr/local/sbin
  /opt/local/bin
  /usr/bin
  /bin
  /usr/sbin
  /sbin
  /usr/X11/bin
)

# options
setopt appendhistory autocd extendedglob histignoredups correctall nonomatch prompt_subst

# external editor support
autoload edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

# history
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000

# default apps
(( ${+PAGER}   )) || export PAGER='less'
(( ${+EDITOR}  )) || export EDITOR='vim'

# just say no to zle vim mode:
bindkey -e

# aliases
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'
alias htop='nocorrect htop'
alias mkdir='nocorrect mkdir'
alias bundle='nocorrect bundle'
alias spec='nocorrect spec'
alias spec='nocorrect htop'
alias rspec='nocorrect rspec'
alias ll="ls -l"
alias l.='ls -ld .[^.]*'
alias lsd='ls -ld *(-/DN)'
alias md='mkdir -p'
alias rd='rmdir'
alias cd..='cd ..'
alias spec='spec -c'

# set cd autocompletion to commonly visited directories
cdpath=(~ ~/src)

VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"
RI="--format ansi -T"
DISABLE_AUTO_TITLE=true

export VISUAL EDITOR LESS RI

# rvm-install added line:
unsetopt auto_name_dirs
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi

# import alias, if present
zalias="$HOME/.alias"
[[ -a $zalias ]] && source $zalias

# import local zsh customizations, if present
zrcl="$HOME/.zshrc.local"
[[ -a $zrcl ]] && source $zrcl

# import local alias, if present
zalias="$HOME/.alias.local"
[[ -a $zalias ]] && source $zalias

# tmux scripts if present
tmux_sessions="$HOME/.tmux-sessions"
[[ -a $tmux_sessions ]] && source $tmux_sessions

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

