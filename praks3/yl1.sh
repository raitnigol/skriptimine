#!/bin/sh
# alustame skriptiga, mis väljastab meile tänase kuupäeva, kellaja
# kui ka kalendri.

# skript algab siit

echo "Today is " `date +"%A, %B %d, %Y "` # kuvame tänase päeva, kuu ja aasta. 
echo "Time is " `date +"%r"` # kuvame kasutajale kellaaja
echo "Calendar of `cal`" # kuvame ekraanil kalendri

#skripti lõpp
