program idade;

uses
  Forms,
  programa_idade in 'programa_idade.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
