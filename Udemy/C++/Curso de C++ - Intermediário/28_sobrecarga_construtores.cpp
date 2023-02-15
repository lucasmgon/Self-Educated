#include <iostream>

using namespace std;

class Carro{
public:
	int ano;
	double preco;
	
	Carro(){
		ano = 0;
		preco = 0.0;
	}
	// Sobrecarga do construtor
	Carro(int ano){
		this->ano = ano;
	}
	
	Carro(int ano, double preco){
		this->ano = ano;
		this->preco = preco;
	}
};

int main(int argc, char *argv[]){
	
	Carro carro1;
	Carro carro2(2017);
	Carro carro3(2023, 50.000);
	
	cout << "Ano do carro: " << carro1.ano << endl;
	cout << "Ano do carro: " << carro2.ano << endl;
	cout << "Preco do carro: " << carro3.preco << endl;
	return 0;
}
