#!/bin/sh

# siit hakkab skript mis kuvab numbri alusel kuu nimetuse

echo -n "Palun sisesta arv (1-12): "; read arv

if [ $arv -lt 1 ] || [ $arv -gt 12 ]; then
	echo "Palun sisesta arv, mis oleks vahemikus 1-12"
	exit
else

case $arv in
	"1")
 		echo "See on jaanuar";;
	
	"2")	echo "See on veebruar";;

	"3")	echo "See on märts";;
	
	"4")	echo "See on aprill";;

	"5")	echo "See on mai";;

	"6")	echo "See on juuni";;
	
	"7")	echo "See on juuli";;

	"8")	echo "See on august";;

	"9")	echo "See on september";;

	"10")	echo "See on oktoober";;

	"11")	echo "See on november";;

	"12")	echo "See on detsember";;

esac

fi
