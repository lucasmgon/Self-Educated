unit programa_idade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    nascimento: TEdit;
    calcular: TButton;
    Label2: TLabel;
    idade: TLabel;
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
  dataAtual, dataNascimento: TdateTime;
  anos: real;
begin
  dataAtual:= Date;
  dataNascimento:= StrToDate(nascimento.Text);
  anos:= int((dataAtual - dataNascimento) / 365.25);
  idade.Caption:= FormatFloat('0',anos);
end;

end.
