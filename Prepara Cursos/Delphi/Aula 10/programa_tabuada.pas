unit programa_tabuada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Texecutar = class(TForm)
    Label1: TLabel;
    numero: TEdit;
    Button1: TButton;
    tabuada: TListBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  executar: Texecutar;

implementation

{$R *.dfm}

procedure Texecutar.Button1Click(Sender: TObject);
var
  n, i, multiplicacao: integer;
begin
  tabuada.Items.Clear;
  n:= StrToInt(numero.Text);
  i:= 1;
  while(i <= 10) do
    begin
      multiplicacao:= n * i;
      tabuada.Items.Add(IntToStr(multiplicacao));
      i:= i + 1;
    end;
  numero.SetFocus;
end;

end.
