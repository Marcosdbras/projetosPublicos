object frmabrircaixaind: Tfrmabrircaixaind
  Left = 430
  Top = 298
  Width = 348
  Height = 230
  BorderIcons = []
  Caption = 'Abertura de Caixa Individual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 70
    Width = 57
    Height = 13
    Caption = 'Inicio do dia'
  end
  object Label2: TLabel
    Left = 5
    Top = 107
    Width = 73
    Height = 13
    Caption = 'Usu'#225'rio \ Caixa'
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
  object btncancelar: TButton
    Left = 260
    Top = 5
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 0
    OnClick = btncancelarClick
  end
  object btnabrir: TButton
    Left = 176
    Top = 5
    Width = 79
    Height = 25
    Caption = '&Abrir Caixa'
    TabOrder = 1
    OnClick = btnabrirClick
  end
  object ediinicio: TEdit
    Left = 103
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'ediinicio'
    OnExit = ediinicioExit
    OnKeyPress = ediinicioKeyPress
  end
  object cbxusucai: TDBLookupComboBox
    Left = 103
    Top = 104
    Width = 226
    Height = 21
    DataField = 'COD'
    DataSource = frmDados.Dts_Temp
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = frmDados.Dst_Usuarios
    TabOrder = 3
    OnEnter = cbxusucaiEnter
    OnExit = cbxusucaiExit
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
