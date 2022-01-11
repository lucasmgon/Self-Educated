//Faça um algoritmo que realize a soma de todos os números entre 1 e 100.
program soma;
var
	soma, cont: integer;
begin
	soma:=0;	
	for cont:= 1 to 100 do
		begin
			soma:= soma + cont;
		end;
	write('A soma dos numeros de 1 a 100 e: ',soma);
	readln;
end.
