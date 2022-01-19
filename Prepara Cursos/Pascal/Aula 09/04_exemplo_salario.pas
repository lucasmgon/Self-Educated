//Algoritmo que calcula o aumento de salário da quantia de pessoas informadas pelo usuário.
program salarios;
var
	salario, cont, soma, aumento, novo, pessoa: real;
begin
	cont:= 0;
	write('Informe o numero de pessoas a terem aumento: ');
	read(pessoa);

	repeat
		write('Informe seu salario: ');
		read(salario);
			if (salario > 1000) then
				begin
					aumento:= 5/100;
				end
			else if salario <= 1000 then
				begin
					aumento:= 20/100;
				end;
		novo:= salario * aumento + salario;

		writeln('Seu novo salario: ',novo:2:2);
		cont:= cont + 1;
	until cont = pessoa;
	readln;
end.