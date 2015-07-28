object frmqtdecoma: Tfrmqtdecoma
  Left = 286
  Top = 246
  Width = 381
  Height = 139
  BorderIcons = [biSystemMenu]
  Caption = 'Imprime Comanda'
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
  object Label1: TLabel
    Left = 8
    Top = 25
    Width = 105
    Height = 13
    Caption = 'N'#250'mero de Comandas'
  end
  object edincopias: TEdit
    Left = 120
    Top = 22
    Width = 33
    Height = 21
    TabOrder = 0
    Text = 'edincopias'
    OnKeyPress = edincopiasKeyPress
  end
  object btnimprimir: TButton
    Left = 160
    Top = 20
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 1
    OnClick = btnimprimirClick
  end
  object btncancelar: TButton
    Left = 240
    Top = 20
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = btncancelarClick
  end
end
