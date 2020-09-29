#!/bin/bash/ -x
shopt -s extglob
rejex="^([A-Za-z]+[A-Za-z0-9]*\+?((\.|\-|\_)?[A-Za-z]+[A-Za-z0-9]*)*)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
read -p "ENTER MAIL : " mail
if [[ $mail =~ $rejex ]]
then
echo "valid EMAIL ID"
else
echo "invalid EMAIL ID"
fi
