#!/bin/sh

# siit algab skript
# skript, mis väljastab aastaaja

echo -n "Sisesta kuu number: "; read kuu

if  [ $kuu -ge 3 -a $kuu -le 5 ]; then
	echo "Praegu on kevad"
elif [ $kuu -ge 6 -a $kuu -le 8 ]; then
	echo "Praegu on suvi"
elif [ $kuu -ge 9 -a $kuu -le 11 ]; then
	echo "Praegu on sügis"
elif [ $kuu -eq 12 -o $kuu -eq 2 -o $kuu -eq 1 ]; then
	echo "Praegu on talv"
else
	echo "Antud kuu numbrit ei eksisteeri."
fi
