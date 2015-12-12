function cprof2png() {
    if [ "$2" != "" ]
    then
        gprof2dot -f pstats ${1} | dot -Tpng -o ${2}.png
    else
        gprof2dot -f pstats ${1} | dot -Tpng -o cprofile-graph.png
    fi
}
