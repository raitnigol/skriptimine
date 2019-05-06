#!/bin/sh
# alustame skriptiga, mis väljastab meile tänase kuupäeva, kellaja
# kui ka kalendri.

# skript algab siit
# väljutame kasutajale eestikeelse kuupäeva!

kuupaev=`date +"%A"`
esmaspaev="Monday"; neljapaev="Thursday"
teisipaev="Tuesday"; reede="Friday"
kolmapaev="Wednesday"; laupaev="Saturday"
pyhapaev="Sunday"

if [ $kuupaev = $esmaspaev ]; then
	kpv="Esmaspäev"
fi
if [ $kuupaev = $teisipaev ]; then
	kpv="Teisipäev"
fi
if [ $kuupaev = $kolmapaev ]; then
	kpv="Kolmapäev"
fi
if [ $kuupaev = $neljapaev ]; then
	kpv="Neljapäev"
fi
if [ $kuupaev = $reede ]; then
	kpv="Reede"
fi
if [ $kuupaev = $laupaev ]; then
	kpv="Laupäev"
fi
if [ $kuupaev = $pyhapaev ]; then
	kpv="Pühapäev"
fi

# väljastame kasutajale eestikeelsed kuudenimetused
kuud=`date +"%B"`
jaanuar="January"; aprill="April"
veebruar="February"; mai="May"
marts="March"; juuni="June"
juuli="July"; oktoober="October"
detsember="Detsember"

if [ $kuud = $jaanuar ]; then
	aastakuu="Jaanuar"
fi
if [ $kuud = $veebruar ]; then
	aastakuu="Veebruar"
fi
if [ $kuud = $marts ]; then
	aastakuu="Märts"
fi
if [ $kuud = $aprill ]; then
	aastakuu="Aprill"
fi
if [ $kuud = $mai ]; then
	aastakuu="Mai"
fi
if [ $kuud = $juuni ]; then
	aastakuu="Juuni"
fi
if [ $kuud = $juuli ]; then
	aastakuu="Juuli"
fi
if [ $kuud = $oktoober ]; then
	aastakuu="Oktoober"
fi
if [ $kuud = $detsember ]; then
	aastakuu="Detsember"
fi

# väljastame kasutajale tulemuse.
echo "Täna on" $kpv, $aastakuu, `date +"%d, %Y "` # kuvame tänase päeva, kuu ja aasta. 
echo
echo "Kellaaeg on " `date +"%r"` # kuvame kasutajale kellaaja
echo
echo "Siin on sulle kalender! `cal`"  # kuvame ekraanil kalendri

#skripti lõpp
