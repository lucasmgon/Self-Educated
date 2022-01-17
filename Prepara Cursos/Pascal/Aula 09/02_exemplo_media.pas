//Exemplo para calcular a média das notas de 20 alunos.
program medias;
var
	nota, cont, media, soma: real;
begin
	cont:= 0;
	repeat
		write('Escreva sua nota: ');
		read(nota);
		soma:= soma + nota;
		cont:= cont + 1;
	until cont = 20;
	media:= soma / 20;
	write('A media de todas as notas e: ', media:2:2);
	readln;
end.