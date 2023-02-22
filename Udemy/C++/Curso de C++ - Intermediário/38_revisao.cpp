#include <iostream>

using namespace std;

class ClasseBase{
private:
	int n0;
protected:
	int n1, n2;
public:
	int n3, n4;

	ClasseBase(){ // Construtor
		n0 = 0;
		n1 = 1;
		n2 = 2;
		n4 = 3;
	}
};

class SubClasse0 : public ClasseBase{
public:
	void foo(){
		cout << "SubClasse0: " << endl;
		//cout << n0 << endl;
		cout << n1 << endl;
		cout << n2 << endl;
		cout << n3 << endl;
		cout << n4 << endl;
	}
};

class SubClasse1 : private ClasseBase{
public:
	void foo(){
		cout << "\nSubClasse1" << endl;
		cout << n1 << endl << n2 << endl;
		cout << n3 << endl << n4 << endl;
	}

	int getN3(){
		return n3;
	}
};

class Pai1{
public:
	void foo(){
		cout << "Classe Pai 1." << endl;
	}
};

class Pai2{
public:
	void foo(){
		cout << "Classe Pai 2." << endl;
	}
};

class Filha : public Pai1, public Pai2{

};

int main(int argc, char *argv[]){

	SubClasse0 sub0;
	SubClasse1 sub1;

	Filha f;

	sub0.foo();
	sub1.foo();

	cout << "\nSubClasse na main: " << endl;
	cout << sub0.n3 << endl << sub0.n4 << endl;
	cout << sub1.getN3() << endl;

	f.Pai1::foo();
	f.Pai2::foo();

	return 0;
}
