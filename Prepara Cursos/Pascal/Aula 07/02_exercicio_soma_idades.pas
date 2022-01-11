//Faça um algoritmo que o usuário informe a quantidade de idades e realize a soma das mesmas.
program soma_idades;
var
	soma, cont, idade, aux: integer;
begin
	soma:= 0;
	write('Quantas idades deseja somar? ');
	read(cont);
	
	for aux:= 1 to cont do
		begin
			write('Digite a ',aux,'° idade: ');
			read(idade);
			
			soma:= soma + idade;
		end;
	write('A soma das idades e: ',soma);
	readln;
end.
