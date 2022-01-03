//Faça um algoritmo que mostre o nome e a idade de uma pessoa.
Program dados;
var
	nome: String;
	idade: integer;
begin
	write('Digite o nome da pessoa: ');
	read(nome);
	write('Digite a idade da pessoa: ');
	read(idade);

	write(nome,' tem ', idade, ' anos.');
	readln;
end.