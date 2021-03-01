#include <stdio.h>

int main() {
	int n, soma;
	scanf("%d", &n);

	while(n > 0) {
		soma += (n % 10);
		n /= 10;
	}

	printf("%d", soma);

	getchar();
	return 0;
}
