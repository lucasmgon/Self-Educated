#include <stdio.h> //Biblioteca de I/O

int numero = 10; //Variável global

int somar(int n1, int n2) { //Função somar
	int soma = n1 + n2;
	
	return soma;
}

int main() { //Função principal
	
	//int resultado = somar(10, 20);
	//float pi = 3.1415; //Variável local
	
	int n1, n2, resultado;
	
	printf("Digite dois numeros: ");
	scanf("%d %d", &n1, &n2);
	
	resultado = somar(n1, n2);
	
	printf("%d\n", resultado);
	getchar();
	return 0;
}
