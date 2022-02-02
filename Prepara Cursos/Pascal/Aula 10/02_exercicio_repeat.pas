program soma_idade;
var
	cont, soma, idade: integer;
	media: real;
begin
	soma:= 0;
	cont:= 0;
	repeat
		write('Digite a ',cont+1,' idade: ');
		read(idade);
		soma:= soma + idade;
		cont:= cont + 1;
	until cont = 10;
	media:= soma / 10;
	writeln('A soma das idades e: ',soma);
	write('A media das idades e: ', media:2:2);
	readln;
end.