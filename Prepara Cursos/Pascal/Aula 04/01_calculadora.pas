//Faça uma calculadora de Soma, Subtração, Multiplicação e Divisão.
Program calculadora;
var
	escolha, numero1, numero2, calculo: integer;
	calculoReal: real;
begin
	writeln('CALCULADORA');
	writeln('1 - Adicao');
	writeln('2 - Subtracao');
	writeln('3 - Multiplicacao');
	writeln('4 - Divisao');
	readln(escolha);

	write('Digite o primeiro numero: ');
	read(numero1);
	write('Digite o segundo numero: ');
	read(numero2);

	if(escolha = 1)then
		begin
			calculo:= numero1 + numero2;
		end
	else if(escolha = 2)then
		begin
			calculo:= numero1 - numero2;
		end
	else if(escolha = 3)then
		begin
			calculo:= numero1 * numero2;
		end
	else if(escolha = 4)then
		begin
			calculoReal:= numero1 / numero2;
		end
	else
		begin
			write('Escolha invalida');
		end;
	
	if (escolha > 0) and (escolha < 4) then
		begin	
			write('O resultado da operacao e: ',calculo);
		end
	else if escolha = 4 then
		begin
			write('O resultado da operacao e: ',calculoReal:2:2);
		end;
		
	readln;	
end.