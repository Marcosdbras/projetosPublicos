object frmfectra: Tfrmfectra
  Left = 28
  Top = 73
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Lan'#231'amento para o contas a receber'
  ClientHeight = 565
  ClientWidth = 965
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
    Left = 15
    Top = 143
    Width = 89
    Height = 24
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 256
    Top = 143
    Width = 17
    Height = 24
    Caption = '%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 288
    Top = 143
    Width = 26
    Height = 24
    Caption = 'R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 647
    Top = 398
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
    Visible = False
  end
  object Label20: TLabel
    Left = 15
    Top = 181
    Width = 70
    Height = 24
    Caption = 'Liquido'
    FocusControl = ediliquido1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 15
    Top = 220
    Width = 81
    Height = 24
    Caption = 'Parcelas'
    FocusControl = ediparc1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object spdcancelar2310: TSpeedButton
    Left = 764
    Top = 10
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
    Left = 860
    Top = 10
    Width = 93
    Height = 30
    Hint = 'Fechar Pedido'
    Caption = '&OK'
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
    Left = 623
    Top = 265
    Width = 100
    Height = 16
    Caption = 'Prox. N.o Trat.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object lblnnf: TLabel
    Left = 687
    Top = 389
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
  object lblnos: TLabel
    Left = 720
    Top = 282
    Width = 43
    Height = 16
    Caption = 'lblnos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 607
    Top = 86
    Width = 133
    Height = 13
    Caption = 'Observa'#231#227'o Sobre o Cliente'
  end
  object Label2: TLabel
    Left = 15
    Top = 100
    Width = 61
    Height = 29
    Caption = 'Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbltotg: TLabel
    Left = 219
    Top = 100
    Width = 74
    Height = 29
    Alignment = taRightJustify
    Caption = 'lbltotg'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 869
    Top = 444
    Width = 67
    Height = 13
    Caption = 'N.o de C'#243'pias'
  end
  object Label6: TLabel
    Left = 15
    Top = 33
    Width = 84
    Height = 29
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblncli: TLabel
    Left = 206
    Top = 33
    Width = 71
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblncli'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edivaldesc2: TEditNum
    Left = 800
    Top = 427
    Width = 49
    Height = 21
    Inteiro = 6
    MaxLength = 20
    TabOrder = 7
    Text = '0,00'
    Visible = False
    OnExit = edivaldesc2Exit
    OnKeyPress = cbxcfopKeyPress
  end
  object ediliquido2: TEditNum
    Left = 768
    Top = 427
    Width = 24
    Height = 21
    Inteiro = 6
    MaxLength = 20
    TabOrder = 8
    Text = '0,00'
    Visible = False
    OnExit = ediliquido2Exit
    OnKeyPress = cbxcfopKeyPress
  end
  object edipdesc2: TEditNum
    Left = 701
    Top = 427
    Width = 60
    Height = 21
    Inteiro = 6
    MaxLength = 20
    TabOrder = 6
    Text = '0,00'
    Visible = False
    OnExit = edipdesc2Exit
    OnKeyPress = cbxcfopKeyPress
  end
  object edincopias: TEdit
    Left = 847
    Top = 417
    Width = 34
    Height = 21
    TabOrder = 17
    Text = 'edincopias'
    Visible = False
    OnExit = edincopiasExit
  end
  object ckbemail: TCheckBox
    Left = 736
    Top = 425
    Width = 101
    Height = 17
    Caption = '&Envio de e-mail'
    TabOrder = 18
    Visible = False
    OnClick = ckbemailClick
  end
  object rgblanca: TRadioGroup
    Left = 784
    Top = 233
    Width = 153
    Height = 41
    Caption = ' Lan'#231'ar '
    ItemIndex = 0
    Items.Strings = (
      'Receber'
      'Nota Fiscal')
    TabOrder = 16
    Visible = False
    OnClick = rgblancaClick
  end
  object ckbdescunit: TCheckBox
    Left = 616
    Top = 345
    Width = 177
    Height = 17
    TabStop = False
    Caption = 'Aplicar Desconto por Item na N.F.'
    TabOrder = 19
    Visible = False
  end
  object edipdesc1: TDBEdit
    Left = 659
    Top = 430
    Width = 50
    Height = 21
    DataField = 'PDESC_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 9
    Visible = False
    OnExit = edipdesc1Exit
    OnKeyPress = edipdesc1KeyPress
  end
  object edivaldesc1: TDBEdit
    Left = 776
    Top = 420
    Width = 42
    Height = 21
    DataField = 'VALDESC_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 10
    Visible = False
    OnExit = edivaldesc1Exit
    OnKeyPress = edivaldesc1KeyPress
  end
  object edidin: TDBEdit
    Left = 730
    Top = 486
    Width = 39
    Height = 21
    DataField = 'DIN_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 12
    Visible = False
    OnEnter = edidinEnter
    OnExit = edidinExit
    OnKeyPress = edidinKeyPress
  end
  object ediliquido1: TDBEdit
    Left = 715
    Top = 318
    Width = 46
    Height = 21
    DataField = 'LIQUIDO_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 11
    Visible = False
    OnExit = ediliquido1Exit
    OnKeyPress = ediliquido1KeyPress
  end
  object ediparc1: TDBEdit
    Left = 675
    Top = 396
    Width = 41
    Height = 21
    DataField = 'PARC_P'
    DataSource = frmDados.Dts_sVenda
    TabOrder = 13
    Visible = False
    OnEnter = ediparc1Enter
    OnExit = ediparc1Exit
    OnKeyPress = ediparc1KeyPress
  end
  object rchtipopgto: TRichEdit
    Left = 16
    Top = 510
    Width = 585
    Height = 47
    TabStop = False
    BorderStyle = bsNone
    Color = clCream
    Lines.Strings = (
      'rchtipopgto')
    ReadOnly = True
    TabOrder = 14
  end
  object mmoobs: TDBMemo
    Left = 608
    Top = 104
    Width = 345
    Height = 105
    DataField = 'OBSERVACAO'
    DataSource = frmDados.Dts_Clientes
    TabOrder = 15
  end
  object pctconta: TPageControl
    Left = 16
    Top = 258
    Width = 585
    Height = 248
    ActivePage = tbsparcelas
    TabOrder = 5
    object tbsparcelas: TTabSheet
      Caption = 'Parcelas'
      object dbgvencto: TDBGrid
        Left = 2
        Top = 8
        Width = 567
        Height = 209
        BorderStyle = bsNone
        Color = clCream
        Ctl3D = True
        DataSource = frmDados.Dts_Vencto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Forma Pgto'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Documento'
            Width = 228
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRAZO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Prazo'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTV'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Vencimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORREAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Caption = 'Valor'
            Width = 70
            Visible = True
          end>
      end
    end
    object tbsliquidar: TTabSheet
      Caption = 'Liquidar'
      ImageIndex = 1
      TabVisible = False
      object Label5: TLabel
        Left = 6
        Top = 63
        Width = 42
        Height = 13
        Caption = 'Situa'#231#227'o'
        FocusControl = edicsit
      end
      object Label22: TLabel
        Left = 262
        Top = 62
        Width = 52
        Height = 13
        Caption = 'Liquida'#231#227'o'
        FocusControl = edidtl
      end
      object Label26: TLabel
        Left = 411
        Top = 62
        Width = 69
        Height = 13
        Caption = 'Data Da Baixa'
        FocusControl = edidtb
      end
      object Label29: TLabel
        Left = 6
        Top = 103
        Width = 61
        Height = 13
        Caption = 'Valor Liquido'
        FocusControl = edivalliq
      end
      object Label28: TLabel
        Left = 259
        Top = 103
        Width = 110
        Height = 13
        Caption = 'Forma de Recebimento'
        FocusControl = cbxntipoop
      end
      object lblvlrreal: TLabel
        Left = 5
        Top = 143
        Width = 38
        Height = 13
        Caption = 'lblvlrreal'
        Visible = False
      end
      object edicsit: TDBEdit
        Left = 120
        Top = 58
        Width = 25
        Height = 21
        DataField = 'CSIT'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 0
      end
      object edinsit: TDBLookupComboBox
        Left = 149
        Top = 58
        Width = 100
        Height = 21
        DataField = 'nsiturec'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 1
      end
      object edidtl: TDBEdit
        Left = 328
        Top = 58
        Width = 73
        Height = 21
        DataField = 'DTL'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 2
      end
      object edidtb: TDBEdit
        Left = 488
        Top = 58
        Width = 81
        Height = 21
        DataField = 'DTB'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 3
      end
      object edivalliq: TDBEdit
        Left = 120
        Top = 97
        Width = 105
        Height = 21
        DataField = 'VALLIQ'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 4
      end
      object cbxntipoop: TDBLookupComboBox
        Left = 408
        Top = 99
        Width = 161
        Height = 21
        DataField = 'ntipoop'
        DataSource = frmDados.Dts_Vencto
        TabOrder = 5
      end
      object spdsalvar: TBitBtn
        Left = 476
        Top = 14
        Width = 99
        Height = 25
        Caption = '&Lan'#231'ar'
        TabOrder = 6
        OnClick = spdsalvarClick
      end
    end
  end
  object ediparc: TEdit
    Left = 176
    Top = 216
    Width = 114
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Text = 'ediparc'
    OnKeyPress = ediparcKeyPress
  end
  object edipdesc: TEdit
    Left = 176
    Top = 138
    Width = 73
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = 'edipdesc'
    OnExit = edipdescExit
    OnKeyPress = edipdescKeyPress
  end
  object edivaldesc: TEdit
    Left = 316
    Top = 138
    Width = 101
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Text = 'edivaldesc'
    OnExit = edivaldescExit
    OnKeyPress = edivaldescKeyPress
  end
  object ediliquido: TEdit
    Left = 176
    Top = 176
    Width = 240
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'ediliquido'
    OnExit = ediliquidoExit
    OnKeyPress = ediliquidoKeyPress
  end
  object btncriaparc: TBitBtn
    Left = 296
    Top = 216
    Width = 81
    Height = 32
    Caption = 'LAN'#199'AR'
    TabOrder = 4
    OnClick = btncriaparcClick
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 840
    Top = 91
  end
end
