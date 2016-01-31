#!/usr/bin/env bash

if [ ! grep -q '$(pyenv init -)' ~/.bash_profile ]
then
    print_result "Infecting ~/.bash_profile with pyenv"
    echo '# Initialize pyenv' >> ~/.bash_profile
    echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
else
    print_ok "~/.bash_profile already infected with pyenv"
fi

pyenv install -s 2.7.11
pyenv install -s 3.5.1
pyenv rehash
pyenv global 2.7.11
