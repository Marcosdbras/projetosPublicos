object frmacao: Tfrmacao
  Left = 617
  Top = 338
  BorderStyle = bsDialog
  Caption = 'Tratamento'
  ClientHeight = 245
  ClientWidth = 376
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label15: TLabel
    Left = 16
    Top = 5
    Width = 106
    Height = 13
    Caption = 'ESPECIALIDADES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 45
    Top = 53
    Width = 39
    Height = 13
    Caption = 'QTDE.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 91
    Top = 53
    Width = 72
    Height = 13
    Caption = 'DESCRI'#199#195'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 19
    Top = 109
    Width = 43
    Height = 13
    Caption = 'DENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 87
    Top = 109
    Width = 86
    Height = 13
    Caption = 'PR. UNIT'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 212
    Top = 109
    Width = 41
    Height = 13
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 256
    Top = 109
    Width = 86
    Height = 13
    Caption = 'FUNCION'#193'RIO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnacao: TButton
    Left = 213
    Top = 208
    Width = 75
    Height = 25
    Caption = 'btnacao'
    TabOrder = 9
    OnClick = btnacaoClick
  end
  object btnCancelar: TButton
    Left = 293
    Top = 208
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 8
    OnClick = btnCancelarClick
  end
  object cbxnomemod: TDBLookupComboBox
    Left = 14
    Top = 24
    Width = 355
    Height = 21
    TabOrder = 0
  end
  object ediqtdeM: TEdit
    Left = 14
    Top = 72
    Width = 71
    Height = 21
    MaxLength = 14
    TabOrder = 1
    Text = 'ediqtde'
  end
  object cbxdescricao: TDBLookupComboBox
    Left = 89
    Top = 72
    Width = 280
    Height = 21
    TabOrder = 2
  end
  object cbxdente: TDBLookupComboBox
    Left = 14
    Top = 128
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object ediprveM: TEdit
    Left = 89
    Top = 128
    Width = 83
    Height = 21
    MaxLength = 15
    TabOrder = 4
    Text = 'ediprve'
  end
  object edisubtotalM: TEdit
    Left = 177
    Top = 128
    Width = 73
    Height = 21
    MaxLength = 15
    TabOrder = 5
    Text = 'edisubtotal'
  end
  object cbxnomefun: TDBLookupComboBox
    Left = 254
    Top = 127
    Width = 115
    Height = 21
    TabOrder = 6
  end
  object ckbtratar: TCheckBox
    Left = 14
    Top = 176
    Width = 65
    Height = 17
    Caption = 'Tratar?'
    TabOrder = 7
  end
end
