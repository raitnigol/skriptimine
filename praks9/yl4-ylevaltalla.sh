#!/bin/bash

echo -n "Mitu rida soovid: "; read rida

for (( i = 1; i <= $rida; i++ ))
do
	echo -n "$i."
	for (( j = $rida; j >= $i; j-- ))
	do
		echo -n "*"
	done
	echo ""
done
