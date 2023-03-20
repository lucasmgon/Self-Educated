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
		fila.push_back(e); //Insere o elemento no final
	}
	
	bool vazia(){
		return fila.empty();
	}
	
	T remover(){
		if(!this->vazia()){
			T e = fila.front(); //Pega o elemento que vai remover
			fila.pop_front(); // Remove o elemento
			return e;
		}
		//excessão
		throw "Fila vazia!"; 
	}
	
	T frente(){
		if(!this->vazia()){
			return fila.front();
		}
		//Excessão
		throw "Fila vazia!!";
	}
	
	T final(){
		if(!this->vazia()){
			return fila.back();
		}
		//Excessão
		throw "Fila vazia!!";
	}
	
	int tamanho(){
		return fila.size();
	}
};

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
	
	try{
		cout << "Elemento da frente: " << f1.frente() << endl;	
	}catch(const char * msg){
		cerr << "Erro: " << msg << endl;
	}
	
	try{
		cout << "Elemento do final: " << f1.final() << endl;	
	}catch(const char * msg){
		cerr << "Erro: " << msg << endl;
	}
	
	try{
		double e = f1.remover();
		cout << "Removido o elemento: " << e << endl; 
	}catch(const char* msg){
		cerr << "Erro: " << msg << endl;
	}
	
	try{
		cout << "Elemento da frente: " << f1.frente() << endl;	
	}catch(const char * msg){
		cerr << "Erro: " << msg << endl;
	}
	
	Fila<string> f2;
	
	f2.inserir("Lucas");
	f2.inserir("Matheus");
	f2.inserir("Pedro");
	f2.inserir("Marcos");
	f2.inserir("Santigado");
	
	cout << "\n\nFila de strings...\n";
	
	try{
		cout << "Elemento da frente: " << f2.frente() << endl;
	}catch(const char* msg){
		cerr << "Erro: " << msg << endl;
	}
	
	try{
		cout << "Elemento do final: " << f2.final() << endl;
	}catch(const char* msg){
		cerr << "Erro: " << msg << endl;
	}

	return 0;
}
