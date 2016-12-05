object frmconfint: Tfrmconfint
  Left = 101
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o Interna'
  ClientHeight = 303
  ClientWidth = 776
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
    Left = 8
    Top = 21
    Width = 184
    Height = 13
    Caption = 'Sigla da Situa'#231#227'o Tribut'#225'ria B do ICMS'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 737
    Height = 233
    DataSource = frmDados.Dts_Tgicms
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 200
    Top = 17
    Width = 89
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'SIGLA'
    ListSource = frmDados.Dts_SITB
    TabOrder = 0
  end
end
