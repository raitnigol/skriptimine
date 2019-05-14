#!/bin/sh

# siit hakkab skript

# see skript annab kasutajale teada, kas tema sisestatud arv on paaris või paaritu

# skripti tuleb kasutada järgneval kujul:
# asukoht/skriptini.sh number
# näide:./yl1.sh 3
# Arv 3 on paaritu.

# lisame värvilised värvikoodid
red=`tput setaf 1`
green=`tput setaf 2`
bold=`tput bold`
reset=`tput sgr0`
# teeme kindlaks, et arv ikka sisestataks

if [ $# != 1 ]; then
	echo "${bold}${red}Palun sisesta arv, mille paarsust sa teada soovid.${reset}"
	echo "${bold}${green}Näide: ./paarsus 8${reset}"
else

	# arv on teisel positsioonil
	arv=$1

	# nüüd tuleb arvutada jääk, kui arv jagada (2) kahega.

	jaak=$(( $arv % 2))

	# kui me jagame muutuja  $arv kahega, saame järgmised tulemid:
	# 20 % 2 = 10 ehk arv on paaris
	# 41 % 2 = 21 ehk on paaritu.

	# loome if statementi, mis väljastab õige vastuse

	if [ $jaak -eq 0 ]; then
		echo "${bold}Arv $arv on paaris.${reset}"
	else
		echo "${bold}Arv $arv on paaritu.${reset}"
	fi
fi
# siit lõppeb skript.
