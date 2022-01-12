//Faça um algoritmo que receba o usuário digite uma quantidade de pessoas, e realize a soma das idades apenas das pessoas que tiverem idade maior que 18 anos.
program maior_idade;
var
	cont, aux, soma, idade: integer;
begin
	write('Quantas idades deseja somar? ');
	read(cont);

	for aux:= 1 to cont do
		begin
			write('Digite a ',aux,'° idade: ');
			read(idade);
			
			if idade >= 18 then
				begin
					soma:= soma + idade;
				end
		end;
	write('A soma das idades e: ', soma);
	readln;
end.
