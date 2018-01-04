#!/bin/bash

echo -n  "Lietotāj, lūdzu, ievadi skaitli: "
read a

k=$a
      echo -e "  \t%1\t%2\t%3\t%4\t%5\t%10"

while (( $k < ($a+10) ))
do
      echo -en "$k\t" `expr $k % 1 ` "\t" `expr  $k % 2` "\t" ` expr  $k % 3` "\t"`expr  $k % 4`  "\t" `expr $k % 5`  "\t"`expr  $k % 10` "\n" 
      k=`expr $k + 1`

done


