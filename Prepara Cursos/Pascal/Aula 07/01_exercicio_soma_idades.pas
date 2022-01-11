//Faça um algoritmo que mostre a idade de 10 pessoas e realize a soma das idades.
program soma_idades;
var
	idade, cont, soma: integer;
begin
	
	for cont:=1 to 10 do
		begin
			write('Digite a ',cont,'° idade: ');
			read(idade);
			soma:= soma + idade;
		end;

	write('A soma das idades e: ', soma);
	readln;
end.
