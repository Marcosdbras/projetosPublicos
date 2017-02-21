object frmpreco: Tfrmpreco
  Left = 401
  Top = 143
  BorderStyle = bsDialog
  Caption = 'Localizar Produto'
  ClientHeight = 525
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 503
    Width = 722
    Height = 2
    Align = alBottom
  end
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 722
    Height = 2
    Align = alTop
  end
  object Bevel7: TBevel
    Left = 0
    Top = 435
    Width = 722
    Height = 2
    Align = alBottom
  end
  object Panel2: TPanel
    Left = 0
    Top = 505
    Width = 722
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Label11: TLabel
      Left = 666
      Top = 3
      Width = 47
      Height = 13
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 3
      Width = 44
      Height = 13
      Caption = 'Label10'
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 722
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lpesquisa: TLabel
      Left = 8
      Top = 11
      Width = 96
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'F3 | Produto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object loc: TEdit
      Left = 112
      Top = 8
      Width = 587
      Height = 21
      TabOrder = 0
      OnKeyPress = LOCKeyPress
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 39
    Width = 722
    Height = 396
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'CODBARRA'#9'14'#9'Cod.Barra'
      'PRODUTO'#9'41'#9'Produto'
      'marca'#9'19'#9'Marca/Fabricante'
      'UNIDADE'#9'2'#9'Un.'
      'ESTOQUE_ATUAL'#9'10'#9'Estoque')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DSPRODUTO
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = gridEnter
    OnExit = gridExit
    OnKeyPress = gridKeyPress
  end
  object Panel3: TPanel
    Left = 0
    Top = 437
    Width = 722
    Height = 66
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel3: TBevel
      Left = 8
      Top = 18
      Width = 347
      Height = 18
    end
    object Bevel4: TBevel
      Left = 8
      Top = 42
      Width = 347
      Height = 18
    end
    object Label6: TLabel
      Left = 12
      Top = 21
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 12
      Top = 45
      Width = 58
      Height = 13
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 80
      Top = 21
      Width = 259
      Height = 17
      DataField = 'NOME'
      DataSource = DSPRODUTO
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText4: TDBText
      Left = 79
      Top = 44
      Width = 268
      Height = 17
      DataField = 'LOCALICAZAO'
      DataSource = DSPRODUTO
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel5: TBevel
      Left = 372
      Top = 18
      Width = 169
      Height = 42
    end
    object Bevel6: TBevel
      Left = 548
      Top = 18
      Width = 169
      Height = 42
    end
    object DBText1: TDBText
      Left = 396
      Top = 22
      Width = 137
      Height = 35
      Alignment = taRightJustify
      DataField = 'PRECOVENDA'
      DataSource = DSPRODUTO
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 572
      Top = 22
      Width = 137
      Height = 35
      Alignment = taRightJustify
      DataField = 'preco_prazo'
      DataSource = DSPRODUTO
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 415
      Top = 3
      Width = 73
      Height = 13
      Caption = 'Pre'#231'o '#224' Vista'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 599
      Top = 3
      Width = 77
      Height = 13
      Caption = 'Pre'#231'o '#224' Prazo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object DSPRODUTO: TDataSource
    DataSet = qrproduto
    Left = 280
    Top = 224
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrprodutoCalcFields
    SQL.Strings = (
      'select'
      'pro.*,'
      'fornec.nome,'
      'estq.estoque_atual'
      'from'
      'c000025 pro,'
      'c000009 fornec,'
      'c000100 estq'
      'where'
      'pro.codfornecedor = fornec.codigo'
      'and'
      'pro.codigo = estq.codproduto')
    Params = <>
    Left = 248
    Top = 224
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      DisplayLabel = 'Cod.Barra'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 41
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'Marca/Fabricante'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'ESTOQUE_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrprodutoCODGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrprodutoNOTAFISCAL: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOVENDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
    end
    object qrprodutoCODALIQUOTA: TStringField
      DisplayWidth = 3
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 3
    end
    object qrprodutoAPLICACAO: TMemoField
      DisplayWidth = 10
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      DisplayWidth = 50
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      DisplayWidth = 10
      FieldName = 'PESO'
      Visible = False
    end
    object qrprodutoVALIDADE: TStringField
      DisplayWidth = 20
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrprodutoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object qrprodutoUSA_GRADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object qrprodutoCODRECEITA: TStringField
      DisplayWidth = 6
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      DisplayWidth = 80
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      DisplayWidth = 60
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      DisplayWidth = 60
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoNOME: TStringField
      DisplayWidth = 80
      FieldName = 'NOME'
      Visible = False
      Size = 80
    end
    object qrprodutopreco_prazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'preco_prazo'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 248
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
  end
  object qrmarca: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000019')
    Params = <>
    Left = 344
    Top = 104
  end
end
