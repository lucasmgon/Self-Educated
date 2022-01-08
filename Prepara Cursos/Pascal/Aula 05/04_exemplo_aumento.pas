//O algoritmo a seguir recebera alguns dados que analisar a porcentagem de aumento salarial.
Program aumento;
var
	idade, filhos, casado, anos: integer;
	atual, novo, porcentagem: real;
begin
	write('Digite sua idade: ');
	read(idade);
	write('Digite seu salario: ');
	read(atual);
	write('Ha quantos anos voce trabalha: ');
	read(anos);
	write('Voce e casado? 1 - Sim / 2 - Nao: ');
	read(casado);
	write('Voce tem filhos? 1 - Sim / 2 - Nao: ');
	read(filhos);

	case idade of
		0..25: porcentagem:= 10;
		26..40: porcentagem:= 25;
		41..55: porcentagem:= 40;
	else
		porcentagem:= 55;
	end;

	case casado of
		1: porcentagem:= porcentagem + 10;
		2: porcentagem:= porcentagem + 5;
	end;

	case filhos of
		1: porcentagem:= porcentagem + 15;
		2: porcentagem:= porcentagem + 5;
	end;

	case anos of
		0..10: porcentagem:= porcentagem + 10;
		11..20: porcentagem:= porcentagem + 25;
		21..30: porcentagem:= porcentagem + 35;
	else
		porcentagem:= porcentagem + 45;
	end;

	novo:= (porcentagem / 100) * atual + atual;

	writeln('Seu salario e: ', atual:2:2);
	writeln('Sua porcentagem de aumento e: ', porcentagem:2:2);
	writeln('Seu novo salario e: ', novo:2:2);
	readln;
end.