object frmvenda_nf: Tfrmvenda_nf
  Left = 419
  Top = 220
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'PEDIDO DE VENDA | Emitir NF'
  ClientHeight = 94
  ClientWidth = 287
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 77
    Top = 18
    Width = 127
    Height = 13
    Caption = 'N'#250'mero da Nota Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object enf: TEdit
    Left = 96
    Top = 40
    Width = 89
    Height = 33
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '000000'
    OnKeyPress = enfKeyPress
  end
end
