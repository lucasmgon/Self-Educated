//Faça um algoritmo que realize a soma de todos os números pares entre 1 e 1000.
program soma_pares;
var
	soma, pares, cont: integer;
begin
	cont:= 1;
	while cont <= 1000 do
		begin
			if cont mod 2 = 0 then
				begin
					soma := soma + cont;
				end;
			cont:= cont + 1;
		end;
	write('A soma dos numeros pares entre 1 e 1000 e: ',soma);
	readln;
end.
