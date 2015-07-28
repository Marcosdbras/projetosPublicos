object frmcopia_arquivo: Tfrmcopia_arquivo
  Left = 291
  Top = 458
  AlphaBlend = True
  AlphaBlendValue = 230
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Atualizando arquivo...'
  ClientHeight = 61
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ga_copia: TFlatGauge
    Left = 0
    Top = 45
    Width = 447
    Height = 16
    AdvColorBorder = 0
    ColorBorder = 8623776
    Progress = 0
    Align = alBottom
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 171
    Height = 13
    Caption = 'Aguarde... Copiando Arquivo....'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 43
    Width = 447
    Height = 2
    Align = alBottom
  end
end
