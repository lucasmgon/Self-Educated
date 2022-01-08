//Faça um algoritmo que receba os dias da semana e mostre alguma informação referente ao dia da semana.
Program dias_semana;
var
	semana: integer;
begin
	writeln('ESCOLHA UM DIA DA SEMANA');
	writeln('1 - Domingo');
	writeln('2 - Segunda');
	writeln('3 - Terça');
	writeln('4 - Quarta');
	writeln('5 - Quinta');
	writeln('6 - Sexta');
	writeln('7 - Sabado');
	readln(semana);

	if (semana >= 1) and (semana <= 7) then
		begin
			case semana of
				1: writeln('Domingo e dia de descansar.');
				2: writeln('Segunda e dia de trabalhar.');
				3: writeln('Terca e dia de estudar.');
				4: writeln('Quarta e dia de jogo na TV.');
				5: writeln('Quinta e dia de tomar sorvete.');
				6: writeln('Sexta e dia de sair com os amigos.');
				7: writeln('Sabado e dia de sair com a namorada.');
			end;
		end
		else
			begin
				writeln('Opcao invalida');
			
			end;
	readln;
end.