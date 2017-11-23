# -*- coding: utf-8 -*-
from math import sin

def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    #print "a0 = %6.2f S0 = %6.2f"%(a,S)
    while k<10:
        k = k + 1
        R = (-1) * x**2 /((2*k)*(2*k+1))
        a = a *R
        S= S + a
        #print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
    return S    


x = 1. * input("Lietotāj, lūdzu, ievadi argumentu (x): ")
print type(x)
y = sin(x)
print "standarta sin(%.2f)=%.2f"%(x,y)

yy = mans_sinuss(x)
print "mans sin(%.2f)=%.2f"%(x,yy)
print mans_sinuss(10)
print mans_sinuss(100)






