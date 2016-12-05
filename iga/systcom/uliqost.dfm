object frmliqost: Tfrmliqost
  Left = 308
  Top = 409
  BorderStyle = bsDialog
  Caption = 'Baixar Parcela'
  ClientHeight = 147
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label19: TLabel
    Left = 22
    Top = 35
    Width = 42
    Height = 13
    Caption = 'Situa'#231#227'o'
    FocusControl = edicsit
  end
  object Label22: TLabel
    Left = 246
    Top = 35
    Width = 52
    Height = 13
    Caption = 'Liquida'#231#227'o'
    FocusControl = edidtl
  end
  object Label26: TLabel
    Left = 459
    Top = 35
    Width = 69
    Height = 13
    Caption = 'Data Da Baixa'
    FocusControl = edidtb
  end
  object Label29: TLabel
    Left = 22
    Top = 63
    Width = 61
    Height = 13
    Caption = 'Valor Liquido'
    FocusControl = edivalliq
  end
  object Label28: TLabel
    Left = 211
    Top = 63
    Width = 110
    Height = 13
    Caption = 'Forma de Recebimento'
    FocusControl = cbxntipoop
  end
  object edicsit: TDBEdit
    Left = 96
    Top = 31
    Width = 25
    Height = 21
    DataField = 'CSIT'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 0
  end
  object edinsit: TDBLookupComboBox
    Left = 125
    Top = 31
    Width = 113
    Height = 21
    DataField = 'nsiturec'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 1
  end
  object edidtl: TDBEdit
    Left = 344
    Top = 31
    Width = 89
    Height = 21
    DataField = 'DTL'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 2
  end
  object edidtb: TDBEdit
    Left = 544
    Top = 31
    Width = 81
    Height = 21
    DataField = 'DTB'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 3
  end
  object edivalliq: TDBEdit
    Left = 96
    Top = 59
    Width = 89
    Height = 21
    DataField = 'VALLIQ'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 4
  end
  object cbxntipoop: TDBLookupComboBox
    Left = 344
    Top = 59
    Width = 145
    Height = 21
    DataField = 'ntipoop'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 5
  end
  object btnfechar: TBitBtn
    Left = 466
    Top = 111
    Width = 105
    Height = 33
    Caption = '&Baixar'
    TabOrder = 7
  end
  object btncancelar: TBitBtn
    Left = 578
    Top = 111
    Width = 105
    Height = 33
    Caption = '&Cancelar'
    TabOrder = 6
  end
end
