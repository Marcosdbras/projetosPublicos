object frmxloc_produto: Tfrmxloc_produto
  Left = 322
  Top = 283
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = ' PRODUTO | Localizar'
  ClientHeight = 473
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel8: TBevel
    Left = 0
    Top = 44
    Width = 774
    Height = 3
    Align = alTop
  end
  object Bevel6: TBevel
    Left = 0
    Top = 413
    Width = 774
    Height = 3
    Align = alBottom
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label12: TLabel
      Left = 638
      Top = 21
      Width = 58
      Height = 12
      Caption = '* | TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
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
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'C'#211'D.BARRAS'
        'FORNECEDOR'
        'MARCA')
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
    Width = 774
    Height = 366
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'#9#9
      'CODBARRA'#9'14'#9'C'#243'digo de Barras'#9#9
      'PRODUTO'#9'47'#9'Produto'#9#9
      'UNIDADE'#9'2'#9'Un.'#9#9
      'ESTOQUE_ATUAL'#9'12'#9'Estoque'#9#9
      'PRECOVENDA'#9'8'#9'Pre'#231'o-R$'#9#9
      'FORNECEDOR'#9'28'#9'Fornecedor'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 416
    Width = 774
    Height = 57
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 2
    UseDockManager = True
    object Bevel3: TBevel
      Left = 64
      Top = 7
      Width = 341
      Height = 18
    end
    object Label8: TLabel
      Left = 8
      Top = 10
      Width = 55
      Height = 13
      Caption = 'Fabricante:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 67
      Top = 10
      Width = 326
      Height = 14
      DataField = 'MARCA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 413
      Top = 4
      Width = 2
      Height = 49
    end
    object Bevel9: TBevel
      Left = 541
      Top = 4
      Width = 2
      Height = 49
    end
    object Label11: TLabel
      Left = 422
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object combo_situacao: TComboBox
      Left = 422
      Top = 20
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Somente Ativos'
      OnChange = combo_situacaoChange
      Items.Strings = (
        'Somente Ativos'
        'Somente Inativos'
        'Todos')
    end
  end
  object PPROCURA: TFlatPanel
    Left = 304
    Top = 77
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    UseDockManager = True
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 1
      Width = 369
      Height = 255
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
    SQL.Strings = (
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
    Left = 464
    Top = 232
    object queryCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryCODBARRA: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 47
      FieldName = 'PRODUTO'
      Size = 60
    end
    object queryUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object queryESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 12
      FieldName = 'ESTOQUE_ATUAL'
      DisplayFormat = '###,###,##0.000'
    end
    object queryPRECOVENDA: TFloatField
      DisplayLabel = 'Pre'#231'o-R$'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object queryFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object queryESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object queryDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object queryCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object queryCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object queryDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object queryNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object queryPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object queryDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object queryESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
    end
    object queryCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 3
    end
    object queryAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object queryLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object queryPESO: TFloatField
      FieldName = 'PESO'
      Visible = False
    end
    object queryVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object queryCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object queryUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object queryUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object queryUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object queryCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object queryFOTO: TStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object queryNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object queryPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object queryCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object queryAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object queryAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object queryDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object queryDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object queryPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object queryDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object queryFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object queryMARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Visible = False
      Size = 40
      Lookup = True
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 560
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
