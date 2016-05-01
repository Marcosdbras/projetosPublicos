object frmbaixarncm: Tfrmbaixarncm
  Left = 475
  Top = 237
  BorderStyle = bsDialog
  Caption = 'Sincronizar NCM'
  ClientHeight = 186
  ClientWidth = 552
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
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
    Top = 76
    Width = 8
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
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
    Left = 277
    Top = 35
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
    Top = 49
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
    Left = 197
    Top = 128
    Width = 201
    Height = 41
    Hint = 'Este processo vai precisar de alguns minutos para finalizar'
    Caption = 'Sincronizar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object qrexec: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 16
    Top = 117
  end
end
