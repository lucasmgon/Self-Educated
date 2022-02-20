unit programa_mes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    numero: TEdit;
    mes: TLabel;
    Edit1: TEdit;
    procedure numeroExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.numeroExit(Sender: TObject);
var
  mesExtenso: String;
  mesNumero: integer;
begin
  mesNumero:= StrToInt(numero.Text);
  if (mesNumero = 1) then
    mesExtenso:= 'Janeiro'
  else if (mesNumero = 2) then
    mesExtenso:= 'Fevereiro'
  else if (mesNumero = 3) then
    mesExtenso:= 'Março'
  else if (mesNumero = 4) then
    mesExtenso:= 'Abril'
  else if (mesNumero = 5) then
    mesExtenso:= 'Maio'
  else if (mesNumero = 6) then
    mesExtenso:= 'Junho'
  else if (mesNumero = 7) then
    mesExtenso:= 'Julho'
  else if (mesNumero = 8) then
    mesExtenso:= 'Agosto'
  else if (mesNumero = 9) then
    mesExtenso:= 'Setembro'
  else if (mesNumero = 10) then
    mesExtenso:= 'Outubro'
  else if (mesNumero = 11) then
    mesExtenso:= 'Novembro'
  else if (mesNumero = 12) then
    mesExtenso:= 'Dezembro';
  mes.Caption:= mesExtenso;
end;

end.
