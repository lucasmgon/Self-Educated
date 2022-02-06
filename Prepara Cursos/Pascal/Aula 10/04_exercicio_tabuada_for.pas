program tabuada;
var
	cont, numero, resultado: integer;
begin
	write('Qual tabuada deseja exibir: ');
	read(numero);
	for cont:= 1 to 10 do
		begin
			resultado:= numero * cont;
			writeln(numero,' x ', cont,' = ',resultado);
		end;
	readln;
end.