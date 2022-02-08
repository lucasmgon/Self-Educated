program somar;

procedure soma; //Procedimento criado.
	var
		n1, n2, soma: integer;
	begin
		write('Digite o primeiro numero: ');
		read(n1);
		write('Digite o segundo numero: ');
		read(n2);
		soma:= n1 + n2;
		write('A soma e: ', soma);
		read(soma);
	end;
begin //Rotina principal.
	soma; //Chamada do procedimento.
end;