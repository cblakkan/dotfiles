#!/usr/bin/env bash

brew_completion=$(brew --repository)/Library/Contributions/brew_bash_completion.sh

# Bash prompt styling
if [ -f "$brew_completion" ]; then
  . "$brew_completion"
fi
