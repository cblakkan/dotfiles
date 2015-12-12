alias gs='git status'
alias gb='git branch -vv'
alias gr='git remote -v'
alias gp='git pull'
alias gd='git diff'


function gfb() {
    git checkout -b feature/$1
}

function bring-back() {
    git checkout $(git rev-list -n 1 HEAD -- "$1")^ -- "$1"
}
