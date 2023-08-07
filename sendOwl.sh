#!/bin/bash

from="${1}" # $1 represent first argument
to="${2}" # $2 represent second argument
amount="${3}" # $3 represent second argument
memo="${4}" # $4 represent second argument
fee="${5}" # $5 represent second argument
privPol="${6}" # $6 represent second argument


myOwl="zcash-cli z_sendmany \"$from\" \"[{\\\"address\\\": \\\"$to\\\",\\\"amount\\\": $amount, \\\"memo\\\":\\\"$memo\\\"}]\" 1 $fee $privPol"

eval $myOwl

