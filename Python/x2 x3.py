import time
while True:
    numero = float(input("Pode me informar um número? "))

    if numero > 0:
        resultado = numero * 2
        print(f"O resultado é {resultado}")
    elif numero < 0:
        resultado = numero * 3
        print(f"O resultado é {resultado}")
    else:
        print("Não entendi...")

    continuar = input("Deseja continuar? (s/n)")
    if continuar.lower () == "s":
        break
