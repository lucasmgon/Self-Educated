#include <iostream>
#include <string.h>

using namespace std;

class Estudante{

protected:
	char* nome;

public:
	Estudante(const char* nome){
		
		cout << "Contruindo objeto... " << nome << endl;
		
		int tam = strlen(nome) + 1;
		this->nome = new char[tam];
		strcpy(this->nome, nome);
	}
	
	Estudante(const Estudante& e){
		cout << "Construindo copia... " << e.nome << endl;

		int tam = strlen(e.nome) + strlen("Copia de ") + 1;
		this->nome = new char[tam];
		strcpy(this->nome, "Copia de ");
		strcat(this->nome, e.nome);
	}
	
	~Estudante(){
		cout << "Destruindo objeto... " << nome << endl;
		delete[] nome;
		nome = 0;
	}
	
	const char* getNome(){
		return nome;
	}
};

void foo(Estudante e){
	
}

void foo2(){
	Estudante estudante("Lucas");
	foo(estudante);
	cout << "Estudante " << estudante.getNome() << endl;
}

int main(int argc, char *argv[]){
	
	foo2();
	
	return 0;
}
