//Algoritmo para somar números de 1 a 10.
program soma_dos_numeros;
var
	cont, soma: integer;
begin
	soma:= 0;
	for cont:= 1 to 10 do
		begin
			soma:= soma + cont;
		end;
	write('A soma dos numeros de 1 a 10 e: ', soma);
	readln;
end.