#include <iostream>

using namespace std;

class Conta{ // Nome da classe
public:
	// Atributos
	int numero;
	double saldo;
	
	// Função membro da Classe
	double depositar(double quantidade){
		if(quantidade > 0){
			saldo += quantidade;
		}
		return saldo;
	}
	
	double retirar(double quantidade){
		if(quantidade > 0 && saldo >= quantidade){
			saldo -= quantidade;
		}
		return saldo;
	}
};

int main(int argc, char *argv[]){
	
	Conta c;
	
	c.numero = 1;
	c.saldo = 100.75;
	
	cout << "Saldo:" << c.saldo << endl;
	cout << "Saldo depois do deposito: " << c.depositar(100) << endl;
	cout << "Saldo depois do saque: " << c.retirar(50) << endl;
	
	return 0;
}
