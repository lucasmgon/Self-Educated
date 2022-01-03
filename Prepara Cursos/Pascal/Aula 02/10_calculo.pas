{Faça um algoritmo que receba um número qualquer e o calcule da seguinte maneira:
some o número recebido mais ele mesmo e com o resultado da soma faça a potenciação dele
com a potência de 2. Em seguida, com o resultado da potenciação, faça a raiz quadrada e
mostre o resultado.}
Program conta;
var
	n: integer;
	calculo: real;
begin
	write('Digite um numero: ');
	read(n);
	
	calculo:= sqrt(exp(2*ln(n+n)));
	
	write('O resultado e: ', calculo);
	readln;
end.