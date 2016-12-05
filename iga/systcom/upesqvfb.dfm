object frmPesqVfb: TfrmPesqVfb
  Left = 51
  Top = 110
  Width = 947
  Height = 568
  BorderIcons = []
  Caption = 'Pesquisa de Vendas Efetuadas - Balc'#227'o'
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
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 939
    Height = 42
    Align = alTop
    TabOrder = 0
    object spdconfirma: TSpeedButton
      Left = 795
      Top = 4
      Width = 134
      Height = 33
      Caption = 'Fechar'
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
    Top = 500
    Width = 939
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 458
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
    object Label11: TLabel
      Left = 9
      Top = 266
      Width = 50
      Height = 17
      Caption = 'Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 9
      Top = 325
      Width = 83
      Height = 17
      Caption = 'N.o Terminal'
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
      OnKeyPress = edicodigoKeyPress
    end
    object cbxnomeusu: TDBLookupComboBox
      Left = 8
      Top = 288
      Width = 185
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dst_Usuarios
      ParentFont = False
      TabOrder = 4
    end
    object ediid: TEdit
      Left = 8
      Top = 344
      Width = 121
      Height = 25
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '1'
      OnKeyPress = edicodigoKeyPress
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 738
    Height = 458
    Align = alClient
    TabOrder = 3
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 736
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
      Left = 567
      Top = 320
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbldin'
    end
    object Label4: TLabel
      Left = 454
      Top = 320
      Width = 33
      Height = 13
      Caption = 'A Vista'
    end
    object Label5: TLabel
      Left = 456
      Top = 355
      Width = 37
      Height = 13
      Caption = #192' Prazo'
    end
    object lblaprazo: TLabel
      Left = 551
      Top = 355
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'lblaprazo'
    end
    object Label10: TLabel
      Left = 456
      Top = 387
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object lbltotal: TLabel
      Left = 560
      Top = 387
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'lbltotal'
    end
    object lbldatafec: TDBText
      Left = 608
      Top = 196
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'DATAFEC'
      DataSource = Dts_sVenda
      Visible = False
    end
    object lblnumped: TDBText
      Left = 606
      Top = 240
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'NUMPED'
      DataSource = Dts_sVenda
      Visible = False
    end
    object lblnco: TDBText
      Left = 608
      Top = 219
      Width = 65
      Height = 17
      Alignment = taRightJustify
      DataField = 'NCO'
      DataSource = Dts_sVenda
      Visible = False
    end
    object dbgvenda: TDBGrid
      Left = 2
      Top = 51
      Width = 591
      Height = 164
      DataSource = Dts_sVenda
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
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATACAD'
          Title.Caption = 'Emiss'#227'o'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESC'
          Title.Caption = '% Desconto'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALDESC'
          Title.Caption = 'Vlr Desconto'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTGPAGAR'
          Title.Caption = 'L'#237'quido'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cpfcnpj'
          Title.Caption = 'cpf - sat'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomecli'
          Title.Caption = 'Cliente'
          Width = 236
          Visible = True
        end>
    end
    object dbgdetvenda: TDBGrid
      Left = 2
      Top = 219
      Width = 591
      Height = 94
      DataSource = Dts_Vendab
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
          Width = 340
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
      Left = 11
      Top = 430
      Width = 438
      Height = 83
      DataSource = Dts_Vencto
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
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
          Width = 251
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
      Left = 595
      Top = 52
      Width = 134
      Height = 33
      Caption = 'Cancela Pedido'
      TabOrder = 3
      OnClick = btncancelapClick
    end
    object Button1: TButton
      Left = 595
      Top = 87
      Width = 134
      Height = 33
      Caption = 'Exportar para NFE'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 595
      Top = 122
      Width = 134
      Height = 33
      Caption = 'Exportar para S@T'
      TabOrder = 5
      OnClick = Button2Click
    end
    object cbxambiente: TRadioGroup
      Left = 596
      Top = 157
      Width = 133
      Height = 57
      Caption = ' Ambiente '
      Items.Strings = (
        'Produ'#231#227'o'
        'Homologa'#231#227'o')
      TabOrder = 6
    end
  end
  object Dbx_Vendab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vendab')
    SQLConnection = frmDados.Sql_Dados
    Left = 369
    Top = 281
    object IntegerField47: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_VendabNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Dbx_VendabCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_VendabQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object Dbx_VendabPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_VendabCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_VendabCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_VendabPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_VendabEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VendabVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Dbx_VendabEOUS: TStringField
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Dbx_VendabPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Dbx_VendabPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Dbx_VendabVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCUIN: TIntegerField
      FieldName = 'CUIN'
    end
    object Dbx_VendabACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VendabSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_VendabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_VendabCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Dbx_VendabITEMECF: TStringField
      FieldName = 'ITEMECF'
      Size = 6
    end
    object Dbx_VendabCMDB: TSmallintField
      FieldName = 'CMDB'
    end
    object Dbx_VendabTPCMDB: TStringField
      FieldName = 'TPCMDB'
      Size = 1
    end
    object Dbx_VendabHORA_OP: TTimeField
      FieldName = 'HORA_OP'
    end
    object Dbx_VendabQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Dbx_VendabQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Dbx_VendabCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_VendabCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
    object Dbx_VendabCODCOFINS: TIntegerField
      FieldName = 'CODCOFINS'
    end
    object Dbx_VendabCODPIS: TIntegerField
      FieldName = 'CODPIS'
    end
    object Dbx_VendabCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Dbx_VendabCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Dbx_VendabCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
  end
  object Dsp_Vendab: TDataSetProvider
    DataSet = Dbx_Vendab
    UpdateMode = upWhereKeyOnly
    Left = 385
    Top = 297
  end
  object Cds_Vendab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Vendab'
    Left = 401
    Top = 313
    object IntegerField64: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_VendabNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Cds_VendabCPRO: TIntegerField
      FieldName = 'CPRO'
      DisplayFormat = '00000'
    end
    object Cds_VendabQTDE: TFMTBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object Cds_VendabPRVE: TFMTBCDField
      FieldName = 'PRVE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_VendabCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_VendabCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_VendabPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_VendabEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VendabVCOM: TFMTBCDField
      FieldName = 'VCOM'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Cds_VendabEOUS: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Cds_VendabPRCU: TFMTBCDField
      FieldName = 'PRCU'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Cds_VendabPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Cds_VendabVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCUIN: TIntegerField
      FieldName = 'CUIN'
    end
    object Cds_VendabACTDESC: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VendabSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_VendabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_VendabCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Cds_VendabITEMECF: TStringField
      FieldName = 'ITEMECF'
      Size = 6
    end
    object Cds_VendabCMDB: TSmallintField
      FieldName = 'CMDB'
    end
    object Cds_VendabTPCMDB: TStringField
      FieldName = 'TPCMDB'
      Size = 1
    end
    object Cds_VendabHORA_OP: TTimeField
      FieldName = 'HORA_OP'
    end
    object Cds_VendabQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Cds_VendabQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Cds_VendabCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_VendabCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
    object Cds_VendabCODCOFINS: TIntegerField
      FieldName = 'CODCOFINS'
    end
    object Cds_VendabCODPIS: TIntegerField
      FieldName = 'CODPIS'
    end
    object Cds_VendabCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Cds_VendabCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Cds_VendabCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
  end
  object Dts_Vendab: TDataSource
    DataSet = Cds_Vendab
    Left = 417
    Top = 329
  end
  object Dbx_sVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svendas')
    SQLConnection = frmDados.Sql_Dados
    Left = 467
    Top = 142
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_sVendaPDESC: TFMTBCDField
      FieldName = 'PDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaGARANTIA: TMemoField
      FieldName = 'GARANTIA'
      BlobType = ftMemo
    end
    object Dbx_sVendaFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDIN: TFMTBCDField
      FieldName = 'DIN'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_sVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_sVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_sVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTITENS: TIntegerField
      FieldName = 'TOTITENS'
    end
    object Dbx_sVendaTOTBRUTO: TFMTBCDField
      FieldName = 'TOTBRUTO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTROAVIST: TFMTBCDField
      FieldName = 'OUTROAVIST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaPARC: TSmallintField
      FieldName = 'PARC'
    end
    object Dbx_sVendaJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 9
      Size = 2
    end
    object Dbx_sVendaNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Dbx_sVendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_sVendaCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_sVendaPRIPARC: TStringField
      FieldName = 'PRIPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaTOTE: TFMTBCDField
      FieldName = 'TOTE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Dbx_sVendaEM_CAIXA: TFMTBCDField
      FieldName = 'EM_CAIXA'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaCUSTOPECAS: TFMTBCDField
      FieldName = 'CUSTOPECAS'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaCUSTOPECAE: TFMTBCDField
      FieldName = 'CUSTOPECAE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Dbx_sVendaNCF: TIntegerField
      FieldName = 'NCF'
    end
    object Dbx_sVendaVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 60
    end
    object Dbx_sVendaCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 55
    end
    object Dbx_sVendaENDERECOST: TStringField
      FieldName = 'ENDERECOST'
      Size = 60
    end
    object Dbx_sVendaBAIRROST: TStringField
      FieldName = 'BAIRROST'
      Size = 40
    end
    object Dbx_sVendaFONEST: TStringField
      FieldName = 'FONEST'
    end
    object Dbx_sVendaMUNICIPIOST: TStringField
      FieldName = 'MUNICIPIOST'
      Size = 40
    end
    object Dbx_sVendaEMISSAOST: TDateField
      FieldName = 'EMISSAOST'
    end
    object Dbx_sVendaTOTALST: TFMTBCDField
      FieldName = 'TOTALST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOPERACAOST: TStringField
      FieldName = 'OPERACAOST'
      Size = 50
    end
    object Dbx_sVendaPAGAMENTOST: TStringField
      FieldName = 'PAGAMENTOST'
      Size = 2
    end
    object Dbx_sVendaVENCIMENTOST: TDateField
      FieldName = 'VENCIMENTOST'
    end
    object Dbx_sVendaTOTALPST: TFMTBCDField
      FieldName = 'TOTALPST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDESCONTOST: TFMTBCDField
      FieldName = 'DESCONTOST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDST: TStringField
      FieldName = 'DST'
      Size = 1
    end
    object Dbx_sVendaCONTATOST: TStringField
      FieldName = 'CONTATOST'
      Size = 60
    end
    object Dbx_sVendaCPFST: TStringField
      FieldName = 'CPFST'
      Size = 25
    end
    object Dbx_sVendaIEST: TStringField
      FieldName = 'IEST'
      Size = 25
    end
    object Dbx_sVendaOBSST: TMemoField
      FieldName = 'OBSST'
      BlobType = ftMemo
    end
    object Dbx_sVendaFECHADOST: TStringField
      FieldName = 'FECHADOST'
      Size = 1
    end
    object Dbx_sVendaRETORNOST: TDateField
      FieldName = 'RETORNOST'
    end
    object Dbx_sVendaHORAST: TTimeField
      FieldName = 'HORAST'
    end
    object Dbx_sVendaCUSTOST: TFMTBCDField
      FieldName = 'CUSTOST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_sVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object Dbx_sVendaNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_sVendaTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
    end
    object Dbx_sVendaTIPOENT: TIntegerField
      FieldName = 'TIPOENT'
    end
    object Dbx_sVendaNUMORC: TIntegerField
      FieldName = 'NUMORC'
    end
    object Dbx_sVendaNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Dbx_sVendaABSDESC: TFMTBCDField
      FieldName = 'ABSDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTPAGAR: TFMTBCDField
      FieldName = 'TOTPAGAR'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTGPAGAR: TFMTBCDField
      FieldName = 'TOTGPAGAR'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object Dbx_sVendaVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object Dbx_sVendaRESUNI: TStringField
      FieldName = 'RESUNI'
      Size = 30
    end
    object Dbx_sVendaPRAZO_VALIDADE: TDateField
      FieldName = 'PRAZO_VALIDADE'
    end
    object Dbx_sVendaTOTGPRODD: TFMTBCDField
      FieldName = 'TOTGPRODD'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTPNF: TSmallintField
      FieldName = 'TPNF'
    end
    object Dbx_sVendaCNAT: TSmallintField
      FieldName = 'CNAT'
    end
    object Dbx_sVendaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALORICMS: TFMTBCDField
      FieldName = 'VALORICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaBASECALCICMSSUB: TFMTBCDField
      FieldName = 'BASECALCICMSSUB'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRICMSSUB: TFMTBCDField
      FieldName = 'VLRICMSSUB'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTDESP: TFMTBCDField
      FieldName = 'OUTDESP'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRTOTNF: TFMTBCDField
      FieldName = 'VLRTOTNF'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDADOSADICIONAIS: TMemoField
      FieldName = 'DADOSADICIONAIS'
      BlobType = ftMemo
    end
    object Dbx_sVendaQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object Dbx_sVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object Dbx_sVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object Dbx_sVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object Dbx_sVendaPESOB: TStringField
      FieldName = 'PESOB'
      Size = 15
    end
    object Dbx_sVendaPESOL: TStringField
      FieldName = 'PESOL'
      Size = 15
    end
    object Dbx_sVendaFRETEPOR: TStringField
      FieldName = 'FRETEPOR'
      Size = 1
    end
    object Dbx_sVendaPLACAVEI: TStringField
      FieldName = 'PLACAVEI'
      Size = 10
    end
    object Dbx_sVendaUFVEI: TStringField
      FieldName = 'UFVEI'
      Size = 2
    end
    object Dbx_sVendaVLRDUP1: TFMTBCDField
      FieldName = 'VLRDUP1'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP1: TDateField
      FieldName = 'VCTDUP1'
    end
    object Dbx_sVendaVLRDUP2: TFMTBCDField
      FieldName = 'VLRDUP2'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP2: TDateField
      FieldName = 'VCTDUP2'
    end
    object Dbx_sVendaVLRDUP3: TFMTBCDField
      FieldName = 'VLRDUP3'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP3: TDateField
      FieldName = 'VCTDUP3'
    end
    object Dbx_sVendaVLRDUP4: TFMTBCDField
      FieldName = 'VLRDUP4'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP4: TDateField
      FieldName = 'VCTDUP4'
    end
    object Dbx_sVendaFRETEP: TSmallintField
      FieldName = 'FRETEP'
    end
    object Dbx_sVendaDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Dbx_sVendaDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Dbx_sVendaDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Dbx_sVendaDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Dbx_sVendaDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Dbx_sVendaDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Dbx_sVendaDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Dbx_sVendaDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Dbx_sVendaCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Dbx_sVendaIMPDESTQCONT: TStringField
      FieldName = 'IMPDESTQCONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaNUMDUP1: TStringField
      FieldName = 'NUMDUP1'
      Size = 12
    end
    object Dbx_sVendaNUMDUP2: TStringField
      FieldName = 'NUMDUP2'
      Size = 12
    end
    object Dbx_sVendaNUMDUP3: TStringField
      FieldName = 'NUMDUP3'
      Size = 12
    end
    object Dbx_sVendaNUMDUP4: TStringField
      FieldName = 'NUMDUP4'
      Size = 12
    end
    object Dbx_sVendaPRAZO1: TSmallintField
      FieldName = 'PRAZO1'
    end
    object Dbx_sVendaPRAZO2: TSmallintField
      FieldName = 'PRAZO2'
    end
    object Dbx_sVendaPRAZO3: TSmallintField
      FieldName = 'PRAZO3'
    end
    object Dbx_sVendaPRAZO4: TSmallintField
      FieldName = 'PRAZO4'
    end
    object Dbx_sVendaLANCADO: TStringField
      FieldName = 'LANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Dbx_sVendaPDESC_P: TFMTBCDField
      FieldName = 'PDESC_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALDESC_P: TFMTBCDField
      FieldName = 'VALDESC_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaLIQUIDO_P: TFMTBCDField
      FieldName = 'LIQUIDO_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDIN_P: TFMTBCDField
      FieldName = 'DIN_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTROCO_P: TFMTBCDField
      FieldName = 'TROCO_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTROAVIST_P: TFMTBCDField
      FieldName = 'OUTROAVIST_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaPARC_P: TSmallintField
      FieldName = 'PARC_P'
    end
    object Dbx_sVendaJUROS_P: TBCDField
      FieldName = 'JUROS_P'
      Precision = 9
      Size = 2
    end
    object Dbx_sVendaPRIPARC_P: TStringField
      FieldName = 'PRIPARC_P'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaPDESC_O: TFMTBCDField
      FieldName = 'PDESC_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALDESC_O: TFMTBCDField
      FieldName = 'VALDESC_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaLIQUIDO_O: TFMTBCDField
      FieldName = 'LIQUIDO_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDIN_O: TFMTBCDField
      FieldName = 'DIN_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTROCO_O: TFMTBCDField
      FieldName = 'TROCO_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTROAVIST_O: TFMTBCDField
      FieldName = 'OUTROAVIST_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaPARC_O: TSmallintField
      FieldName = 'PARC_O'
    end
    object Dbx_sVendaJUROS_O: TBCDField
      FieldName = 'JUROS_O'
      Precision = 9
      Size = 2
    end
    object Dbx_sVendaPRIPARC_O: TStringField
      FieldName = 'PRIPARC_O'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Dbx_sVendaID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Dbx_sVendaID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Dbx_sVendaDESC1: TStringField
      FieldName = 'DESC1'
      Size = 40
    end
    object Dbx_sVendaDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object Dbx_sVendaDESC3: TStringField
      FieldName = 'DESC3'
      Size = 40
    end
    object Dbx_sVendaDESC4: TStringField
      FieldName = 'DESC4'
      Size = 40
    end
    object Dbx_sVendaDESC5: TStringField
      FieldName = 'DESC5'
      Size = 40
    end
    object Dbx_sVendaDESC6: TStringField
      FieldName = 'DESC6'
      Size = 40
    end
    object Dbx_sVendaDESC7: TStringField
      FieldName = 'DESC7'
      Size = 40
    end
    object Dbx_sVendaDESC8: TStringField
      FieldName = 'DESC8'
      Size = 40
    end
    object Dbx_sVendaDESC9: TStringField
      FieldName = 'DESC9'
      Size = 40
    end
    object Dbx_sVendaDESC10: TStringField
      FieldName = 'DESC10'
      Size = 40
    end
    object Dbx_sVendaDESC11: TStringField
      FieldName = 'DESC11'
      Size = 40
    end
    object Dbx_sVendaDESC12: TStringField
      FieldName = 'DESC12'
      Size = 40
    end
    object Dbx_sVendaDESC13: TStringField
      FieldName = 'DESC13'
      Size = 40
    end
    object Dbx_sVendaDESC14: TStringField
      FieldName = 'DESC14'
      Size = 40
    end
    object Dbx_sVendaDESC15: TStringField
      FieldName = 'DESC15'
      Size = 40
    end
    object Dbx_sVendaDESC16: TStringField
      FieldName = 'DESC16'
      Size = 40
    end
    object Dbx_sVendaDESC17: TStringField
      FieldName = 'DESC17'
      Size = 40
    end
    object Dbx_sVendaDESC18: TStringField
      FieldName = 'DESC18'
      Size = 40
    end
    object Dbx_sVendaDESC19: TStringField
      FieldName = 'DESC19'
      Size = 40
    end
    object Dbx_sVendaDESC20: TStringField
      FieldName = 'DESC20'
      Size = 40
    end
    object Dbx_sVendaDESC21: TStringField
      FieldName = 'DESC21'
      Size = 40
    end
    object Dbx_sVendaDESC22: TStringField
      FieldName = 'DESC22'
      Size = 40
    end
    object Dbx_sVendaDESC23: TStringField
      FieldName = 'DESC23'
      Size = 40
    end
    object Dbx_sVendaDESC24: TStringField
      FieldName = 'DESC24'
      Size = 40
    end
    object Dbx_sVendaDESC25: TStringField
      FieldName = 'DESC25'
      Size = 40
    end
    object Dbx_sVendaDESC26: TStringField
      FieldName = 'DESC26'
      Size = 40
    end
    object Dbx_sVendaDESC27: TStringField
      FieldName = 'DESC27'
      Size = 40
    end
    object Dbx_sVendaDESC28: TStringField
      FieldName = 'DESC28'
      Size = 40
    end
    object Dbx_sVendaDESC29: TStringField
      FieldName = 'DESC29'
      Size = 40
    end
    object Dbx_sVendaDESC30: TStringField
      FieldName = 'DESC30'
      Size = 40
    end
    object Dbx_sVendaDESC31: TStringField
      FieldName = 'DESC31'
      Size = 40
    end
    object Dbx_sVendaDESC32: TStringField
      FieldName = 'DESC32'
      Size = 40
    end
    object Dbx_sVendaDESC33: TStringField
      FieldName = 'DESC33'
      Size = 40
    end
    object Dbx_sVendaDESC34: TStringField
      FieldName = 'DESC34'
      Size = 40
    end
    object Dbx_sVendaDESC35: TStringField
      FieldName = 'DESC35'
      Size = 40
    end
    object Dbx_sVendaDESC36: TStringField
      FieldName = 'DESC36'
      Size = 40
    end
    object Dbx_sVendaDESC37: TStringField
      FieldName = 'DESC37'
      Size = 40
    end
    object Dbx_sVendaDESC38: TStringField
      FieldName = 'DESC38'
      Size = 40
    end
    object Dbx_sVendaNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Dbx_sVendaCFUNREB: TIntegerField
      FieldName = 'CFUNREB'
    end
    object Dbx_sVendaCFUNCON: TIntegerField
      FieldName = 'CFUNCON'
    end
    object Dbx_sVendaRETPOR: TStringField
      FieldName = 'RETPOR'
    end
    object Dbx_sVendaAUTPOR: TStringField
      FieldName = 'AUTPOR'
    end
    object Dbx_sVendaCFUNENT: TIntegerField
      FieldName = 'CFUNENT'
    end
    object Dbx_sVendaSINAL: TFMTBCDField
      FieldName = 'SINAL'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaACRESCIMO_P: TFMTBCDField
      FieldName = 'ACRESCIMO_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaACRESCIMO_O: TFMTBCDField
      FieldName = 'ACRESCIMO_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaOBS1: TMemoField
      FieldName = 'OBS1'
      BlobType = ftMemo
    end
    object Dbx_sVendaOBS2: TMemoField
      FieldName = 'OBS2'
      BlobType = ftMemo
    end
    object Dbx_sVendaTPO: TSmallintField
      FieldName = 'TPO'
    end
    object Dbx_sVendaHRCAD: TStringField
      FieldName = 'HRCAD'
      Size = 5
    end
    object Dbx_sVendaHRFEC: TStringField
      FieldName = 'HRFEC'
      Size = 5
    end
    object Dbx_sVendaMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Dbx_sVendaECFLANCADO: TStringField
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Dbx_sVendaNCUPOMF: TIntegerField
      FieldName = 'NCUPOMF'
    end
    object Dbx_sVendaST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object Dbx_sVendaCMAT_RESTAURAR: TIntegerField
      FieldName = 'CMAT_RESTAURAR'
    end
    object Dbx_sVendaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_sVendaCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Dbx_sVendaTIPO_COBERTURA: TIntegerField
      FieldName = 'TIPO_COBERTURA'
    end
    object Dbx_sVendaDATATIPO1: TSQLTimeStampField
      FieldName = 'DATATIPO1'
    end
    object Dbx_sVendaDATATIPO2: TSQLTimeStampField
      FieldName = 'DATATIPO2'
    end
    object Dbx_sVendaDATATIPO3: TSQLTimeStampField
      FieldName = 'DATATIPO3'
    end
    object Dbx_sVendaDATATIPO4: TSQLTimeStampField
      FieldName = 'DATATIPO4'
    end
    object Dbx_sVendaDATATIPO5: TSQLTimeStampField
      FieldName = 'DATATIPO5'
    end
    object Dbx_sVendaDATATIPO6: TSQLTimeStampField
      FieldName = 'DATATIPO6'
    end
    object Dbx_sVendaDATATIPO7: TSQLTimeStampField
      FieldName = 'DATATIPO7'
    end
    object Dbx_sVendaDATATIPO8: TSQLTimeStampField
      FieldName = 'DATATIPO8'
    end
    object Dbx_sVendaDATATIPO9: TSQLTimeStampField
      FieldName = 'DATATIPO9'
    end
    object Dbx_sVendaDATATIPO10: TSQLTimeStampField
      FieldName = 'DATATIPO10'
    end
    object Dbx_sVendaDATASITU1: TSQLTimeStampField
      FieldName = 'DATASITU1'
    end
    object Dbx_sVendaDATASITU2: TSQLTimeStampField
      FieldName = 'DATASITU2'
    end
    object Dbx_sVendaDATASITU3: TSQLTimeStampField
      FieldName = 'DATASITU3'
    end
    object Dbx_sVendaDATASITU4: TSQLTimeStampField
      FieldName = 'DATASITU4'
    end
    object Dbx_sVendaDATASITU5: TSQLTimeStampField
      FieldName = 'DATASITU5'
    end
    object Dbx_sVendaDATASITU6: TSQLTimeStampField
      FieldName = 'DATASITU6'
    end
    object Dbx_sVendaDATASITU7: TSQLTimeStampField
      FieldName = 'DATASITU7'
    end
    object Dbx_sVendaDATASITU8: TSQLTimeStampField
      FieldName = 'DATASITU8'
    end
    object Dbx_sVendaDATASITU9: TSQLTimeStampField
      FieldName = 'DATASITU9'
    end
    object Dbx_sVendaDATASITU10: TSQLTimeStampField
      FieldName = 'DATASITU10'
    end
    object Dbx_sVendaNORC: TIntegerField
      FieldName = 'NORC'
    end
    object Dbx_sVendaCUSUB: TIntegerField
      FieldName = 'CUSUB'
    end
    object Dbx_sVendaCUSUMA: TIntegerField
      FieldName = 'CUSUMA'
    end
    object Dbx_sVendaIDTERMINAL: TIntegerField
      FieldName = 'IDTERMINAL'
    end
    object Dbx_sVendacpfcnpj: TStringField
      FieldName = 'cpfcnpj'
    end
  end
  object Dsp_sVenda: TDataSetProvider
    DataSet = Dbx_sVenda
    UpdateMode = upWhereKeyOnly
    Left = 475
    Top = 158
  end
  object Cds_sVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_sVenda'
    OnCalcFields = Cds_sVendaCalcFields
    Left = 499
    Top = 174
    object IntegerField16: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_sVendaPDESC: TFMTBCDField
      FieldName = 'PDESC'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaGARANTIA: TMemoField
      FieldName = 'GARANTIA'
      BlobType = ftMemo
    end
    object Cds_sVendaFRETE: TFMTBCDField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDIN: TFMTBCDField
      FieldName = 'DIN'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_sVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_sVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTITENS: TIntegerField
      FieldName = 'TOTITENS'
    end
    object Cds_sVendaTOTBRUTO: TFMTBCDField
      FieldName = 'TOTBRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTROAVIST: TFMTBCDField
      FieldName = 'OUTROAVIST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaPARC: TSmallintField
      FieldName = 'PARC'
    end
    object Cds_sVendaJUROS: TBCDField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_sVendaNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Cds_sVendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_sVendaCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Cds_sVendaPRIPARC: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PRIPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaTOTE: TFMTBCDField
      FieldName = 'TOTE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDATACAD: TDateField
      FieldName = 'DATACAD'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaEM_CAIXA: TFMTBCDField
      FieldName = 'EM_CAIXA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaCUSTOPECAS: TFMTBCDField
      FieldName = 'CUSTOPECAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaCUSTOPECAE: TFMTBCDField
      FieldName = 'CUSTOPECAE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Cds_sVendaNCF: TIntegerField
      FieldName = 'NCF'
    end
    object Cds_sVendaVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 60
    end
    object Cds_sVendaCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 55
    end
    object Cds_sVendaENDERECOST: TStringField
      FieldName = 'ENDERECOST'
      Size = 60
    end
    object Cds_sVendaBAIRROST: TStringField
      FieldName = 'BAIRROST'
      Size = 40
    end
    object Cds_sVendaFONEST: TStringField
      FieldName = 'FONEST'
    end
    object Cds_sVendaMUNICIPIOST: TStringField
      FieldName = 'MUNICIPIOST'
      Size = 40
    end
    object Cds_sVendaEMISSAOST: TDateField
      FieldName = 'EMISSAOST'
    end
    object Cds_sVendaTOTALST: TFMTBCDField
      FieldName = 'TOTALST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOPERACAOST: TStringField
      FieldName = 'OPERACAOST'
      Size = 50
    end
    object Cds_sVendaPAGAMENTOST: TStringField
      FieldName = 'PAGAMENTOST'
      Size = 2
    end
    object Cds_sVendaVENCIMENTOST: TDateField
      FieldName = 'VENCIMENTOST'
    end
    object Cds_sVendaTOTALPST: TFMTBCDField
      FieldName = 'TOTALPST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDESCONTOST: TFMTBCDField
      FieldName = 'DESCONTOST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDST: TStringField
      FieldName = 'DST'
      Size = 1
    end
    object Cds_sVendaCONTATOST: TStringField
      FieldName = 'CONTATOST'
      Size = 60
    end
    object Cds_sVendaCPFST: TStringField
      FieldName = 'CPFST'
      Size = 25
    end
    object Cds_sVendaIEST: TStringField
      FieldName = 'IEST'
      Size = 25
    end
    object Cds_sVendaOBSST: TMemoField
      FieldName = 'OBSST'
      BlobType = ftMemo
    end
    object Cds_sVendaFECHADOST: TStringField
      FieldName = 'FECHADOST'
      Size = 1
    end
    object Cds_sVendaRETORNOST: TDateField
      FieldName = 'RETORNOST'
      DisplayFormat = '###,###,##0.00'
    end
    object Cds_sVendaHORAST: TTimeField
      FieldName = 'HORAST'
    end
    object Cds_sVendaCUSTOST: TFMTBCDField
      FieldName = 'CUSTOST'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_sVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object Cds_sVendaNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_sVendaTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
    end
    object Cds_sVendaTIPOENT: TIntegerField
      FieldName = 'TIPOENT'
    end
    object Cds_sVendaNUMORC: TIntegerField
      FieldName = 'NUMORC'
    end
    object Cds_sVendaNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Cds_sVendaABSDESC: TFMTBCDField
      FieldName = 'ABSDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTPAGAR: TFMTBCDField
      FieldName = 'TOTPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTGPAGAR: TFMTBCDField
      FieldName = 'TOTGPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaSAIDA: TDateField
      FieldName = 'SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object Cds_sVendaRESUNI: TStringField
      FieldName = 'RESUNI'
      Size = 30
    end
    object Cds_sVendaPRAZO_VALIDADE: TDateField
      FieldName = 'PRAZO_VALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaTOTGPRODD: TFMTBCDField
      FieldName = 'TOTGPRODD'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTPNF: TSmallintField
      FieldName = 'TPNF'
    end
    object Cds_sVendaCNAT: TSmallintField
      FieldName = 'CNAT'
    end
    object Cds_sVendaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALORICMS: TFMTBCDField
      FieldName = 'VALORICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaBASECALCICMSSUB: TFMTBCDField
      FieldName = 'BASECALCICMSSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRICMSSUB: TFMTBCDField
      FieldName = 'VLRICMSSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTDESP: TFMTBCDField
      FieldName = 'OUTDESP'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRTOTNF: TFMTBCDField
      FieldName = 'VLRTOTNF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDADOSADICIONAIS: TMemoField
      FieldName = 'DADOSADICIONAIS'
      BlobType = ftMemo
    end
    object Cds_sVendaQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object Cds_sVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object Cds_sVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object Cds_sVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object Cds_sVendaPESOB: TStringField
      FieldName = 'PESOB'
      Size = 15
    end
    object Cds_sVendaPESOL: TStringField
      FieldName = 'PESOL'
      Size = 15
    end
    object Cds_sVendaFRETEPOR: TStringField
      FieldName = 'FRETEPOR'
      Size = 1
    end
    object Cds_sVendaPLACAVEI: TStringField
      FieldName = 'PLACAVEI'
      Size = 10
    end
    object Cds_sVendaUFVEI: TStringField
      FieldName = 'UFVEI'
      Size = 2
    end
    object Cds_sVendaVLRDUP1: TFMTBCDField
      FieldName = 'VLRDUP1'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP1: TDateField
      FieldName = 'VCTDUP1'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVLRDUP2: TFMTBCDField
      FieldName = 'VLRDUP2'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP2: TDateField
      FieldName = 'VCTDUP2'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVLRDUP3: TFMTBCDField
      FieldName = 'VLRDUP3'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP3: TDateField
      FieldName = 'VCTDUP3'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVLRDUP4: TFMTBCDField
      FieldName = 'VLRDUP4'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP4: TDateField
      FieldName = 'VCTDUP4'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaFRETEP: TSmallintField
      FieldName = 'FRETEP'
    end
    object Cds_sVendaDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Cds_sVendaDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Cds_sVendaDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Cds_sVendaDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Cds_sVendaDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Cds_sVendaDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Cds_sVendaDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Cds_sVendaDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Cds_sVendaCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Cds_sVendaIMPDESTQCONT: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'IMPDESTQCONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaNUMDUP1: TStringField
      FieldName = 'NUMDUP1'
      Size = 12
    end
    object Cds_sVendaNUMDUP2: TStringField
      FieldName = 'NUMDUP2'
      Size = 12
    end
    object Cds_sVendaNUMDUP3: TStringField
      FieldName = 'NUMDUP3'
      Size = 12
    end
    object Cds_sVendaNUMDUP4: TStringField
      FieldName = 'NUMDUP4'
      Size = 12
    end
    object Cds_sVendaPRAZO1: TSmallintField
      FieldName = 'PRAZO1'
    end
    object Cds_sVendaPRAZO2: TSmallintField
      FieldName = 'PRAZO2'
    end
    object Cds_sVendaPRAZO3: TSmallintField
      FieldName = 'PRAZO3'
    end
    object Cds_sVendaPRAZO4: TSmallintField
      FieldName = 'PRAZO4'
    end
    object Cds_sVendaLANCADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'LANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Cds_sVendaPDESC_P: TFMTBCDField
      FieldName = 'PDESC_P'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALDESC_P: TFMTBCDField
      FieldName = 'VALDESC_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaLIQUIDO_P: TFMTBCDField
      FieldName = 'LIQUIDO_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDIN_P: TFMTBCDField
      FieldName = 'DIN_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTROCO_P: TFMTBCDField
      FieldName = 'TROCO_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTROAVIST_P: TFMTBCDField
      FieldName = 'OUTROAVIST_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaPARC_P: TSmallintField
      FieldName = 'PARC_P'
    end
    object Cds_sVendaJUROS_P: TBCDField
      FieldName = 'JUROS_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_sVendaPRIPARC_P: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PRIPARC_P'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaPDESC_O: TFMTBCDField
      FieldName = 'PDESC_O'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALDESC_O: TFMTBCDField
      FieldName = 'VALDESC_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaLIQUIDO_O: TFMTBCDField
      FieldName = 'LIQUIDO_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDIN_O: TFMTBCDField
      FieldName = 'DIN_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTROCO_O: TFMTBCDField
      FieldName = 'TROCO_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTROAVIST_O: TFMTBCDField
      FieldName = 'OUTROAVIST_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaPARC_O: TSmallintField
      FieldName = 'PARC_O'
    end
    object Cds_sVendaJUROS_O: TBCDField
      FieldName = 'JUROS_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_sVendaPRIPARC_O: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PRIPARC_O'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Cds_sVendatotg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totg'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_sVendaID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Cds_sVendaID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Cds_sVendaDESC1: TStringField
      FieldName = 'DESC1'
      Size = 40
    end
    object Cds_sVendaDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object Cds_sVendaDESC3: TStringField
      FieldName = 'DESC3'
      Size = 40
    end
    object Cds_sVendaDESC4: TStringField
      FieldName = 'DESC4'
      Size = 40
    end
    object Cds_sVendaDESC5: TStringField
      FieldName = 'DESC5'
      Size = 40
    end
    object Cds_sVendaDESC6: TStringField
      FieldName = 'DESC6'
      Size = 40
    end
    object Cds_sVendaDESC7: TStringField
      FieldName = 'DESC7'
      Size = 40
    end
    object Cds_sVendaDESC8: TStringField
      FieldName = 'DESC8'
      Size = 40
    end
    object Cds_sVendaDESC9: TStringField
      FieldName = 'DESC9'
      Size = 40
    end
    object Cds_sVendaDESC10: TStringField
      FieldName = 'DESC10'
      Size = 40
    end
    object Cds_sVendaDESC11: TStringField
      FieldName = 'DESC11'
      Size = 40
    end
    object Cds_sVendaDESC12: TStringField
      FieldName = 'DESC12'
      Size = 40
    end
    object Cds_sVendaDESC13: TStringField
      FieldName = 'DESC13'
      Size = 40
    end
    object Cds_sVendaDESC14: TStringField
      FieldName = 'DESC14'
      Size = 40
    end
    object Cds_sVendaDESC15: TStringField
      FieldName = 'DESC15'
      Size = 40
    end
    object Cds_sVendaDESC16: TStringField
      FieldName = 'DESC16'
      Size = 40
    end
    object Cds_sVendaDESC17: TStringField
      FieldName = 'DESC17'
      Size = 40
    end
    object Cds_sVendaDESC18: TStringField
      FieldName = 'DESC18'
      Size = 40
    end
    object Cds_sVendaDESC19: TStringField
      FieldName = 'DESC19'
      Size = 40
    end
    object Cds_sVendaDESC20: TStringField
      FieldName = 'DESC20'
      Size = 40
    end
    object Cds_sVendaDESC21: TStringField
      FieldName = 'DESC21'
      Size = 40
    end
    object Cds_sVendaDESC22: TStringField
      FieldName = 'DESC22'
      Size = 40
    end
    object Cds_sVendaDESC23: TStringField
      FieldName = 'DESC23'
      Size = 40
    end
    object Cds_sVendaDESC24: TStringField
      FieldName = 'DESC24'
      Size = 40
    end
    object Cds_sVendaDESC25: TStringField
      FieldName = 'DESC25'
      Size = 40
    end
    object Cds_sVendaDESC26: TStringField
      FieldName = 'DESC26'
      Size = 40
    end
    object Cds_sVendaDESC27: TStringField
      FieldName = 'DESC27'
      Size = 40
    end
    object Cds_sVendaDESC28: TStringField
      FieldName = 'DESC28'
      Size = 40
    end
    object Cds_sVendaDESC29: TStringField
      FieldName = 'DESC29'
      Size = 40
    end
    object Cds_sVendaDESC30: TStringField
      FieldName = 'DESC30'
      Size = 40
    end
    object Cds_sVendaDESC31: TStringField
      FieldName = 'DESC31'
      Size = 40
    end
    object Cds_sVendaDESC32: TStringField
      FieldName = 'DESC32'
      Size = 40
    end
    object Cds_sVendaDESC33: TStringField
      FieldName = 'DESC33'
      Size = 40
    end
    object Cds_sVendaDESC34: TStringField
      FieldName = 'DESC34'
      Size = 40
    end
    object Cds_sVendaDESC35: TStringField
      FieldName = 'DESC35'
      Size = 40
    end
    object Cds_sVendaDESC36: TStringField
      FieldName = 'DESC36'
      Size = 40
    end
    object Cds_sVendaDESC37: TStringField
      FieldName = 'DESC37'
      Size = 40
    end
    object Cds_sVendaDESC38: TStringField
      FieldName = 'DESC38'
      Size = 40
    end
    object Cds_sVendaNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Cds_sVendaCFUNREB: TIntegerField
      FieldName = 'CFUNREB'
    end
    object Cds_sVendaCFUNCON: TIntegerField
      FieldName = 'CFUNCON'
    end
    object Cds_sVendaRETPOR: TStringField
      FieldName = 'RETPOR'
    end
    object Cds_sVendaAUTPOR: TStringField
      FieldName = 'AUTPOR'
    end
    object Cds_sVendaCFUNENT: TIntegerField
      FieldName = 'CFUNENT'
    end
    object Cds_sVendaSINAL: TFMTBCDField
      FieldName = 'SINAL'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaACRESCIMO_P: TFMTBCDField
      FieldName = 'ACRESCIMO_P'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaACRESCIMO_O: TFMTBCDField
      FieldName = 'ACRESCIMO_O'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaOBS1: TMemoField
      FieldName = 'OBS1'
      BlobType = ftMemo
    end
    object Cds_sVendaOBS2: TMemoField
      FieldName = 'OBS2'
      BlobType = ftMemo
    end
    object Cds_sVendaTPO: TSmallintField
      FieldName = 'TPO'
    end
    object Cds_sVendaftotm: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ftotm'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_sVendaftotp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ftotp'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_sVendaHRCAD: TStringField
      FieldName = 'HRCAD'
      Size = 5
    end
    object Cds_sVendaHRFEC: TStringField
      FieldName = 'HRFEC'
      Size = 5
    end
    object Cds_sVendaMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Cds_sVendaECFLANCADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Cds_sVendaNCUPOMF: TIntegerField
      FieldName = 'NCUPOMF'
    end
    object Cds_sVendaST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object Cds_sVendaftotc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ftotc'
      Calculated = True
    end
    object Cds_sVendaCMAT_RESTAURAR: TIntegerField
      FieldName = 'CMAT_RESTAURAR'
    end
    object Cds_sVendaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_sVendaCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Cds_sVendaTIPO_COBERTURA: TIntegerField
      FieldName = 'TIPO_COBERTURA'
    end
    object Cds_sVendaDATATIPO1: TSQLTimeStampField
      FieldName = 'DATATIPO1'
    end
    object Cds_sVendaDATATIPO2: TSQLTimeStampField
      FieldName = 'DATATIPO2'
    end
    object Cds_sVendaDATATIPO3: TSQLTimeStampField
      FieldName = 'DATATIPO3'
    end
    object Cds_sVendaDATATIPO4: TSQLTimeStampField
      FieldName = 'DATATIPO4'
    end
    object Cds_sVendaDATATIPO5: TSQLTimeStampField
      FieldName = 'DATATIPO5'
    end
    object Cds_sVendaDATATIPO6: TSQLTimeStampField
      FieldName = 'DATATIPO6'
    end
    object Cds_sVendaDATATIPO7: TSQLTimeStampField
      FieldName = 'DATATIPO7'
    end
    object Cds_sVendaDATATIPO8: TSQLTimeStampField
      FieldName = 'DATATIPO8'
    end
    object Cds_sVendaDATATIPO9: TSQLTimeStampField
      FieldName = 'DATATIPO9'
    end
    object Cds_sVendaDATATIPO10: TSQLTimeStampField
      FieldName = 'DATATIPO10'
    end
    object Cds_sVendaDATASITU1: TSQLTimeStampField
      FieldName = 'DATASITU1'
    end
    object Cds_sVendaDATASITU2: TSQLTimeStampField
      FieldName = 'DATASITU2'
    end
    object Cds_sVendaDATASITU3: TSQLTimeStampField
      FieldName = 'DATASITU3'
    end
    object Cds_sVendaDATASITU4: TSQLTimeStampField
      FieldName = 'DATASITU4'
    end
    object Cds_sVendaDATASITU5: TSQLTimeStampField
      FieldName = 'DATASITU5'
    end
    object Cds_sVendaDATASITU6: TSQLTimeStampField
      FieldName = 'DATASITU6'
    end
    object Cds_sVendaDATASITU7: TSQLTimeStampField
      FieldName = 'DATASITU7'
    end
    object Cds_sVendaDATASITU8: TSQLTimeStampField
      FieldName = 'DATASITU8'
    end
    object Cds_sVendaDATASITU9: TSQLTimeStampField
      FieldName = 'DATASITU9'
    end
    object Cds_sVendaDATASITU10: TSQLTimeStampField
      FieldName = 'DATASITU10'
    end
    object Cds_sVendaNORC: TIntegerField
      FieldName = 'NORC'
    end
    object Cds_sVendaCUSUB: TIntegerField
      FieldName = 'CUSUB'
    end
    object Cds_sVendaCUSUMA: TIntegerField
      FieldName = 'CUSUMA'
    end
    object Cds_sVendaIDTERMINAL: TIntegerField
      FieldName = 'IDTERMINAL'
    end
    object Cds_sVendanomecli: TStringField
      FieldKind = fkLookup
      FieldName = 'nomecli'
      LookupDataSet = Cds_Vendab
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NPRO'
      KeyFields = 'CCLI'
      Size = 80
      Lookup = True
    end
    object Cds_sVendacpfcnpj: TStringField
      FieldName = 'cpfcnpj'
    end
  end
  object Dts_sVenda: TDataSource
    DataSet = Cds_sVenda
    OnDataChange = Dts_sVendaDataChange
    Left = 515
    Top = 190
  end
  object Dbx_Vencto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vencimentos')
    SQLConnection = frmDados.Sql_Dados
    Left = 472
    Top = 270
    object Dbx_VenctoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_VenctoC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Dbx_VenctoC_SVENDA: TIntegerField
      FieldName = 'C_SVENDA'
    end
    object Dbx_VenctoDTL: TDateField
      FieldName = 'DTL'
    end
    object Dbx_VenctoDTV: TDateField
      FieldName = 'DTV'
    end
    object Dbx_VenctoDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_VenctoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Dbx_VenctoDOC: TStringField
      FieldName = 'DOC'
      Size = 70
    end
    object Dbx_VenctoCREC: TIntegerField
      FieldName = 'CREC'
    end
    object Dbx_VenctoCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_VenctoCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_VenctoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_VenctoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Dbx_VenctoVPARCSEMJ: TFMTBCDField
      FieldName = 'VPARCSEMJ'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_VenctoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object Dbx_VenctoPARC: TStringField
      FieldName = 'PARC'
      Size = 5
    end
    object Dbx_VenctoEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VenctoORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Dbx_VenctoPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Dbx_VenctoNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Dbx_VenctoPARTE: TStringField
      FieldName = 'PARTE'
      Size = 3
    end
    object Dbx_VenctoNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Dbx_VenctoDTB: TDateField
      FieldName = 'DTB'
    end
    object Dbx_VenctoCCLA: TIntegerField
      FieldName = 'CCLA'
    end
    object Dbx_VenctoNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 15
    end
    object Dbx_VenctoVALORREAL: TFMTBCDField
      FieldName = 'VALORREAL'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoECFLANCADO: TStringField
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VenctoMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Dbx_VenctoIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Dbx_VenctoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_VenctoCODLIVROCAIXA: TIntegerField
      FieldName = 'CODLIVROCAIXA'
    end
    object Dbx_VenctoPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_VenctoVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_VenctoCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Dbx_VenctoCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Dbx_VenctoBAIXARTODOS: TStringField
      FieldName = 'BAIXARTODOS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_Vencto: TDataSetProvider
    DataSet = Dbx_Vencto
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 286
  end
  object Cds_Vencto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Vencto'
    Left = 504
    Top = 302
    object Cds_VenctoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_VenctoC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Cds_VenctoC_SVENDA: TIntegerField
      FieldName = 'C_SVENDA'
    end
    object Cds_VenctoDTL: TDateField
      FieldName = 'DTL'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoDTV: TDateField
      FieldName = 'DTV'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoDTE: TDateField
      FieldName = 'DTE'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Cds_VenctoDOC: TStringField
      FieldName = 'DOC'
      Size = 70
    end
    object Cds_VenctoCREC: TIntegerField
      FieldName = 'CREC'
      DisplayFormat = '###,###,##0.00'
    end
    object Cds_VenctoCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_VenctoCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Cds_VenctoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_VenctoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Cds_VenctoVPARCSEMJ: TFMTBCDField
      FieldName = 'VPARCSEMJ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_VenctoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object Cds_VenctoPARC: TStringField
      FieldName = 'PARC'
      Size = 5
    end
    object Cds_VenctoEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VenctoORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Cds_VenctoPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Cds_VenctoNPED: TIntegerField
      FieldName = 'NPED'
      DisplayFormat = '00000'
    end
    object Cds_VenctoPARTE: TStringField
      FieldName = 'PARTE'
      Size = 3
    end
    object Cds_VenctoNOS: TIntegerField
      FieldName = 'NOS'
      DisplayFormat = '00000'
    end
    object Cds_VenctoDTB: TDateField
      FieldName = 'DTB'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoCCLA: TIntegerField
      FieldName = 'CCLA'
    end
    object Cds_VenctoNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 15
    end
    object Cds_VenctoVALORREAL: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALORREAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoECFLANCADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VenctoMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Cds_VenctoIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Cds_VenctoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_VenctoCODLIVROCAIXA: TIntegerField
      FieldName = 'CODLIVROCAIXA'
    end
    object Cds_VenctoPCOM: TBCDField
      FieldName = 'PCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_VenctoVCOM: TFMTBCDField
      FieldName = 'VCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_VenctoCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Cds_VenctoCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Cds_VenctoBAIXARTODOS: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'BAIXARTODOS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dts_Vencto: TDataSource
    DataSet = Cds_Vencto
    Left = 520
    Top = 318
  end
  object dbx_vprodutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 811
    Top = 318
  end
  object dsp_vprodutos: TDataSetProvider
    DataSet = dbx_vprodutos
    UpdateMode = upWhereKeyOnly
    Left = 819
    Top = 334
  end
  object cds_vprodutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_vprodutos'
    OnCalcFields = Cds_sVendaCalcFields
    Left = 843
    Top = 350
  end
  object dts_vprodutos: TDataSource
    DataSet = cds_vprodutos
    OnDataChange = Dts_sVendaDataChange
    Left = 859
    Top = 366
  end
  object dbx_AliqImpFis: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 811
    Top = 414
  end
  object dsp_AliqImpFis: TDataSetProvider
    DataSet = dbx_AliqImpFis
    UpdateMode = upWhereKeyOnly
    Left = 819
    Top = 430
  end
  object cds_AliqImpFis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_AliqImpFis'
    OnCalcFields = Cds_sVendaCalcFields
    Left = 843
    Top = 446
  end
  object dts_AliqImpFis: TDataSource
    DataSet = cds_AliqImpFis
    OnDataChange = Dts_sVendaDataChange
    Left = 859
    Top = 462
  end
  object dbx_unidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 1019
    Top = 494
  end
  object dsp_unidade: TDataSetProvider
    DataSet = dbx_unidade
    UpdateMode = upWhereKeyOnly
    Left = 1027
    Top = 510
  end
  object cds_unidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_unidade'
    OnCalcFields = Cds_sVendaCalcFields
    Left = 1051
    Top = 526
  end
  object dts_unidade: TDataSource
    DataSet = cds_unidade
    OnDataChange = Dts_sVendaDataChange
    Left = 1067
    Top = 542
  end
  object dbx_vendabb: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vendab')
    SQLConnection = frmDados.Sql_Dados
    Left = 217
    Top = 265
  end
  object dsp_vendabb: TDataSetProvider
    DataSet = dbx_vendabb
    UpdateMode = upWhereKeyOnly
    Left = 233
    Top = 281
  end
  object cds_vendabb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_vendabb'
    Left = 249
    Top = 297
  end
  object dts_vendabb: TDataSource
    DataSet = cds_vendabb
    Left = 265
    Top = 313
  end
  object cds_sita: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_sita'
    Left = 601
    Top = 313
  end
  object dsp_sita: TDataSetProvider
    DataSet = dbx_sita
    UpdateMode = upWhereKeyOnly
    Left = 585
    Top = 297
  end
  object dbx_sita: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vendab')
    SQLConnection = frmDados.Sql_Dados
    Left = 569
    Top = 281
  end
  object dts_sita: TDataSource
    DataSet = cds_sita
    Left = 617
    Top = 329
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 345
    Top = 138
  end
  object dbx_config: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 337
    Top = 210
  end
  object dbx_ipi: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 233
    Top = 130
  end
  object dbx_cofins: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 225
    Top = 202
  end
  object dbx_pis: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 713
    Top = 114
  end
  object dbx_indice: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 585
    Top = 106
  end
  object dbx_sitb: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 233
    Top = 130
  end
  object dbx_cfop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 233
    Top = 130
  end
  object dbx_consulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 401
    Top = 90
  end
  object dbx_natop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from svenda')
    SQLConnection = frmDados.Sql_Dados
    Left = 691
    Top = 422
  end
  object dsp_natop: TDataSetProvider
    DataSet = dbx_natop
    UpdateMode = upWhereKeyOnly
    Left = 699
    Top = 438
  end
  object cds_natop: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_natop'
    OnCalcFields = Cds_sVendaCalcFields
    Left = 723
    Top = 454
  end
  object dts_natop: TDataSource
    DataSet = cds_natop
    OnDataChange = Dts_sVendaDataChange
    Left = 739
    Top = 470
  end
end
