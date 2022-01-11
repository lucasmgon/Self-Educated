//Faça um algoritmo como no exercício 3, mas o número de idades será informado pelo usuário.
program soma_idades;
var
	soma, cont, idade, aux: integer;
	media: real;
begin
	soma:= 0;
	write('Quantas idades deseja calcular? ');
	read(cont);

	for aux:= 1 to cont do
		begin
			write('Digite a ',aux,'° idade: ');
			read(idade);
			
			soma:= soma + idade;
		end;

	media:= soma / cont;
	writeln('A soma das idades e: ',soma);
	write('A media das idades e: ',media:2:2);
	readln;
end.
