//Faça uma calculadora, só que usando a função CASE.
Program calculadora;
var
	escolha: integer;
	numero1, numero2, calculo: real;
begin
	writeln('***CALCULADORA***');
	writeln('1 - Somar');
	writeln('2 - Subtrair');
	writeln('3 - Multiplicar');
	writeln('4 - Dividir');
	read(escolha);

	if (escolha >= 1) and (escolha <= 4) then
		begin
			write('Digite o primeiro numero: ');
			read(numero1);
			write('Digite o segundo numero: ');
			read(numero2);

			case escolha of
				1: calculo:= numero1 + numero2; 
				2: calculo:= numero1 - numero2;
				3: calculo:= numero1 * numero2;
				4: calculo:= numero1 / numero2;
			end;

			write('O resultado e: ', calculo:2:2);
		end
	else
		begin
			write('Opcao invalida!');
		end;
	readln;
end.