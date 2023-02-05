#include <iostream>

using namespace std;

int main(int argc, char *argv[]){
	
	// argc -> Quantidade de argumentos
	// argv -> Argumentos passados para o main
	
	cout << "Argc: " << argc << endl;
	cout << "argv[0]: " << argv[0] << endl; // Retorna o nome do programa
	
	cout << "\nQuantidade de argumentos: " << argc << endl;
	
	cout << "\nArgumentos passados: " << endl;
	
	// Argumentos passados
	for(int i = 0; i < argc; i++){
		cout << argv[i] << endl;
	}
	
	// Exemplo de como funciona o argv:
	int n1 = 10, n2 = 20, n3 = 30;
	
	int* parray[3] = {&n1, &n2, &n3}; // Array de 3 ponteiros para inteiros
	
	cout << "\n";
	cout << *parray[0] << endl;
	cout << *parray[1] << endl;
	cout << *parray[2] << endl;
	
	return 0;
}
