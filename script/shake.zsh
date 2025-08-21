#!/bin/zsh
#
#
drives=$(lsblk --json) &> /dev/null

echo $drives | jq '.[][0]?'
