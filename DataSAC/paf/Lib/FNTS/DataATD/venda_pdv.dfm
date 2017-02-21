object frmvenda_pdv: Tfrmvenda_pdv
  Left = 342
  Top = 85
  BorderIcons = [biHelp]
  BorderStyle = bsDialog
  Caption = 'Atendimento'
  ClientHeight = 496
  ClientWidth = 768
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
    Top = 474
    Width = 768
    Height = 2
    Align = alBottom
  end
  object Bevel1: TBevel
    Left = 0
    Top = 431
    Width = 768
    Height = 2
    Align = alBottom
  end
  object Bevel7: TBevel
    Left = 0
    Top = 44
    Width = 768
    Height = 2
    Align = alTop
  end
  object Bevel9: TBevel
    Left = 0
    Top = 103
    Width = 768
    Height = 2
    Align = alTop
  end
  object bver_limite: TBitBtn
    Left = 720
    Top = 896
    Width = 201
    Height = 25
    Caption = 'verifica limite'
    TabOrder = 0
    Visible = False
    OnClick = bver_limiteClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 476
    Width = 768
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Label14: TLabel
      Left = 4
      Top = 2
      Width = 61
      Height = 13
      Caption = 'F5 | Finalizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 132
      Top = 2
      Width = 78
      Height = 13
      Caption = 'F4 | Excluir Item'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 276
      Top = 2
      Width = 128
      Height = 13
      Caption = 'F9 | Cancelar Atendimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LDATA_VENDA: TLabel
      Left = 619
      Top = 2
      Width = 70
      Height = 18
      AutoSize = False
      Caption = '01/01/2007'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LHORA_VENDA: TLabel
      Left = 697
      Top = 2
      Width = 65
      Height = 18
      AutoSize = False
      Caption = '00:00:00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 433
    Width = 768
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Bevel3: TBevel
      Left = 501
      Top = 5
      Width = 50
      Height = 29
    end
    object Label28: TLabel
      Left = 513
      Top = 6
      Width = 25
      Height = 13
      Caption = 'Itens'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object litem: TLabel
      Left = 506
      Top = 20
      Width = 39
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 10
      Top = 14
      Width = 64
      Height = 13
      Caption = 'Retirado por:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 559
      Top = 5
      Width = 193
      Height = 29
    end
    object ltotal: TLabel
      Left = 646
      Top = 11
      Width = 89
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 570
      Top = 14
      Width = 28
      Height = 13
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object ComboBox1: TComboBox
      Left = 81
      Top = 8
      Width = 349
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      Style = csDropDownList
      CharCase = ecUpperCase
      ItemHeight = 13
      TabOrder = 0
      OnExit = ComboBox1Exit
      OnKeyPress = ComboBox1KeyPress
      Items.Strings = (
        'O MESMO')
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 105
    Width = 768
    Height = 326
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'ITEM'#9'4'#9'Item'
      'CODPRODUTO'#9'7'#9'C'#243'digo'
      'PRODUTO'#9'56'#9'Produto'
      'NUMERACAO'#9'3'#9'Un.'
      'QTDE'#9'10'#9'Qtde.'
      'UNITARIO'#9'10'#9'Pre'#231'o'
      'TOTAL'#9'10'#9'Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsvenda_produto
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = clBtnFace
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 768
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 4
    object Label11: TLabel
      Left = 10
      Top = 3
      Width = 50
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 257
      Top = 2
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 425
      Top = 2
      Width = 81
      Height = 13
      Caption = 'Limite dispon'#237'vel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lcliente_limite: TLabel
      Left = 506
      Top = 3
      Width = 88
      Height = 18
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel5: TBevel
      Left = 608
      Top = 4
      Width = 2
      Height = 35
    end
    object Label12: TLabel
      Left = 625
      Top = 2
      Width = 20
      Height = 13
      Caption = 'F10'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 649
      Top = 2
      Width = 109
      Height = 13
      Caption = '| Forma de Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 246
      Top = 4
      Width = 2
      Height = 35
    end
    object bvendedor: TBitBtn
      Left = 68
      Top = 19
      Width = 23
      Height = 20
      TabOrder = 0
      OnClick = bvendedorClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object eVendedor: TEdit
      Left = 9
      Top = 18
      Width = 57
      Height = 21
      TabOrder = 1
      OnEnter = evendedorEnter
      OnExit = evendedorExit
      OnKeyPress = evendedorKeyPress
    end
    object eNomeVendedor: TEdit
      Left = 92
      Top = 18
      Width = 149
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object eCliente: TEdit
      Left = 255
      Top = 18
      Width = 57
      Height = 21
      TabOrder = 3
      OnExit = eclienteExit
      OnKeyPress = eclienteKeyPress
    end
    object eNomeCliente: TEdit
      Left = 338
      Top = 18
      Width = 259
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object bcliente: TBitBtn
      Left = 314
      Top = 19
      Width = 23
      Height = 20
      TabOrder = 5
      OnClick = bclienteClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object comboforma: TComboBox
      Left = 624
      Top = 18
      Width = 136
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 6
      OnEnter = comboformaEnter
      OnKeyPress = comboformaKeyPress
      Items.Strings = (
        'A VISTA'
        'A PRAZO'
        'OR'#199'AMENTO')
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 46
    Width = 768
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 5
    object Bevel8: TBevel
      Left = 275
      Top = 4
      Width = 61
      Height = 18
    end
    object Label19: TLabel
      Left = 10
      Top = 7
      Width = 38
      Height = 13
      Caption = 'Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LCODIGO: TLabel
      Left = 279
      Top = 7
      Width = 51
      Height = 13
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel10: TBevel
      Left = 344
      Top = 5
      Width = 2
      Height = 47
    end
    object Label20: TLabel
      Left = 378
      Top = 7
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 484
      Top = 7
      Width = 44
      Height = 13
      Caption = 'Pre'#231'o-R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 577
      Top = 6
      Width = 67
      Height = 13
      Caption = 'F3 | Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 692
      Top = 7
      Width = 47
      Height = 13
      Caption = 'Total - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 234
      Top = 7
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object eProduto: TEdit
      Left = 8
      Top = 25
      Width = 329
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = EPRODUTOEnter
      OnExit = EPRODUTOExit
      OnKeyPress = EPRODUTOKeyPress
    end
    object RQTDE: TRxCalcEdit
      Left = 352
      Top = 25
      Width = 101
      Height = 27
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnExit = RQTDEExit
      OnKeyPress = RDESCONTOKeyPress
    end
    object RUNITARIO: TRxCalcEdit
      Left = 456
      Top = 25
      Width = 98
      Height = 27
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnEnter = RUNITARIOEnter
      OnExit = RUNITARIOExit
      OnKeyPress = RDESCONTOKeyPress
    end
    object RDESCONTO: TRxCalcEdit
      Left = 560
      Top = 25
      Width = 97
      Height = 27
      AutoSize = False
      DisplayFormat = 'R$ ######0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnExit = RDESCONTOExit
      OnKeyPress = RDESCONTOKeyPress
    end
    object RTOTAL: TRxCalcEdit
      Left = 662
      Top = 25
      Width = 99
      Height = 27
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
      OnKeyPress = RTOTALKeyPress
    end
  end
  object qrvenda_produto: TZQuery
    Connection = frmmodulo.ConexaoLocal
    BeforePost = qrvenda_produtoBeforePost
    SQL.Strings = (
      'select * from CL00001')
    Params = <>
    Left = 280
    Top = 296
    object qrvenda_produtoITEM: TStringField
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'ITEM'
      Size = 3
    end
    object qrvenda_produtoCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produtoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 56
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qrvenda_produtoNUMERACAO: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 3
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrvenda_produtoQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produtoUNITARIO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      DisplayWidth = 10
      FieldName = 'UNITARIO'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produtoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '########0.00'
    end
    object qrvenda_produtoMIX: TFloatField
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'MIX'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrvenda_produtoSERIAL: TStringField
      DisplayWidth = 20
      FieldName = 'SERIAL'
      Visible = False
      Size = 30
    end
    object qrvenda_produtoCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrvenda_produtoCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Visible = False
      Size = 13
    end
    object qrvenda_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrvenda_produtoTERMINAL: TStringField
      FieldName = 'TERMINAL'
      Visible = False
      Size = 4
    end
    object qrvenda_produtoIDGRADE: TIntegerField
      FieldName = 'IDGRADE'
    end
  end
  object dsvenda_produto: TDataSource
    DataSet = qrvenda_produto
    Left = 248
    Top = 296
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao_produto
    OnCalcFields = qrprodutoCalcFields
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 184
    Top = 296
    object qrprodutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoPRECO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECO'
      Calculated = True
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 3
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 296
    object RepetirpesquisadeProdutos1: TMenuItem
      Caption = 'Repetir pesquisa de Produtos'
      Enabled = False
      ShortCut = 117
      OnClick = RepetirpesquisadeProdutos1Click
    end
    object Excluiritem1: TMenuItem
      Caption = 'Excluir item'
      ShortCut = 115
      OnClick = Excluiritem1Click
    end
    object CancelarVenda1: TMenuItem
      Caption = 'Cancelar Venda'
      ShortCut = 120
      OnClick = CancelarVenda1Click
    end
    object FinalizarVenda1: TMenuItem
      Caption = 'Finalizar Venda'
      ShortCut = 116
      OnClick = FinalizarVenda1Click
    end
    object AlternarFormadePagamento1: TMenuItem
      Caption = 'Alternar Forma de Pagamento'
      ShortCut = 121
      OnClick = AlternarFormadePagamento1Click
    end
    object ForarCancelamentodeVenda1: TMenuItem
      Caption = 'For'#231'ar Cancelamento de Venda'
      ShortCut = 32883
      OnClick = CancelarVenda1Click
    end
    object Alterarformadedesconto1: TMenuItem
      Caption = 'Alterar forma de desconto'
      ShortCut = 114
      OnClick = Alterarformadedesconto1Click
    end
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 312
    Top = 296
  end
  object qrpessoas: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000070')
    Params = <>
    Left = 352
    Top = 296
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 112
    Top = 240
  end
  object fxvenda: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39973.462658726900000000
    ReportOptions.LastChange = 39973.478118680560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 424
    Top = 296
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 215.433210000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape5: TfrxShapeView
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape1: TfrxShapeView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo1: TfrxMemoView
          Left = -3.779530000000000000
          Top = 2.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DOCUMENTO AUXILIAR DE VENDA - OR'#195#8225'AMENTO')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#402'O '#195#8240' DOCUMENTO FISCAL - N'#195#402'O '#195#8240' VALIDO COMO RECIBO E COMO '
            'GARANTIA DE MERCADORIA - N'#195#402'O COMPROVA PAGAMENTO')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo3: TfrxMemoView
          Top = 65.031540000000010000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Identifica'#195#167#195#163'o do Estabelecimento Emitente')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 83.149660000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 84.929190000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Denomina'#195#167#195#163'o:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 90.708720000000000000
          Top = 85.149660000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Denomina'#195#167#195#163'o:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 529.134200000000000000
          Top = 85.149660000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 570.709030000000000000
          Top = 85.370130000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '00.000.000/0000-00')
          ParentFont = False
        end
        object Shape6: TfrxShapeView
          Left = 525.354670000000000000
          Top = 120.944960000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape7: TfrxShapeView
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo8: TfrxMemoView
          Top = 102.826840000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Identifica'#195#167#195#163'o do Destinat'#195#161'rio')
          ParentFont = False
        end
        object Shape8: TfrxShapeView
          Top = 120.944960000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 122.724490000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 52.913420000000000000
          Top = 122.944960000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome do Cliente')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 529.134200000000000000
          Top = 122.944960000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 597.165740000000000000
          Top = 123.165430000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '00.000.000/0000-00')
          ParentFont = False
        end
        object Shape9: TfrxShapeView
          Left = 340.157700000000000000
          Top = 139.842610000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape11: TfrxShapeView
          Top = 139.842610000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.622140000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#194#186' do Documento:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 102.047310000000000000
          Top = 141.842610000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '0001000001')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 343.937230000000000000
          Top = 141.842610000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#194#186' do Documento Fiscal:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 476.220780000000000000
          Top = 142.063080000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'XXXXXX')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 18.897650000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Shape10: TfrxShapeView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo13: TfrxMemoView
          Top = 0.779530000000022500
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #195#8240' vedada a autentica'#195#167#195#163'o deste documento')
          ParentFont = False
        end
      end
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 392
    Top = 296
  end
  object qrserial_p: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 320
    Top = 384
  end
  object qrgrade_p: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 216
    Top = 384
  end
  object qrgrade: TZReadOnlyQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 16
    Top = 344
  end
  object qrserial: TZReadOnlyQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 96
    Top = 344
  end
  object qrconsultaproduto: TZReadOnlyQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 169
    Top = 344
  end
  object qrconsulta: TZReadOnlyQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 184
    Top = 224
  end
  object qrquery: TZReadOnlyQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 265
    Top = 152
  end
end
