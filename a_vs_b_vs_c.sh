#!/bin/bash


echo "Input a: "
read a
echo "Input b:  "
read b
echo "Input c: "
read c














if (( $a > $b && $a > $c ))
then
echo "a ($a) ir  vislielakais"
elif (($b > $a && $b > $c))
then
echo "b ($b) ir vislielakais"
else
echo "c ($c) ir vislielakais"
fi










: <<'END'
if (( $a == $b ))
then
echo "a ($a ir vienads ar b ($b)"
elif (( $a > $b ))
then
echo "a $a ir lielas par b ($b)"
else
echo "a ($a) ir mazaks par b ($b)"
fi
END





 
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
