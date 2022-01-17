//Algoritmo que soma os salários maiores que R$ 1.000,00.
program salario;
var
	sal, cont, soma: real;
begin
	cont:= 0;
	repeat
		write('Informe seu salario: ');
		read(sal);
			if (sal > 1000) then
				begin
					soma:= soma + sal;
				end;
		cont:= cont + 1;
	until cont = 5;
	write('A soma dos salarios maiores que R$ 1.000,00 e: ', soma:2:2);
	readln;
end.