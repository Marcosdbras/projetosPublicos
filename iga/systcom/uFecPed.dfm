object frmfecped: Tfrmfecped
  Left = 397
  Top = 81
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Fechar Pedido'
  ClientHeight = 467
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 6
    Top = 96
    Width = 55
    Height = 13
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 190
    Top = 96
    Width = 10
    Height = 13
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 217
    Top = 96
    Width = 17
    Height = 13
    Caption = 'R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 217
    Top = 118
    Width = 41
    Height = 13
    Caption = 'A Vista'
    FocusControl = edidin
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label20: TLabel
    Left = 6
    Top = 120
    Width = 42
    Height = 13
    Caption = 'Liquido'
    FocusControl = ediliquido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 6
    Top = 144
    Width = 90
    Height = 13
    Caption = 'Condi'#231#245'es Pgto'
    FocusControl = ediparc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spdcancelar2310: TSpeedButton
    Left = 4
    Top = 2
    Width = 93
    Height = 30
    Hint = 'Cancelar Lan'#231'amento'
    Caption = '&Voltar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdcancelar2310Click
  end
  object spdlancar: TSpeedButton
    Left = 100
    Top = 2
    Width = 93
    Height = 30
    Hint = 'Fechar Pedido'
    Caption = '&Lan'#231'ar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
      333333333F777773FF333333008888800333333377333F3773F3333077870787
      7033333733337F33373F3308888707888803337F33337F33337F330777880887
      7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
      7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
      0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
      03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
      033333337F73FF737F33B33B778000877333333373F777337333333B30888880
      33333333373FFFF73333333B3300000333333333337777733333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdlancarClick
  end
  object Label1: TLabel
    Left = 7
    Top = 43
    Width = 118
    Height = 16
    Caption = 'Prox. N.o Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblnnf: TLabel
    Left = 223
    Top = 13
    Width = 38
    Height = 16
    Caption = 'lblnnf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblnped: TLabel
    Left = 151
    Top = 43
    Width = 53
    Height = 16
    Caption = 'lblnped'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 415
    Top = 4
    Width = 133
    Height = 13
    Caption = 'Observa'#231#227'o Sobre o Cliente'
  end
  object Label2: TLabel
    Left = 7
    Top = 69
    Width = 37
    Height = 16
    Caption = 'Total'
    FocusControl = dbgvencto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltotg: TLabel
    Left = 156
    Top = 69
    Width = 44
    Height = 16
    Alignment = taRightJustify
    Caption = 'lbltotg'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 493
    Top = 443
    Width = 67
    Height = 13
    Caption = 'N.o de C'#243'pias'
  end
  object Label12: TLabel
    Left = 219
    Top = 170
    Width = 34
    Height = 13
    Caption = 'Troco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltroco: TLabel
    Left = 295
    Top = 170
    Width = 43
    Height = 13
    Alignment = taRightJustify
    Caption = 'lbltroco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 166
    Width = 74
    Height = 13
    Caption = 'N.o Parcelas'
    FocusControl = ediparc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 199
    Top = 417
    Width = 123
    Height = 16
    Caption = 'Data Fechamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbldatafec: TLabel
    Left = 375
    Top = 417
    Width = 70
    Height = 16
    Caption = 'lbldatafec'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edipdesc: TDBEdit
    Left = 103
    Top = 92
    Width = 81
    Height = 21
    DataField = 'PDESC_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 0
    OnExit = edipdescExit
    OnKeyPress = edipdescKeyPress
  end
  object edivaldesc: TDBEdit
    Left = 266
    Top = 92
    Width = 73
    Height = 21
    DataField = 'VALDESC_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 1
    OnExit = edivaldescExit
    OnKeyPress = edivaldescKeyPress
  end
  object edidin: TDBEdit
    Left = 266
    Top = 116
    Width = 73
    Height = 21
    DataField = 'DIN_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 3
    OnEnter = edidinEnter
    OnExit = edidinExit
    OnKeyPress = edidinKeyPress
  end
  object ediliquido: TDBEdit
    Left = 103
    Top = 116
    Width = 81
    Height = 21
    DataField = 'LIQUIDO_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 2
    OnExit = ediliquidoExit
    OnKeyPress = ediliquidoKeyPress
  end
  object ediparc: TDBEdit
    Left = 104
    Top = 164
    Width = 48
    Height = 21
    DataField = 'PARC_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 5
    OnEnter = ediparcEnter
    OnExit = ediparcExit
    OnKeyPress = ediparcKeyPress
  end
  object dbgvencto: TDBGrid
    Left = 8
    Top = 192
    Width = 401
    Height = 169
    BorderStyle = bsNone
    Color = clCream
    Ctl3D = True
    DataSource = frmDados.Dts_Vencto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnColEnter = dbgvenctoColEnter
    OnEnter = dbgvenctoEnter
    OnExit = dbgvenctoExit
    OnKeyDown = dbgvenctoKeyDown
    OnKeyPress = dbgvenctoKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'n_tipo_pgto'
        Title.Caption = 'Forma Pgto'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DOC'
        Title.Caption = 'Documento'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRAZO'
        Title.Caption = 'Prazo'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTV'
        Title.Caption = 'Vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORREAL'
        Title.Caption = 'Valor'
        Width = 70
        Visible = True
      end>
  end
  object rchtipopgto: TRichEdit
    Left = 8
    Top = 363
    Width = 401
    Height = 47
    TabStop = False
    BorderStyle = bsNone
    Color = clCream
    Lines.Strings = (
      'rchtipopgto')
    ReadOnly = True
    TabOrder = 7
  end
  object mmoobs: TDBMemo
    Left = 414
    Top = 24
    Width = 187
    Height = 387
    DataField = 'OBSERVACAO'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 8
  end
  object rgblanca: TRadioGroup
    Left = 24
    Top = 440
    Width = 153
    Height = 41
    Caption = ' Lan'#231'ar '
    ItemIndex = 0
    Items.Strings = (
      'Receber'
      'Nota Fiscal')
    TabOrder = 9
    Visible = False
    OnClick = rgblancaClick
  end
  object edincopias: TEdit
    Left = 567
    Top = 440
    Width = 34
    Height = 21
    TabOrder = 10
    Text = 'edincopias'
    OnExit = edincopiasExit
  end
  object ckbemail: TCheckBox
    Left = 496
    Top = 416
    Width = 101
    Height = 17
    Caption = '&Envio de e-mail'
    TabOrder = 11
    OnClick = ckbemailClick
  end
  object ckbdescunit: TCheckBox
    Left = 8
    Top = 416
    Width = 177
    Height = 17
    TabStop = False
    Caption = 'Aplicar Desconto por Item na N.F.'
    TabOrder = 12
  end
  object cbxcondpgto: TDBLookupComboBox
    Left = 103
    Top = 140
    Width = 236
    Height = 21
    DataField = 'COD2'
    DataSource = frmDados.Dts_Temp
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = frmDados.Dts_cond_pgto
    NullValueKey = 46
    TabOrder = 4
    OnEnter = cbxcondpgtoEnter
    OnExit = cbxcondpgtoExit
    OnKeyPress = cbxcondpgtoKeyPress
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = '.txt'
    Left = 368
    Top = 3
  end
end
