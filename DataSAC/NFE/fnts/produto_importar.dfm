object frmproduto_importar: Tfrmproduto_importar
  Left = 593
  Top = 340
  Width = 413
  Height = 309
  Caption = 'Produtos - Atualiza'#231#227'o por meio de arquivo'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 231
    Width = 405
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 234
    Width = 405
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 377
    Height = 89
    Caption = 'Tabelas - Novos cadastros'
    TabOrder = 1
    object rproduto: TCheckBox
      Left = 8
      Top = 16
      Width = 73
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
      Width = 145
      Height = 17
      Caption = 'Seriais'
      TabOrder = 1
    end
    object rprodutograde: TCheckBox
      Left = 8
      Top = 48
      Width = 105
      Height = 17
      Caption = 'Grades'
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
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 168
    Width = 377
    Height = 57
    Caption = 'Progresso'
    TabOrder = 2
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
    Top = 104
    Width = 377
    Height = 57
    Caption = 'Pasta de Origem'
    TabOrder = 3
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
  object Memo1: TMemo
    Left = 25
    Top = 672
    Width = 4727
    Height = 249
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
    Left = 256
    Top = 16
  end
end
