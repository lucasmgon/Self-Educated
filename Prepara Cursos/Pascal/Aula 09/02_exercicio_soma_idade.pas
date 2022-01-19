//Faça um algoritmo que receba as idades de quantas pessoas forem informadas pelo usuário e some somente as idades pares.
program idade_pares;
var
	idade, cont, soma, pessoas: integer;
begin
	cont:= 0;
	write('Quantas pessoas deseja calcular: ');
	read(pessoas);
	
	repeat
		write('Digite a primeira idade: ');
		read(idade);
		if (idade mod 2 = 0) then
			begin	
				soma:= soma + idade;
			end;
		cont:= cont + 1;
	until cont = pessoas;
	writeln('A soma das idades pares e: ', soma);
	readln;
end.