# Crescimento da População brasileira 1980-2016
# DataSus

import matplotlib.pyplot as plt

dados = open("populacao_brasileira.csv").readlines()

x = []
y = []

for i in range(len(dados)):
	if i != 0:
		linha = dados[i].split(";")
		x.append(int(linha[0]))
		y.append(int(linha[1]))

#print(y)

plt.plot(x, y, color="k")
plt.bar(x, y, color='#e4e4e4', linestyle="--")

plt.title("Crescimento da População brasileira 1980-2016")
plt.xlabel("Ano")
plt.ylabel("População x100.000.000")
plt.show()
plt.savefig("populacao_brasileira.pdf")