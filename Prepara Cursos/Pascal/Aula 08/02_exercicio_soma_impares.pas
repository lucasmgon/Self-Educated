//Faça um algoritmo que realize a soma de todos os números ímpares entre 1 e 1000.
program soma_pares;
var
	soma, pares, cont: integer;
begin
	cont:= 1;
	while cont <= 1000 do
		begin
			if cont mod 2 = 1 then
				begin
					soma := soma + cont;
				end;
			cont:= cont + 1;
		end;
	write('A soma dos numeros impares entre 1 e 1000 e: ',soma);
	readln;
end.
