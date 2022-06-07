
from distutils.log import Log
from tkinter import Entry, Tk, Label, Button, Frame

from constants import CFG
from receta import App
from caduca import App12
from caducainfo import App123
from reservar import App1234
from registrar import App12345


class Login1(Frame):

    def __init__(self, master=None) -> None:
        super().__init__(master)
        self.master = master
        self.master["bg"] = "#314252"
        self.setup_ui()


    def setup_ui(self) -> None:
		
        self.caducar = Button(self.master, text="Caducar Medicamentos", **CFG["btn"], command=App123)
        self.stock = Button(self.master, text="Informe Stock", **CFG["btn"], command=App123 )
        self.caducar.place(x=50, y=40, width=140)
        self.stock.place(x=50, y=80, width=140)
        self.prescripciones = Button(self.master, text="Mostrar Prescripciones", **CFG["btn"], command=App)
        self.reservar = Button(self.master, text="Reservar Medicamentos", **CFG["btn"], command=App1234)
        self.prescripciones.place(x=50, y=120, width=140)
        self.reservar.place(x=50, y=160, width=140)
        self.registarentrega = Button(self.master, text="Registrar Entrega", **CFG["btn"], command=App12345)
        self.modificar = Button(self.master, text="Modificar Stock", **CFG["btn"], command=App12)
        self.registarentrega.place(x=50, y=200, width=140)
        self.modificar.place(x=50, y=240, width=140)
		
        self.salir= Button(self.master, text="Salir", **CFG["btn"])
        
        self.salir.place(x=50, y=280, width=140)
        



class MainWindow1(Tk):

    def __init__(self) -> None:
        super().__init__()
        self.geometry("600x400")
        self.login = Login1(self)
        self.login.pack()


    
    
    def show_system(self):
        
        system = Login1(self)
        system.pack()
        MainWindow1.destroy


if __name__ == "__main__":
    Login1 = MainWindow1()
    Login1.mainloop()
