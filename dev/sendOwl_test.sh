#!/bin/bash

from="${1}"     # $1 represent first argument
to="${2}"       # $2 represent second argument
amount="${3}"   # $3 represent third argument
memo="${4}"     # $4 represent fourth argument
fee="${5}"      # $5 represent fifth argument
privPol="${6}"  # $6 represent sixth argument
alias="${7}"    # $7 represent seventh argument
command="${8}"  # $8 represent eight argument

aliasCopy=$alias

if [ -z "$alias" ]
then
	myOwl="zcash-cli z_sendmany \"$from\" \"[{\\\"address\\\": \\\"$to\\\",\\\"amount\\\": $amount, \\\"memo\\\":\\\"$memo\\\"}]\" 1 $fee $privPol"
else
	alias="$alias $command z_sendmany \"$from\" \"[{\\\"address\\\": \\\"$to\\\",\\\"amount\\\": $amount, \\\"memo\\\":\\\"$memo\\\"}]\" 1 $fee $privPol"
	myOwl=$alias
fi

echo $myOwl

OPID=$(eval $myOwl)

echo $OPID

END="\"]'"

if [ -z "$alias" ]
then
	BEGIN="zcash-cli z_getoperationresult '[\""
	RESULT=$BEGIN$OPID$END
else
	BEGIN="z_getoperationresult '[\""
	alias="$aliasCopy $command $BEGIN$OPID$END"
	RESULT=$alias
fi

echo "zcashd working . . ."

sleep 5s # Waits 5 seconds.

echo $RESULT

eval $RESULT



