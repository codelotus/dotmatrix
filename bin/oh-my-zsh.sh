#!/bin/bash

load_oh_my_zsh() {
  (
  echo "Looking for $1"
  if [ -d $1 ]; then
    echo "Updating $1"
    cd "$1"
    git pull --rebase
  else
    git clone git@github.com:codelotus/oh-my-zsh.git "$1"
  fi
  )
}



load_oh_my_zsh ~/.oh-my-zsh
