#include <stdio.h>

int main() {
	int cont = 1; //Declaração da variável contador

	while(cont <= 10) {
		printf("Contador 1: %d\n", cont);
		cont++;
	}
	
	for(cont = 11; cont <= 20; cont++) {
		printf("Contador 2: %d\n", cont);
	}
	getchar();
	return 0;
}
