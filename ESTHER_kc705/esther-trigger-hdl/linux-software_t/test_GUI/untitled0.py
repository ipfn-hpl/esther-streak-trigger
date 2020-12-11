#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 24 09:48:52 2020

@author: francisco
"""


import struct
import numpy as np
import matplotlib.pyplot as plt

fileName="dataDMA.bin"

with open(fileName,mode ='rb') as file:
    fileContent=file.read()

a= struct.unpack("h"*((len(fileContent))//2),fileContent)
a= np.reshape(a, (-1,4))

plt.figure()
plt.plot(a[:,0],label="ch0")
plt.plot(a[:,1],label="ch1")
plt.plot(a[:,2],label="ch2")
plt.plot(a[:,3],label="ch3")
plt.xlabel("Sample")
plt.ylabel("AMP (LSB)")
plt.legend()
plt.show()