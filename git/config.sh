#!/usr/bin/env bash

git_completion=`brew --prefix git`/etc/bash_completion.d/git-completion.bash

# Bash prompt styling
if [ -f "$git_completion" ]; then
  . "$git_completion"
fi
