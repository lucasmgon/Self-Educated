#include <iostream>

using namespace std;

int main(){
	int var = 10; // Declarando uma variável
	int *p1, *p2; // Declarando os ponteiros
	
	int vet[] = {1, 2, 3}; // Vetor com elementos
	int *p3 = &vet[0], *p4 = &vet[1];
	
	p1 = &var; // p1 recebe o endereço de var
	p2 = &var; // p2 recebe o endereço de var
	
	if(p1 == p2){
		cout << "p1 contem o mesmo endereco de p2" << endl;
	}
	
	*p2 = 20; // var recebe 20
	*p1 = 15; // var recebe 15
	
	cout << var << endl;
	
	cout << p3 << endl; // Exibindo endereço de p3
	cout << p4 << endl; // Exibindo endereço de p3
	
	if (p3 < p4){
		cout << "p3 vem antes de p4";
	}
	
	return 0;
}
