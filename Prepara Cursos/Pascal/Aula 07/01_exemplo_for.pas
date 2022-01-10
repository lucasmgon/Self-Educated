//Exemplo de condição de repetição for.
Program nome_pessoas;
var
	nome, nomes: String;
	cont, valor: integer;
begin
	write('Digite o numero de nomes que deseja digitar: ');
	read(valor);

	for cont:=1 to valor do
		begin
			write('Digite o ',cont,'°',' nome: ');
			read(nome);

			nomes:= nomes + ' ' + nome;
		end;

	write('Os nomes digitados foram: ', nomes);
	readln;
end.