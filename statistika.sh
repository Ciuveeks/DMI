#!/bin/bash
echo "Input a: "
read a
echo "Input b: "
read b
echo "Input c: "
read c

var1=((($a + $b + $c)%3 ))
var
echo 












: <<'END'
if (( $a < $b && $b < $c ))
then
        echo "$a - Minimala v.    $c - Maksimala v."
fi
if (( $a < $c && $c < $b ))
then
        echo "$a - Minimala v.    $b - Maksimala v."
fi
if (( $b < $a && $a < $c ))
then
        echo "$b - Minimala v.    $c - Maksimala v."
fi
if (( $b < $c && $c < $a ))
then
        echo "$b - Minimala v.    $a - Maksimala v."
fi
if (( $c < $a && $a < $b ))
then
        echo "$c - Minimala v.    $b - Maksimala v."
fi
if (( $c < $b && $b < $a ))
then
        echo "$c - Minimala v.    $a - Maksimala v."
fi
END
