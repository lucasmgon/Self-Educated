#include <stdio.h>

int main() {
	int idade;
	
	printf("Digite sua idade: ");
	scanf("%d", &idade);
	
	if(idade >= 18) {
		printf("Maior de idade!\n");
	}else {
		printf("Menor de idade!\n");
	}
	
	getchar();
	return 0;
}
