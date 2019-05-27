#!/bin/bash

# siit algab skript

# skript mis väljastab tärnid

for (( a = 1; a <= 5; a++ ))
do
echo -n $a". "
	for (( b = 1; b <= 5; b++ ))
	do
		echo -n "*"
	done
	echo ""
done 
