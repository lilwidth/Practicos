import random

num_equipos = 16
direcciones = []
for i in range(4):
    direccion = input(f"Ingrese nombre del equipo {i+1}: ")
    direcciones.append(direccion)

equipos = [(f"Equipo {i}", random.choice(direcciones)) for i in range(1, num_equipos+1)]

random.shuffle(equipos)
partidos_primera_ronda = [(equipos[i], equipos[i+1]) for i in range(0, num_equipos, 2)]
for partido in partidos_primera_ronda:
    print(f"{partido[0][0]} ({partido[0][1]}) vs {partido[1][0]} ({partido[1][1]}): {random.choice([f'{partido[0][0]} ganó', f'{partido[1][0]} ganó', 'Empate'])}")

partidos_segunda_ronda = [(partidos_primera_ronda[i][0], partidos_primera_ronda[i+1][1]) for i in range(0, len(partidos_primera_ronda), 2)]
for partido in partidos_segunda_ronda:
    resultado = random.choice([f'{partido[0][0]} ganó', f'{partido[1][0]} ganó'])
    if resultado == 'Empate':
        resultado = f'{partido[0][0]} ganó si o si'
    print(f"{partido[0][0]} ({partido[0][1]}) vs {partido[1][0]} ({partido[1][1]}): {resultado}")

semifinales = random.sample(partidos_segunda_ronda, 4)
for partido in semifinales:
    resultado = random.choice([f'{partido[0][0]} ganó', f'{partido[1][0]} ganó'])
    if resultado == 'Empate':
        resultado = f'{partido[0][0]} ganó si o si'
    print(f"{partido[0][0]} ({partido[0][1]}) vs {partido[1][0]} ({partido[1][1]}): {resultado}")

final = random.sample(semifinales, 2)
resultado = random.choice([f'{final[0][0][0]} ganó', f'{final[1][0][0]} ganó'])
if resultado == 'Empate':
    resultado = f'{final[0][0][0]} ganó si o si'
print(f"Final: {final[0][0][0]} ({final[0][0][1]}) vs {final[1][0][0]} ({final[1][0][1]}): {resultado}")
print(f"Ganador: {final[0][0][0]}")
print("¡Felicidades al equipo ganador!")