program mes;

uses
  Forms,
  programa_mes in 'programa_mes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
