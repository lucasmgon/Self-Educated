#include <iostream>

using namespace std;

class Conta{ // Nome da classe
public:
	// Atributos
	int numero;
	double saldo;
	
	double depositar(double quantidade);
	double retirar(double quantidade);	
};

double Conta::depositar(double quantidade){
	if(quantidade > 0){
		this->saldo += quantidade;
	}
	return this->saldo;
}

double Conta::retirar(double quantidade){
	if(quantidade > 0 && saldo >= quantidade){
		this->saldo -= quantidade;
	}
	return this->saldo;
}

int main(int argc, char *argv[]){
	
	Conta c;
	Conta* pc = &c; // pc é um ponteiro do tipo Conta que guarda o endereço do objeto c
	
	pc->numero = 1; // pc acessa número e guarda 1
	pc->saldo = 200; // pc acessa número e guarda 200
	
	cout << "Saldo:" << c.saldo << endl;
	cout << "Saldo depois do deposito: " << pc->depositar(100) << endl;
	cout << "Saldo depois do saque: " << pc->retirar(50) << endl;
	
	return 0;
}
