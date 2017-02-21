object frmlocproduto: Tfrmlocproduto
  Left = 351
  Top = 366
  BorderStyle = bsDialog
  Caption = 'Localizar Produtos'
  ClientHeight = 403
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnKeyPress = gridKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 706
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 383
    Width = 706
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 706
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
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
    Width = 706
    Height = 344
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'PRODUTO'#9'36'#9'Produto'
      'marca'#9'19'#9'Marca'
      'UNIDADE'#9'3'#9'Un.'
      'ESTOQUE_ATUAL'#9'7'#9'Estoque'
      'PRECOVENDA'#9'9'#9#192' Vista'
      'preco_prazo'#9'10'#9#192' Prazo')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = gridDblClick
    OnKeyPress = gridKeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 385
    Width = 706
    Height = 18
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label8: TLabel
      Left = 4
      Top = 2
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
    object DBText1: TDBText
      Left = 72
      Top = 2
      Width = 241
      Height = 17
      DataField = 'LOCALICAZAO'
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 332
      Top = 2
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
    object DBText2: TDBText
      Left = 400
      Top = 2
      Width = 233
      Height = 17
      DataField = 'fornecedor'
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 280
    Top = 192
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
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrprodutoCalcFields
    SQL.Strings = (
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
    Left = 320
    Top = 192
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 36
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 30
      Lookup = True
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 7
      FieldName = 'ESTOQUE_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = #192' Vista'
      DisplayWidth = 9
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutopreco_prazo: TFloatField
      DisplayLabel = #192' Prazo'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'preco_prazo'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
      Visible = False
    end
    object qrprodutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qrprodutoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object qrprodutofornecedor: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object qrmarca: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000019')
    Params = <>
    Left = 360
    Top = 192
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 392
    Top = 192
  end
end
