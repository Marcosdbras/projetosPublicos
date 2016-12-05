object frmimpnf: Tfrmimpnf
  Left = 151
  Top = 89
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Imprime Nota Fiscal'
  ClientHeight = 454
  ClientWidth = 793
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
  object spdcancelar2310: TSpeedButton
    Left = 36
    Top = 0
    Width = 33
    Height = 30
    Hint = 'Parar de efetuar venda'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = spdcancelar2310Click
  end
  object spdimprimir: TSpeedButton
    Left = 0
    Top = 0
    Width = 33
    Height = 30
    Hint = 'Relat'#243'rios'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdimprimirClick
  end
  object Label1: TLabel
    Left = 8
    Top = 41
    Width = 198
    Height = 16
    Caption = 'N'#250'mero Pr'#243'xima Nota Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblnnf: TLabel
    Left = 216
    Top = 41
    Width = 38
    Height = 16
    Caption = 'lblnnf'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 195
    Width = 52
    Height = 13
    Caption = 'Natureza'
    FocusControl = cbxnatureza
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 418
    Top = 195
    Width = 33
    Height = 13
    Caption = 'CFOP'
    FocusControl = cbxcfop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label36: TLabel
    Left = 8
    Top = 219
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
    Left = 200
    Top = 219
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
    Left = 418
    Top = 219
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
    Left = 418
    Top = 241
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
    Left = 200
    Top = 241
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
    Top = 241
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
    Top = 264
    Width = 80
    Height = 13
    Caption = 'Transportador'
    FocusControl = cbxntransp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label43: TLabel
    Left = 418
    Top = 264
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
    Left = 481
    Top = 308
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
    Top = 308
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
    Top = 308
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
    Top = 307
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
    Top = 332
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
    Top = 332
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
  object Label3: TLabel
    Left = 229
    Top = 437
    Width = 194
    Height = 13
    Caption = 'CTRL+I - Impress'#227'o / CTRL+A - Cancela'
  end
  object lblnped: TLabel
    Left = 552
    Top = 40
    Width = 34
    Height = 13
    Caption = 'lblnped'
    Visible = False
  end
  object Label4: TLabel
    Left = 600
    Top = 45
    Width = 133
    Height = 13
    Caption = 'Observa'#231#227'o Sobre o Cliente'
  end
  object Label2: TLabel
    Left = 8
    Top = 81
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
    Left = 120
    Top = 80
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
  object cbxnatureza: TDBLookupComboBox
    Left = 122
    Top = 191
    Width = 287
    Height = 21
    DataField = 'natureza'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 1
    OnKeyPress = cbxnaturezaKeyPress
  end
  object cbxcfop: TDBLookupComboBox
    Left = 503
    Top = 191
    Width = 92
    Height = 21
    DataField = 'cfop'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 2
    OnKeyPress = cbxcfopKeyPress
  end
  object ediBASECALCICMSSUB: TDBEdit
    Left = 122
    Top = 214
    Width = 69
    Height = 21
    DataField = 'BASECALCICMSSUB'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 3
    OnKeyPress = ediBASECALCICMSSUBKeyPress
  end
  object ediVLRICMSSUB: TDBEdit
    Left = 336
    Top = 214
    Width = 73
    Height = 21
    DataField = 'VLRICMSSUB'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 4
    OnKeyPress = ediVLRICMSSUBKeyPress
  end
  object edivlrfrete: TDBEdit
    Left = 503
    Top = 214
    Width = 90
    Height = 21
    DataField = 'VLRFRETE'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 5
    OnKeyPress = edivlrfreteKeyPress
  end
  object ediplacavei: TDBEdit
    Left = 503
    Top = 237
    Width = 89
    Height = 21
    DataField = 'PLACAVEI'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 8
    OnKeyPress = ediplacaveiKeyPress
  end
  object edioutdesp: TDBEdit
    Left = 336
    Top = 237
    Width = 73
    Height = 21
    DataField = 'OUTDESP'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 7
    OnKeyPress = edioutdespKeyPress
  end
  object edivlrseguro: TDBEdit
    Left = 122
    Top = 237
    Width = 70
    Height = 21
    DataField = 'VLRSEGURO'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 6
    OnKeyPress = edivlrseguroKeyPress
  end
  object cbxntransp: TDBLookupComboBox
    Left = 122
    Top = 259
    Width = 287
    Height = 21
    DataField = 'ntransp'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 9
    OnKeyPress = cbxntranspKeyPress
  end
  object ediufvei: TDBEdit
    Left = 503
    Top = 259
    Width = 30
    Height = 21
    DataField = 'UFVEI'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 10
    OnKeyPress = ediufveiKeyPress
  end
  object edinumero: TDBEdit
    Left = 534
    Top = 306
    Width = 56
    Height = 21
    DataField = 'NUMERO'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 14
    OnKeyPress = edinumeroKeyPress
  end
  object edimarca: TDBEdit
    Left = 406
    Top = 305
    Width = 59
    Height = 21
    DataField = 'MARCA'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 13
    OnKeyPress = edimarcaKeyPress
  end
  object ediespecie: TDBEdit
    Left = 279
    Top = 305
    Width = 78
    Height = 21
    DataField = 'ESPECIE'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 12
    OnKeyPress = ediespecieKeyPress
  end
  object ediquantidade: TDBEdit
    Left = 122
    Top = 305
    Width = 69
    Height = 21
    DataField = 'QUANTIDADE'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 11
    OnKeyPress = ediquantidadeKeyPress
  end
  object edipesob: TDBEdit
    Left = 122
    Top = 328
    Width = 69
    Height = 21
    DataField = 'PESOB'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 15
    OnKeyPress = edipesobKeyPress
  end
  object edipesol: TDBEdit
    Left = 280
    Top = 328
    Width = 77
    Height = 21
    DataField = 'PESOL'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 16
    OnKeyPress = edipesolKeyPress
  end
  object rgbtiponf: TDBRadioGroup
    Left = 240
    Top = 115
    Width = 185
    Height = 70
    Caption = ' Tipo NF '
    DataField = 'TPNF'
    DataSource = frmDados.Dts_sVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '&Entrada'
      '&Sa'#237'da')
    ParentFont = False
    TabOrder = 17
    Values.Strings = (
      '0'
      '1')
  end
  object rgbfretep: TDBRadioGroup
    Left = 432
    Top = 115
    Width = 160
    Height = 70
    Caption = ' Frete por Conta '
    DataField = 'FRETEP'
    DataSource = frmDados.Dts_sVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '&Emitente'
      '&Destinat'#225'rio')
    ParentFont = False
    TabOrder = 18
    Values.Strings = (
      '1'
      '2')
  end
  object rgbimprimir: TRadioGroup
    Left = 8
    Top = 115
    Width = 225
    Height = 70
    Caption = 'Imprimir ?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '&Romaneio  /  N.o C'#243'pias'
      'Nota &Fiscal'
      '&E-MAIL')
    ParentFont = False
    TabOrder = 19
    OnClick = rgbimprimirClick
  end
  object mmoobs: TDBMemo
    Left = 600
    Top = 64
    Width = 185
    Height = 377
    DataField = 'OBSERVACAO'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 20
  end
  object edincopias: TEdit
    Left = 184
    Top = 127
    Width = 38
    Height = 21
    TabOrder = 0
    Text = 'edincopias'
    OnExit = edincopiasExit
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 568
    Top = 3
  end
end
