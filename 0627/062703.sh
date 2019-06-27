nots()
{
local script_name=$(basename "$0")
cat << END
使い方: 062703.sh DIRPATH
DIRPATHで指定したディレクトリ下のファイル数/ディレクトリ数を表示
DIRPATH - ファイル数/ディレクトリ数を表示するディレクトリパスを指定
END
}
if [ "$#" -eq 0 ]; then
    nots
    exit 1
fi

if [ -d "$1" ]; then
    find "$1" -type d 2> /dev/null | wc -l >> dir.txt
    echo "directory =>" $(<dir.txt)
    find "$1" -type f 2> /dev/null | wc -l >> fil.txt
    echo "file =>" $(<fil.txt)
    rm fil.txt dir.txt
else
    echo "$1:ディレクトリではありません"
fi
