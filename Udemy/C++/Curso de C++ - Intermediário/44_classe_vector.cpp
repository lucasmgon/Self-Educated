#include <iostream>
#include <vector>

using namespace std;

int main(int argc, char *argv[]){

	vector<int> v(3);
	
	v[0] = 10;
	v[1] = 20;
	v[2] = 30;

	vector<int>::iterator it = v.begin();

	for(it = v.begin(); it != v.end(); it++){
		cout << *it << endl;
	}

	cout << "Primeiro elemento: " << *v.begin() << endl;
	cout << "Ultimo elemento: " << *(--v.end()) << endl;

	vector<int>::reverse_iterator rit;
	int i = 0;

	for(rit = v.rbegin(); rit != v.rend(); rit++){
		*rit = ++i;
	}

	for(it = v.begin(); it != v.end(); it++){
		cout << *it << endl;
	}

	return 0;
}
