#!/bin/bash
#if (....) then .... elif (....) else...  fi
a=$1
if (( $a > 0 )) ; then
    echo "Izdruka no galvena zara (ja g.), tad, kad $a ir > 0"
elif (( $a == 0 )); then
    echo "Izdruka no galvena zara (ja g.), tad, kad $a  ir = 0"
else
    echo "Izdruka no galvena zara (ja g.), tad, kad $a nav > 0"
    echo "Nostrada tad, kad iestajas ne gadijums visos ieprieksejos gadijumos"
fi
echo "Sis teksts tiks attelots JEBKURA GADIJUMA"






: <<'END'
#if (....) then .... else...  fi
a=$1
if (( $a > 0 ))
then
    echo "Izdruka no galvena zara (ja g.), tad, kad $a ir > 0"
else
    echo "Izdruka no galvena zara (ja g.), tad, kad $a nav > 0"
fi
echo "Sis teksts tiks attelots JEBKURA GADIJUMA"
END








: <<'END'
#if (....) then .... fi
a=$1
if (( $a > 0 ))
then
    echo "Izdruka no galvena zara (ja g.), tad, kad $a ir > 0"
fi
echo "Sis teksts tiks attelots JEBKURA GADIJUMA"
END
