#include <stdio.h>

int main() {
	int n = 10;
	int *p; //Declaração do ponteiro, que pode armazenar endereço de memória
	
	p = &n;//p aponta para endereço de n
	
	*p = 20; //Conteúdo apontado pelo ponteiro
	
	printf("%d\n", n);
	printf("%d\n", *p);
	
	return 0;
}
