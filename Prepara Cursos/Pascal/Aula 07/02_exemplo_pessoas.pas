//Exemplo de algoritmo que pega o nome e idade de 5 pessoas, e faz a soma das idades.
Program nomes_e_idades;
var
	nome, nomes: String;
	cont, idade, soma: integer;
begin
	idade:= 0;
	for cont:= 1 to 5 do
		begin
			write('Digite o ',cont,'° nome: ');
			read(nome);
			write('Digite a idade: ');
			read(idade);

			soma:= soma + idade;
			nomes:= nomes + ' ' + nome;
		end;
	writeln('Os nomes digitados foram: ', nomes);
	write('A soma das idades e: ', soma);
	readln;
end.
