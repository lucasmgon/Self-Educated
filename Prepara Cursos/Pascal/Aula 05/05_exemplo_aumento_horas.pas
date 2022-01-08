//O algoritmo exibira o salário e um aumento baseado em seus dados pessoais.
Program aumento_horas;
var
	idade, horas: integer;
	aumento, salario, receber, porcentagem: real;
begin
	write('Digite sua idade: ');
	read(idade);
	write('Digite seu salario: ');
	read(salario);
	write('Digite a quantidade de horas trabalhadas: ');
	read(horas);
	
	case idade of
		0..25:
			begin
				case horas of
					0..100: porcentagem:= 10;
					101..250: porcentagem:= 20;
				else
					porcentagem:= 30;
				end;
			end;

		26..45:
			begin
				case horas of
					0..100: porcentagem:= 40;
					101..250: porcentagem:= 50;
				else
					porcentagem:= 60;
			end;
		end;
	else
		begin
			case horas of
				0..100: porcentagem:= 60;
				101..250: porcentagem:= 70;
			else
				porcentagem:= 80;
			end;
		end;
	end;

	aumento:= (porcentagem / 100) * salario;
	receber:= salario + aumento;

	writeln('Seu aumento foi de: R$ ', aumento:2:2);
	writeln('A porcentagem e de: ',porcentagem:1:1,'%');
	writeln('Seu salario a receber e de: R$ ',receber:2:2);
	readln;
end.