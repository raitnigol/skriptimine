#!/bin/sh

# see skript aitab meil luua kaustadest backupi!

#skript algab siit

echo -n "Palun sisestage siia kataloog, mida soovite backupida: "
read kataloog

sleep 1s; echo "Palun oodake..."; sleep 1s

# loome failinime
kpv=$(date +"%D%M%Y")
kell=$(date +"%R")
basename="$(basename -- $kataloog)" 

 # failinimi="$basename-backup-$kpv-$kell.tar.gz"
failinimi="vikatimees.tar.gz"
# võtame asukoha ja teeme backupi sinna.

dest="/home/user/skriptimine/praks4a/backup/"
tar -czf $failinimi $kataloog # loome faili.

sleep 1s; echo "Loon kataloogi..."
echo
echo "Kataloogi $kataloog backup on valmis!"
echo "Backup nimega $failinimi asub kataloogis $dest"
 
