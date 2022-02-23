object Form1: TForm1
  Left = 211
  Top = 147
  Width = 256
  Height = 140
  Caption = 'Fatorial'
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
    Left = 8
    Top = 16
    Width = 89
    Height = 16
    Caption = 'Digite um valor'
  end
  object resultado: TLabel
    Left = 112
    Top = 72
    Width = 3
    Height = 16
  end
  object numero: TEdit
    Left = 112
    Top = 16
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object processar: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = processarClick
  end
end
