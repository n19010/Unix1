usage()
{
  local script_name=$(basename "$0")
  cat << END
使い方: $script_name FILEPATH...
FILEPATHで指定したファイルの容量を表示
FILEPATH - 容量を求めるファイルのパスを指定、複数指定可
END
}

if [ "$#" -eq 0 ]; then
    usage
    exit 1
fi

for file in "$@"
do
   if [ -f "${file}" ]; then
       cut1=$(du ${file} | cut -f 1)
       echo "${file}:$cut1"
   else
       echo "${file}:通常のファイルではありません"
   fi
done
