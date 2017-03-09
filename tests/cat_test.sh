#!/bin/bash
pwd

$OUTPUT=../new/cat.txt
$ORIGINAL=../old/cat.txt
$SHELL_SCRIPT=$(../scripts/cat.sh)

$SHELL_SCRIPT >> $OUTPUT

$DIFF=$(diff $OUTPUT $ORIGINAL)

if [ $DIFF == ""]
then
	echo "It worked"
fi
