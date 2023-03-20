#include <iostream>
#include "fila.h"

// Fila: o primeiro elemento a entrar é o primeiro a sair
// Implementação usando templates

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
