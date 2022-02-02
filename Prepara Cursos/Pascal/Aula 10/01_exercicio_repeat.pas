program soma_idade;
var
	cont, soma, idade: integer;
begin
	soma:= 0;
	cont:= 0;
	repeat
		write('Digite a ',cont+1,' idade: ');
		read(idade);
		soma:= soma + idade;
		cont:= cont + 1;
	until cont = 10;
	
	write('A soma das idades e: ',soma);
	readln;
end.