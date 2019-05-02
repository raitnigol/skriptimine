#!/bin/sh

# see skript küsib kasutajalt tema nime ja hiljem väljastab selle

# skript hakkab siit

echo -n "Tervist! Mis on Teie nimi: "

# eesnimi ja perenimi loetakse ning salvestatakse stringina.

read eesnimi perenimi

# seejärel väljutame stringid skripti käivitajale.
echo "Tere tulemast tagasi, $eesnimi $perenimi!"

#skripti lõpp
