#include <iostream>
#include <list>

// Fila: o primeiro elemento a entrar é o primeiro a sair
// Implementação usando templates

using namespace std;

template<class T>
class Fila{
private:
	list<T> fila;

public:
	void inserir(const T& e){
		fila.push_back(e); // Insere o elemento no final
	}
	
	bool vazia(){
		return fila.empty();
	}
	
	T remover(){
		if(!this->vazia()){
			T e = fila.front(); // Pega o elemento que vai remover
			fila.pop_front(); // Remove o elemento
			return e;
		}
		// Exceção
		throw "Fila vazia!!"; 
	}
	
	T frente(){
		if(!this->vazia()){
			return fila.front();
		}
		// Exceção
		throw "Fila vazia!!";
	}
	
	T final(){
		if(!this->vazia()){
			return fila.back();
		}
		// Exceção
		throw "Fila vazia!!";
	}
	
	int tamanho(){
		return fila.size();
	}
};

using namespace std;

int main(int argc, char *argv[]){
	

	Fila<double> f1;
	cout << "Antes de inserir elementos...\n";
	
	if(f1.vazia()){
		cout << "Fila vazia!\n";
	}else{
		cout << "Fila nao vazia!\n";
	}
	
	try{
		double e = f1.remover();
		cout << "Removido o elemento: " << e << endl;
	}catch(const char* msg){
		cerr << "Erro: " << msg << endl;
	}
	
	cout << endl;
	
	f1.inserir(5.67);
	f1.inserir(9.23);
	f1.inserir(1.45);
	
	cout << "\nDepois de inserir os elementos..." << endl;
	
	if(f1.vazia()){
		cout << "Fila vazia!\n";
	}else{
		cout << "Fila nao vazia!\n";
	}

	return 0;
}
