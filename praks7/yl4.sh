#!/bin/sh

# siit algab skript

# see skript küsib kasutajalt aega ning vastab talle, kas on hommik, õhtu, päev või öö.

aeg=$(date +"%H")
kasutaja=$(whoami)

# kontrollime, mis väljundit kuvada
if [ $aeg -ge 6 -a $aeg -lt 12 ]; then
	echo "Tere hommikust, $kasutaja"
elif [ $aeg -ge 12 -a $aeg -lt 18 ]; then
	echo "Tere päevast, $kasutaja"
elif [ $aeg -ge 18 -a $aeg -lt 22 ]; then
	echo "Tere õhtust, $kasutaja"
elif [ $aeg -ge 22 -a $aeg -lt 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ]; then
	echo "Head ööd, $kasutaja!"
else
	echo "Sellist kellaaega ei ole olemas!"
fi

# skripti lõpp
