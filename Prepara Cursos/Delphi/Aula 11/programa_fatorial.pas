unit programa_fatorial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    numero: TEdit;
    processar: TButton;
    resultado: TLabel;
    procedure processarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Procedure Fatorial(x:integer);
var
  i,f: integer;
begin
  f:= 1;
  for i:= 1 to x do
    begin
      f:= f * i;
      Form1.resultado.Caption:= IntToStr(f);
    end;
end;

procedure TForm1.processarClick(Sender: TObject);
var
  n: integer;
begin
  n:= StrToInt(numero.Text);
  Fatorial(n);
  numero.SetFocus;
end;

end.
