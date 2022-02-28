unit programa_horas_trabalhadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    entrada: TEdit;
    saida: TEdit;
    Label2: TLabel;
    calcular: TButton;
    horas: TLabel;
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
  horaEntrada, horaSaida: TDateTime;
  tempo: real;
begin
  TimeSeparator:= ':';
  ShortTimeFormat:= 'hh:mm:ss';
  horaEntrada:= StrToTime(entrada.Text);
  horaSaida:= StrToTime(saida.Text);
  tempo:= (horaEntrada - horaSaida);
  horas.Caption:= TimeToStr(tempo);
end;

end.
