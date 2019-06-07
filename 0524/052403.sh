sed 1d personal_infomation.csv | cut -d , -f 4 | sort | uniq -c
