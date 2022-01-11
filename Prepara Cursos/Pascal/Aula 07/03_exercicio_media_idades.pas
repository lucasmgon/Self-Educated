//Faça um algoritmo que receba a idade de 10 pessoas e depois mostre a soma e média.
program media_idades;
var
	soma, idade, cont: integer;
	media: real;
begin

	for cont:=1 to 10 do
		begin
			write('Digite a ',cont,'° idade: ');
			read(idade);
			
			soma:= soma + idade;
		end;

	media:= soma / 10;
	
	writeln('A soma das idades e: ',soma);
	write('A media das idades e: ',media:2:2);
	readln;
end.
