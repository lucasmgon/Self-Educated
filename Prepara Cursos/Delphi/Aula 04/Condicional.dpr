program Condicional;

uses
  Forms,
  Exemplo_condicional in 'Exemplo_condicional.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
