object frmimpetqav: Tfrmimpetqav
  Left = 437
  Top = 287
  Width = 252
  Height = 120
  Caption = 'frmimpetqav'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ABarra1: TABarra
    Left = 5
    Top = 15
    Width = 191
    Height = 27
    Digito = '8'
    CorBarra = clBlack
    CorEspaco = clWhite
    Tipo = cdEAN13
    Codigo = '123456789124'
    Largura = 2
  end
  object lblempresa: TLabel
    Left = 4
    Top = 0
    Width = 50
    Height = 13
    Caption = 'lblempresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblnome: TLabel
    Left = 4
    Top = 45
    Width = 36
    Height = 13
    Caption = 'lblnome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblprve: TLabel
    Left = 162
    Top = 0
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblprve'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblcbar: TLabel
    Left = 157
    Top = 33
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblcbar'
  end
end
