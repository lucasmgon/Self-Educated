object Form1: TForm1
  Left = 192
  Top = 117
  Width = 300
  Height = 218
  Caption = 'Data de pagamento'
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
    Width = 32
    Height = 16
    Caption = 'Valor'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 120
    Height = 16
    Caption = 'Data de vencimento'
  end
  object Label3: TLabel
    Left = 16
    Top = 104
    Width = 120
    Height = 16
    Caption = 'Data de pagamento'
  end
  object resposta: TLabel
    Left = 152
    Top = 152
    Width = 27
    Height = 16
    Caption = 'resp'
  end
  object valor: TEdit
    Left = 152
    Top = 24
    Width = 121
    Height = 24
    TabOrder = 0
  end
  object vencimento: TEdit
    Left = 152
    Top = 64
    Width = 121
    Height = 24
    TabOrder = 1
  end
  object pagamento: TEdit
    Left = 152
    Top = 104
    Width = 121
    Height = 24
    TabOrder = 2
  end
  object verificar: TButton
    Left = 16
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 3
    OnClick = verificarClick
  end
end
