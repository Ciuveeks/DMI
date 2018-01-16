# -*- coding: utf-8 -*-

from math import sin
import numpy as np
import matplotlib.pyplot as plt

def mana_funkcija(x):
    k = 0
    a = 1
    S = a
    while k<1000:
        k = k + 1
        R = x * (k+1)/(k**2)
        a = a * R
        S = S + a
    return S


def cita_funkcija(x):
    return mana_funkcija(x)-10


    

a = 0.57  
b = 2.71  
x = np.arange(a,b,0.01)
y = (1+x)*np.exp(x)
yy = mana_funkcija(x)
plt.plot(x,y)
plt.plot (x,yy)
plt.grid()
plt.show()





funa = cita_funkcija(a)
funb = cita_funkcija(b)
if funa * funb > 0:
    print "[%.2f,%.2f] intervāla saknes nav"%(a,b)
    print "vai ir pāru sakņu skaits"
    exit()




    
print "Turpnajums, ja sakne tomer ir:"    
delta_x = 1.e-3
k = 0
while b-a > delta_x:
    k = k+1
    x = (a+b)/2
    funx = cita_funkcija(x)
    print "%3d.: a=%.5f f(%.5f)=%8.5f b=%.5f"%(k,a,x,funx,b)
    if funa * funx > 0:
        a = x
    else:
        b = x




print "Gala rezultats:"
print "a=%.5f f(a)=%.5f"%(a,cita_funkcija(a)),
print "x=%.5f f(x)=%.5f"%(x,funx),
print "b=%.5f f(b)=%.5f"%(b,cita_funkcija(b)),
print "Rezultats ir sasniegts %d itegracijas"%(k)
print "Sakne ir %.5f, tāpēc ka y ir vienāds ar %.5f."%(x,cita_funkcija(x))

print "Parāda ka pie -10 x ir apmēram 1,41"

