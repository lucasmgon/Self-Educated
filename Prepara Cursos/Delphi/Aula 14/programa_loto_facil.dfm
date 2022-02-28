object Form1: TForm1
  Left = 192
  Top = 117
  Width = 477
  Height = 297
  Caption = 'Loto f'#225'cil de ganhar'
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
    Width = 233
    Height = 193
    Caption = 'Digitte 5 valores para apostar'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 83
      Height = 16
      Caption = 'Primeiro valor'
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 88
      Height = 16
      Caption = 'Segundo valor'
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 84
      Height = 16
      Caption = 'Terceiro valor'
    end
    object Label4: TLabel
      Left = 8
      Top = 128
      Width = 73
      Height = 16
      Caption = 'Quarto valor'
    end
    object Label5: TLabel
      Left = 8
      Top = 160
      Width = 71
      Height = 16
      Caption = 'Quinto valor'
    end
    object numero1: TEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object numero2: TEdit
      Left = 104
      Top = 64
      Width = 121
      Height = 24
      TabOrder = 1
    end
    object numero3: TEdit
      Left = 104
      Top = 96
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object numero4: TEdit
      Left = 104
      Top = 128
      Width = 121
      Height = 24
      TabOrder = 3
    end
    object numero5: TEdit
      Left = 104
      Top = 160
      Width = 121
      Height = 24
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 272
    Top = 16
    Width = 177
    Height = 193
    Caption = 'Voc'#234' acertou os n'#250'meros'
    TabOrder = 1
    object numerosAcertados: TListBox
      Left = 8
      Top = 24
      Width = 161
      Height = 161
      ItemHeight = 16
      TabOrder = 0
    end
  end
  object verificar: TButton
    Left = 16
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = verificarClick
  end
end
