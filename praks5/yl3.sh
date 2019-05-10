#!/bin/sh

# see skript on mõeldud reisisõpradele, kes soovivad teada saada,
# mis päeval nad reisilt tagasi peaksid jõudma.

# siit algab skript

echo "Esmaspäev - 1"
echo "Teisipäev - 2"
echo "Kolmapäev - 3"
echo "Neljapäev - 4"
echo     "Reede - 5"
echo   "Laupäev - 6"
echo  "Pühapäev - 7"
sleep 1s
echo -n "Palun sisestage päeva number, millal alustate reisi: "; read reis
sleep 1s
echo -n "Mitu päeva viibite reisil: "; read paevad

# arvutame, kuna tagasi jõutakse
# arvutame, mitu päeva ollakse reisil
nadalapaevad=$(($paevad%7))

naasmine=$(($reis+$nadalapaevad))
sleep 1s
# arvutame, mis päeval reisilt naastakse.
if [ $naasmine = 1 ]; then
	naasmine="esmaspäeval"
fi
if [ $naasmine = 2 ]; then
	naasmine="teisipäeval"
fi
if [ $naasmine = 3 ]; then
	naasmine="kolmapäeval"
fi
if [ $naasmine = 4 ]; then
	naasmine="neljapäeval"
fi
if [ $naasmine = 5 ]; then
	naasmine="reedel"
fi
if [ $naasmine = 6 ]; then
	naasmine="laupäeval"
fi
if [ $naasmine = 7 ]; then
	naasmine="pühapäeval"
fi

 # väljastame tulemuse
echo "Reisilt jõuate Te tagasi $naasmine"

# siit lõppeb skript

# viimane update - tehtud skripti veidi mugavamaks kasutajale
# kuupäevade numbrid muudetud

