#!/bin/sh

# siit algab skript

# see skript aitab teha backupe kaustadest ja failidest

# küsime kasutajalt, mis kataloogi ta soovib backupida
echo -n "Palun sisestage kataloogi, mida soovite backupida: "; read backup

# küsime kasutajalt, kuhu soovitakse kataloog backupida 
# echo -n "Palun sisestage kataloog, kuhu soovite backupi luua: "; read dest

# loome failinime
day=$(date +%A)
host=$(hostname -s)
failinimi="$host-$day.tgz"
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
echo
echo "Backup lõpetatud!"

#skripti lõpp
