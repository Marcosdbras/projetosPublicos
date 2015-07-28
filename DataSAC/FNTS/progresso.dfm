object frmprogresso: Tfrmprogresso
  Left = 275
  Top = 352
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = 'Aguarde! Processando...'
  ClientHeight = 57
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ltexto: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'ltexto'
  end
  object barra: TProgressBar
    Left = 8
    Top = 32
    Width = 433
    Height = 17
    TabOrder = 0
  end
end
