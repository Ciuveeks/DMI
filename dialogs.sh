#!/bin/bash


echo "Cienijamais lietotaj, ludzu ievadi pirmo skaitli: "
read a 
echo "Cienijamais lietotaj, ludzu ievadi otro skaitli: "
read b 


c=`expr $a + $b`
echo "$a + $b = "$c
