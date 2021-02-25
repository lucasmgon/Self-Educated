#include <stdio.h>

int main() {
	int a, b;
	float c, d;

	printf("Digite dois numeros inteiros: ");
	scanf("%d %d", &a, &b);
	printf("Digite dois numeros decimais: ");
	scanf("%f %f", &c, &d);

	printf("%d %d\n", a+b, a-b);
	printf("%.1f %.1f", c+d, c-d);

	getchar();
	return 0;
}
