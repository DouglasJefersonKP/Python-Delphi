# 7 - Calculadora ICM
import time

print("Apenas números com '.' exemplo: 1.85")
time.sleep(2)
altura =  float(input("Qual a sua altura? "))
time.sleep(2)
peso = float(input("Qual o seu peso? "))
time.sleep(2)
quadrado = altura * altura
# ------------------------------------------- CALCULO DO ICMS
ICM = peso / quadrado
# ------------------------------------------- CALCULOS DO ICMS

print("Seu ICM é" ,ICM)

if ICM < 17:
    print("Muito abaixo do peso")
elif 17 <= ICM <= 18.49:
    print("Abaixo do peso")
elif 18.5 <= ICM <= 24.99:
    print("Peso normal")
elif 25 <= ICM <= 29.99:
    print("Acima do peso")
elif 30 <= ICM <= 34.99:
    print("Obesidade I")
elif 35 <= ICM <= 39.99:
    print("Obesidade II")
else:
    print("Obesidade III")
    
    
print("Meu linkedin https://www.linkedin.com/in/douglas-jeferson-8b9ab420b/")
print("Criador Douglas Jeferson")
