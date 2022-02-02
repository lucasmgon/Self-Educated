program soma_idade;
var
	soma, cont, idade: integer;
	media: real;
begin
	soma:= 0;
	for cont:= 1 to 10 do
		begin
			write('Digite a ',cont,' idade: ');
			read(idade);
			soma:= soma + idade;
		end;
	media:= soma / 10;
	writeln('A soma das idades e: ', soma);
	write('A media das idades e: ', media:2:2);
	readln;
end.