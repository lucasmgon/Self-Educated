#include <iostream>
#include <list>

using namespace std;

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

  return 0;
}
