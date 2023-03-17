Funcion promedio <- PromedioDeTres ( numero1, numero2, numero3 )
	promedio=(numero1+numero2+numero3)/3
	Escribir "El promedio calculado es:" , promedio
Fin Funcion

Funcion suma <- Sumatoria ( numero1, numero2, numero3 )
	suma=numero1+numero2+numero3
	Escribir "El calculado del producto es:", suma
Fin Funcion

Funcion azarm <- NumeroAzar ( numero3 )
	azarm=azar(numero3)
	Escribir "El numero al azar es:" , azarm
Fin Funcion

Funcion mayor <- NumeroMayor ( numero1,numero2,numero3 )
	Si (numero1>numero2 y numero1>numero3) Entonces
		Escribir "El numero mayor es: ", numero1
	SiNo
		Si (numero2>numero1 y numero2>numero3)
			Escribir "El numero mayor es:", numero2
		SiNo
			Si (numero3>numero1 y numero3>numero2)
				Escribir "El numero mayor es: ", numero3
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion menor <- NumeroMenor ( numero1,numero2,numero3 )
	Si (numero1<numero2 y numero1<numero3) Entonces
		Escribir "El numero menor es:", numero1
	SiNo
		Si (numero2<numero1 y numero2<numero3)
			Escribir "El numero menor es:", numero2
		SiNo
			Si (numero3<numero1 y numero3<numero2)
				Escribir "El numero menor es:", numero3
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion raizc<- RaizCuadrada( numero1,numero2,numero3 )
	raizc=RC(numero1+numero2+numero3)
	Escribir "La raiz cuadrada de la suma es:", raizc
Fin Funcion

Funcion potencia <- PotenciaDeNumeros ( numero1,numero2,numero3)
	Si (numero1<numero2 y numero1<numero3) Entonces
		Escribir "La potencia es: " numero1*numero1
	SiNo
		Si (numero2<numero1 y numero2<numero3)
			Escribir "La potencia es: " numero2*numero2
		SiNo
			Si (numero3<numero1 y numero3<numero2)
				Escribir "La potencia es: " numero3*numero3
			FinSi
		FinSi
	Fin Si
Fin Funcion

Algoritmo ProfeLOL
	Definir numero1, numero2, numero3, operacion Como Entero
	Definir suma, promedio, menor, mayor, azarm, raizc, potencia, resultado Como Real
	Escribir "Escribir el primer numero"
	Leer numero1
	Escribir "Escriba el segundo numero"
	Leer numero2
	Escribir "Escriba el tercer numero"
	Leer numero3
	Escribir "Seleccione la operacion que quiere realizar con los numeros"
	Escribir "Sumatoria=1"
	Escribir "Promedio=2"
	Escribir "Numero mayor=3"
	Escribir "Numero menor=4"
	Escribir "Escoger al azar un numero=5"
	Escribir "Raiz Cuadra de la Sumatoria de los tres numeros=6"
	Escribir "Potencia del numero menor de los tres numero=7"
	Leer operacion
	
	Segun operacion Hacer
		1:
			resultado=Sumatoria ( numero1, numero2, numero3 )
		2:
			resultado= PromedioDeTres ( numero1, numero2, numero3 )
		3:
			resultado=NumeroMayor ( numero1,numero2,numero3 )
		4:
			resultado=NumeroMenor ( numero1,numero2,numero3 )
		5:
			resultado= NumeroAzar ( numero3 )
		6:
			resultado=RaizCuadrada( numero1,numero2,numero3 )
		De Otro Modo:
			resultado=PotenciaDeNumeros ( numero1,numero2,numero3)
	Fin Segun
FinAlgoritmo