//Algoritmo onde o usuário digita um caractere e retorna o seu tipo.
Program caracteres;
var
	caracter: char;
begin
	write('Digite um caractere qualquer do teclado: ');
	readln(caracter);

	case caracter of
		'a'..'z':
			write('Esse caractere e uma letra do alfabeto');
		'0'..'9':
			write('Esse caractere e um numero');
		'+','-','*','/':
			write('Esse caractere e um operador aritmetico');
		else
			write('Esse caractere e um outro caractere qualquer');
		end;
	readln;
end.