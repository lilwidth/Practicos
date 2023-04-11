Algoritmo fibonacci
    Escribir "Ingrese un número:"
    Leer numero
    si numero == 0 entonces
        Escribir 0
		si numero == 1 entonces
			Escribir 0, 1
		sino
			a = 0
			b = 1
			Escribir a, b
			Para i desde 3 hasta numero
				c = a + b
				Escribir c
				a = b
				b = c
			Fin Para
		Fin si
	FinSi
	Fin Algoritmo