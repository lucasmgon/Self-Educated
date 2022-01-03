//Calcule a média de idade de três pessoas.
Program media;
var
	idade1, idade2, idade3: integer;
	media: real;
begin
	write('Digite a idade da primeira pessoa: ');
	read(idade1);
	write('Digite a idade da segunda pessoa: ');
	read(idade2);
	write('Digite a idade da terceira pessoa: ');
	read(idade3);

	media := (idade1 + idade2 + idade3) / 3;

	write('A media da idade das tres pessoas e: ', media);
	readln;
end.