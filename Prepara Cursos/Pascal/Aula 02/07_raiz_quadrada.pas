//Calcule a raiz quadrada de um número qualquer.
Program raiz;
var
	n: integer;
	resultado: real;
begin
	write('Digite algum numero: ');
	read(n);

	resultado:= sqrt(n);

	write('A raiz quadrada e: ', resultado:2:2);
	readln;
end.