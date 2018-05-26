#!/bin/bash

if [ "$1" -ge 0 -a -z "$2" ]; then
	i=1
        while [ $i -le $1 ]; do
                touch "file_0$i.txt"
		((i++))
        done
        echo "done"
elif [ "$1" -ge 0 -a -n "$2" ]; then
	i=1
        if [ -d "$2" ]; then
		cd "$2"
        	while [ $i -le $1 ]; do
                	touch "file_$i.txt"
			((i++))
		        echo "done"
        	done
        else
	        mkdir "$2"
        	cd "$2"
        	while [ $i -le $1 ]; do
                	touch "file_$i.txt"
			((i++))
		        echo "done"
		done
	fi
else 
		echo "Error"
fi

