#!/bin/bash/ -x
shopt -s extglob
pin="^[1-9]{1}[0-9]{5}"
read -p "ENTER PIN CODE : " pincode
if [[ $pincode =~ $pin ]]
then
echo "VALID PIN CODE"
else
echo "INVALID PIN CODE"
fi
