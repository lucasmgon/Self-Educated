#include <iostream>

/*
Estrutura de dados pilha (TAD Pilha - Stack)
Sempre � inserido no topo da pilha - final do vetor
Sempre � removido no topo da pilha - retira do topo
O primeiro que entra na pilha � o ultimo que sai - FILO
O ultimo que entra e o primeiro que sa� - LIPO
TAD Pilha (stack).
*/

using namespace std;

class Pilha{
private:
	int * vet;
	int max_tam; // M�ximo do tamanho da pilha
	int topo; // Marca o tamanho da pilha

public:
	// Construtor
	Pilha(){
		vet = new int[100]; // Alocando espa�o para 100 inteiros
		max_tam = 99;
		topo = -1;
	}

	// Destrutor
	~Pilha(){
		delete[] vet; // Devolve a mem�ria para a pilha
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
