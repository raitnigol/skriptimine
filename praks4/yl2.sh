#!/bin/sh

# skript, mis aitab kokkadel teha küpsisetorti kergemini.

# siit hakkab skript

#kõigepealt küsime kokalt, aluskandiku pikkust ja laiust sentimeetrites
#kokk sisestab kandiku pikkuse ja laiuse
echo -n "Palun sisestage aluskandiku pikkus (cm): "; read pikkus
echo -n "Palun sisestage aluskandiku laius (cm): "; read laius
 
# nüüd küsime kokalt küpsise suurust, kihtide arvu ja mitu küpsist on pakis
echo -n "Palun sisestage küpsise suurus (cm): "; read kypsis
echo -n "Mitu kihti on tordil: "; read kihid
echo -n "Mitu küpsist on ühes pakis: "; read pakk

# nüüd on vaja hakata arvutama. kõigepealt on vaja kindlaks
# teha kandiku pindala
pindala=`expr $pikkus \* $laius`

# seejärel arvutame mitu küpsist läheb vaja
vaja=`expr $pindala / $kypsis`

# küsime kokalt, mitu kihti on tordil, et saaks arvutada küpsiste koguse
kogukypsis=`expr $vaja \* $kihid`

# viimase asjana arvutame pakkide koguse
pakid=`expr $kogukypsis / $vaja`

# arvutame kas mõnda üksikut küpsist on peale pakkide juurde vaja
ylej22k=`expr $kogukypsis % $pakk`

# teeme ka nii, kui ülejääk on väiksem kui 1, ei kuvata ülejääki.
if [ $ylej22k -lt 1 ]
then
	echo "Teil on vaja  $pakid pakk(i) küpsiseid "
else
# anname kokale teise väljundi, kui jääk on suurem kui 1 
	echo "Teil on vaja $pakid pakk(i) küpsiseid ja $ylej22k küpsist "
fi;
 
#skripti lõpp


