#include <iostream>
#include <string.h>

using namespace std;

typedef struct Pessoa{
	char nome[100];
	int idade;
}pessoa;

int main(){
	pessoa p;
	
	strcpy(p.nome, "Lucas");
	p.idade = 22;
	
	cout << "Nome: " << p.nome << endl;
	cout << "Idade: " << p.idade << endl;
	
	return 0;
}
