#!/usr/bin/env bash

# Bash prompt styling
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

export PS1='\u$(__git_ps1) \[$(tput setaf 5)\]\W\[$(tput sgr0)\]\\$ \[$(tput sgr0)\]'
export PATH=~/bin:~/git/dotfiles/bin:$PATH
