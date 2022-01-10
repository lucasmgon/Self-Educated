//Faça um algoritmo que calcule o aumento salarial de uma pessoa.
Program salario;
var
	atual, anos, idade, porcentagem: integer;
begin
	write('Digite seu salario atual: ');
	read(atual);
	write('Quantos anos trabalha na empresa: ');
	read(anos);
	write('Digite sua idade: ');
	read(idade);

	case idade of
		1..20: porcentagem:= 20;
		21..30: porcentagem:= 30;
		31..40: porcentagem:= 40;
	else
		porcentagem:= 50;
	end;

	case anos of
		1..10: porcentagem:= porcentagem + 5;
		11..20: porcentagem:= porcentagem + 10;
		21..30: porcentagem:= porcentagem + 20;
	else
		porcentagem:= porcentagem + 30;
	end;

	writeln('Seu salario anterior era: ', atual);

	atual:= atual + porcentagem;

	writeln('Seu novo salario e: ', atual);
	writeln('A porcentagem de aumento foi de: ', porcentagem, '%');
	readln;
end.