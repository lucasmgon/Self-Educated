#include <stdio.h>

//Fatorial: 4! = 4 * 3 * 2 * 1 = 24

int fatorial(int n) {
	if(n == 0 || n == 1) {
		return 1;
	}else{
		return n * fatorial(n - 1);
	}
}

int main() {	
	int num = 5;
	
	printf("Fatorial de %d = %d\n", num, fatorial(num));
	
	getchar();
	return 0;
}
