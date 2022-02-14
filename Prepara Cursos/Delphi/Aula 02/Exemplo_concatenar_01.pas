unit Exemplo_concatenar_01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    nome: TEdit;
    Label2: TLabel;
    sobrenome: TEdit;
    Concatenar: TButton;
    nome_sobrenome: TLabel;
    procedure ConcatenarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ConcatenarClick(Sender: TObject);
begin
  nome_sobrenome.Caption:= nome.Text + ' ' + sobrenome.Text;
end;

end.
