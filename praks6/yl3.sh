#!/bin/sh

# siit hakkab skript

# see skript küsib kasutajalt, mis operatsioonisüsteem tal on ning
# jooksutab paar if statementi.

# seame os valiku vaikeväärtuseks 0
osch=0

# väljastame valiku
unix="Unix (Sun Os)"
linux="Linux (Red Hat)"
echo "1. $unix"
echo "2. $linux"

# käsime valiku langetada
echo -n "Select your operating system of choice [1 or 2]: " ; read osch

# jooksutame if statementi
# vali unix
if [ $osch -eq 1 ]; then
	echo "You chose $unix"

#vali linux
else #### nested if i.e. if within if ####
	if [ $osch -eq 2 ]; then
		echo "You chose $linux"
	else
		# vali midagi muud
		echo "You must be a pleb for liking Windows."
	fi
fi
