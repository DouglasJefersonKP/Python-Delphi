# Media Escola #
print(
    "Olá, informações referente taxa de aprovação\nCaso o aluno faltar em alguma das 3 provas\nInforme que o mesmo está com *0* porém\nSe o mesmo compareceu em todas informar a nota."
)
nota_01 = float(input("Qual a nota para a primeira prova de seu aluno?"))
nota_02 = float(input("Qual a nota para a segunda prova de seu aluno?"))
nota_03 = float(input("Qual a nota para a terceira prova de seu aluno? "))

if nota_001 or nota_02 or nota_03 < 0 or > 10:
    print("Notas incorretas, as notas precisam ser entre 0 e 10")
