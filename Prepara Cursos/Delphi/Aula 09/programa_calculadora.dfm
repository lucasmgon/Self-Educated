object Form1: TForm1
  Left = 192
  Top = 117
  Width = 279
  Height = 269
  Caption = 'Calculadora'
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
    Width = 83
    Height = 16
    Caption = 'Primeiro valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 88
    Height = 16
    Caption = 'Segundo valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object resultado: TLabel
    Left = 160
    Top = 184
    Width = 4
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object valor1: TEdit
    Left = 120
    Top = 16
    Width = 129
    Height = 24
    TabOrder = 0
  end
  object valor2: TEdit
    Left = 120
    Top = 56
    Width = 129
    Height = 24
    TabOrder = 1
  end
  object calcular: TButton
    Left = 152
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = calcularClick
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 96
    Width = 105
    Height = 121
    Caption = 'Opera'#231#245'es'
    TabOrder = 3
    object somar: TRadioButton
      Left = 8
      Top = 24
      Width = 89
      Height = 17
      Caption = 'Somar'
      TabOrder = 0
    end
    object subtrair: TRadioButton
      Left = 8
      Top = 48
      Width = 89
      Height = 17
      Caption = 'Subtrair'
      TabOrder = 1
    end
    object multiplicar: TRadioButton
      Left = 8
      Top = 72
      Width = 89
      Height = 17
      Caption = 'Multiplicar'
      TabOrder = 2
    end
    object dividir: TRadioButton
      Left = 8
      Top = 96
      Width = 89
      Height = 17
      Caption = 'Dividir'
      TabOrder = 3
    end
  end
end
