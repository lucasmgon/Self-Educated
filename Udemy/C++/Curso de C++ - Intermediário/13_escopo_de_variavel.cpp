#include <iostream>

using namespace std;

int num_global = 12; // Variável global

void foo(){
	int num = 10; // Variável local
	cout << num << endl;
}

int main(){
	cout << num_global << endl;
	foo();
	return 0;
}
