#include <iostream>

using namespace std;

int main(){
	int num = 10;
	
	switch(num){
		case 9:
			cout << "Numero 9!";
			break;
		case 10:
			cout << "Numero 10!";
			break;
		case 11:
			cout << "Numero 11!";
			break;
		default:
			cout << "Numero nao encontrado";
	}
	return 0;
}
