//Exemplo do comando de repetição repeat.
program nomes;
var
	nome: String;
	cont: integer;
begin
	cont:= 0;
	repeat
		write('Escreva seu nome: ');
		read(nome);
		cont:= cont + 1;
	until cont = 5;
	readln;
end.