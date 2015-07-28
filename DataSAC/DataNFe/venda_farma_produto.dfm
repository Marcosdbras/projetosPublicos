object frmvenda_farma_produto: Tfrmvenda_farma_produto
  Left = 230
  Top = 176
  BorderStyle = bsToolWindow
  Caption = 'VENDA FARMA | Produtos localizados'
  ClientHeight = 375
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel6: TBevel
    Left = 0
    Top = 310
    Width = 713
    Height = 3
    Align = alBottom
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 0
    Width = 713
    Height = 310
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'PRODUTO'#9'63'#9'Produto'
      'CODIGO'#9'9'#9'C'#243'digo'
      'NOME'#9'22'#9'Laborat'#243'rio'
      'PRECOVENDA'#9'16'#9'Pre'#231'o')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = wwDBGrid2RowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid2DblClick
    OnKeyPress = wwDBGrid2KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 713
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel4: TBevel
      Left = 99
      Top = 33
      Width = 78
      Height = 21
    end
    object Bevel5: TBevel
      Left = 368
      Top = 33
      Width = 137
      Height = 21
    end
    object Bevel3: TBevel
      Left = 99
      Top = 6
      Width = 406
      Height = 21
    end
    object Bevel1: TBevel
      Left = 584
      Top = 14
      Width = 121
      Height = 26
    end
    object Label1: TLabel
      Left = 536
      Top = 20
      Width = 43
      Height = 13
      Caption = 'Estoque:'
    end
    object lestoque: TLabel
      Left = 591
      Top = 19
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 521
      Top = 4
      Width = 2
      Height = 50
    end
    object Label6: TLabel
      Left = 13
      Top = 10
      Width = 71
      Height = 13
      Caption = 'Princ'#237'pio Ativo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 104
      Top = 10
      Width = 396
      Height = 13
      Color = clBtnFace
      DataField = 'AUTO_APLICACAO'
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 37
      Top = 37
      Width = 47
      Height = 13
      Caption = 'Generico?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 104
      Top = 36
      Width = 68
      Height = 15
      Color = clBtnFace
      DataField = 'CODRECEITA'
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 298
      Top = 37
      Width = 65
      Height = 13
      Caption = 'Classifica'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 373
      Top = 37
      Width = 128
      Height = 13
      Color = clBtnFace
      DataField = 'AUTO_COMPLEMENTO'
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object dsproduto: TDataSource
    DataSet = frmvenda_farma.qrproduto
    Left = 24
    Top = 272
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 64
    Top = 272
  end
end
