program soma_e_subtracao;
procedure soma;
var
	n1, n2, soma: integer;
begin
	write('Digite o primeiro numero: ');
	read(n1);
	write('Digite o segundo numero: ');
	read(n2);
	soma:= n1 + n2;
	write('A soma e: ', soma);
	readln;
end;

procedure subtracao;
var
	n1, n2, subtracao: integer;
begin
	write('Digite o primeiro numero: ');
	read(n1);
	write('Digite o segundo numero: ');
	read(n2);
	subtracao:= n1 - n2;
	writeln('A subtracao e: ', subtracao);
	readln;
end;

var opcao: integer;

begin
	writeln('Escolha uma opcao');
	writeln('1 - Soma');
	write('2 - Subtração: ');
	read(opcao);
	
	if opcao = 1 then
		begin
			soma;
		end
	else
		begin
			subtracao;
		end;
end.