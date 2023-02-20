#include <iostream>

/*
Estrutura de dados pilha (TAD Pilha - Stack)
Sempre é inserido no topo da pilha - final do vetor
Sempre é removido no topo da pilha - retira do topo
O primeiro que entra na pilha é o ultimo que sai - FILO
O ultimo que entra e o primeiro que saí - LIPO
TAD Pilha (stack).
*/

using namespace std;

class Pilha{
private:
	int * vet;
	int max_tam; // Máximo do tamanho da pilha
	int topo; // Marca o tamanho da pilha

public:
	// Construtor
	Pilha(){
		vet = new int[100]; // Alocando espaço para 100 inteiros
		max_tam = 99;
		topo = -1;
	}

	// Destrutor
	~Pilha(){
		delete[] vet; // Devolve a memória para a pilha
	}

	void empilhar(int elemento){
		if(topo == max_tam){
			cout << "Pilha cheia" << endl;
		}else{
			vet[++topo] = elemento; // Incrementa depois usa - fica 0
		}
	}

	void desempilhar(){
		if(topo == -1){
			cout << "Pilha vazia!" << endl;
		}else{
			topo--;
		}
	}

	int getTopo(){
		if(topo != -1){
			return vet[topo]; // Retorna o elemento que esta no topo
		}else{
			return -1; // Imprimi -1 se estiver vazia
		}
	}

	int vazia(){
		return (topo == -1);
	}
};

int main(int argc, char* argv[]){

	Pilha p;

	p.empilhar(10);
	p.empilhar(11);
	p.empilhar(12);
	p.desempilhar();

	cout << "Pilha vazia: " << p.vazia() << endl;

	cout << "Topo: " << p.getTopo() << endl;;

	return 0;
}
