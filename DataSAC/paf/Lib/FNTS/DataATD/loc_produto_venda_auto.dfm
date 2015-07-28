object frmloc_venda_produto_auto: Tfrmloc_venda_produto_auto
  Left = 228
  Top = 386
  BorderStyle = bsDialog
  Caption = 
    'Pedido de Venda - Localizar Produtos                            ' +
    '                      :: Auto ::'
  ClientHeight = 472
  ClientWidth = 771
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
  object Bevel2: TBevel
    Left = 0
    Top = 434
    Width = 771
    Height = 3
    Align = alBottom
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 437
    Width = 771
    Height = 35
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 0
    UseDockManager = True
    object GroupBox1: TGroupBox
      Left = 8
      Top = 0
      Width = 81
      Height = 31
      Caption = 'Estoque'
      TabOrder = 0
      object lestoque: TLabel
        Left = 2
        Top = 15
        Width = 77
        Height = 14
        Align = alClient
        Alignment = taCenter
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 95
      Top = 0
      Width = 114
      Height = 31
      Caption = 'Pre'#231'o'
      TabOrder = 1
      object DBText2: TDBText
        Left = 2
        Top = 15
        Width = 110
        Height = 14
        Align = alClient
        Alignment = taCenter
        DataField = 'PRECOVENDA'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 288
      Top = 0
      Width = 201
      Height = 31
      Caption = 'Fornecedor'
      TabOrder = 2
      object DBText4: TDBText
        Left = 10
        Top = 15
        Width = 183
        Height = 14
        DataField = 'fornecedor'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 495
      Top = 0
      Width = 170
      Height = 31
      Caption = 'Marca'
      TabOrder = 3
      object DBText5: TDBText
        Left = 8
        Top = 15
        Width = 153
        Height = 14
        DataField = 'marca'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox5: TGroupBox
      Left = 215
      Top = 0
      Width = 66
      Height = 31
      Caption = 'Unidade'
      TabOrder = 4
      object DBText3: TDBText
        Left = 2
        Top = 15
        Width = 62
        Height = 14
        Align = alClient
        Alignment = taCenter
        DataField = 'UNIDADE'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object bfechar: TAdvGlowButton
      Left = 669
      Top = 4
      Width = 97
      Height = 24
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002A04944415478DA
        62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
        06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
        95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
        6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
        93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
        9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
        19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
        3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
        D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
        03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
        0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
        1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
        BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
        409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
        92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
        204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
        7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
        43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
        805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
        FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
        8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
        FBDD0000000049454E44AE426082}
      TabOrder = 5
      Appearance.BorderColor = 12179676
      Appearance.BorderColorHot = clHighlight
      Appearance.BorderColorDown = clHighlight
      Appearance.BorderColorChecked = clBlack
      Appearance.ColorTo = 12179676
      Appearance.ColorChecked = 12179676
      Appearance.ColorCheckedTo = 12179676
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 11899524
      Appearance.ColorDownTo = 11899524
      Appearance.ColorHot = 15717318
      Appearance.ColorHotTo = 15717318
      Appearance.ColorMirror = 12179676
      Appearance.ColorMirrorTo = 12179676
      Appearance.ColorMirrorHot = 15717318
      Appearance.ColorMirrorHotTo = 15717318
      Appearance.ColorMirrorDown = 11899524
      Appearance.ColorMirrorDownTo = 11899524
      Appearance.ColorMirrorChecked = 12179676
      Appearance.ColorMirrorCheckedTo = 12179676
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 75
    Width = 771
    Height = 359
    Selected.Strings = (
      'CODIGO'#9'8'#9'C'#243'digo'
      'CODBARRA'#9'14'#9'Refer'#234'ncia'
      'PRODUTO'#9'49'#9'Produto'
      'AUTO_APLICACAO'#9'31'#9'Aplica'#231#227'o'
      'LOCALICAZAO'#9'16'#9'Localiza'#231#227'o')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = DBGRID1RowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGRID1DblClick
    OnKeyPress = DBGRID1KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 75
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 2
    UseDockManager = True
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 49
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 8
      Top = 30
      Width = 45
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label3: TLabel
      Left = 160
      Top = 30
      Width = 66
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label4: TLabel
      Left = 8
      Top = 54
      Width = 59
      Height = 13
      Caption = 'Aplica'#231#227'o:'
    end
    object Label5: TLabel
      Left = 432
      Top = 54
      Width = 85
      Height = 13
      Caption = 'Complemento:'
    end
    object Label6: TLabel
      Left = 432
      Top = 6
      Width = 69
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label7: TLabel
      Left = 432
      Top = 30
      Width = 39
      Height = 13
      Caption = 'Marca:'
    end
    object Label9: TLabel
      Left = 334
      Top = 7
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
    object eproduto: TEdit
      Left = 72
      Top = 3
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object ecodigo: TEdit
      Left = 72
      Top = 27
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object ereferencia: TEdit
      Left = 232
      Top = 27
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object eaplicacao: TEdit
      Left = 72
      Top = 51
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object ecomplemento: TEdit
      Left = 520
      Top = 51
      Width = 246
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object efornecedor: TwwDBLookupCombo
      Left = 520
      Top = 3
      Width = 246
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'NOME'#9'F')
      LookupField = 'NOME'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = eprodutoEnter
      OnExit = efornecedorExit
      OnKeyPress = efornecedorKeyPress
    end
    object emarca: TwwDBLookupCombo
      Left = 520
      Top = 27
      Width = 246
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'NOME'#9'F')
      LookupField = 'NOME'
      TabOrder = 5
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = eprodutoEnter
      OnExit = emarcaExit
      OnKeyPress = emarcaKeyPress
    end
    object combo_referencia: TComboBox
      Left = 352
      Top = 4
      Width = 73
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
      TabOrder = 7
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 320
    Top = 136
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 432
    Top = 160
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 49
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      DisplayLabel = 'Aplica'#231#227'o'
      DisplayWidth = 31
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoLOCALICAZAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      DisplayWidth = 16
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Visible = False
      Size = 2
    end
    object qrprodutoAPLICACAO: TMemoField
      DisplayWidth = 10
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 8
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 7
      FieldName = 'PRECOVENDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Visible = False
      Size = 50
      Lookup = True
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
    object qrprodutogrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupKeyFields = 'codigo'
      LookupResultField = 'grupo'
      KeyFields = 'CODGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrprodutosubgrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupKeyFields = 'codigo'
      LookupResultField = 'subgrupo'
      KeyFields = 'codsubgrupo'
      Visible = False
      Size = 30
      Lookup = True
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
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 216
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
    object SelecionarProduto1: TMenuItem
      Caption = 'Selecionar Produto'
      ShortCut = 121
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 115
      OnClick = ipodePesquisa1Click
    end
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 160
    Top = 152
  end
end
