serie = [1, 3, 6, 10, 15]

opciones = [19, 21, 23, 25]

diferencias = [serie[i+1] - serie[i] for i in range(len(serie)-2)]

siguiente_diferencia = diferencias[-2] + diferencias[-2]

siguiente_numero = serie[-1] + siguiente_diferencia

print("El siguiente número en la serie es:", siguiente_numero)