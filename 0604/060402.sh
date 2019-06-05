for file in "$@"
do
   if [ -f "${file}" ]; then
       cut1=$(du ${file} | cut -f 1)
       echo "${file}:$cut1"
   else
       echo "${file}:通常のファイルではありません"
   fi
done
