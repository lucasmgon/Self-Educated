//Faça um algoritmo que receba o sexo e idade de 5 pessoas e mostre ao usuário a soma das idades do sexo masculino e do sexo feminino.
program sexo_idade;
var
	cont, idade, somaM, somaF, idadeF, idadeM: integer;
	sexo: char;
begin
	somaF:= 0;
	somaM:= 0;
	for cont:=1 to 5 do
		begin
			write('Digite o sexo da ',cont,'° pessoa [M - Masculino / F - Feminino]: ');
			read(sexo);

			if (sexo = 'f') or (sexo = 'F') then
				begin
					write('Digite a idade: ');
					read(idadeF);
					somaF:= somaF + idadeF;
				end
			else if (sexo = 'm') or (sexo = 'M') then
				begin
					write('Digite a idade: ');
					read(idadeM);
					somaM:= somaM + idadeM;
				end
			else
				begin
					write('Opcao invalida!');
				end;
		end;
	writeln('A soma das idades do sexo Feminino e: ', somaF);
	write('A soma das idades do sexo Masculino e: ', somaM);
	readln;
end.
