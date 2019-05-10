#!/bin/sh

# skript otsib var kataloogis kasutajale kättesaadavad .log lõpuga failid
# kontrollib, mitu rida neis on ja väljastab failide nimekirja sorteeritud
# kahanemisjärjekorras vastavalt ridade arvule.

#siit hakkab skript
 
# otsime kõik .log lõpuga failid üles ja sorteerime need ära,
# errorid saadame faili null, mis asub kaustas /dev
find /var/ -name "*.log" -type f 2>> /dev/null -exec wc -l {} + | sort -rn

#siit lõppeb skript 
