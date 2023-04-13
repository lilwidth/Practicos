def es_par(numero):
    return numero % 2 == 0

def es_primo(numero):
    return numero > 1 and all(numero % i != 0 for i in range(2, int(numero**0.5) + 1))

def es_fibonacci(numero):
    a, b = 0, 1
    while b < numero:
        a, b = b, a + b
    return b == numero or numero == 0

numero = int(input("Ingrese un numero: "))

print(numero, "es un numero par" if es_par(numero) else "es un numero impar")

print(numero, "es un numero primo" if es_primo(numero) else "no es un numero primo")

print(numero, "es un numero de la serie Fibonacci" if es_fibonacci(numero) else "no es un numero de la serie Fibonacci")