# hashes-and-passwords
Scripts for parsing and correlating cracked hashes.


correlate.sh takes two files, the first with the password hash and plaintext and the second with the password hash and the username. The files must be passed in that order and must be colon-delimited, {pass_hash:plaintext} and {pass_hash:username}. Output is set to stdout and also creates "correlated.csv", which must be parsed as colon-delimited in whichever csv viewer is being used. IF A PASSWORD HAS A COLON IN IT, it will delimit early and add a column.

Example:

mypassword:):chungus -> mypassword | ) | chungus

judgement.sh takes a password file in plaintext and shows the statistics regarding the complexity of each password and how many passwords match said complexity level. It also shows passwords that have numbers AND special characters, as well as passwords that are twelve (12) characters or longer. The top ten reused passwords are also presented. Percentages are in tenths and hundredths.

Example:

862 passwords that are twelve characters or more, 0.395958 of all passwords.

There are 862 passwords that contain at least twelve characters and represents ~40% of all passwords.
