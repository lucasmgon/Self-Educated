//Faça um algoritmo que receba as idades de dez pessoas e some somente as idades pares.
program idade_pares;
var
	idade, cont, soma: integer;
begin
	cont:= 0;
	repeat
		write('Digite a primeira idade: ');
		read(idade);
		if (idade mod 2 = 0) then
			begin	
				soma:= soma + idade;
			end;
		cont:= cont + 1;
	until cont = 10;
	writeln('A soma das idades pares e: ', soma);
	readln;
end.