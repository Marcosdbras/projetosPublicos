object frmbaixarncm: Tfrmbaixarncm
  Left = 486
  Top = 250
  Width = 294
  Height = 192
  Caption = 'Sincronizar NCM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 14
    Width = 155
    Height = 21
    Caption = 'Clique em Sincronizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 6
    Top = 84
    Width = 222
    Height = 15
    Caption = 'Aguarde enquanto ocorre a sincroniza'#231#227'o...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 8
    Top = 35
    Width = 266
    Height = 15
    Caption = 'Aten'#231#227'o! A sincroniza'#231#227'o demandar'#225' alguns minutos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 49
    Width = 256
    Height = 15
    Caption = 'de processamento, enquanto este ocorrer voc'#234' n'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 9
    Top = 62
    Width = 206
    Height = 15
    Caption = 'poder'#225' mexer nesta inst'#226'ncia do sistema'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 45
    Top = 112
    Width = 201
    Height = 41
    Hint = 'Este processo vai precisar de alguns minutos para finalizar'
    Caption = 'Sincronizar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object sql_exec: TZQuery
    SQL.Strings = (
      'select * from aliqinter')
    Params = <>
    Left = 32
    Top = 120
  end
end
