object frmPesqVf: TfrmPesqVf
  Left = 0
  Top = 0
  Width = 1036
  Height = 728
  BorderIcons = []
  Caption = 'Pesquisa de Vendas Efetuadas - Balc'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 42
    Align = alTop
    TabOrder = 0
    object spdconfirma: TSpeedButton
      Left = 851
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdconfirmaClick
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 660
    Width = 1028
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 618
    Align = alLeft
    TabOrder = 2
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 199
      Height = 48
      Align = alTop
    end
    object Label3: TLabel
      Left = 57
      Top = 12
      Width = 79
      Height = 22
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 61
      Height = 17
      Caption = 'Venda de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 110
      Width = 21
      Height = 17
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object spdlimpar: TSpeedButton
      Left = 164
      Top = 127
      Width = 33
      Height = 33
      Flat = True
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007770707070707070700000007777
        7777777777777000000077707770707777707000000077777777077777777000
        000077707778787777707000000077777070707070777000000071F077777777
        77707000000011F778877777777770000000711F11F070707070700000007718
        1777777777777000000077811F777777777770000000811771F7777777777000
        0000187777177777777770000000777777777777777770000000777777777777
        777770000000}
      OnClick = spdlimparClick
    end
    object spdfiltrar: TSpeedButton
      Left = 164
      Top = 75
      Width = 33
      Height = 33
      Flat = True
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333333330033003300300003333
        3333300330033003000033303333333333333333000033000333333333333333
        000030F000333333333333330000330F000333333333333300003330F0000000
        73333333000033330F0078887033333300003333300788FF8703333300003333
        30788888F877333300003333308888888F80333300003333307888888F803333
        000033333078FF8888803333000033333777FF88887733330000333333077888
        8703333300003333333077777033333300003333333370007333333300003333
        33333333333333330000}
      OnClick = spdfiltrarClick
    end
    object Label8: TLabel
      Left = 9
      Top = 162
      Width = 45
      Height = 17
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 9
      Top = 213
      Width = 71
      Height = 17
      Caption = 'N.o Pedido'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DtpDataI: TDateTimePicker
      Left = 8
      Top = 81
      Width = 153
      Height = 25
      Date = 39647.643559745370000000
      Time = 39647.643559745370000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DtpDataF: TDateTimePicker
      Left = 8
      Top = 131
      Width = 153
      Height = 25
      Date = 39647.643731724540000000
      Time = 39647.643731724540000000
      DateMode = dmUpDown
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbxnomecli: TDBLookupComboBox
      Left = 8
      Top = 184
      Width = 188
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dts_Clientes
      ParentFont = False
      TabOrder = 2
    end
    object edicodigo: TEdit
      Left = 8
      Top = 232
      Width = 121
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'edicodigo'
      OnExit = edicodigoExit
      OnKeyPress = edicodigoKeyPress
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 827
    Height = 618
    Align = alClient
    TabOrder = 3
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 825
      Height = 48
      Align = alTop
    end
    object Label6: TLabel
      Left = 8
      Top = 409
      Width = 58
      Height = 13
      Caption = 'Total Venda'
    end
    object lbltotals: TLabel
      Left = 107
      Top = 409
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotals'
    end
    object Label7: TLabel
      Left = 192
      Top = 409
      Width = 79
      Height = 13
      Caption = 'Total Devolu'#231#227'o'
    end
    object lbltotale: TLabel
      Left = 322
      Top = 409
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotale'
    end
    object lbldin: TLabel
      Left = 655
      Top = 320
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbldin'
      Visible = False
    end
    object Label4: TLabel
      Left = 550
      Top = 320
      Width = 33
      Height = 13
      Caption = 'A Vista'
      Visible = False
    end
    object Label5: TLabel
      Left = 552
      Top = 355
      Width = 37
      Height = 13
      Caption = #192' Prazo'
      Visible = False
    end
    object lblaprazo: TLabel
      Left = 639
      Top = 355
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'lblaprazo'
      Visible = False
    end
    object Label10: TLabel
      Left = 552
      Top = 387
      Width = 24
      Height = 13
      Caption = 'Total'
      Visible = False
    end
    object lbltotal: TLabel
      Left = 648
      Top = 387
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotal'
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 8
      Width = 33
      Height = 33
      OnClick = SpeedButton1Click
    end
    object dbgvenda: TDBGrid
      Left = 2
      Top = 51
      Width = 676
      Height = 164
      DataSource = frmDados.Dts_sVenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgvendaEnter
      OnKeyDown = dbgvendaKeyDown
      OnKeyPress = dbgvendaKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPED'
          Title.Caption = 'N.o Pedido Balc'#227'o'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATACAD'
          Title.Caption = 'Emiss'#227'o'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ncli'
          Title.Caption = 'Cliente'
          Width = 211
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESC'
          Title.Caption = '% Desconto'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALDESC'
          Title.Caption = 'Vlr Desconto'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTGPAGAR'
          Title.Caption = 'L'#237'quido'
          Width = 91
          Visible = True
        end>
    end
    object dbgdetvenda: TDBGrid
      Left = 2
      Top = 219
      Width = 543
      Height = 94
      DataSource = frmDados.Dts_Vendab
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgdetvendaEnter
      OnKeyDown = dbgdetvendaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Caption = 'Qtde'
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nuni'
          Title.Caption = 'Und.'
          Width = 28
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NPRO'
          Title.Caption = 'Descricao'
          Width = 291
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRVE'
          Title.Caption = 'Pr. Unit'#225'rio'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBTOTAL'
          Title.Caption = 'Subtotal'
          Width = 72
          Visible = True
        end>
    end
    object dbgvencto: TDBGrid
      Left = 3
      Top = 318
      Width = 542
      Height = 83
      DataSource = frmDados.Dts_Vencto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = dbgvenctoKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'n_tipo_pgto'
          Title.Caption = 'Tipo'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOC'
          Title.Caption = 'Documento'
          Width = 205
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRAZO'
          Title.Caption = 'Prazo'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTV'
          Title.Caption = 'Vencimento'
          Width = 67
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
    object btncancelap: TButton
      Left = 561
      Top = 221
      Width = 116
      Height = 33
      Caption = 'Cancela Pedido'
      TabOrder = 3
      OnClick = btncancelapClick
    end
  end
end
