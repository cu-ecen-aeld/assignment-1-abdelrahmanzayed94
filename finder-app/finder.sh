#!/bin/sh

if [ $# -eq 2 ]
then
	filesdir=$1
	searchstr=$2
else
	echo "[Error] Arguments are lower or greater than 2"
	exit 1
fi

if [ -d $filesdir ]
then
	filescnt=`grep -rl $searchstr $filesdir | wc -l`
	occurcnt=`grep -r  $searchstr $filesdir | wc -l`
	echo "The number of files are $filescnt and the number of matching lines are $occurcnt"
else
	echo "[Error] First argument is not a directory"
	exit 1
fi

