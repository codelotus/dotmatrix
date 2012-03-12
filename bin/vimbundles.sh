#!/bin/bash

mkdir -p ~/.vimbundles
cd ~/.vimbundles

get_github_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bitbucket_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    hg pull
    hg update
  else
    hg clone "http://bitbucket.org/$1/$2"
  fi
  )
}

get_github_bundle duff vim-bufonly
get_github_bundle godlygeek tabular
get_github_bundle leshill vim-json
get_github_bundle mileszs ack.vim
get_github_bundle pangloss vim-javascript
get_github_bundle scrooloose nerdcommenter
get_github_bundle therubymug vim-pyte
get_github_bundle tpope vim-abolish
get_github_bundle tpope vim-cucumber
get_github_bundle tpope vim-endwise
get_github_bundle tpope vim-fugitive
get_github_bundle tpope vim-git
get_github_bundle tpope vim-haml
get_github_bundle tpope vim-markdown
get_github_bundle tpope vim-pathogen
get_github_bundle tpope vim-rake
get_github_bundle tpope vim-ragtag
get_github_bundle tpope vim-rails
get_github_bundle tpope vim-repeat
get_github_bundle tpope vim-speeddating
get_github_bundle tpope vim-surround
get_github_bundle tpope vim-unimpaired
get_github_bundle tpope vim-vividchalk
get_github_bundle vim-ruby vim-ruby
get_github_bundle taq vim-rspec
get_github_bundle wgibbs vim-irblack
get_github_bundle scrooloose nerdtree
get_github_bundle sjbach lusty
get_github_bundle hallettj jslint.vim
get_github_bundle kchmck vim-coffee-script
get_github_bundle statianzo vim-jade
get_github_bundle derekwyatt vim-scala

get_bitbucket_bundle ns9tks vim-l9
get_bitbucket_bundle ns9tks vim-fuzzyfinder

