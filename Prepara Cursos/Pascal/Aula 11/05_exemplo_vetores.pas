//Algoritmo que recebe nome idade e armazena em um vetor.
program nome_idade;
var
	nome: array[1..1000] of String;
	idade: array[1..1000] of integer;
	i, valor: integer;
	cont: String;
begin
	write('Qual o numero de pessoa a informar o nome e idade: ');
	read(valor);
	for i:= 1 to valor do
		begin
			write('Informe o nome: ');
			read(nome[i]);
			write('Informe a idade: ');
			read(idade[i]);
		end;
		cont:= 'sim';
	while cont = 'sim' do
		begin
			write('Qual a posicao que deseja verificar: ');
			read(i);
			writeln('O nome e: ',nome[i]);
			writeln('A idade e: ',idade[i]);
			write('Deseja realizar outra consulta? [sim/nao]: ');
			read(cont);
		end;
end.