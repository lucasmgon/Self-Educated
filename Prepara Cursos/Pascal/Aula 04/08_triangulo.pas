//Faça um algoritmo que receba os valores dos lados de um triangulo e identifique se Escaleno, Isósceles ou Equilátero.
Program triangulo;
var
	lado1, lado2, lado3: integer;
	tipo: String;
begin
	write('Digite o primeiro lado do triangulo: ');
	read(lado1);
	write('Digite o segundo lado do triangulo: ');
	read(lado2);
	write('Digite o terceiro lado do triangulo: ');
	read(lado3);

	if (lado1 <> lado2) and (lado2 <> lado3) and (lado1 <> lado3) then
		begin
		  tipo := 'Escaleno';
		end
	else if (lado1 = lado2) and (lado2 = lado3) and (lado1 = lado3) then
		begin
			tipo := 'Equilatero';
		end
	else if (lado1 = lado2) and (lado2 <> lado3) or (lado2 = lado3) and (lado2 <> lado1) then
		begin
			tipo := 'Isoscele';
		end;

	write('O triangulo e ',tipo);
	readln;
end.