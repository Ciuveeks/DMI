#!/usr/bin/python
# -*- coding: utf-8 -*-

from math import exp
import numpy as np


print "   1000"
print "   -----------"
print "  \\ "
print "   \\                       K"
print "    \\               (K+1)*X"
print"s(x)=|    -----------------------------"
print "     /                    K!"
print "    / "
print "   / "
print "   -----------"
print "   k=0"
print
print
print


                          
print "                      k+1"
print "      R=      x----------------"
print "                       2"
print "                      k"









def mana_funkcija (x):
    k = 0
    a = 1
    print ("Pirmais saskaitāmais: a%d = %6.2f")%(k,a)
    S = a
    while k<1000:
        k = k + 1
        R = x * (k+1)/(k**2)
        a = a * R
        S = S + a
        if k>=999:
            print (" a%d = %6.2f")%(k,a)
    return S



x =  1. *  input("Lietotāj, lūdzu ievadi argumentu (x):")
#x = np.float128(input("Lietotāj, lūdzu ievadi argumentu (x):"))
print type(x)
y = (1+x)*exp(x)
print "Standarta (1+%.2f)*exp(%.2f)=%.2f"%(x,x,y)

yy = mana_funkcija(x)
print "mana funkcija(%.2f)=%.2f"%(x,yy)
