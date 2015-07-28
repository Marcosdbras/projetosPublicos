object frmloc_produto_industria: Tfrmloc_produto_industria
  Left = 220
  Top = 69
  Width = 565
  Height = 409
  Caption = 'Localizar Produto Acabado'
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
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 379
    Width = 557
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object FlipPanel1: TFlipPanel
    Left = 0
    Top = 0
    Width = 557
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
    object loc: TwwIncrementalSearch
      Left = 80
      Top = 7
      Width = 465
      Height = 21
      DataSource = dsindustria
      SearchField = 'PRODUTO'
      CharCase = ecUpperCase
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
    Width = 557
    Height = 340
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'6'#9'C'#211'DIGO'#9#9
      'PRODUTO'#9'51'#9'PRODUTO'#9#9
      'UNIDADE_PRODUTO'#9'2'#9'UN'#9#9
      'PRECOCUSTO'#9'12'#9'CUSTO'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsindustria
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
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 168
    object CadastrarNovoFornecedor1: TMenuItem
      Caption = 'Cadastrar Novo Produto'
      ShortCut = 113
    end
  end
  object dsindustria: TDataSource
    DataSet = qrindustria
    Left = 216
    Top = 168
  end
  object qrindustria: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select codigo,produto,unidade_produto,precocusto from c000079'
      'GROUP BY'
      'codigo,produto,unidade_produto,precocusto'
      'ORDER BY'
      'produto')
    Params = <>
    Left = 245
    Top = 165
    object qrindustriaCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrindustriaPRODUTO: TStringField
      DisplayWidth = 51
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 50
    end
    object qrindustriaUNIDADE_PRODUTO: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE_PRODUTO'
      Size = 2
    end
    object qrindustriaPRECOCUSTO: TFloatField
      DisplayLabel = 'CUSTO'
      DisplayWidth = 12
      FieldName = 'PRECOCUSTO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
end
