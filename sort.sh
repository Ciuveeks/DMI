#!/bin/bash
echo "Input a: "
read a 
echo "Input b: "
read b
echo "Input c: "
read c

if (( $a < $b && $b < $c ))
then
        echo "$a $b $c"
fi
if (( $a < $c && $c < $b ))
then
        echo "$a $c $b"
fi
if (( $b < $a && $a < $c ))
then
        echo "$b $a $c"
fi
if (( $b < $c && $c < $a ))
then
        echo "$b $c $a"
fi
if (( $c < $a && $a < $b ))
then
        echo "$c $a $b"
fi
if (( $c < $b && $b < $a ))
then
        echo "$c $b $a"
fi

