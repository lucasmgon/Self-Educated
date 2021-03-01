#include <stdio.h>
#include <stdlib.h>

void update(int *a, int *b) {
	*a = *a + *b;
	*b = abs(*a - (2 * *b)); //abs retorna o valor absoluto
}

int main() {
	int a, b;
	int *pa = &a, *pb = &b;

	scanf("%d\n%d", &a, &b);

	update(pa, pb);
	printf("%d\n%d", a, b);

	return 0;
}
