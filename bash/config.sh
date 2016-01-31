#!/usr/bin/env bash

bash_completion=`brew --prefix bash-completion`/etc/bash_completion

# Bash prompt styling
if [ -f "$bash_completion" ]; then
  . "$bash_completion"
fi

export PS1='\u$(__git_ps1) \[$(tput setaf 5)\]\W\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]'
export PATH=~/bin:~/git/dotfiles/bin:$PATH
