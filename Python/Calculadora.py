# Calculadora #
numero_1 = float(input("Pode me informar o primeiro numero a realizar a operação: "))
numero_2 = float(input("Pode me informar o segundo numero a realizar a operação: "))
op_cal = input("Qual a operação que quer  realizar? Informe com X + - ou /")

if op_cal == "X":
    multiplica_x = numero_1 * numero_2
    print(f"Sua multipicação tem um resultado de {multiplica_x}")
elif op_cal == "+":
    soma = numero_1 + numero_2
    print(f"Sua somma tem um resultado de {soma}")
elif op_cal == "-":
    less = numero_1 - numero_2
    print(f"Sua subtração tem um resultado de {less}")
elif op_cal == "/":
    if numero_2 != 0:
        divisão = numero_1 / numero_2
        print(f"O  resultado de sua divisão é {divisão}")
    else:
        print("Não é possivel dividir por zero")
else:
    print("Informe a operação correta com X + - ou /")
