#include <iostream>
#include <string.h>

using namespace std;

class Pessoa{

protected:
	char nome[100];
	int idade;
	int* parentes;
	double* filhos;

public: // Construtor
	Pessoa(const char* nome, int idade){
		strcpy(this->nome, nome);
		this->idade = idade;
		parentes = new int[100];
		cout << "Construtor: " << nome << endl;
	}
	
	char * getNome(){
		return nome;
	}
	
	int getIdade(){
		return idade;
	}
	
	~Pessoa(){ // Destrutor
		cout << "Destrutor: " << nome << endl; 
		delete[] parentes;
	}
};

int main(int argc, char *argv[]){
	
	Pessoa p[3] = {
		{"Lucas", 22}, {"Pedro", 21}, {"Daniel", 15},	
	};
	
	//cout << "Nome: " << p.getNome() << endl;
	//cout << "Idade: " << p.getIdade() << endl;	
	return 0;
}
