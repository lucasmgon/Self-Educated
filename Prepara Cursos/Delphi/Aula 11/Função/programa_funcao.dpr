program programa_funcao;

uses
  Forms,
  programa_comparador in 'programa_comparador.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
