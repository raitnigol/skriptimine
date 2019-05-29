#!/bin/bash

#siitalgabskript

echo -n "Mitu rida soovid: "; read rida

for (( j = 1; j <= $rida; j++ ))
do
	echo -n "$j."
	for (( a = ((rida-1)); a >=  $j; a--))
	do
		echo -n "O"
	done
	for (( i = 1; i <= $j; i++ ))
	do
		echo -n "*"
	done
	echo ""
done
