


Funcion resultado <- NivelAños ( hemoglobina, nombre, cantidad, sexo )
	Si cantidad>1 y cantidad<=5 Entonces
		Si hemoglobina>=11.5 y hemoglobina<=15 Entonces
			resultado="negativo"
			Escribir nombre, "es", resultado, "anemia"
		SiNo
			resultado="positivo"
			Escribir nombre, "es", resultado, "anemia"
		Fin si
	SiNo
		Si cant>5 y cant<=10 Entonces
			Si hemoglobina>=12.6 y hemoglobina<=15.5 Entonces
				resultado="negativo"
				Escribir nombre, "es", resultado, "anemia"
			SiNo
				resultado="positivo"
				Escribir nombre, "es", resultado, "anemia"
			Fin Si
		SiNo
			Si cantidad>10 y cantidad<=15 Entonces
				Si hemoglobina>=13 y hemoglobina<=15.5 Entonces
					resultado="negativo"
					Escribir nombre, "es", resultado, "anemia"
				SiNo
					resultado="positivo"
					Escribir nombre, "es", resultado, "anemia"
					
				Fin Si
			SiNo 
				Si sexo="femenino" Entonces
					Si hemoglobina>=12 y hemoglobina<=6 Entonces
						resultado="negativo"
						Escribir nombre, "es", resultado, "anemia"
					SiNo
						resultado="positivo"
						Escribir nombre, "es", resultado, "anemia"
					Fin Si
				SiNo
					Si hemoglobina>=14 y hemoglobina<=15 Entonces
						resultado="negativo"
						Escribir nombre, "es", resultado, "anemia"
					SiNo
						resultado="positivo"
						Escribir nombre, "es", resultado, "anemia"
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion

Funcion resultado2 <- NivelMeses ( hemoglobina, nombre, cantidad )
	Si cant>=0 y cantidad<=1 Entonces
		Si hemoglobina>=13 y hemoglobina<=26 Entonces
			resultado2="negativo"
			Escribir nombre, "es", resultado2, "anemia"
		SiNo
			resultado2="positivo"
			Escribir nombre, "es", resultado2, "a anemia"
		Fin Si
	SiNo
		Si cantidad>1 y cantidad<=6 Entonces
			Si hemoglobina>=10 y hemoglobina<=18 Entonces
				resultado2="negativo"
				Escribir nombre, "es", resultado2, "a anemia"
			SiNo
				resultado2="positivo"
				Escribir nombre, "es", resultado2, "a anemia"
			Fin Si
		SiNo
			Si hemoglobina>=11 y hemoglobina<=15 Entonces
				resultado2="negativo"
				Escribir nombre, "es", resultado2, "a anemia"
			SiNo
				resultado2="positivo"
				Escribir nombre, "es", resultado2, "a anemia"
			Fin Si
		Fin Si
	Fin Si
Fin Funcion

Funcion determinante <- DeterminarEdad ( meses, num, años )
	Si meses="m" Entonces
		determinante=num
	SiNo
		determinante=años
	Fin Si
Fin Funcion



Algoritmo AnemiaLOl
	Definir nombre, sexo, edadesc, resultado,resultado2, meses,num Como Caracter
	Definir hemoglobina, determinante,edad Como Real
	Definir cantidad, años Como Entero
	Definir femenino, masculino Como Logico
	Escribir "Usted esta en el sistema medico para determinar si padeces de anemia"
	Escribir "Escriba el nombre del paciente"
	Leer nombre
	Escribir "Ingrese su edad"
	Leer edadesc
	Escribir "Ingrese su genero"
	Leer sexo
	Escribir "Ingrese su nivel de hemoglobina actual"
	Leer hemoglobina
	edad=longitud(edadesc)
	meses=subcadena(edadesc,3,3)
	num=subcadena(edadesc,1,1)
	cant=ConvertirANumero(num)
	determinante=DeterminarEdad ( meses, num, años )
	Si determinante=cant Entonces
		resultado2=NivelMeses ( hemoglobina, nombre, cantidad )
	SiNo
	    resultado=NivelAños( hemoglobina, nombre, cantidad, sexo )
	Fin Si
	
FinAlgoritmo