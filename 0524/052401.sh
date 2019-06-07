#!/bin/bash

function cont() {
    echo -n 'continue?(y/n)'
    read yesno
    if [ $yesno = 'n' ]; then
        echo '処理を終了します'
        exit
    fi
    echo 'continue...'
}
cd $HOME/rep/Unix1/
git diff remotes/origin/master
cont
git push

