Algoritmo DiaDeLaSemana
	Definir dia Como Caracter
	Escribir " Por favor ingresa un dia de semana"
	leer dia
	Si dia = "domingo" o dia = "Domingo" Entonces
		Imprimir  " El Domingo no es un dia laboral segun la ley de trabajadores"
		Imprimir  " Por lo tanto Felicidades ese dia no trabajas aprovechalo"
	SiNo
		Si dia = "lunes" o dia = "martes" o dia = "miercoles" o dia = "jueves" o dia = "viernes" o dia = "sabado" o dia = "Lunes" o dia = "Martes" o dia = "Miercoles" o dia = "Jueves" o dia = "Viernes" o dia = "Sabado" Entonces
			Imprimir "El dia " dia " es un dia laboral segun la ley"
			Imprimir "Levantate y ve a trabajar es un gran dia"
		SiNo
			Imprimir" Lo lamento pero no ingresaste un dia o lo escribiste mal "
			imprimir " Intenta escribirlo en minusculas "
		Fin Si
	Fin Si
FinAlgoritmo