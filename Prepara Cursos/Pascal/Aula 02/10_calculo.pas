{Fa�a um algoritmo que receba um n�mero qualquer e o calcule da seguinte maneira:
some o n�mero recebido mais ele mesmo e com o resultado da soma fa�a a potencia��o dele
com a pot�ncia de 2. Em seguida, com o resultado da potencia��o, fa�a a raiz quadrada e
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