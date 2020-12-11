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

def rewriteline(line_number, new_line):
    with open('testDMA_2.c','r') as file:
        data=file.readlines()
        
    data[line_number-1]=new_line
    with open('testDMA_2.c','w') as file:
        file.writelines(data)


def increase(): 
    if(var.get()==1):
        rewriteline(116,"rc = ioctl(fd, ESTHER_TRG_INVERT_ON);\n")
    else:
        rewriteline(116,"rc = ioctl(fd, ESTHER_TRG_INVERT_OFF);\n")

    #if(var2.get()==1):
        #rewriteline(121,"rc = ioctl(fd, ESTHER_TRG_RANDOM_ON);\n")
    #else:
        #rewriteline(121,"rc = ioctl(fd, ESTHER_TRG_RANDOM_OFF);\n")
        
    subprocess.call(["gcc","testDMA_2.c","-o","testGUI"])
    subprocess.call("./testGUI") 
    
    lbl_te = tk.Label(master=window, text='')
    
    lbl_te.grid(row=5, column=0, sticky="w") 
    
    with open(fileName,mode ='rb') as file:
     fileContent=file.read()

    a= struct.unpack("h"*((len(fileContent))//2),fileContent)
    a= np.reshape(a, (-1,4))    
    figure1 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,0],label="ch0")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 0')
    canvas = FigureCanvasTkAgg(figure1, master=window)
    canvas.draw()
    canvas.get_tk_widget().grid(row=4, column=0, ipadx=40, ipady=20)
    
    figure2 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,1],label="ch1")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 1')
    canvas2 = FigureCanvasTkAgg(figure2, master=window)
    canvas2.draw()
    canvas2.get_tk_widget().grid(row=4, column=2, ipadx=40, ipady=20)
    
    figure3 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,2],label="ch2")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 2')
    canvas3 = FigureCanvasTkAgg(figure3, master=window)
    canvas3.draw()
    canvas3.get_tk_widget().grid(row=6, column=0, ipadx=40, ipady=20)
    
    figure4 = plt.figure(figsize=(3,2), dpi=100)
    plt.plot(a[:,3],label="ch3")
    plt.xlabel('Sample')
    plt.ylabel('lsmb')
    plt.title('Channel 3')
    canvas4 = FigureCanvasTkAgg(figure4, master=window)
    canvas4.draw()
    canvas4.get_tk_widget().grid(row=6, column=2, ipadx=40, ipady=20)
    
    with open('file.txt','r') as file:
        datas=file.readlines()
    lbl_s = tk.Label(master=window, text=datas[0])
    
    lbl_s.grid(row=2, column=0, sticky="w")   
        

    
def buttonvalue(line, value, number):
    
    testt=str(value)
    string_n=str(number)
    value_write="esther_cfg.trglevel["+string_n+"] = "+ testt +";\n"
    rewriteline(line,   value_write)
    
def buttondelay(line, value):
    
    testt=str(value)

    value_write="cam_delay="+testt+";\n"
    rewriteline(line,   value_write)
 


def testtt(value):
    print(value)


fileName="dataDMA.bin"


    
window = tk.Tk()


window.title("ESTHER test")
window.resizable(width=False, height=False)

#window.rowconfigure(0, minsize=100, weight=1)
#window.columnconfigure([0, 1, 2], minsize=100, weight=1)


btn_increase = tk.Button(master=window, text="Fire", command=increase)
btn_increase.grid(row=0, column=0, sticky="nsew")

var = tk.IntVar()
chk=tk.Checkbutton(window,text="Invert",variable=var)
chk.grid(row=1, column=0, sticky="nsew")
    
var2 = tk.IntVar()
chk2=tk.Checkbutton(window,text="Random",variable=var2)
chk2.grid(row=3, column=0, sticky="nsew")

ent_temperature2 = tk.Entry(master=window, width=10)
lbl_temp2 = tk.Label(master=window, text="Trigger 0 value")
ent_temperature2.grid(row=0, column=1, sticky="e")
lbl_temp2.grid(row=0, column=2, sticky="w")

btn_convert2 = tk.Button( master=window,  text="Enter", command=lambda: buttonvalue(108,ent_temperature2.get(),0) )
btn_convert2.grid(row=0, column=3, sticky="nsew")


ent_temperature1 = tk.Entry(master=window, width=10)
lbl_temp1 = tk.Label(master=window, text="Trigger 1 value")
ent_temperature1.grid(row=1, column=1, sticky="e")
lbl_temp1.grid(row=1, column=2, sticky="w")

btn_convert1 = tk.Button( master=window,  text="Enter", command=lambda: buttonvalue(109,ent_temperature1.get(),1) )
btn_convert1.grid(row=1, column=3, sticky="nsew")

ent_temperature = tk.Entry(master=window, width=10)
lbl_temp = tk.Label(master=window, text="Trigger 2 value")
ent_temperature.grid(row=2, column=1, sticky="e")
lbl_temp.grid(row=2, column=2, sticky="w")

btn_convert = tk.Button( master=window,  text="Enter", command=lambda: buttonvalue(110,ent_temperature.get(),2))
btn_convert.grid(row=2, column=3, sticky="nsew")

ent_temperatured = tk.Entry(master=window, width=10)
lbl_tempd = tk.Label(master=window, text="Set Camera Delay")
ent_temperatured.grid(row=3, column=1, sticky="e")
lbl_tempd.grid(row=3, column=2, sticky="w")

btn_convertd = tk.Button( master=window,  text="Enter", command=lambda: buttondelay(118,ent_temperatured.get()))
btn_convertd.grid(row=3, column=3, sticky="nsew")



window.mainloop()
