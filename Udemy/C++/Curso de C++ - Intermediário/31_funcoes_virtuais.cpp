#include <iostream>

using namespace std;

class ClasseMae{
public:
	virtual void mostrarMensagem(){
		cout << "Classe mae..." << endl;
	}
};

class ClasseFilha : public ClasseMae{
public:
	virtual void mostrarMensagem(){
		cout << "Classe filha..." << endl;
	}
};

void foo(ClasseMae* p){
	
	p->mostrarMensagem();
}

int main(int argc, char* argv[]){
	
	ClasseMae mae;
	ClasseFilha filha;
	
	foo(&mae);
	foo(&filha);
	
	return 0;
}
