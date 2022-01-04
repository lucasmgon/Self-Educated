//Faça um algoritmo de estoque.
Program estoque;
var
	nome, valor: String;
	estoque: integer;
begin
	write('Digite o nome do produto: ');
	read(nome);
	write('Digite a quantidade de estoque do produto: ');
	read(estoque);

	if (estoque >= 0) and (estoque <= 500) then
		begin
			valor := 'estoque abaixo da media.';
		end
	else if (estoque >= 501) and (estoque <= 1000) then
		begin
			valor := 'estoque satisfatorio.';
		end
	else if (estoque >= 1000) then 
		begin
			valor := 'estoque acima da media.';
		end;

	write(nome,' esta com o ', valor);
	readln;
end.