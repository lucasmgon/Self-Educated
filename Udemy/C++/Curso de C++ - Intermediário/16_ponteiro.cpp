#include <iostream>

using namespace std;

void foo(int* n){
	*n = 15;
}

int main(){
	
	int var = 10;	// Declarando uma vari�vel
	int *pvar;		// Declarando um ponteiro
	
	pvar = &var;	// Iniciando uma vari�vel ponteiro
	
	cout << *pvar << endl;
	cout << var << endl;
	
	*pvar = 20;		// Mudar o valor de var
	
	cout << *pvar << endl;
	cout << var << endl;
	
	foo(&var);		// Passagem por refer�ncia
	cout << var << endl;
	
	return 0;
}
