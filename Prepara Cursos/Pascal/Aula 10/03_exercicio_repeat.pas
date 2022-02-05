program tabuada;
var
	cont: integer;
	resultado, numero: real;
begin
	numero:= 10;
	resultado:= 0;
	repeat
		begin
			cont:= cont + 1;
			resultado:= numero*cont;
			writeln(numero:0:0,' x ', cont,' = ',resultado:0:0);
		end;
	until cont = 10;
	readln;
end.