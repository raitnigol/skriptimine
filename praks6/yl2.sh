#!/bin/sh

# see skript on abiks bussiekskursiooni korraldajatele.

# skripti algus

# kirjutame paar muutujat, et väljastada värvilist teksti
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`
# samuti paks kirjastiil, et tekst oleks heledam ja seda kannataks lugeda
bold=`tput bold`

# kõigepealt küsime skripti käivitajalt reisijate arvu ja kohti bussis
echo -n "Mitu reisijat on ekskursioonile tulemas: "; read reisijad
echo -n "Mitu istekohta on bussis: "; read bussid

# seejärel hakkame arvutama

fullbussid=`expr $reisijad / $bussid`

if [ $bussid -gt $reisijad ]
then
	j22k=`expr $bussid - $reisijad`
	if [ $j22k -lt 1 ]
	then
		echo "${bold}${green}Vaja on $fullbussid bussi.{reset}"
	else
		fullbussid=`expr $fullbussid + 1`
		echo "${bold}${green}Vaja on $fullbussid bussi ja ${red}üle jääb $j22k kohta.${reset}" 
	fi
else
	v2lja=`expr $reisijad % $bussid`
	if [ $v2lja -lt 1 ]
	then
		echo "${bold}${green}Vaja on $fullbussid bussi.${reset}"
	else
		echo "${bold}${green}Vaja on $fullbussid bussi ja ${red}maha jääb $v2lja inimest.${reset}"
	fi
if [ $v2lja != 0 ]
then
	fullbussid=`expr $fullbussid + 1`
	echo "${bold}${red}Teil on vaja $fullbussid bussi, et inimesed kõik peale mahuks.${reset}"
fi
fi

#skripti lõpp
