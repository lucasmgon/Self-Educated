//Faça um algoritmo que verifique a validade de um login.
Program acesso;
var
	login: String;
	senha: integer;
begin
	write('Digite o login: ');
	read(login);
	write('Digite a senha: ');
	read(senha);

	if (login = 'prepara') and (senha = 123456) then
		begin
			write('Acesso permitido');
		end
	else
		begin
			write('Acesso negado');
		end;
	readln;
end.