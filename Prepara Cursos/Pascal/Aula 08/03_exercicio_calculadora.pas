{Faça uma calculadora onde o usuário entre com dois números e escolha a operação desejada: multiplicação ou divisão.
Você deve mostrar o resultado e depois perguntar se ele deseja realizar a operação novamente.}
program calculadora;
var
	numero1, numero2, calculo: real;
	continuar, escolha: char;
begin
	continuar:= 'S';
	writeln('		CALCULADORA DE MULTIPLICACAO E DIVISAO');

	while (continuar = 'S') do
		begin
			writeln('');
			write('Digite [M] - Multiplicacao ou [D] Divisao: ');
			read(escolha);
			
			write('Digite o primeiro numero: ');
			read(numero1);
			
			write('Digite o segundo numero: ');
			read(numero2);
			
			if (escolha = 'M') or (escolha = 'm') then
				begin
					calculo:= numero1 * numero2;
				end
			else if (escolha = 'F') or (escolha = 'f') then
				begin
					calculo:= numero1 / numero2;
				end
			else
				begin
					write('Escolha invalida!');
				end;

			writeln('O resultado e: ', calculo:2:2);
			write('Deseja continuar? [S] - sim or [N] - nao: ');
			read(continuar);
		end;
	readln;
end.
