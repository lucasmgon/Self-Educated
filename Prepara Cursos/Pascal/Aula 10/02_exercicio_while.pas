program soma_idade;
var
	soma, cont, idade: integer;
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
	write('A soma das idades e: ', soma);
	readln;
end.