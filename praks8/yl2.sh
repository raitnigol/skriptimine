#!/bin/bash

# siit hakkab skript, kuvab täisarvude numbrite summa.

echo -n "Palun sisesta täisarv: "; read arv

summa=0
vastus=$arv

while [ $arv -ne 0 ]; do
	jaak=$(($arv % 10))
	summa=$(($summa + $jaak))
	arv=$(($arv / 10))
done

echo "Täisarvude $vastus summa on: $summa"
