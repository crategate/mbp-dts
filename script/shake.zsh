#!/bin/zsh
#
#
drives=$(lsblk --json) &> /dev/null

echo $drives | jq '.[][0]?'


is_rm=$(echo $drives | jq '.[][0].rm?')
sd_name=$(echo $drives | jq '.[][0].name?')
size_check=$drives | jq '.[][0].size?'

echo $drives | jq '.[][0].rm?'

echo $is_rm
echo $sd_name



#if [[ $(echo $is_rm) && ( 2 -lt 21 )]]
if $is_rm && false
then
    echo "its removable"
else 
    echo "some other thing"
fi
