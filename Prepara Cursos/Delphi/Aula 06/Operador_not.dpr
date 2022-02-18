program Operador_not;

uses
  Forms,
  Exemplo_opreador_not in 'Exemplo_opreador_not.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
