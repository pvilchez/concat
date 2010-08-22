#!/bin/bash

echo "Deleting main.css"
cd "`dirname "$0"`"
rm main.css

echo "Creating file list of all sub css files"

find . -name '*.css' > filelist.txt
cat filelist.txt

echo "Concat all of files into new main.css"
while read line
do
  cat $line >> main.css
done < filelist.txt