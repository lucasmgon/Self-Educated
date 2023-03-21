#include <iostream>

using namespace std;

class No{
private:
	int v;
	No* prox;
public:
	No(int v){
		this->v = v;
		this->prox = NULL;
	}
	
	int obterValor(){
		return v;
	}
	
	No* obterProx(){
		return prox;
	}
	
	void setProx(No* p){
		prox = p;
	}
};

class Lista{
private:
	No* cabeca; // Primeiro elemento da Lista
	No* cauda; // Último elemento da Lista
public:
	Lista(){
		cabeca = NULL;
		cauda = NULL;
	}
	
	Lista(int v){
		cabeca = new No(v);
		cauda = cabeca;
	}
	
	virtual ~Lista(){
		delete cabeca;
	}
	
	void mostrar(){
		cout << "\nImprimindo todos os elementos...\n";
		No* c = cabeca;
		
		if(vazia()){
			cout << "A lista nao possui elementos!\n";
		}else{
			while(c){
				cout << c->obterValor() << endl;
				c = c->obterProx();
			}
			cout << endl;
		}
	}
	
	bool vazia(){
		return (cabeca == NULL);
	}
};

int main(int argc, char *argv[]){

	return 0;
}
