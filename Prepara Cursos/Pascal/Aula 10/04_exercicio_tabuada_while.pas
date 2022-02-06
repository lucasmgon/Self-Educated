program tabuada;
var
	cont, numero, resultado: integer;
begin
	write('Qual tabuada deseja exibir: ');
	read(numero);
	while cont <= 10 do
		begin
			resultado:= numero * cont;
			writeln(numero,' x ', cont,' = ',resultado);
			cont:= cont + 1;
		end;
	readln;
end.