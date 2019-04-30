#!/bin/sh

# Antud skript väljutab meile kui kaua masin on töödanud

#siit algab skript

# väljutame, kui kaua arvuti tööl on olnud
 # hostname on arvuti nimi
 # date kuvab meile praeguse kellaja
 # uptime annab meile minutites, tundides, päevades või kuudes uptime

echo `hostname` "at" `date +"%H:%M:%S"` `uptime -p`

# siit lõppeb skript
