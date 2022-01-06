Program aumento;
var
	idade: integer;
	atual, novo, porcentagem: real;
begin
	write('Digite sua idade: ');
	read(idade);
	write('Digite seu salario atual: ');
	read(atual);

	case idade of
		0..30:
			begin
				porcentagem:= 35;
			end;
		31..50:
			begin
				porcentagem:= 50;
			end;
		else
			begin
				porcentagem:= 65;
			end
	end;

	novo:= (porcentagem / 100) * atual + atual;

	writeln('Seu salario atual e ',atual:2:2);
	writeln('Sua porcentagem de aumento e ', porcentagem:2:2,'%');
	writeln('Seu novo salario e: ', novo:2:2);
	readln;
end.