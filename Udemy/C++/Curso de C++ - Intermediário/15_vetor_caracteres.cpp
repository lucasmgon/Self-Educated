#include <iostream>

using namespace std;

void inverte(char sobrenome[]){
	int tam = sizeof(sobrenome);
	
	for(int i = tam - 1; i >= 0; i--){
		cout << sobrenome[i];
	}
}

int main(){
	char nome[] = {'L', 'u', 'c', 'a', 's', '\0'};
	char sobrenome[] = "Goncalves";
	
	cout << nome << " ";
	cout << sobrenome << "\n\n";
	
	inverte(sobrenome);
	
	return 0;
}
