#!/bin/sh

# see skript on mõeldud reisisõpradele, kes soovivad teada saada,
# mis päeval nad reisilt tagasi peaksid jõudma.

# siit algab skript

echo "Pühapäev - 0"
echo "Esmaspäev - 1"
echo "Teisipäev - 2"
echo "Kolmapäev - 3"
echo "Neljapäev - 4"
echo "Reede - 5"
echo "Laupäev - 6"
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
if [ $naasmine = 0 ]; then
	naasmine="Pühapäeval"
fi
if [ $naasmine = 1 ]; then
	naasmine="Esmaspäeval"
fi
if [ $naasmine = 2 ]; then
	naasmine="Teisipäeval"
fi
if [ $naasmine = 3 ]; then
	naasmine="Kolmapäeval"
fi
if [ $naasmine = 4 ]; then
	naasmine="Neljapäeval"
fi
if [ $naasmine = 5 ]; then
	naasmine="Reedel"
fi
if [ $naasmine = 6 ]; then
	naasmine="laupäeval"
fi
echo "Reisilt jõuate Te tagasi $naasmine"
