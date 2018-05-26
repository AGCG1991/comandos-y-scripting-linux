#!/bin/bash

if test $1 -le 0; then
	echo "error"
else
	i=1
	while [ $i -le $1 ]; do
		touch file_$i.txt
		((i++))
	done
fi

