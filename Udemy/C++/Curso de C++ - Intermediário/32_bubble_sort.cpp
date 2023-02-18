#include <iostream>
#include <string.h>
#define TAM 10

using namespace std;

class Carro{
public:
	char nome[100];
	char cor[20];
	char placa[20];
	double preco;
};

// Ordenação utilizando o algoritmo bubble sort
void ordena(Carro c[], int qtd){

	Carro aux;
	
	for(int i = qtd; i >= 0; i--){
		for(int j = 1; j <= i; j++){
			
			if(strcmp(c[j - 1].nome, c[j].nome) == 1){
				aux = c[j - 1];
				c[j - 1] = c[j];
				c[j] = aux;
			}
		}
	}
}

int main(int argc, char* argv[]){
	
	Carro c[TAM];
	int i = 0;
	char resp;
	
	while(true){
		cout << "Digite o nome do carro: ";
		cin >> c[i].nome;
		cout << "Digite o preco do carro: ";
		cin >> c[i].preco;
		cout << "Digite a cor do carro: ";
		cin >> c[i].cor;
		cout << "Digite a placa do carro: ";
		cin >> c[i].placa;
		
		cout << "Voce deseja continuar? <S>SIM ou <N>NAO: ";
		cin >> resp;
		
		if(resp != 'S'){
			break;
		}
		
		cout << endl;
		i++;
	}
	
	cout << endl;
	
	cout << "----------------------------------------------" << endl;
	cout << "Exibindo os carros por ordem de cadastro\n";
	
	for(int j = 0; j <= i; j++){
		cout << "Nome do carro: " << c[j].nome << endl;
		cout << "Preco: R$" << c[j].preco << endl;
		cout << "Cor: " << c[j].cor << endl;
		cout << "Placa: " << c[j].placa << endl;
		cout << endl;
	}
	
	ordena(c, i);
	
	cout << "----------------------------------------------" << endl;
	cout << "Exibindo os carros ordenados pelo nome\n";
	
	for(int j = 0; j <= i; j++){
		cout << "Nome do carro: " << c[j].nome << endl;
		cout << "Preco: R$" << c[j].preco << endl;
		cout << "Cor: " << c[j].cor << endl;
		cout << "Placa: " << c[j].placa << endl;
		cout << endl;
	}
	
	return 0;
}
