program nome_idade;
var
	nome: array[1..10] of String;
	idade: array[1..10] of Integer;
	i: integer;
begin
	for i:= 1 to 10 do
		begin
			write('Informe o ',i,' nome: ');
			read(nome[i]);
			write('Informe a idade: ');
			read(idade[i]);
		end;
	write('Qual o nome da posicao que voce deseja verificar: ');
	read(i);
	write('O nome e: ',nome[i]);
	write('A idade e: ',idade[i]);
	readln;
end.