object frmcancelacaixaind: Tfrmcancelacaixaind
  Left = 241
  Top = 267
  Width = 527
  Height = 185
  Caption = 'Cancela Caixa Individual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 5
    Top = 54
    Width = 73
    Height = 13
    Caption = 'Usu'#225'rio \ Caixa'
  end
  object lbltitncopia: TLabel
    Left = 5
    Top = 83
    Width = 92
    Height = 19
    AutoSize = False
    Caption = 'N'#186' de c'#243'pias'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object btnabrir: TButton
    Left = 288
    Top = 5
    Width = 95
    Height = 25
    Caption = '&Lan'#231'ar'
    TabOrder = 0
    OnClick = btnabrirClick
  end
  object btncancelar: TButton
    Left = 387
    Top = 5
    Width = 95
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = btncancelarClick
  end
  object cbxusucai: TDBLookupComboBox
    Left = 105
    Top = 50
    Width = 249
    Height = 21
    DataField = 'COD'
    DataSource = frmDados.Dts_Temp
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Usuarios
    TabOrder = 2
    OnEnter = cbxusucaiEnter
    OnExit = cbxusucaiExit
  end
  object edincopias: TEdit
    Left = 105
    Top = 81
    Width = 72
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 3
    Text = 'edincopias'
    OnKeyPress = edincopiasKeyPress
  end
  object PrintCaixa: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'c:\caixa.txt'
    Left = 296
    Top = 88
  end
end
