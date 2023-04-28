for i in range(1, 101):
    if '9' in str(i):
        print(i)
count = 0

for i in range(1, 101):
    count += str(i).count('9')

print(f"El dígito 9 aparece {count} veces en los números del 1 al 100.")