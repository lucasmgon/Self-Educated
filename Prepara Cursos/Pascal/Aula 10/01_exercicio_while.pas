program soma_idade;
var
	soma, cont, idade: integer;
	media: real;
begin
	soma:= 0;
	cont:= 1;
	while cont <= 10 do
		begin
			write('Digite a ',cont,' idade: ');
			read(idade);
			soma:= soma + idade;
			cont:= cont + 1;
		end;
	media:= soma / 10;
	writeln('A soma das idades e: ', soma);
	write('A media das idades e: ', media:2:2);
	readln;
end.