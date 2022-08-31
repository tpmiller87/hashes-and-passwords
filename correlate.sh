while read line;
do
   hash=$(echo $line | awk -F : '{print $1}'); 
   user=$(grep $hash calc_hash_user.txt | awk -F : '{print $2}');
   echo $line:$user;
done < calc_hash_cracked.txt
