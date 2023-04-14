Algoritmo ParOFibonacci
	Escribir "Ingrese un número:"
	Leer numero
	Si numero % 2 = 0 Entonces
		Escribir "El número ingresado es par"
	Sino
		a = 0
		b = 1
		fib = 0
		mientras fib < numero hacer
			fib = a + b
			a = b
			b = fib
		fin mientras
		Si fib = numero Entonces
			Escribir "El número ingresado pertenece a la secuencia de Fibonacci"
			si num mod 2=0  entonces escribir "el numero es par" 
			SiNo
				escribir " el numero es impar" 
			FinSi	
		Sino
			Escribir "El número ingresado no es par ni pertenece a la secuencia de Fibonacci"
		Fin Si
	Fin Si
	si cont=2 escribir "el numero no es primo"
	SiNo
		Escribir "el numero es primo"
	FinSi
	
Fin Algoritmo