//Faça um algoritmo que some o salário de duas pessoas e exiba uma mensagem se for superior a R$1.000.
Program salario;
var
	salario1, salario2, soma: integer;
begin
	write('Digite o primeiro salario: ');
	read(salario1);
	write('Digite o segundo salario: ');
	read(salario2);

	soma:= salario1 + salario2;
	
	case soma of
		0..1000: write('Os salarios sao menores que R$ 1.000,00');
	else
		write('Os salarios sao maiores que R$ 1.000,00');
	end;
	readln;
end.