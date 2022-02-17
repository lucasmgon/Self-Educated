program Exemplo;

uses
  Forms,
  Exemplo_dez_ou_quinze in 'Exemplo_dez_ou_quinze.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
