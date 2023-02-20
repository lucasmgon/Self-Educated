class Pilha{
private:
	int * vet;
	int max_tam; // Máximo do tamanho da pilha
	int topo; // Marca o tamanho da pilha
public:
	Pilha(); // Construtor
	~Pilha(); // Destrutor
	void empilhar(int elemento);
	void desempilhar();
	int getTopo();
	int vazia();
};
