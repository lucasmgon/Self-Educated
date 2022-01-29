//Exemplo de vetor que usa o for para armazenar dados.
program idades;
var
	idade: array[1..5] of integer;
	i: integer;
begin
	for i:= 1 to 5 do
		begin
			write('Informe a idade: ');
			read(idade[i]);
		end;
			
	write('Qual idade voce deseja verificar: ');
	read(i);
	write('A idade e: ', idade[i]);
	readln;
end.