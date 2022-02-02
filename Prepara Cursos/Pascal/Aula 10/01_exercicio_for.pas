program soma_idade;
var
	soma, cont, idade: integer;
begin
	soma:= 0;
	for cont:= 1 to 10 do
		begin
			write('Digite a ',cont,' idade: ');
			read(idade);
			soma:= soma + idade;
		end;
	write('A soma das idades e: ', soma);
	readln;
end.