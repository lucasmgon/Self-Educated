#include <iostream>

using namespace std;

// Diminui a sobrecarga de chamada das funções

inline void foo(){
	cout << "Lucas Matheus";
}

int main(int argc, char *argv[]){
	
	foo();
	
	return 0;
}
