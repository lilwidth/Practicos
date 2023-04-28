import tkinter as tk
import math

def sumar():
    ecuacion = float(entrada1.get()) + float(entrada2.get())
    etiqueta["text"] = ecuacion

def restar():
    ecuacion = float(entrada1.get()) - float(entrada2.get())
    etiqueta["text"] = ecuacion

def multiplicar():
    ecuacion = float(entrada1.get()) * float(entrada2.get())
    etiqueta["text"] = ecuacion

def dividir():
    ecuacion = float(entrada1.get()) / float(entrada2.get())
    etiqueta["text"] = ecuacion

def raiz_cuadrada():
    ecuacion = math.sqrt(float(entrada1.get()))
    etiqueta["text"] = ecuacion

def potencia():
    ecuacion = float(entrada1.get()) ** float(entrada2.get())
    etiqueta["text"] = ecuacion

def logaritmo():
    ecuacion = math.log(float(entrada1.get()), float(entrada2.get()))
    etiqueta["text"] = ecuacion

ventana = tk.Tk()
ventana.geometry("700x700")

entrada1 = tk.Entry(ventana)
entrada1.grid(row=0, column=0)

entrada2 = tk.Entry(ventana)
entrada2.grid(row=0, column=1)

boton_sumar = tk.Button(ventana, text="Sumar", width=5, height=2, command=sumar)
boton_sumar.grid(row=1, column=0)

boton_restar = tk.Button(ventana, text="Restar", width=5, height=2, command=restar)
boton_restar.grid(row=1, column=1)

boton_multiplicar = tk.Button(ventana, text="Multiplicar", width=8, height=2, command=multiplicar)
boton_multiplicar.grid(row=1, column=2)

boton_dividir = tk.Button(ventana, text="Dividir", width=5, height=2, command=dividir)
boton_dividir.grid(row=1, column=3)

boton_raiz_cuadrada = tk.Button(ventana, text="√", width=5, height=2, command=raiz_cuadrada)
boton_raiz_cuadrada.grid(row=2, column=0)

boton_potencia = tk.Button(ventana, text="^", width=5, height=2, command=potencia)
boton_potencia.grid(row=2, column=1)

boton_logaritmo = tk.Button(ventana, text="log", width=5, height=2, command=logaritmo)
boton_logaritmo.grid(row=2, column=2)

etiqueta = tk.Label(ventana)
etiqueta.grid(row=3, column=1)

ventana.mainloop()