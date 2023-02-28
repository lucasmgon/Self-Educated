#include <iostream>
#include <fstream> // Biblioteca necessária

// Fluxo de I/O - Arquivos

using namespace std;

int main(int argc, char *argv[]){

	string texto; // Redimensiona automaticamente para o tamanho de dados necessários

	cout << "***BLOCO DE NOTAS***" << endl;	
	ofstream output("arquivo.txt"); // Cria um arquivo

	cout << "Digite o texto:\n";
	cin >> texto;
	output << texto; // Escreve no arquivo

	ifstream in("arquivo.txt"); // Abrir um arquivo
	char c = in.get(); // Retorna o próximo caractere

	//texto.push_back(c); // Inserindo o caractere na string

	cout << "\nMostrando cada caractere: \n";

	while(in.good()){ // Enquanto for possível extrair caracteres de um arquivo
		cout << c;
		c = in.get(); // Pega o próximo caractere
		texto.push_back(c); // Inserindo o caractere na string
	}

	cout << "\n\nMostrando a string:\n" << texto << endl;

	return 0;
}
