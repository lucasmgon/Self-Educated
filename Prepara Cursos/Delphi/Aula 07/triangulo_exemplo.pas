unit triangulo_exemplo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ladoA: TEdit;
    ladoB: TEdit;
    ladoC: TEdit;
    executar: TButton;
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

procedure TForm1.executarClick(Sender: TObject);
var
  a, b, c: integer;
begin
  a:=StrToInt(ladoA.Text);
  b:=StrToInt(ladoB.Text);
  c:=StrToInt(ladoc.Text);

  if (a < b+c) and (b < a+c) and (c < a+b) then
    if (a = b) and (b = c) then
      begin
        form1.Caption:= 'Tri�ngulo Equilatero.';
        showmessage('Tri�ngulo Equilatero.');
      end
    else
      if (a = b) or (a = c) or (c = b) then
        begin
          form1.Caption := 'Tri�ngulo Isoceles.';
          showmessage('Tri�ngulo Isoceles.');
        end
      else
        begin
          form1.Caption:= 'Tri�ngulo Escaleno.';
          showmessage('Tri�ngulo Escanelo.');
        end
      else
        begin
          form1.Caption:= 'Nao e Tri�ngulo.';
          showmessage('Nao e Tri�ngulo');
        end;
end;
end.
