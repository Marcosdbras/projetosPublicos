object frmingestaop: Tfrmingestaop
  Left = 288
  Top = 321
  Width = 322
  Height = 134
  BorderIcons = []
  Caption = 'Inser'#231#227'o de troco'
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
    Left = 38
    Top = 22
    Width = 38
    Height = 16
    Caption = 'Valor'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnbaixa: TButton
    Left = 214
    Top = 52
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 2
    OnClick = btnbaixaClick
  end
  object btncancelar: TButton
    Left = 214
    Top = 20
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = btncancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 38
    Top = 54
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = frmDados.Dts_Ingestao
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
end
