# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import tkinter as tk
import subprocess
import fileinput
import sys

def rewriteline(line_number, new_line):
    with open('testDMA_2.c','r') as file:
        data=file.readlines()
        
    data[line_number-1]=new_line
    with open('testDMA_2.c','w') as file:
        file.writelines(data)


def increase(): 
    
    subprocess.call(["gcc","testDMA_2.c","-o","testGUI"])
    subprocess.call("./testGUI") 


    
def buttonvalue(line, value, number):
    
    testt=str(value)
    string_n=str(number)
    value_write="esther_cfg.trglevel["+string_n+"] = "+ testt +";\n"
    rewriteline(line,   value_write)
def testtt(value):
    print(value)
    
window = tk.Tk()

window.title("ESTHER test")
window.resizable(width=False, height=False)
#window.rowconfigure(0, minsize=100, weight=1)
#window.columnconfigure([0, 1, 2], minsize=100, weight=1)


btn_increase = tk.Button(master=window, text="Fire", command=increase)
btn_increase.grid(row=0, column=0, sticky="nsew")


ent_temperature2 = tk.Entry(master=window, width=10)
lbl_temp2 = tk.Label(master=window, text="Trigger 0 value")
ent_temperature2.grid(row=0, column=1, sticky="e")
lbl_temp2.grid(row=0, column=2, sticky="w")

btn_convert2 = tk.Button( master=window,  text="Enter", command=lambda: buttonvalue(107,ent_temperature2.get(),0) )
btn_convert2.grid(row=0, column=3, sticky="nsew")


ent_temperature1 = tk.Entry(master=window, width=10)
lbl_temp1 = tk.Label(master=window, text="Trigger 1 value")
ent_temperature1.grid(row=1, column=1, sticky="e")
lbl_temp1.grid(row=1, column=2, sticky="w")

btn_convert1 = tk.Button( master=window,  text="Enter", command=lambda: buttonvalue(108,ent_temperature1.get(),1) )
btn_convert1.grid(row=1, column=3, sticky="nsew")

ent_temperature = tk.Entry(master=window, width=10)
lbl_temp = tk.Label(master=window, text="Trigger 2 value")
ent_temperature.grid(row=2, column=1, sticky="e")
lbl_temp.grid(row=2, column=2, sticky="w")

btn_convert = tk.Button( master=window,  text="Enter", command=lambda: buttonvalue(109,ent_temperature.get(),2))
btn_convert.grid(row=2, column=3, sticky="nsew")


window.mainloop()
