#!/bin/bash

accountNumber="${1}" # $1 represent first argument

read="zcash-cli z_getbalanceforaccount $accountNumber  | grep -F -e transparent -e sapling -e orchard -e valueZat"

eval $read
