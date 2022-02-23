program Fatorial;

uses
  Forms,
  programa_fatorial in 'programa_fatorial.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
