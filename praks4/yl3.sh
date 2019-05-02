#!/bin/sh

# see skript on abiks bussiekskursiooni korraldajatele.

# skripti algus

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
		echo "Vaja on $fullbussid bussi."
	else
		echo "Vaja on $fullbussid bussi ja üle jääb $j22k kohta" 
	fi
else
	v2lja=`expr $reisijad % $bussid`
	if [ $v2lja -lt 1 ]
	then
		echo "Vaja on $fullbussid bussi."
	else
		echo "Vaja on $fullbussid bussi ja maha jääb $v2lja inimest"
	fi
if [ $v2lja != 0 ]
then
	fullbussid=`expr $fullbussid + 1`
	echo "Teil on vaja $fullbussid bussi, et inimesed kõik peale mahuks."
fi
fi

#skripti lõpp
