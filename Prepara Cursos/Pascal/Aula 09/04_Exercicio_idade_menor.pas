//Algoritmo que recebe a idade de 10 pessoas e mostre a menor idade digitada.
program pessoa;
var
	idade, cont, idadeM: integer;
begin
	cont:= 1;
	repeat
		write('Digite a idade da ',cont,' pessoa: ');
		read(idade);

		if (idadeM < idade) then
			begin
				idadeM:= idade;
		  end;
		cont:= cont + 1;
	until cont = 10;

	write('A menor idade digitada foi: ', idadeM);
	readln;
end.