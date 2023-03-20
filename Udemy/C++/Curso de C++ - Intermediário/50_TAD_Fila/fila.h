#ifndef _FILA_H_
#define _FILA_H_

#include <list>

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

#endif
