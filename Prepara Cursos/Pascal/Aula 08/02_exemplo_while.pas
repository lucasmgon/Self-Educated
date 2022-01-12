//Algoritmo que pergunta ao usuário se ele desejar continuar calculando.
program soma_continuar;
var
	continuar: String;
	soma, n1, n2: real;
begin
	continuar:= 'sim';

	while continuar = 'sim' do
		begin
			writeln('Soma de dois numeros');
			write('Digite o primeiro numero: ');
			read(n1);
			write('Digite o segundo numero: ');
			read(n2);

			soma:= n1 + n2;

			writeln('A soma dos numeros e: ', soma:2:2);
			write('Deseja realizar outra soma? [sim/nao]: ');
			read(continuar);
		end;
	readln;
end.