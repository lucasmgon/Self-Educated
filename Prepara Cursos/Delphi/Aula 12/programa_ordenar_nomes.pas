unit programa_ordenar_nomes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    nome1: TEdit;
    nome2: TEdit;
    nome3: TEdit;
    nome4: TEdit;
    nome5: TEdit;
    listaOrdenada: TListBox;
    ordenar: TButton;
    procedure ordenarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ordenarClick(Sender: TObject);
var
  nome: Array[1..5] of String[20];
  i, j: integer;
  x: String[20];
begin
  listaOrdenada.Items.Clear;
  nome[1]:= nome1.Text;
  nome[2]:= nome2.Text;
  nome[3]:= nome3.Text;
  nome[4]:= nome4.Text;
  nome[5]:= nome5.Text;

  for i:= 1 to 4 do
    for j:= i+1 to 5 do
      if (nome[i] > nome[j]) then
        begin
          x:= nome[i];
          nome[i]:= nome[j];
          nome[j]:= x;
        end;
  for i:= 1 to 5 do
    listaOrdenada.Items.Add(nome[i]);
    nome1.SetFocus;
end;

end.
