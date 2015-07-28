object frmsangria: Tfrmsangria
  Left = 288
  Top = 321
  Width = 565
  Height = 208
  BorderIcons = []
  Caption = 'Sangria'
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
    Top = 93
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
  object Label2: TLabel
    Left = 38
    Top = 30
    Width = 72
    Height = 16
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnbaixa: TButton
    Left = 470
    Top = 52
    Width = 75
    Height = 25
    Caption = '&Sangria'
    TabOrder = 3
    OnClick = btnbaixaClick
  end
  object btncancelar: TButton
    Left = 470
    Top = 20
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = btncancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 38
    Top = 119
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = FrmDados.DTS_SANGRIA
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit2: TDBEdit
    Left = 38
    Top = 55
    Width = 419
    Height = 21
    DataField = 'MOTIVO'
    DataSource = FrmDados.DTS_SANGRIA
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
end
