//Vetor do tipo String para armazenar nomes.
program nomes;
var
	nome: array[1..10] of String;
	i: integer;
begin
	for i:= 1 to 10 do
		begin
			write('Informe o ',i,' nome: ');
			read(nome[i]);
		end;
	write('Qual o nome da posicao que voce deseja verificar? ');
	read(i);
	write('O nome e: ', nome[i]);
	readln;
end.