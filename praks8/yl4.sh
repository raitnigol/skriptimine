#!/bin/bash

# skripti algus - see skript tuvastab, kas arv on algarv või mitte

echo -n "Palun sisestage täisarv: "; read arv
	
if [ $arv -eq 0 -o $arv -eq 1 ]; then
	echo "$arv ei ole algarv."
else
	jagaja=2
	jaak=$(($arv % $jagaja))
	while [ $jaak -ne 0 ]
	do
		jagaja=$(($jagaja + 1))
		jaak=$(($arv % $jagaja))
	done
	if [ $arv -eq $jagaja ]; then
		echo "$arv on algarv"
	else
		echo "$arv ei ole algarv"
	fi
fi
# skripti lõpp
