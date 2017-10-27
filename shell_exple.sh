#!/bin/bash
echo -e "\n"

#4. piemers
echo "Atbilde uz jautajumu - kas tiek pildits? "$0
#echo $n
echo "Skriptam nodoto argumentu skaits: " $#
echo "Argumentu saraksts (attelosana/grupesana 1.veids) "$*
echo  "Argumentu saraksts (attelosana/grupesana 2.veids) "$@
#ech  "Argumentu saraksts (attelosana/grupesana 2.veids) "$@
echo "Ieprieksejas komandas izpildes rezultata kludas kods:  " $?
#126 - permission denied
#127 - command not found
echo "Tekosa procesa numurs: " $$
echo "Enaa palaista (pedejaa) procesa numurs: "$!


#3. piemers
#NAME="Vards Uzvards"
#echo $NAME
#unset NAME
#echo $NAME



#2. piemers
#NAME="Vards Uzvards"
##readonly NAME
#echo $NAME
#NAME="Uzvards Vards"
#echo $NAME




#1. piemers
#NAME="Vards Uzvards"
#echo $NAME

echo -e "\n"
