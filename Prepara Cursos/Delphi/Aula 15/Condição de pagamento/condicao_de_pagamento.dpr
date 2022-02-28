program condicao_de_pagamento;

uses
  Forms,
  programa_condicao_de_pagamento in 'programa_condicao_de_pagamento.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
