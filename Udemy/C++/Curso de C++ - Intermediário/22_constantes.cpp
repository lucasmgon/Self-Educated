#include <iostream>

using namespace std;

int main(){
	
	const int vet[] = {1, 2, 3};
	const int* p1; // Ponteiros para arrays de constante int
	int const* p2; // Pode modificar os ponteiros mas não pode modificar os inteiros
	
	int* const p3 = new int[2]; // Ponteiro constante para um array int, não pode alterar o ponteiro
	
	const char* const p4 = "Lucas"; // Não altera o valor do ponteiro e dos caracteres
	
	p1 = &vet[0]; // p1 recebe vet[0]
	p2 = &vet[1]; // p2 recebe vet[1]
		
	//*p1 = 10; // Tentando modificar o p1 vai dar erro por ser constante
	//*p2 = 10; // Tentando modificar o p2 vai dar erro por ser constante
	
	cout << *p1 << endl;
	cout << *p2 << endl;
	
	*p3 = 1;
	*(p3 + 1) = 2;
	*(p3 + 2) = 3;
	
	cout << "p3: " << endl;
	cout << "  " << *p3 << endl;
	cout << "  " << *(p3 + 1) << endl;
	cout << "  " << *(p3 + 2) << endl;
	
	//*(p4 + 1) = 'b';
	cout << *(p4 + 1) << endl; // Imprimi a letra u
	
	return 0;
}
