import random
class Panaderia:
    def __init__(self, capacidad):
        self.capacidad = capacidad
        self.consumo_total = {'pan': 0, 'masas': 0, 'masas_dulces': 0}

    def agregar_cliente(self, consumo):
        for producto, cantidad in consumo.items():
            self.consumo_total[producto] += cantidad

        if self.consumo_total['pan'] >= 0.9 * self.capacidad:
            print("¡El consumo total ha alcanzado el 90% de la capacidad!")

    def calcular_tiempo_produccion(self):
        tiempo_pan = self.consumo_total['pan'] / 20 * 3
        tiempo_masas = (self.consumo_total['masas'] // 12) * 4
        tiempo_dulces = (self.consumo_total['masas_dulces'] // 12) * 4

        tiempo_total = max(tiempo_pan, tiempo_masas, tiempo_dulces)
        return tiempo_total

    def mostrar_consumo_total(self):
        print("Consumo total:")
        for producto, cantidad in self.consumo_total.items():
            if producto == 'pan':
                print(f"{producto}: {cantidad} kg")
            else:
                print(f"{producto}: {int(cantidad)} docenas")

    def mostrar_consumo_cliente(self, cliente_num, consumo):
        print(f"Consumo del cliente {cliente_num}:")
        for producto, cantidad in consumo.items():
            if producto == 'pan':
                print(f"{producto}: {cantidad} kg")
            else:
                print(f"{producto}: {int(cantidad)} docenas")


panaderia = Panaderia(1000)

clientes = [
    {'pan': 50, 'masas': 10, 'masas_dulces': 5},
    {'pan': 25, 'masas': 5, 'masas_dulces': 5},
    {'pan': 1, 'masas': 1, 'masas_dulces': 1},
    {'pan': 30, 'masas': 10, 'masas_dulces': 10},
    {'pan': 45, 'masas': 8, 'masas_dulces': 4},
    {'pan': 100, 'masas': 8, 'masas_dulces': 4},
    {'pan': 50, 'masas': 15, 'masas_dulces': 12}
]

for i, cliente in enumerate(clientes, start=1):
    panaderia.agregar_cliente(cliente)

    tiempo_produccion = panaderia.calcular_tiempo_produccion()
    print("El tiempo de producción necesario para el cliente", i, "es de:", round(tiempo_produccion, 2), "horas")
    panaderia.mostrar_consumo_cliente(i, cliente)
    print()

panaderia.mostrar_consumo_total()
tiempo_produccion_total = panaderia.calcular_tiempo_produccion()
print("El tiempo de producción total es de:", round(tiempo_produccion_total, 2), "horas")

for j in range(3):
    consumo_aleatorio = {
        'pan': random.randint(1, 100),
        'masas': random.randint(1, 20),
        'masas_dulces': random.randint(1, 20)
    }
    panaderia.agregar_cliente(consumo_aleatorio)
    print("Cliente añadido con consumo aleatorio:")
    panaderia.mostrar_consumo_total()
    print()

tiempo_produccion_total = panaderia.calcular_tiempo_produccion()
print("El tiempo de producción total es de:", round(tiempo_produccion_total, 2), "horas")