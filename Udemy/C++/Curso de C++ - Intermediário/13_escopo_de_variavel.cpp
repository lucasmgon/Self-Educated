#include <iostream>

using namespace std;

int num_global = 12; // Vari�vel global

void foo(){
	int num = 10; // Vari�vel local
	cout << num << endl;
}

int main(){
	cout << num_global << endl;
	foo();
	return 0;
}
