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
	
	void inserir_inicio(int v){
		No* novo_no = new No(v);
		
		novo_no->setProx(cabeca);
		cabeca = novo_no;
	}
	
	void inserir_final(int v){
		No* novo_no = new No(v);
		
		if(vazia()){
			cabeca = novo_no;
			cauda = novo_no;
		}else{
			cauda->setProx(novo_no);
			cauda = novo_no;
		}
	}
	
	int tamanho(){
		if(vazia()){
			return 0;
		}
		No* c = cabeca;
		int tam = 0;
		do{
			c = c->obterProx();
			tam++;
		}while(c);
	}
	
	bool existe(int v){
		No* c = cabeca;
		while(c){
			if(c->obterValor() == v){
				return true;
			}
			c = c->obterProx();
		}
	}
	
	void remover(){
		if(!vazia){
			if(cabeca->obterProx() == NULL){
				cabeca = NULL;
			}else if(cabeca->obterProx()->obterProx() == NULL){
				cabeca->setProx(NULL);
			}else{
				No* ant_ant = cabeca;
				No* ant = cabeca->obterProx();
				No* corrente = cabeca->obterProx()->obterProx();
				
				while(corrente){
					No* aux = ant;
					ant = corrente;
					ant_ant = aux;
					corrente = corrente->obterProx();
				}
				delete ant_ant->obterProx();
				ant_ant->setProx(NULL);
				cauda = ant_ant;
			}
		}
	}
};

int main(int argc, char *argv[]){

	return 0;
}
