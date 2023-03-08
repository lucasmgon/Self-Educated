#include <iostream>
#include <list>

using namespace std;

bool par (const int& n){
	return (n % 2 == 0);
}

int main(){
	
	list<int> l1; // Lista de inteiros vazia
	list<int> l2(3, 10); // Três inteiros com o valor 10
	list<int>::iterator it;
	
	// Inserindo elemento em l1 - push_back e push_front
	l1.push_back(10); // l1: 10
	l1.push_front(20); // l1: 20, 10
	l1.push_back(30); // l1: 20, 10, 30
	
	cout << "Elementos de l1:\n";
	for(it = l1.begin(); it != l1.end(); it++){
		cout << *it << endl;
	}
	
	cout << "Elementos de l2:\n";
	for(it = l2.begin(); it != l2.end(); it++){
		cout << *it << endl;
	}
	
	// Acessando o primeiro e o último elemento de l1 - front e back
	cout << "\nPrimeiro elemento de l1: " << l1.front();
	cout << "\nUltimo elemento de l1 " << l1.back() << endl;
	
	// Tamanho de l1
	cout << "Tamanho de l1: " << l1.size() << endl;
	
	// Removendo o primeiro elemento de l1
	l1.pop_front();
	// Removendo o último elemento de l1
	l1.pop_back();
	
	cout << "\n==================================================\n\n";
	
	cout << "Elementos de l1:\n";
	for(it = l1.begin(); it != l1.end(); it++){
		cout << *it << endl;
	}
	
	// Removendo todos os elementos de l1
	while(!l2.empty()){
		l2.pop_front();
	}
	
	cout << "Elementos de l2:\n" << l2.size() << endl;
	
	// Atribuindo elementos a l2  - função assign
	
	int vet[] = {1, 2, 3, 4};
	l2.assign(vet, vet + 3);
	
	cout << "Novos elementos de l2:\n";
	for(it = l2.begin(); it != l2.end(); it++){
		cout << *it << endl;
	}
	
	// Inserindo um elemento l2 - função insert
	l2.insert(l2.begin(), 100);
	cout << "\nMostrando novamente os elementos de l2:\n";
	for(it = l2.begin(); it != l2.end(); it++){
		cout << *it << endl;
	}
	
	// Inserindo o valor 100 na 2º posição
	it = l2.begin();
	it++; // Aponta para o segundo
	l2.insert(it, 200);
	
	cout << "\nMostrando novamente os elementos l2:\n";
	for(it = l2.begin(); it != l2.end(); it++){
		cout << *it << endl;
	}
	
	// Inserindo duas vezes o valor 50 na primeira posição
	l2.insert(l2.begin(), 2, 50);
	cout << "\nMostrando novamente os elementos l2:\n";
	for(it = l2.begin(); it != l2.end(); it++){
		cout << *it << endl;
	}
	
	// Apagando os dois primeiros números:
	list<int>::iterator it2 = l2.begin();
	it2++;
	it2++;
	l2.erase(l2.begin(), it2);
	cout << "\nMostrando novamente os elementos l2:\n";
	for(it = l2.begin(); it != l2.end(); it++){
		cout << *it << endl;
	}
	
	// Remover todos os elementos - função clear
	l2.clear();
	cout << "\nTamanho de l2: " << l2.size() << endl;
	
	// Função splice - Transfere elementos de uma lista para outra
	list<int> lista1(2, 10), lista2(2, 10);
	it = lista1.begin();
	
	// Transfere elemento de l2 para l1
	lista1.splice(it, lista2);
	cout << "\Elementos de lista1:\n";
	for(it = lista1.begin(); it != lista1.end(); it++){
		cout << *it << endl;
	}
	
	cout << "\nTamanho de lista2: " << l2.size() << endl;
	
	
	// Remover todos os elementos iguais a u  valor - função remove
	lista1.remove(20);
	cout << "\nElementos de lista1 sem o valor 20:\n";
	for(it = lista1.begin(); it != lista1.end(); it++){
		cout << *it << endl;
	}
	
	// Função remove_if
	// Remove se ocorrer determinada condição
	int vet2[] = {6, 8, 10, 5, 20, 21};
	list<int> lista3(vet2, vet2 + 6);
	cout << "\nElementos de lista3 antes da remocao:\n";
	for(it = lista3.begin(); it != lista3.end(); it++){
		cout << *it << " ";
	}
	
	// Removendo todos os elementos pares de lista3
	lista3.remove_if(par);
	cout << "\nElementos de lista3 depois da remocao:\n";
	for(it = lista3.begin(); it != lista3.end(); it++){
		cout << *it << " ";
	}
	
	return 0;
}
