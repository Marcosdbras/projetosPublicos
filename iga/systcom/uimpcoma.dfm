object frmimpcoma: Tfrmimpcoma
  Left = 318
  Top = 256
  Width = 438
  Height = 219
  Caption = 'frmimpcoma'
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
    Left = 93
    Top = 55
    Width = 191
    Height = 74
    Digito = '8'
    CorBarra = clBlack
    CorEspaco = clWhite
    Tipo = cdEAN13
    Codigo = '123456789124'
    Largura = 2
  end
  object lblempresa: TLabel
    Left = 132
    Top = 8
    Width = 121
    Height = 29
    Alignment = taCenter
    Caption = 'lblempresa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblnome: TLabel
    Left = 12
    Top = 165
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
    Left = 386
    Top = 160
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
    Left = 173
    Top = 137
    Width = 31
    Height = 13
    Alignment = taCenter
    Caption = 'lblcbar'
  end
end
