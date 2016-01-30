alias gs='git status'
alias ga='git add'
alias gco='git checkout'
alias gp='git pull'
alias gf='git fetch'
alias gd='git diff'
alias gb='git branch -vv'
alias gr='git remote -v'

git-aliases () {
    # Print git aliases
    alias | grep \''git ' | cut -d' ' -f2- | sort
}

git-restore-file () {
    # Restores the most recent version of a specific file
    # useful for restoring a file that's been deleted.
    local file=$1
    git checkout $(git rev-list -n 1 HEAD -- "${file}")^ -- "${file}"
}
