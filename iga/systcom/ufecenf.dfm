object frmfecenf: Tfrmfecenf
  Left = 6
  Top = 9
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Emiss'#227'o de Nota Fiscal'
  ClientHeight = 651
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label17: TLabel
    Left = 6
    Top = 94
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
    Left = 176
    Top = 94
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
    Left = 256
    Top = 94
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
    Left = 256
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
    Top = 118
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
    Caption = '&Imprimir'
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
    Width = 96
    Height = 16
    Caption = 'Prox. N.o N.F.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblnped: TLabel
    Left = 264
    Top = 12
    Width = 53
    Height = 16
    Caption = 'lblnped'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 414
    Top = 2
    Width = 133
    Height = 13
    Caption = 'Observa'#231#227'o Sobre o Cliente'
  end
  object Label2: TLabel
    Left = 7
    Top = 68
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
    Left = 141
    Top = 68
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
    Left = 501
    Top = 575
    Width = 67
    Height = 13
    Caption = 'N.o de C'#243'pias'
    Visible = False
  end
  object Label7: TLabel
    Left = 8
    Top = 428
    Width = 52
    Height = 13
    Caption = 'Natureza'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 563
    Top = 428
    Width = 33
    Height = 13
    Caption = 'CFOP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label36: TLabel
    Left = 8
    Top = 452
    Width = 114
    Height = 13
    Caption = 'Bs. Calc Subst Trib.'
    FocusControl = ediBASECALCICMSSUB
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label37: TLabel
    Left = 344
    Top = 452
    Width = 134
    Height = 13
    Caption = 'Valor ICMS Subst. Trib.'
    FocusControl = ediVLRICMSSUB
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label38: TLabel
    Left = 563
    Top = 452
    Width = 63
    Height = 13
    Caption = 'Valor Frete'
    FocusControl = edivlrfrete
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label42: TLabel
    Left = 563
    Top = 474
    Width = 81
    Height = 13
    Caption = 'Placa Ve'#237'culo'
    FocusControl = ediplacavei
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label40: TLabel
    Left = 344
    Top = 474
    Width = 97
    Height = 13
    Caption = 'Outras Despesas'
    FocusControl = edioutdesp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label39: TLabel
    Left = 8
    Top = 474
    Width = 74
    Height = 13
    Caption = 'Valor Seguro'
    FocusControl = edivlrseguro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label41: TLabel
    Left = 8
    Top = 497
    Width = 80
    Height = 13
    Caption = 'Transportador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label43: TLabel
    Left = 563
    Top = 497
    Width = 73
    Height = 13
    Caption = 'U.F. Ve'#237'culo'
    FocusControl = ediufvei
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label34: TLabel
    Left = 483
    Top = 551
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = edinumero
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label33: TLabel
    Left = 365
    Top = 551
    Width = 36
    Height = 13
    Caption = 'Marca'
    FocusControl = edimarca
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label32: TLabel
    Left = 196
    Top = 551
    Width = 46
    Height = 13
    Caption = 'Esp'#233'cie'
    FocusControl = ediespecie
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label31: TLabel
    Left = 8
    Top = 550
    Width = 66
    Height = 13
    Caption = 'Quantidade'
    FocusControl = ediquantidade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label35: TLabel
    Left = 8
    Top = 576
    Width = 63
    Height = 13
    Caption = 'Peso Bruto'
    FocusControl = edipesob
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label44: TLabel
    Left = 196
    Top = 576
    Width = 76
    Height = 13
    Caption = 'Peso L'#237'quido'
    FocusControl = edipesol
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 205
    Top = 43
    Width = 99
    Height = 13
    Caption = 'Total Folhas N.F.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltotfolhanf: TLabel
    Left = 317
    Top = 43
    Width = 68
    Height = 13
    Caption = 'lbltotfolhanf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 599
    Width = 69
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = edipesob
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 10
    Top = 520
    Width = 66
    Height = 13
    Caption = 'Data Sa'#237'da'
    FocusControl = edidatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 241
    Top = 520
    Width = 66
    Height = 13
    Caption = 'Hora Sa'#237'da'
    FocusControl = edihoras
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblmensagem: TLabel
    Left = 9
    Top = 623
    Width = 114
    Height = 24
    Caption = 'lblmensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 256
    Top = 145
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
    Left = 365
    Top = 145
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
  object edipdesc: TDBEdit
    Left = 123
    Top = 92
    Width = 50
    Height = 21
    DataField = 'PDESC'
    DataSource = frmDados.Dts_NF
    TabOrder = 1
    OnExit = edipdescExit
    OnKeyPress = edipdescKeyPress
  end
  object edivaldesc: TDBEdit
    Left = 314
    Top = 92
    Width = 96
    Height = 21
    DataField = 'VALDESC'
    DataSource = frmDados.Dts_NF
    TabOrder = 2
    OnExit = edivaldescExit
    OnKeyPress = edivaldescKeyPress
  end
  object edidin: TDBEdit
    Left = 314
    Top = 116
    Width = 96
    Height = 21
    DataField = 'DIN'
    DataSource = frmDados.Dts_NF
    TabOrder = 4
    OnEnter = edidinEnter
    OnExit = edidinExit
    OnKeyPress = edidinKeyPress
  end
  object ediliquido: TDBEdit
    Left = 123
    Top = 116
    Width = 67
    Height = 21
    DataField = 'LIQUIDO'
    DataSource = frmDados.Dts_NF
    TabOrder = 3
    OnExit = ediliquidoExit
    OnKeyPress = ediliquidoKeyPress
  end
  object ediparc: TDBEdit
    Left = 123
    Top = 140
    Width = 41
    Height = 21
    DataField = 'PARC'
    DataSource = frmDados.Dts_NF
    TabOrder = 5
    OnEnter = ediparcEnter
    OnExit = ediparcExit
    OnKeyPress = ediparcKeyPress
  end
  object dbgvencto: TDBGrid
    Left = 8
    Top = 173
    Width = 401
    Height = 188
    BorderStyle = bsNone
    Color = clCream
    Ctl3D = True
    DataSource = frmDados.Dts_Vencto_NF
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgvenctoCellClick
    OnColEnter = dbgvenctoColEnter
    OnEnter = dbgvenctoEnter
    OnExit = dbgvenctoExit
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
        FieldName = 'VALOR'
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
    TabOrder = 30
  end
  object mmoobs: TDBMemo
    Left = 416
    Top = 24
    Width = 329
    Height = 387
    TabStop = False
    DataField = 'OBSERVACAO'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 31
  end
  object rgblanca: TRadioGroup
    Left = 756
    Top = 349
    Width = 185
    Height = 57
    Caption = ' Lan'#231'ar '
    ItemIndex = 1
    Items.Strings = (
      'Receber'
      'Nota Fiscal')
    TabOrder = 7
    Visible = False
    OnClick = rgblancaClick
  end
  object edincopias: TEdit
    Left = 778
    Top = 527
    Width = 39
    Height = 21
    TabStop = False
    TabOrder = 33
    Text = 'edincopias'
    Visible = False
    OnExit = edincopiasExit
  end
  object ckbemail: TCheckBox
    Left = 384
    Top = 576
    Width = 101
    Height = 17
    Caption = '&Envio de e-mail'
    TabOrder = 34
    Visible = False
    OnClick = ckbemailClick
  end
  object ediBASECALCICMSSUB: TDBEdit
    Left = 122
    Top = 447
    Width = 69
    Height = 21
    DataField = 'BASECALCICMSSUB'
    DataSource = frmDados.Dts_NF
    TabOrder = 11
    OnKeyPress = ediBASECALCICMSSUBKeyPress
  end
  object ediVLRICMSSUB: TDBEdit
    Left = 480
    Top = 447
    Width = 73
    Height = 21
    DataField = 'VLRICMSSUB'
    DataSource = frmDados.Dts_NF
    TabOrder = 12
    OnKeyPress = ediVLRICMSSUBKeyPress
  end
  object edivlrfrete: TDBEdit
    Left = 648
    Top = 447
    Width = 97
    Height = 21
    DataField = 'VLRFRETE'
    DataSource = frmDados.Dts_NF
    TabOrder = 13
    OnKeyPress = edivlrfreteKeyPress
  end
  object ediplacavei: TDBEdit
    Left = 648
    Top = 470
    Width = 96
    Height = 21
    DataField = 'PLACAVEI'
    DataSource = frmDados.Dts_NF
    TabOrder = 16
    OnKeyPress = ediplacaveiKeyPress
  end
  object edioutdesp: TDBEdit
    Left = 480
    Top = 470
    Width = 73
    Height = 21
    DataField = 'OUTDESP'
    DataSource = frmDados.Dts_NF
    TabOrder = 15
    OnKeyPress = edioutdespKeyPress
  end
  object edivlrseguro: TDBEdit
    Left = 122
    Top = 470
    Width = 70
    Height = 21
    DataField = 'VLRSEGURO'
    DataSource = frmDados.Dts_NF
    TabOrder = 14
    OnKeyPress = edivlrseguroKeyPress
  end
  object ediufvei: TDBEdit
    Left = 648
    Top = 492
    Width = 35
    Height = 21
    DataField = 'UFVEI'
    DataSource = frmDados.Dts_NF
    TabOrder = 18
    OnKeyPress = ediufveiKeyPress
  end
  object edinumero: TDBEdit
    Left = 568
    Top = 549
    Width = 56
    Height = 21
    DataField = 'NUMERO'
    DataSource = frmDados.Dts_NF
    TabOrder = 24
    OnKeyPress = edinumeroKeyPress
  end
  object edimarca: TDBEdit
    Left = 406
    Top = 548
    Width = 59
    Height = 21
    DataField = 'MARCA'
    DataSource = frmDados.Dts_NF
    TabOrder = 23
    OnKeyPress = edimarcaKeyPress
  end
  object ediespecie: TDBEdit
    Left = 279
    Top = 548
    Width = 78
    Height = 21
    DataField = 'ESPECIE'
    DataSource = frmDados.Dts_NF
    TabOrder = 22
    OnKeyPress = ediespecieKeyPress
  end
  object ediquantidade: TDBEdit
    Left = 122
    Top = 548
    Width = 69
    Height = 21
    DataField = 'QUANTIDADE'
    DataSource = frmDados.Dts_NF
    TabOrder = 21
    OnKeyPress = ediquantidadeKeyPress
  end
  object edipesob: TDBEdit
    Left = 122
    Top = 572
    Width = 69
    Height = 21
    DataField = 'PESOB'
    DataSource = frmDados.Dts_NF
    TabOrder = 25
    OnKeyPress = edipesobKeyPress
  end
  object edipesol: TDBEdit
    Left = 280
    Top = 572
    Width = 77
    Height = 21
    DataField = 'PESOL'
    DataSource = frmDados.Dts_NF
    TabOrder = 26
    OnKeyPress = edipesolKeyPress
  end
  object rgbtiponf: TDBRadioGroup
    Left = 754
    Top = 21
    Width = 187
    Height = 70
    Caption = ' Tipo NF '
    DataField = 'TPNF'
    DataSource = frmDados.Dts_NF
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '&Entrada'
      '&Sa'#237'da')
    ParentFont = False
    TabOrder = 27
    Values.Strings = (
      '0'
      '1')
  end
  object rgbfretep: TDBRadioGroup
    Left = 754
    Top = 96
    Width = 186
    Height = 70
    Caption = ' Frete por Conta '
    DataField = 'FRETEP'
    DataSource = frmDados.Dts_NF
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'E&mitente'
      '&Destinat'#225'rio')
    ParentFont = False
    TabOrder = 28
    Values.Strings = (
      '1'
      '2')
  end
  object rgbimprimir: TRadioGroup
    Left = 756
    Top = 408
    Width = 185
    Height = 70
    Caption = 'Imprimir ?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 1
    Items.Strings = (
      '&Romaneio  /  N.o C'#243'pias'
      'Nota &Fiscal'
      '&E-MAIL')
    ParentFont = False
    TabOrder = 29
    Visible = False
  end
  object Edit1: TEdit
    Left = 779
    Top = 502
    Width = 43
    Height = 21
    TabStop = False
    TabOrder = 32
    Text = 'edincopias'
    Visible = False
    OnExit = edincopiasExit
  end
  object cbxnomenatop: TDBLookupComboBox
    Left = 264
    Top = 424
    Width = 145
    Height = 21
    DataField = 'natureza'
    DataSource = frmDados.Dts_NF
    TabOrder = 9
    Visible = False
    OnKeyPress = cbxnomenatopKeyPress
  end
  object cbxnomecfop: TDBLookupComboBox
    Left = 649
    Top = 423
    Width = 98
    Height = 21
    DataField = 'cfop'
    DataSource = frmDados.Dts_NF
    TabOrder = 10
    OnKeyPress = cbxnomecfopKeyPress
  end
  object cbxnometransp: TDBLookupComboBox
    Left = 122
    Top = 493
    Width = 431
    Height = 21
    DataField = 'ntransp'
    DataSource = frmDados.Dts_NF
    TabOrder = 17
    OnKeyPress = cbxnometranspKeyPress
  end
  object edida6: TDBEdit
    Left = 122
    Top = 595
    Width = 471
    Height = 21
    DataField = 'DA6'
    DataSource = frmDados.Dts_NF
    TabOrder = 35
    OnKeyPress = edida6KeyPress
  end
  object edinnf: TEdit
    Left = 125
    Top = 40
    Width = 65
    Height = 21
    TabOrder = 0
    Text = 'edinnf'
    OnExit = edinnfExit
    OnKeyPress = edinnfKeyPress
  end
  object edidatas: TDBEdit
    Left = 123
    Top = 517
    Width = 94
    Height = 21
    DataField = 'DATAS'
    DataSource = frmDados.Dts_NF
    TabOrder = 19
    OnKeyPress = edivlrseguroKeyPress
  end
  object edihoras: TDBEdit
    Left = 315
    Top = 517
    Width = 94
    Height = 21
    DataField = 'HORAS'
    DataSource = frmDados.Dts_NF
    TabOrder = 20
    OnKeyPress = edivlrseguroKeyPress
  end
  object cbxnomenatopnf: TDBLookupComboBox
    Left = 123
    Top = 424
    Width = 430
    Height = 21
    DataField = 'nnatopnf'
    DataSource = frmDados.Dts_NF
    TabOrder = 8
    OnKeyPress = cbxnomenatopnfKeyPress
  end
  object ckbdesconto: TCheckBox
    Left = 760
    Top = 176
    Width = 177
    Height = 17
    Caption = 'Repassar desconto por item'
    TabOrder = 36
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 368
    Top = 3
  end
end
