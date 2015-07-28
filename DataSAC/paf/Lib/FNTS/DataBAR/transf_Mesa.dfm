object frmTransf_Mesa: TfrmTransf_Mesa
  Left = 467
  Top = 556
  BorderStyle = bsDialog
  Caption = 'Transfer'#234'ncia de Produtos para outra Mesa'
  ClientHeight = 108
  ClientWidth = 315
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
    Left = 48
    Top = 16
    Width = 221
    Height = 19
    Caption = 'N'#250'mero da Mesa/Comanda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EDIT1: TRzNumericEdit
    Left = 48
    Top = 40
    Width = 217
    Height = 50
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = EDIT1KeyPress
    DisplayFormat = ',0;(,0)'
  end
  object query: TIBCQuery
    Connection = frmModulo.EConexao
    Left = 200
    Top = 64
  end
end
