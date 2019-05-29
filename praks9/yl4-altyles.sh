#!/bin/bash

echo -n "Mitu rida soovid: "; read rida

for (( i = 1; i <= $rida; i++ ))
do
	echo -n "$i."
	for (( j = 1; j <= $i; j++ ))
	do
		echo -n "*"
	done
	echo ""
done
