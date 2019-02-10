#!/usr/bin/env bash

if [ ! grep -q '$(pyenv init -)' ~/.bash_profile ]
then
    print_result "Infecting ~/.bash_profile with pyenv"
    echo '# Initialize pyenv' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
else
    print_ok "~/.bash_profile already infected with pyenv"
fi

pyenv install -s 2.7.15
pyenv install -s 3.7.2
pyenv rehash
pyenv global 2.7.15
