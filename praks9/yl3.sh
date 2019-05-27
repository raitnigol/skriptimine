#!/bin/bash
# siit algab skript

echo -n "Sisesta palun ridade arv: "; read rida
echo -n "Sisesta palun tärnide arv reas: "; read tarn

for (( i = 1; i <= 5; i++ ))
do
if (( $i == 1 || $i == 5 ))
then
echo -n $i". "
	for (( j = 1; j <= $tarn; j++ ))
	do
		echo -n "*"
	done
	echo ""
else
echo -n $i". "
echo -n "*"
	for (( q = 2; q <= 4; q++ ))
	do
		echo -n " "
	done
echo "*"
fi

done
