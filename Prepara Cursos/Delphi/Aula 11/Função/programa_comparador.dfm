object Form1: TForm1
  Left = 192
  Top = 117
  Width = 323
  Height = 169
  Caption = 'Compara'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 140
    Height = 16
    Caption = 'Informe o primeiro valor'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 144
    Height = 16
    Caption = 'Informe o segundo valor'
  end
  object exibir: TLabel
    Left = 184
    Top = 96
    Width = 3
    Height = 16
  end
  object valor1: TEdit
    Left = 176
    Top = 16
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object valor2: TEdit
    Left = 176
    Top = 56
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object executar: TButton
    Left = 16
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = executarClick
  end
end
