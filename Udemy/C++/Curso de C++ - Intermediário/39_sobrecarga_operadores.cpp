#include <iostream>

using namespace std;

// N�mero complexo
// n1 = 1 + 2i
// n2 = 3 + d1
// n3 = n1 + n2 = 4 + 6i

class Complexo{
public:
	int real, imag;
	
	Complexo(int real, int imag){
		this->real = real;
		this->imag = imag;
	}
	
	Complexo operator+(Complexo& c){
		return Complexo(this->real + c.real, this->imag + c.imag);
	}
};

int main(int argc, char *argv[]){
	
	Complexo c1(1, 2), c2(3, 4);
	//Complexo c3 = c1 + c2;
	Complexo c3 = c1.operator+(c2);
	
	cout << "Parte real: " << c3.real << endl;
	cout << "Parte imaginaria: " << c3.imag << endl;
		
	return 0;
}
