object Form1: TForm1
  Left = 192
  Top = 117
  Width = 515
  Height = 288
  Caption = 'Editor de texto'
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
    Width = 184
    Height = 16
    Caption = 'Digite um texto na caixa abaixo'
  end
  object textoSalvo: TEdit
    Left = 24
    Top = 56
    Width = 457
    Height = 24
    TabOrder = 0
  end
  object salvar: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = salvarClick
  end
  object abrir: TButton
    Left = 24
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Abrir'
    TabOrder = 2
    OnClick = abrirClick
  end
  object textoAberto: TEdit
    Left = 24
    Top = 216
    Width = 457
    Height = 24
    TabOrder = 3
  end
end
