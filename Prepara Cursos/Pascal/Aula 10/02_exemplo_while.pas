//Algoritmo para somar números de 1 a 10.
program soma_dos_numeros;
var
	cont, soma: integer;
begin
	soma:= 0;
	cont:= 0;
	while cont <= 10 do
		begin
			soma:= soma + cont;
			cont:= cont + 1;
		end;
	write('A soma dos numeros de 1 a 10 e: ',soma);
	readln;
end.