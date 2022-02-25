object Form1: TForm1
  Left = 192
  Top = 117
  Width = 411
  Height = 291
  Caption = 'Ordenar Nomes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 177
    Height = 185
    Caption = 'Digite 5 nomes'
    TabOrder = 0
    object nome1: TEdit
      Left = 8
      Top = 24
      Width = 161
      Height = 24
      TabOrder = 0
    end
    object nome2: TEdit
      Left = 8
      Top = 56
      Width = 161
      Height = 24
      TabOrder = 1
    end
    object nome3: TEdit
      Left = 8
      Top = 88
      Width = 161
      Height = 24
      TabOrder = 2
    end
    object nome4: TEdit
      Left = 8
      Top = 120
      Width = 161
      Height = 24
      TabOrder = 3
    end
    object nome5: TEdit
      Left = 8
      Top = 152
      Width = 161
      Height = 24
      TabOrder = 4
    end
  end
  object listaOrdenada: TListBox
    Left = 208
    Top = 24
    Width = 177
    Height = 177
    ItemHeight = 16
    TabOrder = 1
  end
  object ordenar: TButton
    Left = 168
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Ordenar'
    TabOrder = 2
    OnClick = ordenarClick
  end
end
