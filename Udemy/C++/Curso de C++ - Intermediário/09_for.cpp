#include <iostream>

using namespace std;

int main(){
	int n, fatorial=1;
		
	cout << "Digite um numero: ";
	cin >> n;
	
	for(int i=1; i < n; i++){
		fatorial *= (i + 1);
	}
	
	cout << "Fatorial: " << fatorial << endl;	
	return 0;
}
