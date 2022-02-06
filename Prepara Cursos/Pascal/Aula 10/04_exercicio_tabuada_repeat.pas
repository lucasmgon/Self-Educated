program tabuada;
var
	cont, numero, resultado: integer;
begin
	cont:= 1;
	write('Qual tabuada deseja exibir: ');
	read(numero);
	repeat
		begin
			resultado:= numero * cont;
			writeln(numero,' x ', cont,' = ',resultado);
			cont:= cont + 1;
		end;
	until cont = 11;
	readln;
end.