#include <stdio.h>
#define MAX_LEN 15

int main() {
	char ch, s[MAX_LEN], sen[MAX_LEN];

	scanf("%c", &ch);
	scanf("%s", s);
	scanf("\n");
	scanf("%[^\n]%*s", sen);

	printf("%c\n", ch);
	printf("%s\n", s);
	printf("%s", sen);

	getchar();
	return 0;
}
