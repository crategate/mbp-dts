#!/bin/zsh
#
#
drives=$(lsblk --json) &> /dev/null

echo $drives | jq '.[][0]?'
is_rm=$drives | jq '.[][0].rm?'
size_check=$drives | jq '.[][0].size?'

if [[ is_rm ]]; then
    echo "its removable"
    
