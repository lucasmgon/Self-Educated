#include <iostream>
#include "pilha.h"

using namespace std;

// Construtor
Pilha::Pilha(){
	vet = new int[100]; // Alocando espaço para 100 inteiros
	max_tam = 99;
	topo = -1;
}

// Destrutor
Pilha::~Pilha(){
	delete[] vet; // Devolve a memória para a pilha
}

void Pilha::empilhar(int elemento){
	if(topo == max_tam){
		cout << "Pilha cheia" << endl;
	}else{
		vet[++topo] = elemento; // Incrementa depois usa - fica 0
	}
}
	
void Pilha::desempilhar(){
	if(topo == -1){
		cout << "Pilha vazia!" << endl;
	}else{
		topo--;
	}
}
	
int Pilha::getTopo(){
	if(topo != -1){
		return vet[topo]; // Retorna o elemento que esta no topo
	}else{
		return -1; // Imprimi -1 se estiver vazia
	}
}
	
int Pilha::vazia(){
	return (topo == -1);
}
