//Algoritmo que mostra a quantidade de pessoas de determinado sexo.
program contagem;
var
	cont, sexo: String;
	soma, masculino, feminino: integer;
begin
	cont:= 'sim';
	while cont = 'sim' do
		begin
			write('Qual o sexo do usuario: [F para feminino / M para masculino]: ');
			read(sexo);

			if (sexo = 'f') or (sexo = 'F') then
				begin
					feminino:= feminino + 1;
				end
				else if (sexo = 'm') or (sexo = 'M') then
					begin
						masculino:= masculino + 1;
					end
				else
					begin
						write('Opcao invalida!');
					end;
			write('Deseja continuar cadastrando? Escreva sim ou nao: ');
			read(cont);
		end;
	writeln('Foi digitado ',feminino,' pessoas do sexo feminino.');
	write('Foi digitado ',masculino,' pessoas do sexo masculino.');
	readln;
end.
