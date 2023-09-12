#!/bin/bash

from="${1}"     # $1 represent first argument

qr="qrencode -m 2 -t utf8 <<< $1"

eval $qr
echo $1


