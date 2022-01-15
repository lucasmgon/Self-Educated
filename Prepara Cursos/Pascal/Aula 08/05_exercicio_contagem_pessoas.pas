//Faça um algoritmo que receba o sexo e a idade da pessoa, e mostre a soma das idades das pessoas de cada sexo e quantidade de pessoas de cada sexo.
program pessoa;
var
	continuar, sexo: char;
	idade, somaF, somaM, contf, contM: integer;
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
					contF:= contF + 1;
				end
			else if (sexo = 'M') or (sexo = 'm') then
				begin
					somaM:= somaM + idade;
					contM:= contM + 1;
				end
			else
				begin
					write('Opcao invalida!');
				end;

			write('Diseja continuar cadastrando? S - sim / N - nao: ');
			read(continuar);
		end;
		writeln('A soma das idades femininas e: ',somaF);
		writeln('Foi cadastrado ',contF,' pessoas do sexo feminino');
		writeln('Foi cadastrado ',contM,' pesssoas do sexo masculino');
		writeln('A soma das idades masculinas e: ',somaM);
	readln;
end.
