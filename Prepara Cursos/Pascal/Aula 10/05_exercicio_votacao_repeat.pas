//Faça um algoritmo que realize uma votação dos candidatos e apresente quantos votos cada candidato teve.
program votacao;
var
	escolha, cont, j, m, s, r: integer;
	finalizar: char;
begin
	repeat
		finalizar:= 'n';
		begin
			writeln();
			writeln('ESCOLHA SEU CANDIDATO A VOTACAO');
			writeln('1 - JOAO');
			writeln('2 - MARIA');
			writeln('3 - JOSE');
			write('4 - ROSA: ');
			read(escolha);
			
			case escolha of
				1: j:= j + 1;
				2: m:= m + 1;
				3: s:= s + 1;
				4: r:= r + 1;
			end;
			
			write('DESEJA FINALIZAR A VOTACAO? [S]im/[N]ao: ');
			read(finalizar); 
		end;
	until finalizar <> 'n';
	
	writeln('VOTOS POR CANDIDADO');
	writeln('JOAO:  ',j);
	writeln('MARIA: ',m);
	writeln('JOSE:  ',s);
	writeln('ROSA:  ',r);
	readln;
end.