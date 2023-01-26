#include <iostream>

using namespace std;

void mensagem(int n){
	cout << "Numero: " << n << endl;
}

void mensagem(char c){
	cout << "Caractere: " << c << endl;
}

int main(){
	
	mensagem(10);
	mensagem('A');
	
	return 0;
}
