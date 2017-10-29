#!/bin/bash
c=1
for i in `find . -maxdepth 1 -name "*.txt"`
do
	l=`cat $i | grep "$1" | wc -l`
	k=`echo $i | cut -d '/' -f 2`
	if [ $l -gt 0 ]
	then
		c=0
	echo "$l lines in $k"
	fi
done
if [ $c -eq 1 ]
then
	exit 1
fi
