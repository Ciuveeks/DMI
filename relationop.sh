#!/bin/bash




# 3.piemers
a=10
b=20
echo "Vai skatilis $a nav vienads ar skaitli $b"
if [ $a -ne $b ]
then
echo "Ja, $a un $b nav vienadi skaitli"
else
echo "Ne, $a un $b ir vienadi"
fi



: <<'END'
#2.piemers - salidzinasana vai ir vienads (operacija ==)
a=10
b=20
echo   "----------------2.piemers----------"
echo "Vai skaitlis a ir vienads ar b"
if [ $a == $b ] 
then
    echo "Ja"
    echo "$a un $b ir vienadi skaitli"
else
    echo "Ne"
    echo "$a un $b ir dazadi skaitli"
fi
echo "-----------------------------------"
END

: <<'END'  #Komentara bloka sakums.
#1.piemers - salidzinasa vai ir vienads (atslega -eq)
a=10
b=20
echo   "----------------1.piemers----------"
echo "Vai skaitlis $a ir vienads ar skatili $b"
if [ $a -eq $b ]
then
    echo "Ja"
    echo "$a un $b ir vienadi skaitli"
else
    echo "Ne"
    echo "$a un $b ir dazadi skaitli"
fi
echo "-----------------------------------"
END
# Komentara bloka beigas.


