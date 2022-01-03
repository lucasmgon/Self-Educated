//Calcule a soma de quatro números inteiros e multiplique-os pelo último número.
Program multiplicacao;
var n1, n2, n3, n4, multiplicacao: integer;
begin
	write('Digite o primeiro numero: ');
	read(n1);
	write('Digite o segundo numero: ');
	read(n2);
	write('Digite o terceiro numero: ');
	read(n3);
	write('Digite o quarto numero: ');
	read(n4);

	multiplicacao:= (n1 + n2 + n3 + n4) * n4;

	write('O resultado da operacao e: ', multiplicacao);
	readln;
end.