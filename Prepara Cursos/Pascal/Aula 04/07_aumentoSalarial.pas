//Faça um algoritmo que o usuário informe o cargo e exiba o percentual de aumento salarial.
Program aumentoSalarial;
var
	cargo, aumento: integer;
begin
	writeln('Digite o código do cargo');
	writeln('1 - Marketing');
	writeln('2 - Vendas');
	writeln('3 - Secretario');
	writeln('4 - Caixa');
	writeln('5 - Gerente');
	writeln('6 - Diretor');
	readln(cargo);

	if cargo = 1 then
		begin
			aumento := 50;
		end
	else if cargo = 2 then
		begin
			aumento := 45;
		end
	else if cargo = 3 then
		begin
			aumento := 35;
		end
	else if cargo = 4 then
		begin
			aumento := 25;
		end
	else if cargo = 5 then
		begin
			aumento := 15;
		end
	else if cargo = 6 then
		begin
			aumento := 0;
		end;

	write('Percentual de aumento de ',aumento,'%');
	readln;
end.
