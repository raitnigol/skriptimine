#!/bin/sh
# siit algab skript

# skripti põhimõtteks on aidata teha oma tähtsatest failidest backupe

# küsime kasutajalt, mis kataloogi ta soovib backupida jätame selle meelde
echo -n "Palun sisestage kataloogi, mida soovite backupida: "; read backup

# küsime kasutajalt, kuhu soovitakse kataloog backupida 
# echo -n "Palun sisestage kataloog, kuhu soovite backupi luua: "; read dest

# failile on vaja luua adekvaatne nimi
day=$(date +%A) # lisame kuupäeva (Monday, Tuesday) jne.
kpv=$(date +%Y-%m-%d) # lisame kuupäeva formaadis 2019-05-02 jne.
host=$(hostname -s) # lisame failinimele hostinime.
failinimi="$host-$day-$kpv.tar.gz" # täielik failinimi liidetakse siin kokku

# anname kausta backup kinnituse
dest=/home/backupid/
echo
sleep 1s
echo "Hakkan kausta $backup backupima."
sleep 1s
echo "Uueks kausta asukohaks on $dest."
sleep 1s
echo "Failinimeks on $failinimi"
sleep 1s

# loome backupi kausta
mkdir $dest 2>/dev/null

# hakkame backupima kasutades tari
tar -czf $failinimi $backup 
mv $failinimi $dest/$failinimi

# väljastame lõpu staatuse
sleep 1s
echo
echo "Backup lõpetatud!"

#skripti lõpp
