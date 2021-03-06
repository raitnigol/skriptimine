#!/bin/sh

# see skript aitab meil arvutada täisnurkse kolmnurga külje c

# skripti aluseks võtame selle, et hüpotenuusi leitakse kasutades järgnevat
#lahenduskäiku:
	# c = Va2+b2 (ruutjuur aruudus + bruudust)

# disclaimer - see skript töötab samamoodi nagu hüpotenuusi skript yl1.sh;
# kuid muudetud on muutuja scale väärtus kahelt kümnele, mis väljastab meile
# väga palju täpsema vastuse.

# kõigepealt küsime kasutajalt külgede A & B pikkust sentimeetrites
echo -n "Külje A pikkus (cm): "; read kylg_a
echo -n "Külje B pikkus (cm): "; read kylg_b

a_ruudus=$(echo "scale=10;($kylg_a^2)" | bc) # arvutame a külje ruudu
b_ruudus=$(echo "scale=10;($kylg_b^2)" | bc) # arvutame b külje ruudu

# seejärel leiame külje A & B summa
summa=$(echo "scale=10;($a_ruudus+$b_ruudus)" | bc) # külgede A & B summa
kogusumma=$(echo "scale=10;sqrt ($summa)" | bc ) # kogusumma ehk vastuse arvutame nii

#kuvame kasutajale koguvastuse
echo "Külje C pikkus on $kogusumma cm"
sleep 2s

# skripti lõpp
