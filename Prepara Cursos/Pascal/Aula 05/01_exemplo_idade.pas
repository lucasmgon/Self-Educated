//Algoritmo onde o usuário digita a idade e é retornado se ele é maior ou menor de idade.
Program idade;
var
	idade: integer;
begin
	write('Digite sua idade: ');
	read(idade);

	case idade of
		0..17:
			write('Voce e menor de idade');
		else
			write('Voce e maior de idade');
		end;
	readln;
end.