#!/bin/bash

function select() {
    echo -n 'continue?(y/n)'
    read yesno
    if [ $yesno = 'n' ]; then
        echo 'お　し　ま　い'
        exit
    fi
    echo '続行'
}
cd $HOME/rep/Unix1/
git status
while :
do
    echo '1) git log'
    echo '2) git log --oneline'
    echo '3) git log --oneline --name-only'
    echo '*) exit'
    echo -n select? '(1/2/3/*) :'
    read select
    case "$select" in
        1)
            git log
            ;;
        2)
            git log --oneline
            ;;
        3)
            git log --oneline --name-only
            ;;
        *)
           echo "end..."
           exit
           ;;
    esac
done
