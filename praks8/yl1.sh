#!/bin/bash

# siit hakkab skript, skript kasutab for do tsüklit.
# 10 esimese arvu summa - liida ainult paarisarvud

summa=0
for ((arv=1; arv<11; arv++ ))
do
	jaak=$(($arv % 2))
	if [ $jaak -eq 0 ]; then
		summa=$(($summa + $arv))
		echo $summa
	fi
done
echo "Arvude vahemikus 1-10(k.a) paarisarvude summa on: $summa"

# siit lõppeb skript
