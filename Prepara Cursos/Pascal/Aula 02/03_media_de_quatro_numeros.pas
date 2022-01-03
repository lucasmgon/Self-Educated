//Calcule a média de quatro números inteiros.
Program media;
var
	n1, n2, n3, n4: integer;
	media: real;
begin
	write('Digite o primeiro numero: ');
	read(n1);
	write('Digite o segundo numero: ');
	read(n2);
	write('Digite o terceiro numero: ');
	read(n3);
	write('Digite o quarto numero: ');
	read(n4);

	media:= (n1+n2+n3+n4) / 4;

	writeln('A media dos 4 numeros e: ', media);
	readln;
end.