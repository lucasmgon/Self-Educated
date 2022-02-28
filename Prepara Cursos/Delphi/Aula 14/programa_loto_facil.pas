unit programa_loto_facil;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    numero1: TEdit;
    numero2: TEdit;
    numero3: TEdit;
    numero4: TEdit;
    numero5: TEdit;
    GroupBox2: TGroupBox;
    numerosAcertados: TListBox;
    verificar: TButton;
    procedure verificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.verificarClick(Sender: TObject);
var
  apostados: array[1..5] of Integer;
  sorteados: array[1..5] of Integer;
  i, j: Integer;
begin
  apostados[1]:= StrToInt(numero1.Text);
  apostados[2]:= StrToInt(numero2.Text);
  apostados[3]:= StrToInt(numero3.Text);
  apostados[4]:= StrToInt(numero4.Text);
  apostados[5]:= StrToInt(numero5.Text);
  Randomize;

  sorteados[1]:= random(50);
  sorteados[2]:= random(50);
  sorteados[3]:= random(50);
  sorteados[4]:= random(50);
  sorteados[5]:= random(50);

  for i:= 1 to 5 do
    begin
      j:= 0;
      for j:= j + 1 to 5 do
        if (apostados[i] = sorteados[j]) then
          numerosAcertados.Items.add(IntToStr(apostados[i]));
    end;
end;

end.
