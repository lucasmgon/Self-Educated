program loto_facil;

uses
  Forms,
  programa_loto_facil in 'programa_loto_facil.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
