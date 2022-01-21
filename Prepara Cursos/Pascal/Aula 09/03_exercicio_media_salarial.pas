//Faça um algoritmo que calcule a média de salarial de 10 pessoas.
program salarial;
var
	cont, soma, salario: integer;
	media: real;
begin
	cont:= 1;
	repeat
		write('Digite o ',cont,' salario: ');
		read(salario);
		
		soma:= soma + salario;
		cont:= cont + 1;
		
	until cont 	 = 10;
	
	media:= soma / 10;
	
	write('A media salaria e de: ', media:2:2);
	readln
end.