object frmxloc_notafiscal: Tfrmxloc_notafiscal
  Left = 287
  Top = 312
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = 'NOTA FISCAL DE SA'#205'DA | Localizar'
  ClientHeight = 311
  ClientWidth = 769
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 44
    Width = 769
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 769
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 37
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 704
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 726
      Top = 11
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 714
      Top = 24
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'N'#218'MERO'
      Items.Strings = (
        'N'#218'MERO'
        'CLIENTE'
        'DATA')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 769
    Height = 264
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'NUMERO'#9'6'#9'N'#218'MERO'
      'DATA'#9'9'#9'DATA'
      'CFOP'#9'5'#9'CFOP'
      'CLIENTE'#9'68'#9'CLIENTE'
      'TOTAL_NOTA'#9'14'#9'TOTAL-R$')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 37
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 2
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 0
      Width = 369
      Height = 255
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000061')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 464
    Top = 232
    object queryNUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Size = 6
    end
    object queryDATA: TDateTimeField
      DisplayWidth = 9
      FieldName = 'DATA'
    end
    object queryCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Size = 5
    end
    object queryCLIENTE: TStringField
      DisplayWidth = 68
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object queryTOTAL_NOTA: TFloatField
      DisplayLabel = 'TOTAL-R$'
      DisplayWidth = 14
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object queryCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object queryCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object queryVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      Visible = False
    end
    object queryBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object queryVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object queryBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      Visible = False
    end
    object queryICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
      Visible = False
    end
    object queryFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object querySEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object queryOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Visible = False
    end
    object queryVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      Visible = False
    end
    object queryITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
    end
    object queryDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object queryCODTRANSPORTADOR: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Visible = False
      Size = 6
    end
    object queryFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
      Visible = False
    end
    object queryPLACA: TStringField
      FieldName = 'PLACA'
      Visible = False
      Size = 10
    end
    object queryPLACA_UF: TStringField
      FieldName = 'PLACA_UF'
      Visible = False
      Size = 2
    end
    object queryVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
      Visible = False
    end
    object queryVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
      Visible = False
    end
    object queryVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
      Visible = False
    end
    object queryVOL_NUMERO: TStringField
      FieldName = 'VOL_NUMERO'
      Visible = False
    end
    object queryPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
    end
    object queryPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      Visible = False
    end
    object querySITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object queryMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Visible = False
      Size = 40
    end
    object queryFATURAMENTO_DATA1: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
      Visible = False
    end
    object queryFATURAMENTO_DATA2: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
      Visible = False
    end
    object queryFATURAMENTO_DATA3: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
      Visible = False
    end
    object queryFATURAMENTO_DATA4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
      Visible = False
    end
    object queryFATURAMENTO_NUMERO1: TStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO2: TStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO3: TStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_NUMERO4: TStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Visible = False
      Size = 15
    end
    object queryFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
      Visible = False
    end
    object queryFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
      Visible = False
    end
    object queryFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
      Visible = False
    end
    object queryFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
      Visible = False
    end
    object queryCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 6
    end
    object queryOBS1: TStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object queryOBS2: TStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object queryOBS3: TStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object queryINF1: TStringField
      FieldName = 'INF1'
      Visible = False
      Size = 80
    end
    object queryINF2: TStringField
      FieldName = 'INF2'
      Visible = False
      Size = 80
    end
    object queryINF3: TStringField
      FieldName = 'INF3'
      Visible = False
      Size = 80
    end
    object queryINF4: TStringField
      FieldName = 'INF4'
      Visible = False
      Size = 80
    end
    object queryINF5: TStringField
      FieldName = 'INF5'
      Visible = False
      Size = 80
    end
    object queryDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
      Visible = False
    end
    object queryHORA: TStringField
      FieldName = 'HORA'
      Visible = False
      Size = 5
    end
    object querySITUACAO_A: TStringField
      FieldName = 'SITUACAO_A'
      Visible = False
      Size = 1
    end
    object queryMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Visible = False
      Size = 2
    end
    object querySERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Visible = False
      Size = 3
    end
    object queryVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
      Visible = False
    end
    object queryALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Visible = False
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000007')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 528
    Top = 184
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
