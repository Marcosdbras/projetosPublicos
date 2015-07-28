object frmproduto_exportar: Tfrmproduto_exportar
  Left = 395
  Top = 247
  Width = 407
  Height = 327
  Caption = 'Produtos - Exportar para arquivo'
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
    Top = 249
    Width = 399
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 252
    Width = 399
    Height = 41
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 96
      Top = 8
      Width = 99
      Height = 25
      Caption = 'Processar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFF27A8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29ACDE27A9DC25A6DBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2BAFDF2DAEDF2BABDE25A6DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2BAFDF4FBCE74CBAE626
        A7DC24A4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF2BAFDF84D3F255BDE72EAADE24A4DBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2DB2E070CCEE83
        D2F27ECEF14AB6E424A5DB22A2DAFFFFFFFFFFFFFFFFFFFFFFFF38C2E736C0E6
        35BDE533BBE431B8E32FB6E286D7F32FB6EB4ABCEC80CEF151B9E62CA8DD23A2
        DAFFFFFFFFFFFFFFFFFF3AC4E875DAF293E6F891E3F78DE0F68ADCF58ADBF588
        D7F484D3F27FCFF17CCCF07AC9EF48B4E323A3DA209ED8FFFFFF3BC7E94FCDEC
        98E9F94AD5F345CFF140CAF038C2EE89D9F42EB4E12CB1E02BAEDF29ACDE27A9
        DC25A6DB23A3DAFFFFFFFFFFFF3BC7E980E1F58EE6F843D2F33FCDF139C7EF8C
        DCF558C6EA2EB4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DC9EA
        5BD4EF99EAF947D6F442D0F23DCBF06ED5F37FD7F34AC0E72FB4E1FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DCAEA93E9F972E1F745D4F341CEF23C
        C9F08ADCF570D0EF3DBBE42FB5E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        3FCCEB64D9F19AEBFA48D8F444D3F33FCEF13AC8F08CDCF562CBED31B8E3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FCCEB9AEDFA99EBF997E8F994
        E5F891E2F78EDFF68BDBF556C7EB31B8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF40CEEC3FCCEB3ECBEA3CC9E93BC7E93AC4E838C2E736C0E635BDE533BB
        E431B8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn2: TBitBtn
      Left = 200
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9BCF0676DDF4048D643
        4BD74048D7353ED55960DCAFB2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBABDF05760DF8A96F599A6FB93A0F8909EF6929FF67F8BED404AD9AEB1
        EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEF15F67E0919DF6657CFE3D58FE3B
        57FE3752FD2F4BF85269F6808CF03F48D9ABAFEDFFFFFFFFFFFFFFFFFFC0C3F1
        6970E298A5F76F87FE4260FE3E5CFE3956FE3552FE304DFE2B49FE556CFA828F
        F3404AD9ADB0EEFFFFFFFFFFFF8186E59EACF87891FE4E6DFE6D86FE8EA0FE40
        5EFE3B5AFE8195FE647AFE2C4BFE566DFE828FF5585FDCFFFFFFFFFFFF6B70DF
        AFBFFD5D7EFE5675FE95A8FEFEFEFEAAB8FE9AABFEFEFEFE9AAAFE3352FE3351
        FE96A5FD3840D5FFFFFFFFFFFF767BE1B0BFFC6788FE5D7EFE5D7EFEAEBEFEFE
        FEFEFEFEFEB8C4FE4867FE3A5AFE3C5BFE96A4FB444DD8FFFFFFFFFFFF7A7FE3
        B3C4FC6E91FE6387FE5F83FEA7B9FEFEFEFEFEFEFEAFBFFE4A6BFE4162FE4363
        FE99A8FB4950D9FFFFFFFFFFFF797EE3BACBFD7196FE6A8FFE9EB5FEFEFEFEC1
        CEFEB4C4FEFEFEFE92A8FE486AFE4668FE9FB0FD464ED8FFFFFFFFFFFF9499E8
        AFC0F893B2FE7098FE8FADFEB0C4FE678DFE5E84FE9BB1FE7694FE4F73FE718D
        FE92A2F66D73E0FFFFFFFFFFFFCDCFF4868FE7B0C1F895B6FE739CFE6F98FE6A
        92FE658DFE6188FE5B82FE7B99FE99A9F76069E0BCBEF1FFFFFFFFFFFFFFFFFF
        CECFF4878FE7B1C2F896B8FE78A2FE76A0FE729BFE6B94FE84A3FEA0B0F76871
        E2BEC0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD1F58891E8B1C3F8BDD2FDB9
        CDFCB7CAFCB7CAFDA6B7F7727BE4C2C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCFD1F5989DE97E83E38084E47C82E3747AE18C91E6C7CAF3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 184
    Width = 377
    Height = 57
    Caption = 'Progresso'
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Item:'
    end
    object litem: TLabel
      Left = 48
      Top = 16
      Width = 4
      Height = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object barra: TProgressBar
      Left = 3
      Top = 36
      Width = 370
      Height = 17
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 128
    Width = 377
    Height = 50
    Caption = 'Pasta de Destino'
    TabOrder = 2
    object edestino: TDirectoryEdit
      Left = 11
      Top = 17
      Width = 358
      Height = 21
      NumGlyphs = 1
      TabOrder = 0
      Text = 'C:\'
    end
  end
  object pg_topo: TPageView
    Left = 0
    Top = 0
    Width = 399
    Height = 126
    ActivePage = PageSheet7
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alTop
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 16
    TabOrder = 3
    TabStyle = tsWhidbey
    TopIndent = 3
    object PageSheet7: TPageSheet
      Left = 0
      Top = 20
      Width = 399
      Height = 106
      Caption = 'Geral'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 377
        Height = 89
        Caption = 'Tabelas'
        TabOrder = 0
        object rproduto: TCheckBox
          Left = 8
          Top = 16
          Width = 81
          Height = 17
          Caption = 'Produtos'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object rgrupo: TCheckBox
          Left = 176
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Grupos'
          TabOrder = 5
        end
        object rsubgrupo: TCheckBox
          Left = 176
          Top = 32
          Width = 145
          Height = 17
          Caption = 'Subgrupos/Grade'
          TabOrder = 6
        end
        object rmarca: TCheckBox
          Left = 176
          Top = 48
          Width = 193
          Height = 17
          Caption = 'Marca/Fabricante/Laborat'#243'rio'
          TabOrder = 7
        end
        object rfornecedor: TCheckBox
          Left = 176
          Top = 64
          Width = 193
          Height = 17
          Caption = 'Fornecedores'
          TabOrder = 8
        end
        object rserial: TCheckBox
          Left = 8
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Seriais'
          TabOrder = 1
        end
        object rprodutograde: TCheckBox
          Left = 8
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Grade'
          TabOrder = 2
        end
        object rcodbarras: TCheckBox
          Left = 8
          Top = 64
          Width = 129
          Height = 17
          Caption = 'C'#243'digo de Barras'
          TabOrder = 3
        end
        object rcliente: TCheckBox
          Left = 98
          Top = 16
          Width = 68
          Height = 17
          Caption = 'Clientes'
          TabOrder = 4
        end
      end
    end
    object PageSheet10: TPageSheet
      Left = 0
      Top = 20
      Width = 399
      Height = 106
      Caption = 'Produtos/Clientes Movimentados no Per'#237'odo'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Label21: TLabel
        Left = 11
        Top = 13
        Width = 97
        Height = 13
        AutoSize = False
        Caption = 'Data Inicial:'
      end
      object Label2: TLabel
        Left = 121
        Top = 13
        Width = 97
        Height = 13
        AutoSize = False
        Caption = 'Data Final:'
      end
      object DateEdit1: TDateEdit
        Left = 9
        Top = 29
        Width = 103
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
        OnKeyPress = DateEdit1KeyPress
      end
      object DateEdit2: TDateEdit
        Left = 119
        Top = 29
        Width = 103
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnExit = DateEdit2Exit
        OnKeyPress = DateEdit1KeyPress
      end
    end
  end
  object bprodutos: TBitBtn
    Left = 136
    Top = 432
    Width = 75
    Height = 25
    Caption = 'bprodutos'
    TabOrder = 4
    Visible = False
    OnClick = bprodutosClick
  end
  object bclientes: TBitBtn
    Left = 136
    Top = 464
    Width = 75
    Height = 25
    Caption = 'clientes'
    TabOrder = 5
    Visible = False
    OnClick = bclientesClick
  end
  object Memo1: TMemo
    Left = 672
    Top = 256
    Width = 32767
    Height = 337
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -1
    Font.Name = 'Lucida Console'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 6
    Visible = False
  end
  object Memo2: TMemo
    Left = 672
    Top = 600
    Width = 32767
    Height = 337
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -1
    Font.Name = 'Lucida Console'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 7
    Visible = False
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 240
    Top = 32
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 296
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 312
    Top = 116
    object retornar1: TMenuItem
      Caption = 'retornar'
      ShortCut = 27
      OnClick = retornar1Click
    end
  end
end
