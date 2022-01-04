//Faça um algoritmo que recebe três números e relate qual deles é o maior.
Program maior;
var
	n1, n2, n3: integer
begin
	write('Digite o primeiro numero: ');
	read(n1);
	write('Digite o segundo numero: ');
	read(n2);
	write('Digite o terceiro numero: ');
	read(n3);

	if (n1 > n2) and (n1 > n3) then
		begin
			maior = n1;
		end
	else if (n2 > n1) and (n2 > n3) then
		begin
			maior = n2;
		end
	else if (n3 > n1) and (n3 > n1) then
		begin
			maior = n3;
		end
	else
		write('Os numeros sao iguais');
	end;

	write(maior,' e o maior numero');
	readln;
end.