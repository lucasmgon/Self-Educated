//Calcule a idade de quatro pessoas.
Program idade;
var idade1, idade2, idade3, idade4, soma: integer;
begin
	write('Digite a primeira idade: ');
	read(idade1);
	write('Digite a segunda idade: ');
	read(idade2);
	write('Digite a terceira idade: ');
	read(idade3);
	write('Digite a quarta idade: ');
	read(idade4);

	soma:= idade1 + idade2 + idade3 + idade4;

	write('A soma das idades e: ', soma);
	readln;
end.