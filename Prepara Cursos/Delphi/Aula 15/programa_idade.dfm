object Form1: TForm1
  Left = 192
  Top = 117
  Width = 484
  Height = 131
  Caption = 'Programa idade'
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
    Top = 24
    Width = 272
    Height = 16
    Caption = 'Digite sua data de nascimento Ex.: 07/03/1995'
  end
  object Label2: TLabel
    Left = 216
    Top = 64
    Width = 76
    Height = 16
    Caption = 'Sua idade '#233':'
  end
  object idade: TLabel
    Left = 304
    Top = 64
    Width = 35
    Height = 16
    Caption = 'idade'
  end
  object nascimento: TEdit
    Left = 304
    Top = 16
    Width = 153
    Height = 24
    TabOrder = 0
  end
  object calcular: TButton
    Left = 16
    Top = 56
    Width = 73
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = calcularClick
  end
end
