sed 1d personal_infomation.csv | cut -d , -f 7 | sort | uniq -c | sort -nr
