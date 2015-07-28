object frmComanda: TfrmComanda
  Left = 505
  Top = 427
  BorderStyle = bsDialog
  Caption = 'Comanda'
  ClientHeight = 107
  ClientWidth = 232
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
    Left = 32
    Top = 16
    Width = 170
    Height = 19
    Caption = 'N'#250'mero da Comanda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EDIT1: TRzNumericEdit
    Left = 32
    Top = 40
    Width = 169
    Height = 50
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
    DisplayFormat = ',0;(,0)'
  end
end
