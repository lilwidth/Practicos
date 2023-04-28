total = int(input("Ingresa una cantidad total: "))

num1 = total // 3
num2 = num1 + 1
num3 = total - num1 - num2

print("Los tres números cuya suma es igual a la cantidad total son:", num1, num2, num3)

mayor= max(num1, num2, num3)

print("El número mayor de los tres números es:", mayor)