#include <iostream>

//Operador tern�rio
//<condi��o> ? <opera��o1> : <opera��o 2>;

using namespace std;

int main(int argc, char *argv[]){

	int num = 10;

	if(num > 10){
		cout << "Numero maior que 10" << endl;
	}else{
		cout << "Numero menor ou igual a 10" << endl;
	}

	num > 10 ? cout << "Numero maior que 10" : cout << "Numero menor ou igual a 10";

	return 0;
}
