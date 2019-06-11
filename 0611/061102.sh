hiduke=`date +%Y%m%d`
now=`date --date "$hiduke" '+%s'`
gogatu=`date --date 20190507 '+%s'`
second=`expr "$now" - "$gogatu"`
echo 5月7日から`expr "$second" / 86400`日経過
