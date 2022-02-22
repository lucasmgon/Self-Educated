program Tabuada;

uses
  Forms,
  programa_tabuada in 'programa_tabuada.pas' {executar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Texecutar, executar);
  Application.Run;
end.
