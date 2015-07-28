object Form1: TForm1
  Left = 214
  Top = 122
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 397
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Lucida Console'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 11
  object Button1: TButton
    Left = 224
    Top = 360
    Width = 233
    Height = 25
    Caption = 'Assinar documento'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 64
    Width = 257
    Height = 25
    Caption = 'Gerar Chaves e xml de valida'#231#227'o'
    TabOrder = 1
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 96
    Width = 449
    Height = 81
    Caption = 'P'#250'blica'
    TabOrder = 2
    object Memo1: TMemo
      Left = 2
      Top = 13
      Width = 445
      Height = 66
      Align = alClient
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 184
    Width = 449
    Height = 81
    Caption = 'Privada'
    TabOrder = 3
    object Memo2: TMemo
      Left = 2
      Top = 13
      Width = 445
      Height = 66
      Align = alClient
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 8
    Width = 441
    Height = 49
    Caption = 'Software House'
    TabOrder = 4
    object Edit2: TEdit
      Left = 16
      Top = 16
      Width = 417
      Height = 19
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 272
    Width = 449
    Height = 81
    Caption = 'xml de Valida'#231#227'o (eECFc)'
    TabOrder = 5
    object Memo3: TMemo
      Left = 2
      Top = 13
      Width = 445
      Height = 66
      Align = alClient
      TabOrder = 0
    end
  end
  object Button3: TButton
    Left = 8
    Top = 360
    Width = 105
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = Button3Click
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 312
  end
  object SaveDialog1: TSaveDialog
    Left = 272
    Top = 232
  end
end
