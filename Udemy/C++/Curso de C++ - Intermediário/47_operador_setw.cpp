#include <iostream>
#include <iomanip>

using namespace std;

class Pessoa{
public:
	string nome;
	int idade;
	
	Pessoa(const string& nome, const int& idade){
		this->nome.assign(nome);
	}
};

int main(int argc, char *argv[]){
	
	Pessoa p1("Lucas Matheus", 20);
	Pessoa p2("Matheus Goncalves", 18);
	Pessoa p3("Lucas Goncalves", 28);
	
	cout << setw(20) << "Nome da pessoa" << setw(10) << "Idade" << endl;
	cout << setw(20) << p1.nome << setw(10) << p1.idade << endl;
	cout << setw(20) << p1.nome << setw(10) << p1.idade << endl;
	cout << setw(20) << p1.nome << setw(10) << p1.idade;
	return 0;
}
