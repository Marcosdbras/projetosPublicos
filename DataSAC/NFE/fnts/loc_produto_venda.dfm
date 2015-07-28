object frmloc_produto_venda: Tfrmloc_produto_venda
  Left = 220
  Top = 69
  Width = 609
  Height = 409
  Caption = 'Localizar Produto'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 372
    Width = 601
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object FlipPanel1: TFlipPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 39
    Align = alTop
    BorderStyle = bsSingle
    ParentColor = False
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 55
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TEdit
      Left = 72
      Top = 8
      Width = 513
      Height = 21
      TabOrder = 0
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 39
    Width = 601
    Height = 333
    Selected.Strings = (
      'PRODUTO'#9'37'#9'PRODUTO'
      'UNIDADE'#9'2'#9'UN'
      'marca'#9'8'#9'MARCA'
      'fornecedor'#9'13'#9'FORNECEDOR'
      'ESTOQUE'#9'8'#9'ESTOQUE'
      'PRECOVENDA'#9'8'#9'PRE'#199'O')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 14540253
    PaintOptions.ActiveRecordColor = clRed
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 216
    Top = 144
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 328
    Top = 208
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 37
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 8
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
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
      DisplayFormat = '###,###,##0.00'
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
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
  end
end
