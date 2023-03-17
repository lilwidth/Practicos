Funcion max <- TazaMaxima ( indice )
	Si indice="camion" Entonces
		max=0.3
	SiNo
		Si indice="autobus" Entonces
			max=0.3
		SiNo
			Si indice="turismo" Entonces
				max=0.5
			SiNo
				Si indice="motocicleta" Entonces
					max=0.3
				Fin Si
			Fin Si
		Fin Si
	Fin Si
Fin Funcion

Funcion indicador <- TipoDeCoche( indice )
	Si indice="camion" Entonces
		indicador="C"
	SiNo
		Si indice="autobus" Entonces
			indicador="A"
		SiNo
			Si indice="turismo" Entonces
				indicador= "T"
			SiNo
				Si indice="motocicleta" Entonces
					indicador="M"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
Fin Funcion


Algoritmo Alcoholemia
	Definir vehiculo, nombre, indicador, indice Como Caracter
	Definir alcohol, max Como Real 
	Escribir "Ingrese el nombre del Piloto"
	Leer nombre
	Escribir "Ingrese del coche que manejaba"
	Leer vehiculo 
	Escribir "Ingrese el porcentaje de alcohol"
	Leer alcohol
	indice=Minusculas(vehiculo)
	indicador=TipoDeCoche ( indice )
	max=TazaMaxima ( indice )
	Si indice="camion" Entonces
		Si alcohol>=max Entonces
			Escribir "El conductor", nombre ,"del vehiculo", indice, "indicador" ,indicador, "esta en estado de ebriedad" 
		SiNo
			Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "no esta en estado de ebriedad" 
		Fin Si
		
	SiNo
		Si indice="autobus" Entonces
			Si alcohol>=max Entonces
				Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "esta en estado de ebriedad" 
			SiNo
				Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "no esta en estado de ebriedad"
			Fin Si
		SiNo
			Si indice="turismo" Entonces
				Si alcohol>=max Entonces
					Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "esta en estado de ebriedad" 
				SiNo
					Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "no esta en estado de ebriedad"
				Fin Si
			SiNo
				Si indice="motocicleta" Entonces
					Si alcohol>=max Entonces
						Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "esta en estado de ebriedad" 
					SiNo
						Escribir "El conductor", nombre ,"de vehiculo", indice, "indicador" ,indicador, "No esta en estado de ebriedad"
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo