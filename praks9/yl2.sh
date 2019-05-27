#!/bin/bash

# siit algab skript mis väljastab read ja tärnid

echo -n "Sisesta ridade arv: "; read rida
echo -n "Sisesta tärnide arv: "; read tarn

for (( a = 1; a <= $rida; a++ ))
do
echo -n $a". "
	for (( b = 1; b <= $tarn; b++ ))
	do
		echo -n "*"
	done
	echo ""
done 
