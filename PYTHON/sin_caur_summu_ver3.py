# -*- coding: utf-8 -*-
# a0, a1, a2, a3
# S0, S1, S2, S3 -> S
from math import sin
x = 1. * input("Lietotāj, lūdzu, ievadi argumentu (x): ")
print type(x)
y = sin(x)
print "sin(%.2f)=%.2f"%(x,y)


#a0 = (-1)**0*x**1/(1)
a = (-1)**0*x**1/(1)
S = a
print "a0 = %6.2f S0 = %6.2f"%(a,S)

#a1 = (-1)**1*x**3/(1*2*3)
a = a * (-1) * x**2 /(2*3)
S= S + a
print "a1 = %6.2f S1 = %6.2f"%(a1,S)

a = a * (-1) * x**2 /(4*5)
S = S + a
print "a2 = %6.2f S2 = %6.2f"%(a2,S)

a =a * (-1) * x**2 /(6*7)
S = S + a
print "a3 = %6.2f S3 = %6.2f"%(a3,S)
