program nome_vetor;

type
	nomes = array[1..100] of String;
var
	nome: nomes;
	i, n: integer;
begin
	write('Digite o numero de nome a serem digitados: ');
	read(n);
	
	for i:= 1 to n do
		begin
			write('Informe o ',i,'º nome: ');
			read(nome[i]);
		end;
	write('Indique qual posicao voce deseja visualizar: ');
	read(i);
	write('Numero: ',i,'. Nome: ',nome[i]);
	readln;
end.