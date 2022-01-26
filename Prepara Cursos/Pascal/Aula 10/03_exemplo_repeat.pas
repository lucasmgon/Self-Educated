//Algoritmo para somar números de 1 a 10.
program soma_dos_numeros;
var
	cont, soma: integer;
begin
	soma:= 0;
	cont:= 0;
	
	repeat
		cont:= cont + 1;
		soma:= soma + cont;
	until cont = 10;
	
	write('A soma dos numeros de 1 a 10: ', soma);
	readln;
end.