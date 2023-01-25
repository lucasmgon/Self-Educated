import matplotlib.pyplot as plt

x1 = [1, 3, 5, 7, 9]
y1 = [2, 3, 7, 1, 0]

x2 = [2, 4, 6, 8, 10]
y2 = [5, 1, 3, 7, 4]

titulo = "Gráfico de barras"
eixox = "Eixo X"
eixoy = "Eixo Y"

# Legendas
plt.title(titulo)
plt.xlabel(eixox)
plt.ylabel(eixoy)

# plt.plot(x, y)

# Gráfico em barras
#plt.bar(x1, y1, label = "Grupo 1")
#plt.bar(x2, y2, label = "Grupo 2")
#plt.legend()

#Scatterplot: Gráfico de dispersão

plt.scatter(x1, y1, label="Meus pontos", color="r")
plt.plot(x1, y1)
plt.legend()
plt.savefig("figura 1")
plt.show()