# import
import time

print("Bem-vindo ao Centro Eleitoral")
time.sleep(2)
nome = input("Qual o seu nome? ")
time.sleep(2)
idade = int(input("Qual a sua idade? "))
time.sleep(2)

# Condição

if idade < 16:
    print(f"Não eleitor, {nome}")
elif idade >= 18 and idade <= 65:
    print(f"É obrigatório votar, {nome}")
elif idade >= 16 and idade < 18:
    print(f"É eleitor facultativo, {nome}")
else:
    print(f"É eleitor facultativo, {nome}")
