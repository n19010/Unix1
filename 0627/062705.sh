natu=`date --date 20191231 '+%s'`
hiduke=`date +%Y%m%d`
now=`date --date "$hiduke" '+%s'`
second=`expr "$natu" - "$now"`
echo 残り`expr "$second" / 86400`日
