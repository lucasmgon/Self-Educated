unit programa_condicao_de_pagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    valor: TEdit;
    vencimento: TEdit;
    pagamento: TEdit;
    verificar: TButton;
    resposta: TLabel;
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
  valorDuplicata, dias, novoValor: real;
  dataVencimento, dataPagamento: TDateTime;
begin
  DateSeparator:='/';
  ShortDateFormat:= 'dd/mm/yyyy';
  ThousandSeparator:= '.';
  DecimalSeparator:= ',';
  valorDuplicata:= StrToFloat(valor.Text);
  dataVencimento:= StrToDate(vencimento.Text);
  dataPagamento:= StrToDate(pagamento.Text);
  if (dataPagamento > dataVencimento) then
    begin
      dias:= dataPagamento - dataVencimento;
      novoValor:= valorDuplicata + (valorDuplicata * 0.01 * dias);
    end
  else
    novoValor:= valorDuplicata - (valorDuplicata * 0.05);
    resposta.Caption:= FormatFloat('R$ #,##0.00', novoValor);
end;

end.
