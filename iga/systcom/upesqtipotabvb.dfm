object frmpesqtipotabvb: Tfrmpesqtipotabvb
  Left = 289
  Top = 296
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Tipo de Pagamento'
  ClientHeight = 138
  ClientWidth = 374
  Color = clBtnFace
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
  object Label1: TLabel
    Left = 56
    Top = 35
    Width = 72
    Height = 13
    Caption = 'Tipo de Tabela'
  end
  object cbxnometipotab: TDBLookupComboBox
    Left = 56
    Top = 68
    Width = 265
    Height = 21
    DataField = 'COD'
    DataSource = frmDados.Dts_Temp
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = frmDados.Dts_Tipotab
    NullValueKey = 46
    TabOrder = 0
  end
end
