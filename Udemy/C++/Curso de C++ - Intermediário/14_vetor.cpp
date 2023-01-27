#include <iostream>

using namespace std;

int main(){
	int vetor[50];
	
	for(int i = 1; i <=50; i++){
		vetor[i] = i;
		cout << vetor[i] << " - ";
	}
	
	cout << "\n\nTamanho do vetor: " << sizeof(vetor) << endl;
	
	return 0;
}
