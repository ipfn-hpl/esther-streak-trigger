import numpy
import matplotlib
matplotlib.use('TkAgg') # este diz ao matplotlib quem vai ser o gestor de janelas

import sys # isto foi a minha tentativa de future proofing

if sys.version_info[0] < 3:

    import Tkinter as Tk

else:

    import tkinter as Tk

class spectra_ploter: # as janelas tem de ser classes
    def __init__(self, master):
        self.master = master;
        self.master.wm_title("Spectra Ploter");

#codigo que faz load do ficheiro esta aqui#

        self.data = self.file.data;


        #Create the x-axis from length of data
        self.axis_x = numpy.core.multiarray.array(range(len(self.data[1,:])));
        self.offset = self.file.offset; #Tk.DoubleVar();
        self.offset.set(0.0);
        self.offset.trace('w', self.remake_axis_x);
        self.cal_factor = self.file.cal_factor#Tk.DoubleVar();
        self.cal_factor.set(1)#(6825-6550)/(length*1.0);
        self.cal_factor.trace('w', self.remake_axis_x);
        self.axis_x = self.axis_x*self.cal_factor.get()+self.offset.get();

        #Create the main figure and the 3 panels
        self.fig = Figure(figsize=(15,8), dpi=100)
        self.header_text = 'Viewer Mode'
        self.panel1 = self.fig.add_subplot(311)
        self.panel2 = self.fig.add_subplot(312)#, axisbg='k')
        self.panel3 = self.fig.add_subplot(313)#, axisbg='k')

        # a tk.DrawingArea
        self.canvas = FigureCanvasTkAgg(self.fig, master=self.master)
        self.canvas.draw()
        self.canvas.get_tk_widget().pack(side=Tk.TOP, fill=Tk.BOTH, expand=1)
        # Start to draw stuff
        self.make_panel2();



    def _quit(self):
        #print 'curve_list has '+str(len(curve_list))+' items'
        print 'Calibration Factor = %f \nOffset = %f'%(self.cal_factor.get(),self.offset.get())
        print self.file
        self.master.quit()     # stops mainloop
        self.master.destroy()  # this is necessary on Windows to prevent
                        # Fatal Python Error: PyEval_RestoreThread: NULL tstate


    #Makes the panels with all the fancy labels
    def make_panel2(self):
        self.panel2.cla()
        self.panel2.plot(self.axis_x,self.data[100,:],'b')
        self.panel2.set_xlabel('Channel')
        self.panel2.set_ylabel('Intensity [A.U.]')
        self.panel2.set_xlim((min(self.axis_x), max(self.axis_x)))
        self.panel2.grid(b=True,color='black')
        self.canvas.draw()


    #Remakes axis_x -> Called when calibration variables change
    def remake_axis_x(self,*args):
        #global axis_x
        self.axis_x = numpy.core.multiarray.array(range(len(self.data[1,:])))*self.cal_factor.get()+self.offset.get();
        self.make_panel2();



    #Handler for Mouse_Clicking on panel1
    def onclick_panel1(self,event):
        #global selected_row, selected_collumn,curve_list
        self.selected_row=int(event.ydata);
        self.selected_collumn = int(event.xdata);

        self.cleanCurve_list()

        self.make_panel2() #Remaking the plot is ineficient
        self.make_panel3() #Remaking the plot is ineficient
        self.canvas.draw()


    #Handler for Mouse_Clicking
    def onclick(self,event):
        pass

    #Handler for Keyboard presses
    def onkeyboardpress(self,event):
        pass

    def not_implemented_yet(self):
        newWindow = Tk.Toplevel(self.master)
        app = warning_widget(newWindow, 'Not implemented yet!')


def main():
    root = Tk.Tk()
    app = spectra_ploter(root)
    root.mainloop()

if __name__ == '__main__':
    main()
