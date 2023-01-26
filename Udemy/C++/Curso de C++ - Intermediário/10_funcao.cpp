#include <iostream>

using namespace std;

bool par(int num);

void mensagem(){
	cout << "***PAR OU IMPAR***\n\n";
}

int main(){
	int n;
	
	mensagem();
	
	cout << "Digite um numero: ";
	cin >> n;
	
	if(par(n)){
		cout << "\nO numero " << n << " e par." << endl;
	}else{
		cout << "\nO numero " << n << " e impar." << endl;
	}
	
	return 0;
}

bool par(int num){
	if(num % 2 == 0){
		return true;
	}
	return false;
}
