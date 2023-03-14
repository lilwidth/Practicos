Algoritmo determinar_bisiesto
		Escribir "Ponga un año:"
		Leer anio
		
		Si (anio % 4 = 0 Y anio % 100<>0) O anio % 400 = 0 Entonces
			Escribir "Ese año si es biciesto"
		Sino
			Escribir "Ese año no es bisiesto"
		Fin Si
FinAlgoritmo