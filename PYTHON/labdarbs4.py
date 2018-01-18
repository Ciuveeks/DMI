# -*- coding: utf-8 -*-

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

a = -1
b = 1
x = np.arange(a,b,0.05)
y = mana_funkcija(x) 
plt.plot(x,y,'g')
plt.grid()
plt.xlabel('x ')
plt.ylabel('y ')
plt.title('EXP funkcija')
plt.text(0.66, 4.0, 'Funkcija')
plt.text(0.56, 6.0, '1.k. atvasinajums')
plt.text(0.54, 8.0, '2.k. atvasinajums')





#plt.show()

n = len(x)
y_prim = []
for i in range(n-1):
    #print i, x[i], y[i],
    delta_x = x[i+1]-x[i]
    delta_y = y[i+1]-y[i]
    #y_prim = delta_y/delta_x
    #print y_prim
    y_prim.append(delta_y/delta_x)
    #print y_prim[i]


plt.plot(x[:n-1],y_prim,'r')



y_2prim = []
for i in range(n-2):
    delta_x = x[i+1]-x[i]
    delta_y_prim = y_prim[i+1]-y_prim[i]
    y_2prim.append(delta_y_prim/delta_x)

plt.plot(x[:n-2],y_2prim,'b')


'''
y_3prim = []
for i in range(n-3):
    delta_x = x[i+1]-x[i]
    delta_y_2prim = y_2prim[i+1]-y_2prim[i]
    y_3prim.append(delta_y_2prim/delta_x)
plt.plot(x[:n-3],y_3prim,'g')
'''


plt.show()
