Algoritmo NumeroDeTresCifras
	Definir numeroo, cifra1, cifra3 Como Entero
	Escribir " Por favor ingresa un numero de 3 cifras"
	leer Numeroo
	Si Numeroo < 1000 y Numeroo > 99 Entonces
		cifra1 = trunc (Numeroo/100)
		cifra3 = Numeroo mod 10
		Si cifra1 = cifra3 Entonces
			Imprimir "El numero " Numeroo " es un numero capicua"
		SiNo
			Imprimir "El numero " Numeroo " no es un numero capicua"
		Fin Si
	SiNo
		Imprimir  "El numero " Numeroo " no es un numero de 3 cifras"
		Imprimir "Por favor vuelve a intentarlo"
	Fin Si
	
FinAlgoritmo