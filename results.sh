#!/bin/bash

read OPID

BEGIN="zcash-cli z_getoperationresult '[\""
END="\"]'"

RESULT=$BEGIN$OPID$END

echo $RESULT

echo "zcashd working . . ."

sleep 5s # Waits 5 seconds.


eval $RESULT