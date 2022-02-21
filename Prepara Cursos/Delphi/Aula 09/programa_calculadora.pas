unit programa_calculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    resultado: TLabel;
    valor1: TEdit;
    valor2: TEdit;
    calcular: TButton;
    GroupBox1: TGroupBox;
    somar: TRadioButton;
    subtrair: TRadioButton;
    multiplicar: TRadioButton;
    dividir: TRadioButton;
    procedure calcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.calcularClick(Sender: TObject);
var
  a, b, result: real;
  formato: String;
begin
  a:=StrToFloat(valor1.Text);
  b:=StrToFloat(valor2.Text);
  result:=0;

  if (somar.Checked) then
    begin
      result:= a + b;
    end;
  if (subtrair.Checked) then
    begin
      result:= a - b;
    end;
  if (multiplicar.Checked) then
    begin
      result:= a * b;
    end;
  if (dividir.Checked) then
    begin
      if (b = 0) then
        showmessage('Não existe divisão por zero.')
      else
        result:= a / b;
    end;
  formato:= FormatFloat('0.00;(0.00);ZERADO',result);
  resultado.Caption:= formato;
  valor1.SetFocus;
end;
end.
