while True:
    A = float(input("Qual o valor de (A): "))
    B = float(input("Qual o valor de (B): "))
    C = float(input("Qual o valor de (C): "))
    soma_ab = A + B

    if soma_ab < C:
        print("Soma de A + B é menor que C ")
    else:
        print(f"A soma de ambos é maior que o C {soma_ab}")

    continuar = input("Deseja continuar? (s/n)")
    if continuar.lower() == "s":
        break
    
