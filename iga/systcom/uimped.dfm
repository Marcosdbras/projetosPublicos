object frmimped: Tfrmimped
  Left = 385
  Top = 166
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Imprime Pedido'
  ClientHeight = 491
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label45: TLabel
    Left = 6
    Top = 65
    Width = 37
    Height = 16
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltotG: TLabel
    Left = 141
    Top = 65
    Width = 46
    Height = 16
    Alignment = taRightJustify
    Caption = 'lbltotG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 6
    Top = 86
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
    Top = 86
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
    Top = 86
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
    Left = 255
    Top = 110
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
    Top = 110
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
    Top = 136
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
  object Label15: TLabel
    Left = 8
    Top = 166
    Width = 44
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = edinumdup1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 380
    Top = 166
    Width = 30
    Height = 13
    Caption = 'Valor'
    FocusControl = edivlrdup1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label30: TLabel
    Left = 247
    Top = 166
    Width = 67
    Height = 13
    Caption = 'Vencimento'
    FocusControl = edivctdup1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
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
    Top = 36
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
    Top = 36
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
    Top = 289
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
    Top = 289
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
    Top = 313
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
    Top = 313
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
    Top = 313
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
    Top = 335
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
    Top = 335
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
    Top = 335
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
    Top = 358
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
    Top = 358
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
    Top = 402
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
    Top = 402
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
    Top = 402
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
    Top = 401
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
    Top = 426
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
    Top = 426
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
  object Label2: TLabel
    Left = 183
    Top = 166
    Width = 33
    Height = 13
    Caption = 'Prazo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edipdesc: TDBEdit
    Left = 123
    Top = 84
    Width = 50
    Height = 21
    DataField = 'PDESC'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 0
    OnExit = edipdescExit
    OnKeyPress = edipdescKeyPress
  end
  object edivaldesc: TDBEdit
    Left = 314
    Top = 84
    Width = 96
    Height = 21
    DataField = 'VALDESC'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 1
    OnExit = edivaldescExit
    OnKeyPress = edivaldescKeyPress
  end
  object edidin: TDBEdit
    Left = 314
    Top = 108
    Width = 96
    Height = 21
    DataField = 'DIN'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 3
    OnEnter = edidinEnter
    OnExit = edidinExit
    OnKeyPress = edidinKeyPress
  end
  object ediliquido: TDBEdit
    Left = 123
    Top = 108
    Width = 67
    Height = 21
    DataField = 'LIQUIDO'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 2
    OnExit = ediliquidoExit
    OnKeyPress = ediliquidoKeyPress
  end
  object ediparc: TDBEdit
    Left = 123
    Top = 132
    Width = 41
    Height = 21
    DataField = 'PARC'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 4
    OnEnter = ediparcEnter
    OnExit = ediparcExit
    OnKeyPress = ediparcKeyPress
  end
  object edinumdup1: TDBEdit
    Left = 8
    Top = 183
    Width = 129
    Height = 21
    DataField = 'NUMDUP1'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 5
    OnKeyPress = edinumdup1KeyPress
  end
  object edinumdup2: TDBEdit
    Left = 8
    Top = 213
    Width = 129
    Height = 21
    DataField = 'NUMDUP2'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 9
    OnKeyPress = edinumdup2KeyPress
  end
  object edinumdup3: TDBEdit
    Left = 8
    Top = 243
    Width = 129
    Height = 21
    DataField = 'NUMDUP3'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 13
    OnKeyPress = edinumdup3KeyPress
  end
  object edivlrdup3: TDBEdit
    Left = 327
    Top = 243
    Width = 83
    Height = 21
    DataField = 'VLRDUP3'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 16
    OnKeyPress = edivlrdup3KeyPress
  end
  object edivlrdup2: TDBEdit
    Left = 327
    Top = 213
    Width = 83
    Height = 21
    DataField = 'VLRDUP2'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 12
    OnKeyPress = edivlrdup2KeyPress
  end
  object edivlrdup1: TDBEdit
    Left = 327
    Top = 183
    Width = 83
    Height = 21
    DataField = 'VLRDUP1'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 8
    OnKeyPress = edivlrdup1KeyPress
  end
  object edivctdup1: TDBEdit
    Left = 229
    Top = 183
    Width = 84
    Height = 21
    DataField = 'VCTDUP1'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 7
    OnExit = edivctdup1Exit
    OnKeyPress = edivctdup1KeyPress
  end
  object edivctdup2: TDBEdit
    Left = 229
    Top = 213
    Width = 84
    Height = 21
    DataField = 'VCTDUP2'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 11
    OnExit = edivctdup2Exit
    OnKeyPress = edivctdup2KeyPress
  end
  object edivctdup3: TDBEdit
    Left = 229
    Top = 243
    Width = 84
    Height = 21
    DataField = 'VCTDUP3'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 15
    OnExit = edivctdup3Exit
    OnKeyPress = edivctdup3KeyPress
  end
  object cbxnatureza: TDBLookupComboBox
    Left = 122
    Top = 285
    Width = 287
    Height = 21
    DataField = 'natureza'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 17
    OnKeyPress = cbxnaturezaKeyPress
  end
  object cbxcfop: TDBLookupComboBox
    Left = 503
    Top = 285
    Width = 92
    Height = 21
    DataField = 'cfop'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 18
    OnKeyPress = cbxcfopKeyPress
  end
  object ediBASECALCICMSSUB: TDBEdit
    Left = 122
    Top = 308
    Width = 69
    Height = 21
    DataField = 'BASECALCICMSSUB'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 19
    OnKeyPress = ediBASECALCICMSSUBKeyPress
  end
  object ediVLRICMSSUB: TDBEdit
    Left = 336
    Top = 308
    Width = 73
    Height = 21
    DataField = 'VLRICMSSUB'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 20
    OnKeyPress = ediVLRICMSSUBKeyPress
  end
  object edivlrfrete: TDBEdit
    Left = 503
    Top = 308
    Width = 90
    Height = 21
    DataField = 'VLRFRETE'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 21
    OnKeyPress = edivlrfreteKeyPress
  end
  object ediplacavei: TDBEdit
    Left = 503
    Top = 331
    Width = 89
    Height = 21
    DataField = 'PLACAVEI'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 24
    OnKeyPress = ediplacaveiKeyPress
  end
  object edioutdesp: TDBEdit
    Left = 336
    Top = 331
    Width = 73
    Height = 21
    DataField = 'OUTDESP'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 23
    OnKeyPress = edioutdespKeyPress
  end
  object edivlrseguro: TDBEdit
    Left = 122
    Top = 331
    Width = 70
    Height = 21
    DataField = 'VLRSEGURO'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 22
    OnKeyPress = edivlrseguroKeyPress
  end
  object cbxntransp: TDBLookupComboBox
    Left = 122
    Top = 353
    Width = 287
    Height = 21
    DataField = 'ntransp'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 25
    OnKeyPress = cbxntranspKeyPress
  end
  object ediufvei: TDBEdit
    Left = 503
    Top = 353
    Width = 30
    Height = 21
    DataField = 'UFVEI'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 26
    OnKeyPress = ediufveiKeyPress
  end
  object edinumero: TDBEdit
    Left = 534
    Top = 400
    Width = 56
    Height = 21
    DataField = 'NUMERO'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 30
    OnKeyPress = edinumeroKeyPress
  end
  object edimarca: TDBEdit
    Left = 406
    Top = 399
    Width = 59
    Height = 21
    DataField = 'MARCA'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 29
    OnKeyPress = edimarcaKeyPress
  end
  object ediespecie: TDBEdit
    Left = 279
    Top = 399
    Width = 78
    Height = 21
    DataField = 'ESPECIE'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 28
    OnKeyPress = ediespecieKeyPress
  end
  object ediquantidade: TDBEdit
    Left = 122
    Top = 399
    Width = 69
    Height = 21
    DataField = 'QUANTIDADE'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 27
    OnKeyPress = ediquantidadeKeyPress
  end
  object edipesob: TDBEdit
    Left = 122
    Top = 422
    Width = 69
    Height = 21
    DataField = 'PESOB'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 31
    OnKeyPress = edipesobKeyPress
  end
  object edipesol: TDBEdit
    Left = 280
    Top = 422
    Width = 77
    Height = 21
    DataField = 'PESOL'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 32
    OnKeyPress = edipesolKeyPress
  end
  object rgbtiponf: TDBRadioGroup
    Left = 447
    Top = 48
    Width = 145
    Height = 105
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
    TabOrder = 33
    Values.Strings = (
      '0'
      '1')
  end
  object rgbfretep: TDBRadioGroup
    Left = 447
    Top = 176
    Width = 145
    Height = 97
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
    TabOrder = 34
    Values.Strings = (
      '1'
      '2')
  end
  object ediprazo1: TDBEdit
    Left = 151
    Top = 184
    Width = 65
    Height = 21
    DataField = 'PRAZO1'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 6
    OnExit = ediprazo1Exit
    OnKeyPress = ediprazo1KeyPress
  end
  object ediprazo2: TDBEdit
    Left = 151
    Top = 214
    Width = 65
    Height = 21
    DataField = 'PRAZO2'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 10
    OnExit = ediprazo2Exit
    OnKeyPress = ediprazo2KeyPress
  end
  object ediprazo3: TDBEdit
    Left = 151
    Top = 242
    Width = 65
    Height = 21
    DataField = 'PRAZO3'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 14
    OnExit = ediprazo3Exit
    OnKeyPress = ediprazo3KeyPress
  end
  object SayPrint: TSayPrint
    Porta = PrnFile
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 568
    Top = 3
  end
end
