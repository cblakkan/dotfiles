print_ok () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

print_skip () {
    printf "\r\033[2K  [ \033[00;33mSKIP\033[0m ] $1\n"
}

print_fail () {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
    echo ''
    exit
}

print_result () {
    if [ $? -eq 0 ]
    then
        print_ok "$1"
    else
        print_fail "$1"
    fi
}

export -f print_result print_ok print_fail print_skip
