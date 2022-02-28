program horas_trabalhadas;

uses
  Forms,
  programa_horas_trabalhadas in 'programa_horas_trabalhadas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
