import time

print("Casadas")
nome = input("Qual o seu nome: ")
sexo = input("Qual o seu sexo? (F/M)")
print("A proxima pergunta responda com (casado(a), solteiro(a), divorciado(a)")
time.sleep(5)
estado_civil = input("Qual o seu estado CIVIL? ")

if sexo.upper () == "F":
    print("Continuando")
    if estado_civil.lower() == "casada":
        anos_casada = int(input("Informe em anos o tempo de casada: "))
        print(f"De acordo com suas informações você é casada e tem {anos_casada} de casada")
else:
    print("Tudo bem, não é útil para meu codigo.")
