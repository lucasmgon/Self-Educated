// Sobrecarga do operador =

#include <iostream>
#include <string.h>

using namespace std;

class Pessoa{
	char* nome;
	int id;
public:	
	void inicializar(const char* novoNome, int novoID){
		int tam = strlen(novoNome) + 1;
		nome = new char[tam];
		strcpy(nome, novoNome);
		id = novoID;
	}

	void destruir(){
		delete[] nome;
		nome = 0;
	}

	Pessoa(const char* novoNome, int novoID){
		/*int tam = strlen(novoNome) + 1;
		nome = new char[tam];
		strcpy(nome, novoNome);
		id = novoID;*/
		inicializar(novoNome, novoID);
	}

	Pessoa(Pessoa& p){
		inicializar(p.nome, p.id);
	}

	virtual ~Pessoa(){
		destruir();
	}

	Pessoa& operator=(Pessoa& p){
		if(this != &p){
			destruir();
			inicializar(p.nome, p.id);
		}
		return *this;
	}

	const char* getNome(){
		return nome;
	}

	int getID(){
		return id;
	}

	void mudarNome(char T){
		nome[0] = T;
	}
};

int main(int argc, char *argv[]){

	Pessoa p1("Lucas", 1), p2("Matheus", 2);

	p1 = p2;

	p1.mudarNome('T');

	cout << "Nome: "  << p1.getNome() << endl << "ID: " << p1.getNome() << endl;

	cout << "Nome: "  << p2.getNome() << endl << "ID: " << p2.getNome() << endl;

	return 0;
}
