#!/bin/sh

# siit hakkab skript

# see skript küsib kasutaja käest ühe täisarvu ning teeb omad järeldused,
# kas arv on paaris või paaritu.

# teame, et failinimi on esimesel positsioonil passing argumenti kasutades
failinimi=$0

# arv on teisel positsioonil
arv=$1


# nüüd tuleb arvutada jääk, kui arv jagada (2) kahega.

jaak=$(( $arv % 2))

# kui me jagame muutuja  $arv kahega, saame järgmised tulemid:
# 20 % 2 = 10 ehk arv on paaris
# 41 % 2 = 21 ehk on paaritu.

# loome if statementi, mis väljastab õige vastuse

if [ $jaak -eq 0 ]; then
	echo "Arv $arv on paaris."
else
	echo "Arv $arv on paaritu."
fi

# siit lõppeb skript.
