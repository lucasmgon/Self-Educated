program Ordenador_de_nomes;

uses
  Forms,
  programa_ordenar_nomes in 'programa_ordenar_nomes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
