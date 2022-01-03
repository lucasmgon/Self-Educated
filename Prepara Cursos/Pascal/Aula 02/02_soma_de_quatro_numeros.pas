//Calcule a soma de quatro números inteiros.
Program somar;
var n1, n2, n3, n4, soma: integer;
begin
	write('Digite o primeiro numero: ');
	read(n1);
	write('Digite o segundo numero: ');
	read(n2);
	write('Digite o terceiro numero: ');
	read(n3);
	write('Digite o quarto numero: ');
	read(n4);

	soma:= n1+n2+n3+n4;

	writeln('A soma dos 4 numeros e: ', soma);
	readln;
end.