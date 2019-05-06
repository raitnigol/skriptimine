#!/bin/sh

# siit algab skript
# see skript aitab arvutada ringi pindala ja ümbermõõtu.

# küsime kasutajalt parameetrid

echo -n "Palun sisestage ringi raadius(sentimeetrites): "
read realraadius

# hakkame arvutama pindala ja ümbermõõtu
# arvutame raadiuse, pindala ja ümbermõõdu ja väljutame vastuse!
raadius=`expr $realraadius \* $realraadius`
pindala=$(echo "3.14159265359 * $raadius" | bc)
ymberm66t=$(echo "2 * 3.14159265359 * $realraadius" | bc)


echo "Ringi pindala on $pindala cm" 
echo "Ringi ümbermõõt on $ymberm66t cm"

#siit lõppeb skript
