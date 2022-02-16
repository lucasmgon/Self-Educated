unit Exemplo_condicional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    numero: TEdit;
    Executar: TButton;
    procedure ExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ExecutarClick(Sender: TObject);
var
  a: integer;
begin
  a:= StrToInt(numero.Text);
  if a = 10 then
    begin
      ShowMessage('O número digitado é igual a 10.');
    end
  else if a > 10 then
    begin
      ShowMessage('O número digitado é maior que 10.');
    end
  else if a < 10 then
    begin
      ShowMessage('O número digitado é menor que 10.');
    end;
end;
end.
