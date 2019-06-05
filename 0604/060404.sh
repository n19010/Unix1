if [ -d "$1" ]; then
    for file in $(find "$1" -maxdepth 1 -type f)
    do
        if [ -r "${1}/${file}" -a ! -d "${1}/${file}" ]; then
            echo "$file"
        fi
    done
else
    echo "$1":ディレクトリではありません
fi
