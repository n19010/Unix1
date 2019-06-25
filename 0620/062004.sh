touch wget.log
wget --spider -o ./wget.log -r $1
grep -B2 'Not Found' wget.log | grep http
rm wget.log
