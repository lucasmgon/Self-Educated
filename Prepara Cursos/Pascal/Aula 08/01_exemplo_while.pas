//Exemplo de uso do while para somar todos os números entre uma numeração específica.
program soma;
var
	cont, numero1, numero2, resultado: integer;
begin
	writeln('Soma dos numeros entre - Digite os numeros');
	write('Digite o numero inicial: ');
	read(numero1);
	write('Digite o numreo final: ');
	read(numero2);

	cont:= numero1;
	resultado:= 0;

	while cont <= numero2 do
		begin
			resultado:= resultado + cont;
			cont:= cont + 1;
		end;
	writeln('A soma dos numeros e: ', resultado);
	readln;
end.