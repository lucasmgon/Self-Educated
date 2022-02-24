unit programa_comparador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    valor1: TEdit;
    valor2: TEdit;
    executar: TButton;
    exibir: TLabel;
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

function compara(a,b: integer): boolean;
begin
  compara:= a = b;
end;

procedure TForm1.executarClick(Sender: TObject);
var
  c, d: integer;
begin
  c:= StrToInt(valor1.Text);
  d:= StrToInt(valor2.Text);

  if(compara(c,d)) then
    begin
      exibir.Caption:= 'São iguais.';
    end
  else
    begin
      exibir.Caption:= 'São diferentes.';
    end;
  valor1.SetFocus;
end;
end.
