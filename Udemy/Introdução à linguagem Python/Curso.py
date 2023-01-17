# -*- coding: utf-8 -*-
# Codificado por Lucas M.G.
"""
Introdução à linguagem Python.
"""
print ("Hello world")
print ("What's up?")
print(2+2)
print(2**3)
print(10 % 3)

var1 = "Welcome"
var2 = "to Brazil!"

print (var1 + " " + var2)

num1 = 100
num2 = 100.50

print(num1 == num2)
print(num1 < num2)
print(num1 == num2 or num2 > num1)

x = 1
y = 10000

if x > y:
	print("x e maior que x")

else:
	print("y e maior que x")

while(x < y and x < 10):
	print(x)
	x = x+1

lista1 = [0,"ola","bolacha",9.99,True]

for i in lista1:
	print(i)

for i in range(10):
	print(i)

a = "Lucas"
b = "Matheus"

concatenar = a + " "+ b

print(concatenar)
tamanho = len(concatenar)
print(tamanho)

#Funcao
def soma(x, y):
	print(x + y)
soma(2, 3)

lista = [21,31,23,15,43,72,5,60,736,58]

lista.sort()
print(lista)

meu_dicionario = {"A":"Ameixa", "B":"Bola", "C":"Cachorro"}

for chave in meu_dicionario:
	print(chave + " - " + meu_dicionario[chave])

import random

numero = random.randint(0, 10)
print(numero)

