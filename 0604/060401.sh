if [ -f "$1" ]; then
    cut1=$(du $1 | cut -f 1)
    echo "$1:$cut1"
else
    echo "$1:通常のファイルではありません"
fi
