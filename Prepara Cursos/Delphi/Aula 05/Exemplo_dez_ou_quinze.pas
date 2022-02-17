unit Exemplo_dez_ou_quinze;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    numero: TEdit;
    executar: TButton;
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
  a: integer;
  b: String;
begin
  a:= StrToInt(numero.Text);
  if (a = 10) or (a = 15) then
    begin
      ShowMessage('Você digitou 10 ou 15.');
    end;
end;
end.
