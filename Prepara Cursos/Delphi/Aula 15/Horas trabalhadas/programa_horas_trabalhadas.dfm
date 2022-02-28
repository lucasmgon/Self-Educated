object Form1: TForm1
  Left = 192
  Top = 117
  Width = 291
  Height = 194
  Caption = 'Horas Trabalhadas'
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
    Width = 98
    Height = 16
    Caption = 'Hora de entrada'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 86
    Height = 16
    Caption = 'Hora de sa'#237'da'
  end
  object horas: TLabel
    Left = 136
    Top = 112
    Width = 3
    Height = 16
  end
  object entrada: TEdit
    Left = 136
    Top = 24
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object saida: TEdit
    Left = 136
    Top = 64
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object calcular: TButton
    Left = 24
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = calcularClick
  end
end
