object frmfiltro: Tfrmfiltro
  Left = 447
  Top = 82
  BorderStyle = bsDialog
  Caption = 'frmfiltro'
  ClientHeight = 435
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlesquerda: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 435
    Align = alLeft
    Caption = 'pnlesquerda'
    TabOrder = 0
    object stgfiltro: TStringGrid
      Left = 1
      Top = 89
      Width = 184
      Height = 168
      ColCount = 2
      DefaultRowHeight = 18
      FixedCols = 0
      TabOrder = 0
      ColWidths = (
        36
        319)
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 383
      Height = 88
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 1
    end
  end
  object pnldireita: TPanel
    Left = 385
    Top = 0
    Width = 144
    Height = 435
    Align = alClient
    Caption = 'pnldireita'
    TabOrder = 1
  end
end
