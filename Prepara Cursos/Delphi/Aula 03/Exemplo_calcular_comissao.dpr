program Exemplo_calcular_comissao;

uses
  Forms,
  Exemplo_calcular_comissao_01 in 'Exemplo_calcular_comissao_01.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
