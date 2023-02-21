#include <iostream>
#include <string>

using namespace std;

int main(int argc, char *argv[]){

	// Em C
	char str1[] = "Lucas Matheus\n\n";
	cout << str1 << endl;

	// Em C++
	string str2 = "Lucas";

	cout << "String: " << str2 << endl;
	cout << "Tamanho: " << str2.size() << endl;
	cout << "Tamanho: " << str2.length() << endl;
	cout << "Posicao: " << str2.at(2) << endl;
	cout << "Concatenar: " << str2.append(" Matheus") << endl;

	str2.push_back('@');
	cout << "Adicionando caractere no final: " << str2 << endl;
	cout << "Conjunto de caracreres: " << str2.insert(0, "Lucas ") << endl;

	str2.clear(); // Limpa os caracteres da String

	str2.erase(0, str2.size());
	if(str2.empty()){
		cout << "String vazia!" << endl;
	}else{
		cout << "String nao esta vazia" << endl;
	}

	string str3 = "Lucas";

	cout << "String anterior: " << str3 << endl;

	str3.replace(1, 5, "Matheus");

	cout << "Nova string: " << str3 << endl;

	size_t achou = str3.find("th");
	if(achou != string::npos){
		cout << "Achou a substring";
	}else{
		cout << "Nao achou a substring";
	}

	string my_str;

	cout << "Digite o seu nome: ";
	getline(cin, my_str);
	cout << "Nome digitado: " << my_str << endl;

	return 0;
}
