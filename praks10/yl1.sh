#!/bin/sh

# siit hakkab skript

# see skript tuvastab sinu vanuse põhjal, kas sa  oled laps, täiskasvanud või senjoor.

echo -n "Sisesta (oma) vanus: "; read vanus

if [ $vanus -ge 0 -a $vanus -le 10 ]; then
	echo "Sa oled laps"

elif [ $vanus -ge 11 -a $vanus -le 17 ]; then
	echo "Sa oled nooruk"

elif [ $vanus -ge 18 -a $vanus -le 62 ]; then
	echo "Sa oled täiskasvanu"

elif [ $vanus -ge 63 ]; then
	echo "Sa oled senjoor"
else
	echo "Huvitav, nüüd ei oskagi öelda, kes sa oled."
fi
