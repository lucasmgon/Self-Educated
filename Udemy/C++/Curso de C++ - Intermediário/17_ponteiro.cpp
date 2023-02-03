#include <iostream>

using namespace std;

int main(){
	int array[] = {1, 2, 3, 4, 5};
	int* parray = &array[0];
	int i = 0;
	
	while(i < 5){
		cout << *parray << endl;
		parray = parray + 1;
		i++;
	}
}
