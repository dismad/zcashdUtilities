#!/bin/bash


OPID="${1}"    #1 repreents first argument
alias="${2}"   #2 represent second argument
command="${3}" #3 represents third argument


END="\"]'"

echo "test=$OPID"
echo "$alias $command"

if [ -z "$OPID" ]
then
	OPID="null"
fi


if [ -z "$alias" ]
then
	BEGIN="zcash-cli z_getoperationresult '[\""
	RESULT=$BEGIN$OPID$END
else
	BEGIN="z_getoperationresult '[\""
	alias="$alias $command $BEGIN$OPID$END"
	RESULT=$alias
fi


echo $RESULT

echo "zcashd working . . ."

sleep 5s # Waits 5 seconds.


eval $RESULT