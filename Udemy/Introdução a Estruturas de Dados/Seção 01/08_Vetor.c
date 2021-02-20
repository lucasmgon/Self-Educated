#include <stdio.h>

int main() {

	int v[10];

	for(int i = 0; i < 10; i++) {
		v[i] = i;
	}

	printf("%d\n", v[3]);

	getchar();
	return 0;
}
