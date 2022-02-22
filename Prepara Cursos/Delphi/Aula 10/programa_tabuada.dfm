object executar: Texecutar
  Left = 192
  Top = 117
  Width = 328
  Height = 284
  Caption = 'Tabuada'
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
    Left = 24
    Top = 24
    Width = 137
    Height = 16
    Caption = 'Informe um valor inteiro'
  end
  object numero: TEdit
    Left = 176
    Top = 24
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object Button1: TButton
    Left = 48
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object tabuada: TListBox
    Left = 176
    Top = 64
    Width = 121
    Height = 169
    ItemHeight = 16
    TabOrder = 2
  end
end
