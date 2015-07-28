object frmdetcaixaind: Tfrmdetcaixaind
  Left = 565
  Top = 105
  Width = 550
  Height = 571
  BorderIcons = []
  Caption = 'Caixa Individual Detalhado'
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
  object btnsair: TBitBtn
    Left = 432
    Top = 9
    Width = 105
    Height = 33
    Caption = '&SAIR'
    TabOrder = 0
    OnClick = btnsairClick
  end
  object btnestornar: TBitBtn
    Left = 432
    Top = 49
    Width = 105
    Height = 33
    Caption = '&ESTORNAR'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 417
    Height = 521
    DataSource = frmDados.dts_caixa
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
