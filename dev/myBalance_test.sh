#!/bin/bash

accountNumber="${1}" # $1 represent first argument
alias="${2}"         # $2 represent second argument
command="${3}"       # $3 represents third argument


if [ -z "$alias" ]
then
	read="zcash-cli z_getbalanceforaccount $accountNumber  | grep -F -e transparent -e sapling -e orchard -e valueZat"
	echo "alias false"
else
	alias="$alias $command z_getbalanceforaccount $accountNumber"
	echo $alias
        read="$alias | grep -F -e transparent -e sapling -e orchard -e valueZat"
fi

eval $read
