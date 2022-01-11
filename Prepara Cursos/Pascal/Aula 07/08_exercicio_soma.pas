//Faça um algoritmo que realiza a soma entre 1 e o número que o usuário quiser.
program soma;
var
	soma, cont, aux: integer;
begin
	
	write('Ate que numero deseja somar: ');
	read(cont);
	
	for aux:= 1 to cont do
		begin
			soma:= soma + aux;
		end;
	
	write('A soma dos numeros de 1 a ',cont,' e: ',soma);
	readln;
end.
