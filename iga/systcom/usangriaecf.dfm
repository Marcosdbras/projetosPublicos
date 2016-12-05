object frmsangriaecf: Tfrmsangriaecf
  Left = 288
  Top = 321
  Width = 374
  Height = 233
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
    Top = 50
    Width = 32
    Height = 16
    Caption = 'Valor'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 5
    Top = 99
    Width = 91
    Height = 16
    Caption = 'Usu'#225'rio \ Caixa'
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
  object lbltitncopia: TLabel
    Left = 5
    Top = 142
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
  object btnbaixa: TButton
    Left = 278
    Top = 44
    Width = 75
    Height = 25
    Caption = '&Sangria'
    TabOrder = 3
    OnClick = btnbaixaClick
  end
  object btncancelar: TButton
    Left = 278
    Top = 12
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = btncancelarClick
  end
  object DBEdit1: TDBEdit
    Left = 103
    Top = 50
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = frmDados.Dts_sangria
    TabOrder = 0
    OnKeyPress = DBEdit1KeyPress
  end
  object cbxusucai: TDBLookupComboBox
    Left = 103
    Top = 96
    Width = 249
    Height = 21
    DataField = 'COD'
    DataSource = frmDados.Dts_Temp
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Usuarios
    TabOrder = 1
    OnEnter = cbxusucaiEnter
    OnExit = cbxusucaiExit
    OnKeyPress = DBEdit1KeyPress
  end
  object edincopias: TEdit
    Left = 103
    Top = 140
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
    TabOrder = 4
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
    Left = 288
    Top = 136
  end
end
