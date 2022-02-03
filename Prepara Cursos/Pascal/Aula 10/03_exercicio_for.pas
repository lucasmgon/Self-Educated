program tabuada;
var
	cont: integer;
	resultado, numero: real;
begin
	numero:= 10;
	resultado:= 0;
	for cont:= 1 to 10 do
		begin
			resultado:= numero*cont;
			writeln(numero:0:0,' x ', cont,' = ',resultado:0:0);
		end;
	readln;
end.