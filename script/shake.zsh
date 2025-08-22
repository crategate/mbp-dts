#!/bin/zsh
#
#
drives=$(lsblk --json) &> /dev/null

echo $drives | jq '.[][0]?'


is_rm=$(echo $drives | jq '.[][0].rm?')
sd_name=$(echo $drives | jq -r '.[][0].name?')
size=$(echo $drives | jq '.[][0].size?')


echo $is_rm
echo $sd_name
echo $size



#if [[ $(echo $is_rm) && ( 2 -lt 21 )]]
if $is_rm 
then
    echo "its removable"
    sudo mount /dev/$sd_name /media/usb
else 
    echo "some other thing"
fi
