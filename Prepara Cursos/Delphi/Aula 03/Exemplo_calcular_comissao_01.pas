unit Exemplo_calcular_comissao_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    salario: TEdit;
    comissao: TEdit;
    saldo_receber: TEdit;
    calcular: TButton;
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
  sa, co, sr: real;
begin
  sa:= StrToFloat(salario.Text);
  co:= StrToFloat(comissao.Text);
  sr:= sa * (co/100);
  saldo_receber.Text:= FormatFloat('R$ #,##0.00',sr);
end;
end.
