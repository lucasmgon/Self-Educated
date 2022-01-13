//Faça um algoritmo que receba o sexo e a idade da pessoa, e mostre a soma das idades das pessoas de cada sexo.
program pessoa;
var
	continuar, sexo: char;
	idade, somaF, somaM: integer;
begin
	continuar:= 'S';

	while continuar = 'S' do
		begin 
			write('Qual o sexo da pessoa: [F] - Feminino / [M] Masculino: ');
			read(sexo);
			write('Qual a idade da pessoa: ');
			read(idade);

			if (sexo = 'F') or (sexo = 'f') then
				begin
					somaF:= somaF + idade;
				end
			else if (sexo = 'M') or (sexo = 'm') then
				begin
					somaM:= somaM + idade;
				end
			else
				begin
					write('Opcao invalida!');
				end;

			write('Diseja continuar cadastrando? S - sim / N - nao: ');
			read(continuar);
		end;
		writeln('A soma das idades femininas e: ',somaF);
		writeln('A soma das idades femininas e: ',somaM);
	readln;
end.
