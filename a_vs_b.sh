#!/bin/bash


echo "Input a: "
read a 
echo "Input b:  "
read b

if (( $a == $b ))
then
echo "a ($a ir vienads ar b ($b)"
elif (( $a > $b ))
then
echo "a $a ir lielas par b ($b)"
else
echo "a ($a) ir mazaks par b ($b)"
fi















 
: <<'END'
if (( $a == $b ))
then 
echo "a ($a) ir vienads ar b ($b)"
fi
if (( $a > $b ))
then 
echo "a ($a) ir lielaks par b ($b)"
fi
if (( $a < $b ))
then
echo "a ($a) ir mazaks  par b ($b)"
fi 
END



















: <<'END'
c=`expr $a + $b`
echo "$a + $b = "$c
END
