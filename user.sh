#!/bin/bash/ -x
shopt -s extglob
first="^[A-Z]{1,}[a-z]{3,}"
email="^([a-z]{2,})|([a-z]{2,}.[a-z]{2,})@([a-z]{2,}.[a-z]{2,})|([a-z]{2,}.[a-z]{2,}.[a-z]{2,})"
mobile="(91 ){1}[1-9]{1}[0-9]{9}"

read -p "enter FIRST NAME : " firstname
if [[ $firstname =~ $first ]]
then
echo "FIRST NAME Validated"
else
echo "Invalid FIRST NAME"
fi

read -p "enter LAST NAME : " lastname
if [[ $lastname =~ $first ]]
then
echo "LAST NAME Validated"
else
echo "Invalid LAST NAME"
fi

read -p "enter Email : " mail
if [[ $mail =~ $email ]]
then
echo "valid email"
else
echo "invalid e mail"
fi

read -p "enter mobile number : " mobilenum
if [[ $mobilenum =~ $mobile ]]
then
echo "valid mobile number"
else
echo "invalid mobile number"
fi

read -p "Enter password : " password
pass="([@#$%^&*]){2,}"
if [[ $password =~ $pass ]]
then
echo "invalid password"
else
echo $password | egrep "[a-z]" | egrep "[A-Z]" | egrep "[0-9]" | egrep "[@#$%^&*]"
if [[ $? -eq 0 ]]; then
echo "Password validated"
else
echo "invalid password"
fi
fi
