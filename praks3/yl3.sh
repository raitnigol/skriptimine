#!/bin/sh

# Antud skript väljutab meile kui kaua masin on töödanud

#siit algab skript

# väljutame, kui kaua arvuti tööl on olnud

echo `hostname` "at" `date +"%H:%M:%S"` `uptime -p`

