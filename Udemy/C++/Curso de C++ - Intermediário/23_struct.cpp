#include <iostream>

using namespace std;

typedef struct Pessoa{
private:
	int idade;
public:	
	Pessoa(int idade);
	
	void setIdade(int idade){
		this->idade = idade; // this-> Esse objeto
	}
	int getIdade(){
		return idade;
	}
}pessoa;

Pessoa::Pessoa(int idade){ // :: Escopo, foi separado o prot�tipo do construtor da implementa��o
	setIdade(idade);
}

int main(){
	
	pessoa p(20);
	
	cout << p.getIdade() << endl;
	
	return 0;
}
