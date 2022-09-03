#!/bin/bash

#usage:
# ./correlate.sh <<file with hash:plaintext>> <<file with hash:user>>
# Outputs to STDOUT in format hash:plaintext:user, alphabetized by user.
# Also outputs to a csv, colon (:) delimited. If
# a plaintext password contains a colon, it will add an extra
# column and should stand out for correction.

while read line;
do
   hash=$(echo $line | awk -F : '{print $1}'); 
   user=$(grep $hash $2 | awk -F : '{print $2}');
   echo $line:$user;
done < $1 | sort -u -t ':' -k3 | sed 's/ /, /g' | tee correlated.csv

echo
echo
echo "When viewing CSV, ensure you are delimiting by colon (:)."
