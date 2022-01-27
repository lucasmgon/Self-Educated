//Algoritmo que recebe o nome de 5 pessoas e armazena em um vetor.
program idades;
var
	idade: array[1..5] of integer;
	i: integer;
begin
	for i:= 1 To 5 do
		begin
			write('Informe a idade: ');
			read(idade[i]);
		end;
	readln;
end.