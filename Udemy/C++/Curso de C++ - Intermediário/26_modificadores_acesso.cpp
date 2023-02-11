#include <iostream>
#include <string.h>

using namespace std;

class Linguagem{
	
friend void classeAmiga(Linguagem*);

protected:
	char nome[100];

private:
	void mostrarNome(){
		cout << "Nome: " << nome << endl;
	}

public:
	void setNome(const char* nome){
		strcpy(this->nome, nome);
	}
	void mostrarNome2(){
		mostrarNome();
	}
};

class LinguagemAmiga{
	friend class Linguagem;
};

// Função friend
void classeAmiga(Linguagem* l){
	cout << "Classe amiga: " << l->nome << endl;
}

int main(int argc, char *argv[]){	
	Linguagem l;
	LinguagemAmiga lamiga;
	
	l.setNome("C++");
	l.mostrarNome2();
	classeAmiga(&l);
	
	return 0;
}
