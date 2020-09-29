#!/bin/bash/ -x
#mobile numbers are valid with +91,91 or only 10 digit number
shopt -s extglpb
mobile="^(\+91){1}[1-9]{1}[0-9]{9}$|^[1-9]{1}[0-9]{9}$|^(91){1}[1-9]{1}[0-9]{9}$"
read -p "ENTER NUMBER : " num
if [[ $num =~ $mobile ]]
then
echo $num" is a valid mobile number"
else
echo $num" is not a valid mobile number"
fi
