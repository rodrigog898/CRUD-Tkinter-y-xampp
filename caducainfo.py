from cgitb import text
from tkinter import *
from database1 import *
from tkinter import messagebox
from tkinter import ttk
from tkinter import *
from receta import Tk as tkk




class App123:

		def __init__(self, master=None):
			self.master = master
			self.frame = master
			self.DrawList()

			self.DrawButtons()
		
		def DrawButtons(self):
			self.btn_confirm = Button(self.frame,foreground="white", text="Guardar",borderwidth=2,relief="flat", cursor="hand1",overrelief="raise",background="#0051C8", command=lambda:self.confirmProcess()).place(x=750, y=340, width=90)
			self.btn_cancel = Button(self.frame, text="Cancelar",foreground="white",borderwidth=2,relief="flat", cursor="hand1",overrelief="raise",background="#E81123", command= lambda:self.canceProcess()).place(x=850, y=340, width=90)
		def DrawList(self):
			self.list_elemts = ttk.Treeview(self.frame, columns=(1, 2, 3, 4, 5), show="headings", height="8")

			# --- STYLE ---	
			style = ttk.Style()
			style.theme_use("clam")
			style.configure("Treeview.Heading", background="#0051C8",relief="flat",foreground="white")
			style.map("Treeview", background=[('selected', 'yellow')], foreground=[('selected', 'black')])

			#--- Event---
			self.list_elemts.bind("<Double 1>", self.getRow)
			#---- end ---
        
			self.list_elemts.heading(1, text="ID")
			self.list_elemts.heading(2, text="Descripcion")
			self.list_elemts.heading(3, text="Fabricante"),self.list_elemts.heading(4, text="Gramaje")
			self.list_elemts.heading(5, text="Cantidad")

            
			self.list_elemts.column(1, anchor=CENTER)
			self.list_elemts.column(2, anchor=CENTER)
			self.list_elemts.column(3, anchor=CENTER)
			self.list_elemts.column(4, anchor=CENTER)
			self.list_elemts.column(5, anchor=CENTER)

           
           

			# -- FILL LIST--
			d = Data()
			self.rows = d.returnAllElements()
			for i in self.rows:
				self.list_elemts.insert('', 'end', values=i)
			# ----- end -----

			self.list_elemts.place(x=500, y=90)


		def getRow(self, event):
			na = StringVar()
			ed = StringVar()
			ca = StringVar()
			ic = StringVar()
			ci = StringVar()
			rowName = self.list_elemts.identify_row(event.y)
			item = self.list_elemts.item(self.list_elemts.focus())
			n = item['values'][0]
			e = item['values'][1]
			c = item['values'][2]
			i = item['values'][3]
			a = item['values'][4]
			na.set(n)
			ed.set(e)
			ca.set(c)
			ic.set(i)
			ci.set(a)
			pop = Toplevel(self.frame)
			pop.geometry("400x400")
			lbl_n = Entry(pop, textvariable=na).place(x=40, y = 40)
			lbl_e = Entry(pop, textvariable=ed).place(x=40, y = 80)
			lbl_c = Entry(pop, textvariable=ca).place(x=40, y = 120)
			lbl_i = Entry(pop, textvariable=ic).place(x=40, y = 160)
			lbl_a = Entry(pop, textvariable=ci).place(x=40, y = 200)
			btn_change = Button(pop, text="Actualizar", relief="flat", background="#00CE54", foreground="white", command= lambda:self.editar(n, na.get(), ed.get(), ca.get(), ic.get(), ci.get())).place(x=180, y=160, width=90)
			btn_delete = Button(pop, text="Eliminar", relief="flat", background="red", foreground="white", command= lambda:self.eliminar(n)).place(x=290, y=160, width=90)



		def eliminar(self, n):
			d = Data()
			d.Delete(n)
			messagebox.showinfo(title="Actualizacion", message="Se han actualizado los datos")
			self.ClearList()
			self.DrawList()
			self.ClearEntry()



		def editar(self, n, na, ed, ca, ic, ci):
			arr = [na, ed, ca, ic, ci]
			d = Data()
			d.UpdateItem(arr, n)
			messagebox.showinfo(title="Actualizacion", message="Se han actualizado los datos")
			self.ClearList()
			self.DrawList()
			self.ClearEntry()




		def ClearList(self):
			self.list_elemts.delete(*self.list_elemts.get_children())
		
		def canceProcess(self):
			self.ClearEntry()

		
		def ClearEntry(self):
			self.id.set("")
			self.descripcion.set("")
			self.fabricante.set("")
			self.gramaje.set("")
			self.cantidad.set("")


		
		def confirmProcess(self):
			if self.id.get() != "" and self.descripcion.get() != "" and self.fabricante.get() != "" and self.gramaje.get() != ""and self.cantidad.get() != "":
				d = Data()
				arr = [self.id.get(), self.descripcion.get(), self.fabricante.get(), self.gramaje.get(), self.cantidad.get()]
				d.InsertItems(arr)
				messagebox.showinfo(title="Alerta", message="Se inserto correctamente!")
				self.ClearList()
				self.DrawList()
				self.ClearEntry()
			else:
				messagebox.showinfo(title="Error", message="Debe llenar los campos para poder guardar!")
if __name__ == "__main__":
	root = Tk()
	root.title("CRUD")
	root.config(background="#314252")
	root.geometry("1600x400")
	aplication = App123(root)
	tkk.destroy
	
	root.mainloop()