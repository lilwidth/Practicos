Algoritmo determinar_bisiesto
		Escribir "Ponga un a�o:"
		Leer anio
		
		Si (anio % 4 = 0 Y anio % 100<>0) O anio % 400 = 0 Entonces
			Escribir "Ese a�o si es biciesto"
		Sino
			Escribir "Ese a�o no es bisiesto"
		Fin Si
FinAlgoritmo