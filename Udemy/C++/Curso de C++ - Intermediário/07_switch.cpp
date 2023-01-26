#include <iostream>

using namespace std;

int main(){
	int num1, num2, op;
	
	cout << "Digite o primeiro numero: ";
	cin >> num1;
	
	cout << "Digite o segundo numero: ";
	cin >> num2;
	
	cout << "\nEscolha uma opcao para calcular:" << endl;
	cout << "1 - Somar" << endl;
	cout << "2 - Subtrair" << endl;
	cout << "3 - Multiplicar" << endl;
	cout << "4 - Dividir" << endl;
	cin >> op;
	
	switch(op){
		case 1:
			num1 += num2;
		break;
		case 2:
			num1 -= num2;
		break;
		case 3:
			num1 *= num2;
		break;
		case 4:
			num1 /= num2;
		break;
		default:
			cout << "Selecao invalida!";
		break;
	}
	
	cout << "Resultado: " << num1 << endl;
	
	return 0;
}
