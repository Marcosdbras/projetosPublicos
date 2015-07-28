object frmbaixarrec: Tfrmbaixarrec
  Left = 252
  Top = 280
  Width = 479
  Height = 168
  Caption = 'Baixar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label20: TLabel
    Left = 14
    Top = 64
    Width = 52
    Height = 13
    Caption = 'Liquida'#231#227'o'
    FocusControl = edidtl
  end
  object Label22: TLabel
    Left = 195
    Top = 64
    Width = 69
    Height = 13
    Caption = 'Data Da Baixa'
    FocusControl = edidtb
  end
  object Label28: TLabel
    Left = 192
    Top = 93
    Width = 82
    Height = 13
    Caption = 'Forma de Recbto'
    FocusControl = cbxntipoop
  end
  object Label26: TLabel
    Left = 14
    Top = 93
    Width = 61
    Height = 13
    Caption = 'Valor Liquido'
    FocusControl = edivalliq
  end
  object spdbaixar: TSpeedButton
    Left = 13
    Top = 6
    Width = 33
    Height = 30
    Hint = 'Baixar'
    Flat = True
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
  end
  object spdestornar: TSpeedButton
    Left = 49
    Top = 6
    Width = 33
    Height = 30
    Hint = 'Estornar'
    Flat = True
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    Visible = False
  end
  object edidtl: TDBEdit
    Left = 88
    Top = 60
    Width = 89
    Height = 21
    DataField = 'DTL'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 0
  end
  object edidtb: TDBEdit
    Left = 280
    Top = 60
    Width = 81
    Height = 21
    DataField = 'DTB'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 1
  end
  object cbxntipoop: TDBLookupComboBox
    Left = 280
    Top = 89
    Width = 169
    Height = 21
    DataField = 'ntipoop'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 2
  end
  object edivalliq: TDBEdit
    Left = 88
    Top = 89
    Width = 89
    Height = 21
    DataField = 'VALLIQ'
    DataSource = frmDados.Dts_Vencto
    TabOrder = 3
  end
end
