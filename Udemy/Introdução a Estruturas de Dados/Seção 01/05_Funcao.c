#include <stdio.h>

int somar(int n1, int n2); //Protótipo

int main() {
	
	printf("Soma: %d\n", somar(15, 10));
	
	getchar();
	return 0;
}

int somar(int n1, int n2) {
	return n1 + n2;
}
