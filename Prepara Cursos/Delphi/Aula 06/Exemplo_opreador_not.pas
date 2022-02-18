unit Exemplo_opreador_not;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    valorA: TEdit;
    executar: TButton;
    valorB: TEdit;
    procedure executarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.executarClick(Sender: TObject);
var
  caixa1, caixa2, caixa3: integer;
begin
  caixa1:= StrToInt(valorA.Text);
  caixa2:= StrToInt(valorB.Text);
  caixa3:= caixa1 + caixa2;
  if not (caixa3 > 5) then
    begin
      showmessage('O valor é menor que 5.');
    end;
end;
end.
