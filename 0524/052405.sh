#!/bin/bash

cd
file=$(sudo find "$1" -type f | wc -l)
sudo echo "ファイル数" : ${file}
dir=$(sudo find "$1" -type d | wc -l)
sudo echo "ディレクトリ数" : ${dir}
