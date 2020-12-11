#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 28 14:59:40 2020

@author: francisco
"""


# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import tkinter as tk
import subprocess
import fileinput
import sys
import struct
import numpy as np
from matplotlib.figure import Figure
from matplotlib.backends.backend_tkagg import (FigureCanvasTkAgg, NavigationToolbar2Tk)
import matplotlib.pyplot as plt



def start(): 
    

   
        
    #subprocess.call(["gcc","testDMA_2.c","-o","testGUI"])
    
    conver=int(cdelay.get())/8
  
    subprocess.call(["./get1","-c",trig0.get(),"-f",trig1.get(),"-m",trig2.get(),"-t",format(conver,'.0f'),"-s",str(var.get()),"-n",trig3.get(),"-i",str(var2.get())]) 
    
    #lbl_te = tk.Label(master=window, text='')
    
    #lbl_te.grid(row=5, column=0, sticky="w") 
    
    with open(fileName,mode ='rb') as file:
     fileContent=file.read()

    a= struct.unpack("h"*((len(fileContent))//2),fileContent)
    a= np.reshape(a, (-1,4))    
    figure1 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,0],label="ch0")
    #plt.axvline(x=2000,color='k')
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 0')
    canvas = FigureCanvasTkAgg(figure1, master=window)
    canvas.draw()
    canvas.get_tk_widget().grid(row=5, column=0,  columnspan = 3, rowspan = 3,ipadx=150, ipady=70)
    
    figure2 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,1],label="ch1")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 1')
    canvas2 = FigureCanvasTkAgg(figure2, master=window)
    canvas2.draw()
    canvas2.get_tk_widget().grid(row=5, column=4,  columnspan = 3, rowspan = 3,ipadx=150, ipady=70)
    
    figure3 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,2],label="ch2")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 2')
    canvas3 = FigureCanvasTkAgg(figure3, master=window)
    canvas3.draw()
    canvas3.get_tk_widget().grid(row=8, column=0,  columnspan = 3, rowspan = 3,ipadx=150, ipady=70)
    
    figure4 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,3],label="ch3")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 3')
    canvas4 = FigureCanvasTkAgg(figure4, master=window)
    canvas4.draw()
    canvas4.get_tk_widget().grid(row=8, column=4, columnspan = 3, rowspan = 3, ipadx=150, ipady=70)
    
    with open('file.txt','r') as file:
        datas=file.readlines()
    lbl_s = tk.Label(master=window, text=datas[0])
    
    lbl_s.grid(row=4, column=2, sticky="w",pady=5)   
    lbl_sw = tk.Label(master=window, text=datas[1])
    
    lbl_sw.grid(row=4, column=4, sticky="w",pady=5)  

def labelt1():
    
        #lbl_temp2 = tk.Label(master=window, text="Sensor 0 Threshold")
        lbl_temp2.config(text="Sensor 0 Threshold")
        lbl_temp1.config(text="Sensor 1 Threshold")
        lbl_temp.config(text="Sensor 2 Threshold")
        lbl_temp3.config(text="Sensor 3 Threshold")
def labelt2():
        #lbl_temp2 = tk.Label(master=window, text="Sensor 0 Td")
        lbl_temp2.config(text="Sensor 0 Td")
        lbl_temp1.config(text="Sensor 1 Td")
        lbl_temp.config(text="Sensor 2 Td")
        lbl_temp3.config(text="Sensor 3 Td")

    



fileName="dataDMA.bin"


    
window = tk.Tk()


window.title("ESTHER test")
window.resizable(width=False, height=False)

#window.rowconfigure(0, minsize=100, weight=1)
#window.columnconfigure([0, 1, 2], minsize=100, weight=1)


btn_increase = tk.Button(master=window, text="Start", command=start,fg="red")
btn_increase.grid(row=1, column=0, rowspan = 2,sticky="nsew",padx = 10, pady = 5)

lbl_c=tk.Label(master=window,text="Select Trigger Type")
lbl_c.grid(row=1,column=3,padx = 5, pady = 5, sticky="w")
var = tk.IntVar()
R1 = tk.Radiobutton(window, text="Threshold", variable=var, value=1,command=labelt1)
R1.grid(row=2,column=3, sticky="w",padx = 10, pady = 5)

R2 = tk.Radiobutton(window, text="CFD", variable=var, value=0,command=labelt2)
R2.grid(row=3,column=3, sticky="w",padx = 10, pady = 5)    

var2 = tk.IntVar()
chk=tk.Checkbutton(window,text="Invert",variable=var2)
chk.grid(row=2, column=4, sticky="w")
    
#var2 = tk.IntVar()
#chk2=tk.Checkbutton(window,text="Random",variable=var2)
#chk2.grid(row=3, column=0, sticky="nsew")
if var.get()==1:
    lbl_temp2 = tk.Label(master=window, text="Sensor 0 Threshold")
    lbl_temp1 = tk.Label(master=window, text="Sensor 1 Threshold")
    lbl_temp = tk.Label(master=window, text="Sensor 2 Threshold")
    lbl_temp3 = tk.Label(master=window, text="Sensor 3 Threshold")
elif  var.get()==0:
    lbl_temp2 = tk.Label(master=window, text="Sensor 0 Td")
    lbl_temp1 = tk.Label(master=window, text="Sensor 1 Td")
    lbl_temp = tk.Label(master=window, text="Sensor 2 Td")
    lbl_temp3 = tk.Label(master=window, text="Sensor 3 Td")
    
trig0 = tk.Entry(master=window, width=10)

trig0.grid(row=0, column=1, sticky="e",padx = 0, pady = 5)
lbl_temp2.grid(row=0, column=2, sticky="w",padx = 5, pady = 5)



trig1 = tk.Entry(master=window, width=10)
#lbl_temp1 = tk.Label(master=window, text="Sensor 1 Threshold")
trig1.grid(row=1, column=1, sticky="e",padx = 0, pady = 5)
lbl_temp1.grid(row=1, column=2, sticky="w",padx = 5, pady = 5)



trig2 = tk.Entry(master=window, width=10)
#lbl_temp = tk.Label(master=window, text="Sensor 2 Threshold")
trig2.grid(row=2, column=1, sticky="e",padx = 0, pady = 5)
lbl_temp.grid(row=2, column=2, sticky="w",padx = 5, pady = 5)

trig3 = tk.Entry(master=window, width=10)
#lbl_temp3 = tk.Label(master=window, text="Sensor 3 Threshold")
trig3.grid(row=3, column=1, sticky="e",padx = 0, pady = 5)
lbl_temp3.grid(row=3, column=2, sticky="w",padx = 5, pady = 5)

cdelay= tk.Entry(master=window, width=10)
lbl_tempd = tk.Label(master=window, text="Set Camera Delay (ns) +-8ns")
cdelay.grid(row=0, column=3, sticky="w",padx = 5, pady = 5)
lbl_tempd.grid(row=0, column=4, sticky="w",padx = 0, pady = 5)





window.mainloop()
