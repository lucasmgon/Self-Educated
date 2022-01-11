//Exemplo de algoritmo que faz a soma de todos os números pares de 1 a 100.
program pares;
var
	cont, soma: integer;
begin
	soma:=0;

	for cont:=1 to 100 do
		begin
			if cont mod 2 = 0 then
				begin
					soma:= soma + cont;
				end;
		end;
	write('A soma dos numeros pares de 1 a 100 e: ', soma);
	readln;
end.
