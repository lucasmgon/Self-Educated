program Calculadora;

uses
  Forms,
  programa_calculadora in 'programa_calculadora.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
