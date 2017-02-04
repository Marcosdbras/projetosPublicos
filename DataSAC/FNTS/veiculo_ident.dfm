object frmveiculo_ident: Tfrmveiculo_ident
  Left = 176
  Top = 309
  BorderStyle = bsToolWindow
  Caption = 'Informa'#231#245'es do Ve'#237'culo'
  ClientHeight = 55
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 25
    Height = 16
    Caption = 'Km:'
  end
  object Label2: TLabel
    Left = 152
    Top = 16
    Width = 41
    Height = 16
    Caption = 'Placa:'
  end
  object Label3: TLabel
    Left = 320
    Top = 16
    Width = 39
    Height = 16
    Caption = 'Vend:'
  end
  object ekm: TEdit
    Left = 48
    Top = 11
    Width = 97
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = ekmKeyPress
  end
  object eplaca: TEdit
    Left = 200
    Top = 11
    Width = 113
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = eplacaKeyPress
  end
  object Edit1: TEdit
    Left = 360
    Top = 11
    Width = 121
    Height = 24
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = Edit1KeyPress
  end
end
