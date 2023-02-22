#include <iostream>

// C++ suporta programação procedural e orientada a objetos

using namespace std; // Resolver conflitos de nome

class Pessoa{
private:
	int idade;
	int * vet;
public:
	Pessoa(int idade){ // Construtor
		this->idade = idade;
		vet = new int[10];
	}

	// Destrutor
	~Pessoa(){
		delete [] vet;
	}

	int obterIdade(){
		return idade;
	}
};

int main(int argc, char *argv[]){

	int * p1 = new int[10]; // Ponteiro inteiro = aloca espaço para 10 inteiros

	*p1 = 1;

	*(p1 + 1) = 2;

	cout << *p1 << endl << *(p1 + 1) << endl;

	delete[] p1; // Libera a memória

	Pessoa * p = new Pessoa(20);

	cout << p->obterIdade() << endl;
	delete p;

	return 0;
}
