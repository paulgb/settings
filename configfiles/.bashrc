
function cd_screen () {
    cd "$@"
    screen -X chdir `pwd`
}

if [ "$TERM" == "screen" ]
then
    alias cd=cd_screen
fi

