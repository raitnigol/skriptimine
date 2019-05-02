#!/bin/sh

realaasta=`date +%Y` #defineerime esimese asjana praeguse aasta ära

#see skript küsib kasutaja käest tema nime ja sünniaasta, seejärel
#arvutab vanuse

#küsime kasutaja nime
echo -n "Tervist! Mis on teie nimi: "
read nimi

#küsime kasutajalt  sünniaastat
echo -n "Palun sisestage oma sünniaasta: "
read aasta

# kuna vanim inimene sündis 1874 aastal, siis enne seda aastat sisestatud arvu
# ei loeta
if [ $aasta -lt 1874 ]
then
	echo "Oih! Kas teadsid, et maailma vanim inimene sündis 1875 aastal?"
	sleep 1s; exit
fi
#samuti teeme if statementi, kui inimene peaks tulevikust olema
if [ $aasta -gt $realaasta ]
then
	echo "Back to the Future on hea film, aga vaevalt, et sa tulevikust oled!"
	sleep 1s; exit
fi

# arvutame lõppvastuse ning kuvame vanuse!
# teeme kerge kontrolli, kas sünniaasta on arv või mitte.
if  [ $aasta -eq $aasta 2>/dev/null ]
then
	realaasta=`date +%Y`
	vanusmaker=`expr $realaasta - $aasta`
	echo "$nimi! Te olete $vanusmaker aastat vana!"
else
	echo "Sünniaasta peab olema arv! Käivitage skript uuesti"; sleep 3s
	echo -n "Lülitan scripti välja! "; exit
fi

#skripti lõpp
