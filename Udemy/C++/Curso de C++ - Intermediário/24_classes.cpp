#include <iostream>
#include <string.h>

using namespace std;

class Pessoa{ // Classe

public: // Atributos públicos
	char nome[100];
	char cpf[20];
	int idade;
};

int getIdade(Pessoa p[], const char* nome){
	
	int tam = sizeof(p);
	
	for(int i = 0; i < tam; i++){
		if(strcmp(nome, p[i].nome) == 0){
			return p[i].idade;
		}
	}
}

const int TAM = 3;

int main(int argc, char *argv[]){
	
	// Objeto da classe Pessoa
	Pessoa p[TAM] = {
		{"Lucas", "111.222.333-00", 23},
		{"Santiago", "222.333.444-00", 18},
		{"Carlos", "333.444.555-00", 20}
	};
	
	for(int i = 0; i < TAM; i++){
		cout << "Nome: " << p[i].nome << endl;
	}
	
	int idade = getIdade(p, "Lucas");
	
	if(idade != -1){
		cout << "Idade do Lucas: " << idade << endl;
	}else{
		cout << "Pessoa nao encontrada." << endl;
	}
	
	return 0;
}
