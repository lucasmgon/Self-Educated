//Faça um algoritmo que realize a soma de todos os números pares entre 1 e o número que o usuário desejar.
program soma_pares;
var
	soma, cont, aux: integer;
begin
	write('Ate que numero deseja calcular: ');
	read(cont);

	for aux:= 1 to cont do
		begin
			if aux mod 2 = 0 then
				begin
					soma:= soma + aux;
				end;
		end;

	write('A soma dos numeros pares de 1 a ',cont,' e: ',soma);
	readln;
end.
