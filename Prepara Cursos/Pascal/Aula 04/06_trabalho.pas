//Faça um algoritmo que o usuário informe a hora e exiba turno correspondente.
Program trabalho;
var
	hora: integer;
	turno: String;
begin
	write('Digite o horario de inicio do turno: ');
	read(hora);

	if (hora >= 6) and (hora < 14) then
		begin
			turno:= 'manha';
		end
	else if (hora >= 14) and (hora < 22) then
		begin
			turno:= 'tarde';
		end
	else if (hora >= 22) and (hora <= 24) or (hora < 6) then
		begin
			turno:= 'noite';
		end;

	write('Seu turno e no periodo da ', turno);
	readln;
end.