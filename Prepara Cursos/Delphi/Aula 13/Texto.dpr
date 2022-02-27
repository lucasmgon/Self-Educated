program Texto;

uses
  Forms,
  programa_texto in 'programa_texto.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
