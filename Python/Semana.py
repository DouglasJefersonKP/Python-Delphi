print("Bem vindo ao contador semanal")
while True:
    dia_numero = int(input("Informe  de 1  a 7, que são os sequeciais da semana: "))

# condição
    if dia_numero == 1:
        print("Segunda-feira")
    elif dia_numero == 2:
        print("Terceira-feira")
    elif dia_numero == 3:
        print("Quarta-feira")
    elif dia_numero == 4:
        print("Quinta-feira")
    elif dia_numero == 5:
        print("Sexta-feira")
    elif dia_numero == 6:
        print("Sábado")
    elif dia_numero == 7:
        print("Domingo")
    else:
        print("Número invalido")

    continuar = input("Deseja verificar outro dia? (s/n): ")
    if continuar.lower() != "s":
        break
