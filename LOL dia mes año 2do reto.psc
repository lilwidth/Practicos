Algoritmo LOL
    Definir dia, mes, año, dia_literal, mes_literal, fecha_literal Como Caracter
	Definir dianumero,mesnumero Como Entero
    
    Escribir "Ingrese una fecha en formato dd/mm/yyyy: "
    Leer fecha_literal
    
    dia <- SubCadena(fecha_literal, 1, 2)
    mes <- SubCadena(fecha_literal, 4, 5)
    año <- SubCadena(fecha_literal, 7, 10)
    
    diaNumero <- ConvertirANumero(dia)
    mesnumero <- ConvertirAnumero(mes)

    Segun mes Hacer
        "1": mes_literal <- "Enero"
        "2": mes_literal <- "Febrero"
        "3": mes_literal <- "Marzo"
        "4": mes_literal <- "Abril"
        "5": mes_literal <- "Mayo"
        "6": mes_literal <- "Junio"
        "7": mes_literal <- "Julio"
        "8": mes_literal <- "Agosto"
        "9": mes_literal <- "Septiembre"
		"10": mes_literal <- "Octubre"
		"11": mes_literal <- "Noviembre"
		"12": mes_literal <- "Diciembre"
	FinSegun
	Escribir  dia, "de",mes_literal, "de", año
FinAlgoritmo
