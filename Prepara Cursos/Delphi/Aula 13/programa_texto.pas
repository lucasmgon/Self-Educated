unit programa_texto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    textoSalvo: TEdit;
    salvar: TButton;
    abrir: TButton;
    textoAberto: TEdit;
    procedure salvarClick(Sender: TObject);
    procedure abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.salvarClick(Sender: TObject);
var
  arquivoTexto: TextFile;
  textoDigitado: String[255];
begin
  textoDigitado:= textoSalvo.Text;
  AssignFile(arquivoTexto, 'C:\Texto.txt');
  Rewrite(arquivoTexto);
  Append(arquivoTexto);
  writeln(arquivoTexto, textoDigitado);
  closeFile(arquivoTexto);
end;
procedure TForm1.abrirClick(Sender: TObject);
var
  arquivoTexto: TextFile;
  textoDigitado: String[255];
begin
  AssignFile(arquivoTexto,'C:\Texto.txt');
  Reset(arquivoTexto);
  Readln(arquivoTexto, textoDigitado);
  textoAberto.Text:= textoDigitado;
  CloseFile(arquivoTexto);
end;

end.
