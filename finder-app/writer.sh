#!/bin/sh

if [ $# -eq 2 ]
then
	writefile=$1
	writestr=$2
else
	echo "[Error] Arguments are lower or greater than 2"
	exit 1
fi

if mkdir -p "$(dirname "$writefile")" && touch "$writefile"
then
	echo $writestr > $writefile
else
	echo "[Error] up here ^"
	exit 1	 
fi

