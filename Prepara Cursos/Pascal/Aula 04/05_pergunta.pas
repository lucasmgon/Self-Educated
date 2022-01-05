//Faça um algoritmo que realize uma pergunta ao usuário, e lhe apresente respostas para escolher.
Program pergunta;
var
	escolha: integer;
begin
	writeln('Qual dessas opcoes nao e uma linguagem de programacao?');
	writeln('1 - Java');
	writeln('2 - PHP');
	writeln('3 - Pascal');
	writeln('4 - HTML');
	writeln('5 - Python');
	writeln('6 - C');
	readln(escolha);

	if (escolha >= 1) and (escolha <= 6) then
		begin
			if (escolha = 4) then
				begin
					write('Resposta correta');
				end
			else if (escolha <> 4) then
				begin
					write('Resposta incorreta');
				end;
		end
	else
		begin
			write('Opcao invalida')
		end;
	readln;
end.