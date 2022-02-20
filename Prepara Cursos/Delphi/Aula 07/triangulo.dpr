program triangulo;

uses
  Forms,
  triangulo_exemplo in 'triangulo_exemplo.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
