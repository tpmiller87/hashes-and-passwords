#!/bin/bash

#usage:
#./correlate.sh <<file with hash:plaintext>> <<file with hash:user>>
#outputs to STDOUT in format hash:plaintext:user

while read line;
do
   hash=$(echo $line | awk -F : '{print $1}'); 
   user=$(grep $hash $2 | awk -F : '{print $2}');
   echo $line:$user;
done < $1
