#include <iostream>

using namespace std;

int quad(int num = 1){ // Parāmetros opcionais, coloca um parāmetro default
	return num * num;
}

int main(int argc, char *argv[]){

	int num = 10;

	cout << "Quadrado: " << quad(num) << endl;;
	cout << "Quadrado: " << quad() << endl;;

	return 0;
}
