object frmproduto_saida: Tfrmproduto_saida
  Left = 107
  Top = 145
  Width = 774
  Height = 484
  Caption = 'Nota Fiscal de Devolu'#231#227'o/Outras Sa'#237'das'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel99: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 415
    Align = alClient
    TabOrder = 2
    object pficha: TFlatPanel
      Left = 0
      Top = 0
      Width = 766
      Height = 405
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 0
      UseDockManager = True
      object Label1: TLabel
        Left = 6
        Top = 12
        Width = 51
        Height = 12
        Caption = 'C'#211'DIGO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 174
        Top = 12
        Width = 52
        Height = 12
        Caption = 'N'#218'MERO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 624
        Top = 12
        Width = 35
        Height = 12
        Caption = 'DATA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 294
        Top = 12
        Width = 34
        Height = 12
        Caption = 'CFOP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 44
        Width = 80
        Height = 12
        Caption = 'FORNECEDOR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 12
        Top = 325
        Width = 57
        Height = 24
        Caption = 'BASE DE'#13#10'C'#193'LCULO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 152
        Top = 325
        Width = 53
        Height = 24
        Caption = 'VALOR'#13#10'DO ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 292
        Top = 325
        Width = 43
        Height = 24
        Caption = 'BASE'#13#10'SUBST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 424
        Top = 325
        Width = 43
        Height = 24
        Caption = 'ICMS'#13#10'SUBST.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 12
        Top = 365
        Width = 38
        Height = 12
        Caption = 'FRETE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 152
        Top = 365
        Width = 50
        Height = 12
        Caption = 'SEGURO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 292
        Top = 357
        Width = 46
        Height = 24
        Caption = 'OUTRAS'#13#10'DESP.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 424
        Top = 357
        Width = 47
        Height = 24
        Caption = 'VALOR'#13#10'TOT.IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 557
        Top = 333
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOTAL PRODUTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 557
        Top = 357
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DESCONTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 557
        Top = 381
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOTAL DA NOTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 96
        Top = 8
        Width = 73
        Height = 21
        DataField = 'CODIGO'
        DataSource = dssaida_produto2
        TabOrder = 0
        OnChange = DBEdit1Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object edata_cadastro: TDBDateEdit
        Left = 664
        Top = 8
        Width = 97
        Height = 21
        DataField = 'DATA'
        DataSource = dssaida_produto2
        GlyphKind = gkCustom
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
          8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
          F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
          D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
          BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
          F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
          8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
          CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
          F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
          95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
          E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
          F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
          A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
          FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
          FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
          B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
          FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
          FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
          F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
          F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
          7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ButtonWidth = 18
        NumGlyphs = 1
        TabOrder = 3
        OnEnter = edata_cadastroEnter
        OnExit = edata_cadastroExit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 232
        Top = 8
        Width = 57
        Height = 21
        DataField = 'NUMERO'
        DataSource = dssaida_produto2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object ecfop: TDBEdit
        Left = 336
        Top = 8
        Width = 47
        Height = 21
        DataField = 'CFOP'
        DataSource = dssaida_produto2
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = ecfopExit
        OnKeyPress = DBEdit1KeyPress
      end
      object bloccfop: TBitBtn
        Left = 384
        Top = 8
        Width = 25
        Height = 21
        TabOrder = 5
        OnClick = bloccfopClick
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
      object DBEdit21: TDBEdit
        Left = 409
        Top = 8
        Width = 209
        Height = 21
        Color = clBtnFace
        DataField = 'natureza'
        DataSource = dssaida_produto2
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object efornecedor: TDBEdit
        Left = 96
        Top = 40
        Width = 64
        Height = 21
        DataField = 'CODFORNECEDOR'
        DataSource = dssaida_produto2
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = efornecedorExit
        OnKeyPress = DBEdit1KeyPress
      end
      object blocfornecedor: TBitBtn
        Left = 160
        Top = 40
        Width = 25
        Height = 21
        TabOrder = 7
        OnClick = blocfornecedorClick
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
      object DBEdit23: TDBEdit
        Left = 185
        Top = 40
        Width = 432
        Height = 21
        Color = clBtnFace
        DataField = 'fornecedor'
        DataSource = dssaida_produto2
        TabOrder = 8
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 72
        Top = 328
        Width = 77
        Height = 21
        DataField = 'BASE_CALCULO'
        DataSource = dssaida_produto2
        TabOrder = 9
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 212
        Top = 328
        Width = 77
        Height = 21
        DataField = 'VALOR_ICMS'
        DataSource = dssaida_produto2
        TabOrder = 10
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 344
        Top = 328
        Width = 77
        Height = 21
        DataField = 'BASE_SUB'
        DataSource = dssaida_produto2
        TabOrder = 11
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 476
        Top = 328
        Width = 77
        Height = 21
        DataField = 'ICMS_SUB'
        DataSource = dssaida_produto2
        TabOrder = 12
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit7: TDBEdit
        Left = 72
        Top = 360
        Width = 77
        Height = 21
        DataField = 'FRETE'
        DataSource = dssaida_produto2
        TabOrder = 13
        OnEnter = DBEdit1Enter
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 212
        Top = 360
        Width = 77
        Height = 21
        DataField = 'SEGURO'
        DataSource = dssaida_produto2
        TabOrder = 14
        OnEnter = DBEdit1Enter
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 344
        Top = 360
        Width = 77
        Height = 21
        DataField = 'OUTRAS_DESPESAS'
        DataSource = dssaida_produto2
        TabOrder = 15
        OnEnter = DBEdit1Enter
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 476
        Top = 360
        Width = 77
        Height = 21
        DataField = 'VALOR_TOTAL_IPI'
        DataSource = dssaida_produto2
        TabOrder = 16
        OnEnter = DBEdit1Enter
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 677
        Top = 328
        Width = 85
        Height = 21
        DataField = 'VALOR_PRODUTOS'
        DataSource = dssaida_produto2
        Enabled = False
        TabOrder = 18
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 677
        Top = 352
        Width = 85
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dssaida_produto2
        TabOrder = 17
        OnEnter = DBEdit1Enter
        OnExit = DBEdit12Exit
        OnKeyPress = DBEdit12KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 677
        Top = 376
        Width = 85
        Height = 21
        DataField = 'TOTAL_NOTA'
        DataSource = dssaida_produto2
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
    end
    object panel22: TPanel
      Left = 1
      Top = 73
      Width = 764
      Height = 252
      BevelOuter = bvNone
      TabOrder = 1
      object ViewSplit1: TViewSplit
        Left = 0
        Top = 244
        Width = 764
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 764
        Height = 244
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alTop
        BackgroundColor = clSilver
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab, pgCloseButton, pgTopBorder]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 0
        TabStyle = tsFlat
        TopIndent = 3
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 764
          Height = 224
          Caption = 'Itens da Nota'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 764
            Height = 224
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Panel3: TPanel
              Left = 0
              Top = 191
              Width = 764
              Height = 33
              BevelOuter = bvNone
              TabOrder = 3
              object bincluir_item: TBitBtn
                Left = 11
                Top = 4
                Width = 85
                Height = 25
                Caption = 'Incluir'
                TabOrder = 0
                OnClick = bincluir_itemClick
                Glyph.Data = {
                  DA050000424DDA05000000000000360000002800000019000000130000000100
                  180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
                  398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
                  45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
                  DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
                  E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
                  FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
                  441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
                  ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
                  5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
                  6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
                  723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
                  7B411F7F4B286F3C256537266035275E35275E3527613626EBDFDD8F4539FFFF
                  FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
                  A25B2D9C552B954F27B3825CF0EDEAFFFFFFF7F5F4BCA48F6537266136255E35
                  26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
                  D1975CFFFFFFEEE8E1B06C39AC6737A86232A6602EEAE5DEF8F6F5A36C43CFBC
                  A8FFFFFF9F7C5E663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
                  ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
                  35A66031A25C2D975129BA8F6EFFFFFFC1A7916F3C236A3A25693925EBDFDD8F
                  4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
                  FFFFFFFFFFFFFFE6C29BB6733CE3CAADECE7E0D8AF8DE7E0D8FFFFFFAC82607B
                  4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
                  3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EE6D2B9FFFFFFDF
                  C6A9DFCDB9C4966F904B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
                  FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
                  B37CC38241E6C096FFFFFFDEB58ED5A77DD0A37CA66637904B228A471E86451C
                  ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DFAC75FFFFFFFFFFFFFFFFFFFFFFFF
                  BC835398512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
                  8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EC07F40
                  C38343BE7D42B97840B5723EA862309F582D9B5429985128EBE0DE8F4539FFFF
                  FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
                  C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
                  2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
                  CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
                  3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
                  EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
                  DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
                  4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
                  398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
                  45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
              end
              object balterar_item: TBitBtn
                Left = 99
                Top = 4
                Width = 85
                Height = 25
                Caption = 'Alterar'
                TabOrder = 1
                OnClick = balterar_itemClick
                Glyph.Data = {
                  DA050000424DDA05000000000000360000002800000019000000130000000100
                  180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
                  398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
                  45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
                  DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
                  E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
                  FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
                  441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
                  ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
                  5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
                  6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
                  723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
                  794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
                  FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
                  A25B2D9C552B954F278E4923DBD0C3FFFFFF8653306B3A256437266136255E35
                  26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
                  D1975CFFFFFFEEE8E1B06C39AC6737A86232A25B2D9B5429CDA687FFFFFFA477
                  53753E236D3B25663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
                  ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
                  35A66031BC8353FFFFFFCAAB9082431D783F226F3C236A3A25693925EBDFDD8F
                  4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
                  FFFFFFFFFFFFFFE6C29BB6733CAF6B39AB6633E4D9CBF6F4F295522983441C7B
                  4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
                  3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39BF
                  804AFEFEFDD1AB8A8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
                  FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
                  B37CC58544E6BE94E2BB92E0B993EEEAE4FFFFFFBC8960904B228A471E86451C
                  ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFCB8C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  D8B69898512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
                  8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803FC68647
                  C38343BE7D42B97840B5723EAB67339F582D9B5429985128EBE0DE8F4539FFFF
                  FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
                  C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
                  2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
                  CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
                  3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
                  EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
                  DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
                  4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
                  398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
                  45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
              end
              object bexcluir_item: TBitBtn
                Left = 185
                Top = 4
                Width = 95
                Height = 25
                Caption = 'Excluir'
                TabOrder = 2
                OnClick = bexcluir_itemClick
                Glyph.Data = {
                  DA050000424DDA05000000000000360000002800000019000000130000000100
                  180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFF1838B21838B21838B21838B21838B21838B21838B21838
                  B21838B21838B21838B21838B21838B21838B21838B21838B21838B21838B218
                  38B21838B21838B21838B21838B2FFFFFF00FFFFFF1838B2F1F1F9EFF0F8EEEF
                  F8EFF0F8EFF0F8EFF0F8F1F1F9EFF0F8EEEFF8EFF0F8F1F1F9F1F1F9EFF0F8EE
                  EFF8EEEFF8EFF0F8EFF0F8EFF0F8EFF0F8EFF0F8EFF0F81838B2FFFFFF00FFFF
                  FF1839B3F1F1F95366EA5163E34D5ED94959CC4554C0414FB33D4AA73C479C3A
                  439137408A353D82343B7A333A7531366E30356B31366930356830356A31376F
                  EFF0F81839B3FFFFFF00FFFFFF1838B2EFF0F85568ED5466E85062E14C5DD648
                  58C94452BC404EB03E4AA53C469839428E363F86343B7D333A7532376E31366A
                  2F34672F33642F346631366AEEEFF81838B2FFFFFF00FFFFFF1838B2EFF0F85B
                  6EF1586BEF5668EA5264E44E5FDA4A5ACE4554C14350B53F4CA93C479C394291
                  374087353D7E333A7631366D2F34682F34662F3466303568EDEEF71838B2FFFF
                  FF00FFFFFF1839B3F1F1F96173F39DA6F8FFFFFFFFFFFFF4F5FABBBFF15061DB
                  848CDCFFFFFFFFFFFFFFFFFFFFFFFF868AB8B9B9D1FFFFFFFFFFFFFFFFFFD2D1
                  DC31366AEEEFF81839B3FFFFFF00FFFFFF1838B2EFF0F86477F4A0A8F8FFFFFF
                  C8CCFAD2D4F8FFFFFF9DA5F38A94ECFFFFFFCACDEEA2A7DE9FA2D56269B0BABC
                  D7FFFFFFB7B7CEAFAFC69192B031366EEEEFF81838B2FFFFFF00FFFFFF1839B3
                  F1F1F96B7CF5A5ADF8FFFFFF98A2F97383F6FFFFFFC7CBFA929CF7FFFFFFACB2
                  F1727DE26C76D44754B8BDBFDFFFFFFF454C92353C7E333A78323977EDEEF718
                  39B3FFFFFF00FFFFFF1838B2F1F1F97181F6A7AFF8FFFFFF9DA6F87786F6FFFF
                  FFD5D7F899A3F9FFFFFFFFFFFFFFFFFFFFFFFF606DD6BFC2E6FFFFFF49529F38
                  418C353D83363E81EEEFF81838B2FFFFFF00FFFFFF1838B2F1F1F97484F6AAB2
                  F8FFFFFFA2AAF899A3F9FFFFFFC7CBFA9DA6F8FFFFFFAEB5F97584F66F7EF153
                  64E2C1C4EDFFFFFF4E58AF3D479B3A439138418DEFF0F81838B2FFFFFF00FFFF
                  FF1839B3F1F1F97988F6ABB3F8FFFFFFF6F7FBFEFEFEFEFEFE959FF8A1A9F8FF
                  FFFFEEEFF8E0E2F7DFE1F6818CEFC3C6F1FFFFFF515DC03F4CAB3E49A03B469A
                  EFF0F81839B3FFFFFF00FFFFFF1838B2EFF0F87A89F699A3F9C7CBFAC7CBFABF
                  C3FB97A1F87887F6909BF7C2C6FAC0C4FBBEC2FABAC0FA7986F2969FEEB6BAED
                  505ECB4351BB424FB03E4BA8EEEFF81838B2FFFFFF00FFFFFF1839B3F1F1F97B
                  8AF67E8CF67E8CF67D8BF67B8AF67988F67685F67484F67080F56B7CF56477F4
                  6173F35C6FF15668EA5062E14B5CD44857C74553BD4350B6EEEFF81839B3FFFF
                  FF00FFFFFF1838B2EFF0F87D8BF67D8BF67D8BF67B8AF67988F67786F67484F6
                  7181F66F80F56A7BF46477F46274F35D70F1576AEE5366E84F61DF4B5CD44858
                  CB4756C4EFF0F81838B2FFFFFF00FFFFFF1838B2EFF0F87D8BF67E8CF67D8BF6
                  7B8AF67988F67584F67383F67181F66E7FF56A7BF46678F46275F35F72F25B6E
                  F05769EB5365E65061DE4C5DD74C5CD1EEEFF81838B2FFFFFF00FFFFFF1838B2
                  EEEFF8EEEFF8EDEEF7EEEFF8EEEFF8EEEFF8EEEFF8EEEFF8EDEEF7EEEFF8EEEF
                  F8EEEFF8EEEFF8EDEEF7EDEEF7EEEFF8EEEFF8EDEEF7EEEFF8EDEEF7EDEEF718
                  38B2FFFFFF00FFFFFF1838B21838B21838B21838B21838B21838B21838B21838
                  B21838B21838B21838B21838B21838B21838B21838B21838B21838B21838B218
                  38B21838B21838B21838B21838B2FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
              end
              object BitBtn6: TBitBtn
                Left = 283
                Top = 4
                Width = 101
                Height = 25
                Caption = 'Finalizar'
                TabOrder = 3
                OnClick = BitBtn6Click
                Glyph.Data = {
                  DA050000424DDA05000000000000360000002800000019000000130000000100
                  180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
                  398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
                  45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
                  DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
                  E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
                  FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
                  441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
                  ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
                  5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
                  6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
                  723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
                  794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
                  FF00FFFFFF8F4539ECE3E0B9763CD59D65FFFFFFE4C9AAAF6A37AC6734A66030
                  A25B2D9C552BBE8F68FFFFFFB790707E421D743D246B3A259F8065FFFFFFA185
                  6D623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3ED9A167FFFFFF
                  E7CBAAB6743CB4703BB06C39AC6737A86232C8966AFFFFFFC094718B481E8042
                  1D753E23A48365FFFFFFA3876C633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
                  ECE3E0C17F3DDDA668FFFFFFEAD7C2D79F62D69D60BC7B40B7743CB36F3BD19E
                  6DFFFFFFCA9B729751298D492282431DAB8667FFFFFFA7886D693925EBDFDD8F
                  4539FFFFFF00FFFFFF8F4539ECE3E0C6853DE0AA67FFFFFFFFFFFFFFFFFFFFFF
                  FFCF924DCB8D4AD29759D9A570FFFFFFD2A174A25B2EA76838AB744BB28867FF
                  FFFFAC8B6D723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CE1AC
                  68FFFFFFEAD1AECD8D3CCD8D3CC8873DDBA25AFFFFFFF0E8E0FFFFFFD7A675A9
                  6433BC8250FFFFFFEBE7E1FFFFFFB38D6E7C4020ECE2DF8F4539FFFFFF00FFFF
                  FF8F4539ECE3E0CB8B3BE2AE68FFFFFFF7F5F1ECE1CFECE0CEE8BD86C8883EDF
                  A969F2ECE7FFFFFFDAA876AF6A37A86231C28C60EFEBE6FFFFFFBA917086451C
                  ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38DEA34EEBCA9DEBCA9DEB
                  CA9DEBCA9CE3AF6CC9893DC6853ED49A58E8D1B6D2995FB26F3BAC6736A55F2F
                  B77B49DCCAB5B57F578F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
                  8F36D09037D09037D09037CF8F37CC8C3AC9893CC7873EC5843EC17F3EBC7A3E
                  B9773CB5723CAF6B38A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
                  FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
                  C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
                  2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
                  CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
                  3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
                  EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
                  DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
                  4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
                  398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
                  45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
              end
            end
            object FlatPanel3: TFlatPanel
              Left = 623
              Top = 196
              Width = 137
              Height = 24
              ParentColor = True
              TabOrder = 0
              UseDockManager = True
              object Label17: TLabel
                Left = 7
                Top = 5
                Width = 87
                Height = 13
                Caption = 'Qtde. de Itens:'
              end
              object DBText1: TDBText
                Left = 101
                Top = 5
                Width = 29
                Height = 13
                Alignment = taCenter
                DataField = 'ITENS'
                DataSource = dssaida_produto2
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
            object grid1: TwwDBGrid
              Left = 0
              Top = 0
              Width = 764
              Height = 191
              DittoAttributes.ShortCutDittoField = 0
              DittoAttributes.ShortCutDittoRecord = 0
              DittoAttributes.Options = []
              DisableThemesInTitle = False
              ControlType.Strings = (
                'produto;CustomEdit;COMBOPRODUTO;F')
              Selected.Strings = (
                'CODPRODUTO'#9'8'#9'C'#211'DIGO'#9#9
                'produto'#9'43'#9'PRODUTO'#9#9
                'QTDE'#9'7'#9'QTDE.'#9#9
                'UNITARIO'#9'10'#9'UNIT'#193'RIO'#9#9
                'TOTAL'#9'10'#9'TOTAL'#9#9
                'ICMS'#9'8'#9'%ICMS'#9#9
                'IPI'#9'7'#9'%IPI'#9#9
                'CFOP'#9'5'#9'CFOP'#9#9)
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dssaida_item
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnKeyPress = grid1KeyPress
            end
            object panel_item: TFlatPanel
              Left = 404
              Top = 192
              Width = 605
              Height = 29
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 2
              UseDockManager = True
            end
          end
        end
      end
    end
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 415
    Width = 766
    Height = 42
    AdaptiveColors = True
    Align = alBottom
    BorderStyle = bsNone
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 3
    ParentColor = False
    object bincluir: TBitBtn
      Left = 4
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = bincluirClick
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
        A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
        FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
        9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
        35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
        6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
        9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
        A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
        C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object balterar: TBitBtn
      Left = 78
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = balterarClick
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        7940207D4A266F3D246537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
        A25B2D9C552B954F27AF7A52EDEAE5FFFFFFFAF9F8C4B3A1693B256136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
        D1975CFFFFFFEEE8E1B06C39AC6737A86232A45E2EECE8E1FAF9F8A36C43CDBA
        A5FFFFFFA68669663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
        35A76131A86431975129C49C7DFFFFFFBFA1896F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
        FFFFFFFFFFFFFFE6C29BB6733CAF6B39AA6533E1D1C0FEFEFDE4DDD5945C327B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39D3
        A276F8F6F4E3D9CD934F2687461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
        B37CC38241E8CCABEADFD2B8763EE4D7C7FFFFFFAC6E40904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DEAA73FAF9F7FFFFFFFFFFFFE0CDB7
        A05A2C98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
        BF7E40C7894EBB7A42A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object bexcluir: TBitBtn
      Left = 152
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = bexcluirClick
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF1838B21838B21838B21838B21838B21838B21838B21838
        B21838B21838B21838B21838B21838B21838B21838B21838B21838B21838B218
        38B21838B21838B21838B21838B2FFFFFF00FFFFFF1838B2F1F1F9EFF0F8EEEF
        F8EFF0F8EFF0F8EFF0F8F1F1F9EFF0F8EEEFF8EFF0F8F1F1F9F1F1F9EFF0F8EE
        EFF8EEEFF8EFF0F8EFF0F8EFF0F8EFF0F8EFF0F8EFF0F81838B2FFFFFF00FFFF
        FF1839B3F1F1F95366EA5163E34D5ED94959CC4554C0414FB33D4AA73C479C3A
        439137408A353D82343B7A333A7531366E30356B31366930356830356A31376F
        EFF0F81839B3FFFFFF00FFFFFF1838B2EFF0F85568ED5466E85062E14C5DD648
        58C94452BC404EB03E4AA53C469839428E363F86343B7D333A7532376E31366A
        2F34672F33642F346631366AEEEFF81838B2FFFFFF00FFFFFF1838B2EFF0F85B
        6EF1586BEF5668EA5264E44E5FDA4A5ACE4554C14350B53F4CA93C479C394291
        374087353D7E333A7631366D2F34682F34662F3466303568EDEEF71838B2FFFF
        FF00FFFFFF1839B3F1F1F96173F39DA6F8FFFFFFFFFFFFF4F5FABBBFF15061DB
        848CDCFFFFFFFFFFFFFFFFFFFFFFFF868AB8B9B9D1FFFFFFFFFFFFFFFFFFD2D1
        DC31366AEEEFF81839B3FFFFFF00FFFFFF1838B2EFF0F86477F4A0A8F8FFFFFF
        C8CCFAD2D4F8FFFFFF9DA5F38A94ECFFFFFFCACDEEA2A7DE9FA2D56269B0BABC
        D7FFFFFFB7B7CEAFAFC69192B031366EEEEFF81838B2FFFFFF00FFFFFF1839B3
        F1F1F96B7CF5A5ADF8FFFFFF98A2F97383F6FFFFFFC7CBFA929CF7FFFFFFACB2
        F1727DE26C76D44754B8BDBFDFFFFFFF454C92353C7E333A78323977EDEEF718
        39B3FFFFFF00FFFFFF1838B2F1F1F97181F6A7AFF8FFFFFF9DA6F87786F6FFFF
        FFD5D7F899A3F9FFFFFFFFFFFFFFFFFFFFFFFF606DD6BFC2E6FFFFFF49529F38
        418C353D83363E81EEEFF81838B2FFFFFF00FFFFFF1838B2F1F1F97484F6AAB2
        F8FFFFFFA2AAF899A3F9FFFFFFC7CBFA9DA6F8FFFFFFAEB5F97584F66F7EF153
        64E2C1C4EDFFFFFF4E58AF3D479B3A439138418DEFF0F81838B2FFFFFF00FFFF
        FF1839B3F1F1F97988F6ABB3F8FFFFFFF6F7FBFEFEFEFEFEFE959FF8A1A9F8FF
        FFFFEEEFF8E0E2F7DFE1F6818CEFC3C6F1FFFFFF515DC03F4CAB3E49A03B469A
        EFF0F81839B3FFFFFF00FFFFFF1838B2EFF0F87A89F699A3F9C7CBFAC7CBFABF
        C3FB97A1F87887F6909BF7C2C6FAC0C4FBBEC2FABAC0FA7986F2969FEEB6BAED
        505ECB4351BB424FB03E4BA8EEEFF81838B2FFFFFF00FFFFFF1839B3F1F1F97B
        8AF67E8CF67E8CF67D8BF67B8AF67988F67685F67484F67080F56B7CF56477F4
        6173F35C6FF15668EA5062E14B5CD44857C74553BD4350B6EEEFF81839B3FFFF
        FF00FFFFFF1838B2EFF0F87D8BF67D8BF67D8BF67B8AF67988F67786F67484F6
        7181F66F80F56A7BF46477F46274F35D70F1576AEE5366E84F61DF4B5CD44858
        CB4756C4EFF0F81838B2FFFFFF00FFFFFF1838B2EFF0F87D8BF67E8CF67D8BF6
        7B8AF67988F67584F67383F67181F66E7FF56A7BF46678F46275F35F72F25B6E
        F05769EB5365E65061DE4C5DD74C5CD1EEEFF81838B2FFFFFF00FFFFFF1838B2
        EEEFF8EEEFF8EDEEF7EEEFF8EEEFF8EEEFF8EEEFF8EEEFF8EDEEF7EEEFF8EEEF
        F8EEEFF8EEEFF8EDEEF7EDEEF7EEEFF8EEEFF8EDEEF7EEEFF8EDEEF7EDEEF718
        38B2FFFFFF00FFFFFF1838B21838B21838B21838B21838B21838B21838B21838
        B21838B21838B21838B21838B21838B21838B21838B21838B21838B21838B218
        38B21838B21838B21838B21838B2FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object blocalizar: TBitBtn
      Left = 226
      Top = 10
      Width = 87
      Height = 25
      Caption = 'Localizar'
      TabOrder = 3
      OnClick = blocalizarClick
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        7940207944227240246537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
        A25B2D9C552B954F2797552ADBD0C3FCFCFCFCFCFCCCBEAD6B3D246136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
        D1975CFFFFFFEEE8E1B06C39AC6737A86232A25B2DDAC4ABFFFFFFB58965C3A4
        89FFFFFFAB8C71663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
        35F1EDE9FEFDFD9C582BAB764FFFFFFFC5AF9B6F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
        FFFFFFFFFFFFFFE6C29BBA783FFFFFFFFFFFFFDEC8B0E3D9CEFFFFFFAD825F7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EFAF9F7FAF8F7D6
        A67BDDC7AEC2946D904B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
        B37CC38241E7D1B7FFFFFFC68950D2A176D9BDA0AF7343904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542CA8C4AECE2D6FFFFFFFFFFFFE5D9CB
        A5602F98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
        BA783DC38448BC7C44AB6634A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object bfechar: TBitBtn
      Left = 672
      Top = 10
      Width = 78
      Height = 25
      Caption = 'Fechar'
      TabOrder = 8
      OnClick = bfecharClick
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
        00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
        6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
        DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
        E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
        FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
        61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
        ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
        7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
        354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
        9E00589900559500538F005089004D8100487900477400466E00476E003C6100
        3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
        FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
        9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
        00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
        BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
        FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
        ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
        74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
        6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
        E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
        5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
        7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
        BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
        FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
        EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
        ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
        D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
        C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
        B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
        5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
        FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
        71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
        004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
        79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
        00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
        EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
        DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
        6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
        00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
        6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object BitBtn1: TBitBtn
      Left = 315
      Top = 10
      Width = 28
      Height = 25
      Hint = 'Primeiro registro'
      TabOrder = 4
      OnClick = BitBtn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C8621AFFC65C19FFC45518FFC05217BFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00B233129BB63912FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00CD6B1EFFE1A87BFFD8915EFFC65918BFFFFFFF00FFFFFF00FFFF
        FF00B63E14A0C66433FFB73C13FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00CF742CFFE3AC83FFDB9765FFC8621ABFFFFFFF00FFFFFF00BD4A
        16A2CA6B38FFDA9763FFBB4114FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D27B39FFE5B18AFFDE9D6DFFCD6B1EBFFFFFFF00C45A19A9D077
        3DFFDD9F6EFFDC9B6AFFBD4A16FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D88445FFE8B691FFE1A477FFCF742CC0CB691EACD38144FFE0A7
        7AFFDA9763FFDE9F70FFC05217FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D98B52FFE9BB98FFE6B38EFFD27B39ECDE9E6DFFE4AE86FFDFA1
        71FFDB9762FFDFA376FFC65918FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00DF925CFFEBC09EFFE9BB98FFD68443F8E1A273FFE6B38EFFE1A7
        79FFDD9C6BFFE1A87EFFC8621AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E19B65FFEDC4A5FFE8B48FFFD98B52BFD48041A4DD9764FFE6B5
        90FFE2A97EFFE4AD85FFCD6B1EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E2A070FFEFC8ABFFEAB996FFDF925CBFFFFFFF00D684479EDF9A
        66FFE7B58FFFE6B28DFFCF742CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E6A677FFF0CBB0FFECBE9DFFE19B65BFFFFFFF00FFFFFF00D685
        4A8EDF9D69FFE7B490FFD27B39FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E8AB80FFF2CEB4FFEEC1A2FFE2A070BFFFFFFF00FFFFFF00FFFF
        FF00D8894C87D9894AFED88445FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00EAAB80FFEAAB80FFE8A97EFFE6A677BFFFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D98D5387D98950F4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object BitBtn3: TBitBtn
      Left = 342
      Top = 10
      Width = 28
      Height = 25
      Hint = 'Registro anterior'
      TabOrder = 5
      OnClick = BitBtn3Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B030
        119BB43312FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B43913A0C45F
        31FFB73913FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD4A16A2C96B37FFDA95
        62FFB94014FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C45C19A9D0773DFFDD9F6EFFDC9B
        69FFBD4715FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00CB702A04CD6E27ACD68548FFE1A97CFFDB9866FFDEA1
        71FFC05217FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00D68041B3DC955FFFE5B38BFFE0A477FFDC9A67FFE1A6
        7AFFC65C19FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00D98950E2E09D6BFFE8B895FFE3AB81FFDFA172FFE3AD
        83FFC9651BFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00D98D53A4E0A071FFE9BB99FFE5AF86FFE6B2
        8DFFCF722AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DB905A9EE3A475FFE9BB99FFE8B9
        95FFD47C3AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DD95608EE5A67AFFEABD
        9AFFD9874AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DF996587E197
        62FEDD9059FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E19B
        6B87E19965F4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object BitBtn4: TBitBtn
      Left = 369
      Top = 10
      Width = 28
      Height = 25
      Hint = 'Pr'#243'xmio registro'
      TabOrder = 6
      OnClick = BitBtn4Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C04E16FFB741149BFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C45918FFCC713BFFB94515A0FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C9621AFFDFA375FFCF743CFFBD4A16A2FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00CD6E23FFE1A87EFFE0A679FFD0773DFFBD5017A9FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00D27735FFE4AF87FFDFA172FFE1A97CFFD07A3FFFC053
        18ACB7451504FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00D68443FFE7B590FFE0A374FFE0A477FFE2AB81FFD37F
        43FFC65919B3FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00DB8E53FFEABB99FFE3AA80FFE3AB81FFE4B18AFFD688
        4BFFC6621AE2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E19762FFECC1A1FFE8B792FFE9BB99FFDD9761FFCD72
        2CA4FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E2A06EFFEEC7A8FFEDC2A3FFE3A475FFD684479EFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E6A779FFEFC8ADFFE8B087FFDD95608EFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00EAAB80FFE8A97CFEE2A27487FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00E8AB80F4E8A97E87FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object BitBtn2: TBitBtn
      Left = 396
      Top = 10
      Width = 28
      Height = 25
      Hint = #218'ltimo registro'
      TabOrder = 7
      OnClick = BitBtn2Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00C8621AFFC055189BFFFFFF00FFFFFF00FFFFFF00FFFFFF00BB41
        14BFB93E14FFB73A13FFB63912FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00CD6B1EFFD38142FFC45919A0FFFFFF00FFFFFF00FFFFFF00BD4A
        16BFD2804EFFD8945EFFB73C13FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00CF742CFFE3AC83FFD38144FFC65C19A2FFFFFF00FFFFFF00C052
        17BFD48553FFDA9763FFBB4114FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D27B39FFE5B18AFFE4AE86FFD68546FFC6601AA9FFFFFF00C659
        18BFD68B57FFDC9B6AFFBD4A16FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D88445FFE8B691FFE3A97FFFE4B189FFD6874BFFC8631AACC862
        1AC0D9925EFFDE9F70FFC05217FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D98B52FFE9BB98FFE3AA7FFFE3AB82FFE5B28BFFDD9966FFCD6B
        1EECDFA374FFDFA376FFC65918FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00DF925CFFEBC09EFFE6B087FFE6B189FFE8B792FFDF9D6EFFCF72
        2AF8E2AB81FFE1A87EFFC8621AFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E19B65FFEDC4A5FFEABA97FFEABE9EFFDF9D69FFD17B39A4D27B
        39BFE0A273FFE4AD85FFCD6B1EFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E2A070FFEFC8ABFFEEC3A6FFE5A67AFFD8894E9EFFFFFF00D884
        45BFE3A87BFFE6B28DFFCF742CFFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E6A677FFEFC8ADFFE8B088FFDF97628EFFFFFF00FFFFFF00D98B
        52BFE4AE84FFE8B794FFD27B39FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E8AB80FFE8A77BFEE2A27287FFFFFF00FFFFFF00FFFFFF00DF92
        5CBFE7B38BFFEABC9AFFD88445FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E8AB80F4E8A97E87FFFFFF00FFFFFF00FFFFFF00FFFFFF00E19B
        65BFDF9560FFDD9059FFD98B52FFFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object BitBtn5: TBitBtn
      Left = 426
      Top = 10
      Width = 95
      Height = 25
      Caption = 'Relat'#243'rios'
      TabOrder = 11
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
        A25B2D9C552B954F278E4923DBD0C3FFFFFF8653306B3A256437266136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
        D1975CFFFFFFEEE8E1B06C39AC6737A86232A25B2D9B5429CDA687FFFFFFA477
        53753E236D3B25663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
        35A66031BC8353FFFFFFCAAB9082431D783F226F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
        FFFFFFFFFFFFFFE6C29BB6733CAF6B39AB6633E4D9CBF6F4F295522983441C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39BF
        804AFEFEFDD1AB8A8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
        B37CC58544E6BE94E2BB92E0B993EEEAE4FFFFFFBC8960904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCB8C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D8B69898512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803FC68647
        C38343BE7D42B97840B5723EAB67339F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object pgravar: TFlatPanel
      Left = 592
      Top = 3
      Width = 766
      Height = 39
      ParentColor = True
      Visible = False
      ColorHighLight = clWindow
      ColorShadow = clWindow
      TabOrder = 9
      UseDockManager = True
      object bgravar: TBitBtn
        Left = 283
        Top = 6
        Width = 89
        Height = 25
        Caption = 'Gravar'
        TabOrder = 0
        OnClick = bgravarClick
        Glyph.Data = {
          DA050000424DDA05000000000000360000002800000019000000130000000100
          180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
          398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
          45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
          DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
          E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
          FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
          441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
          ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
          5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
          6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
          723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
          794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
          FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
          A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
          26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
          FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
          9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
          ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
          35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
          4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
          4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
          3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
          6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
          FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
          9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
          ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
          A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
          8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
          C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
          FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
          C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
          2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
          CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
          3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
          EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
          DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
          4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
          398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
          45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
      object bcancelar: TBitBtn
        Left = 373
        Top = 6
        Width = 89
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 1
        OnClick = bcancelarClick
        Glyph.Data = {
          DA050000424DDA05000000000000360000002800000019000000130000000100
          180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
          00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
          6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
          DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
          E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
          FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
          61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
          ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
          7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
          354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
          9E00589900559500538F005089004D8100487900477400466E00476E003C6100
          3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
          FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
          9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
          00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
          BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
          FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
          ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
          74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
          6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
          E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
          5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
          7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
          BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
          FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
          EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
          ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
          D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
          C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
          B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
          5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
          FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
          71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
          004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
          79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
          00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
          EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
          DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
          6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
          00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
          6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
    end
    object plocalizar1: TFlatPanel
      Left = 1016
      Top = 3
      Width = 766
      Height = 39
      ParentColor = True
      Visible = False
      ColorHighLight = clWindow
      ColorShadow = clWindow
      TabOrder = 10
      UseDockManager = True
      object LOC: TEdit
        Left = 208
        Top = 9
        Width = 265
        Height = 21
        TabOrder = 0
        OnKeyPress = LOCKeyPress
      end
      object BLOC: TBitBtn
        Left = 480
        Top = 7
        Width = 82
        Height = 25
        Caption = 'Localizar'
        TabOrder = 1
        OnClick = BLOCClick
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
      object FlatPanel1: TFlatPanel
        Left = 0
        Top = 0
        Width = 201
        Height = 32
        ParentColor = True
        ColorHighLight = clWindow
        ColorShadow = clWindow
        TabOrder = 2
        UseDockManager = True
        object rnome: TRadioButton
          Left = 4
          Top = 1
          Width = 69
          Height = 17
          Caption = 'N'#250'mero'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnKeyPress = rnomeKeyPress
        end
        object rcodigo: TRadioButton
          Left = 4
          Top = 17
          Width = 64
          Height = 17
          Caption = 'Data'
          TabOrder = 1
          OnKeyPress = rcodigoKeyPress
        end
        object rapelido: TRadioButton
          Left = 76
          Top = 1
          Width = 117
          Height = 17
          Caption = 'Fornecedor'
          TabOrder = 2
          OnClick = rapelidoClick
          OnKeyPress = rnomeKeyPress
        end
      end
    end
  end
  object plocalizar2: THeaderView
    Left = 1104
    Top = 32
    Width = 766
    Height = 407
    AdaptiveColors = True
    BorderStyle = bsNone
    Caption = 'Rela'#231#227'o de Registros'
    HeaderColor = clHighlight
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 15
    ParentColor = False
    Visible = False
    object DBGrid1: TDBGrid
      Left = 0
      Top = 15
      Width = 764
      Height = 390
      Align = alClient
      BorderStyle = bsNone
      DataSource = dssaida_produto
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#211'DIGO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO'
          Title.Caption = 'N'#218'MERO'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fornecedor'
          Title.Caption = 'FORNECEDOR'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 389
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_NOTA'
          Title.Caption = 'VALOR TOTAL'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -9
          Title.Font.Name = 'Verdana'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end>
    end
  end
  object Pop1: TPopupMenu
    Left = 760
    Top = 240
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object Pop2: TPopupMenu
    Left = 792
    Top = 240
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Incluiritem1: TMenuItem
      Caption = 'Incluir item'
      ShortCut = 116
      OnClick = bincluir_itemClick
    end
    object Excluiritem1: TMenuItem
      Caption = 'Excluir item'
      ShortCut = 46
      OnClick = bexcluir_itemClick
    end
    object AlterarItem1: TMenuItem
      Caption = 'Alterar Item'
      ShortCut = 118
      OnClick = balterar_itemClick
    end
    object Finalizar1: TMenuItem
      Caption = 'Finalizar'
      ShortCut = 122
      OnClick = BitBtn6Click
    end
  end
  object dssaida_produto2: TDataSource
    DataSet = frmmodulo.qrsaida_produto
    Left = 408
    Top = 160
  end
  object qrsaida_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 344
    Top = 160
    object qrsaida_produtoCODIGO2: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsaida_produtoNUMERO2: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrsaida_produtoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrsaida_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrsaida_produtoCODFORNECEDOR2: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsaida_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrsaida_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsaida_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrsaida_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrsaida_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrsaida_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrsaida_produtoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrsaida_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrsaida_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrsaida_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrsaida_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrsaida_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsaida_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
  end
  object dssaida_produto: TDataSource
    DataSet = qrsaida_produto
    Left = 448
    Top = 160
  end
  object POP3: TPopupMenu
    Left = 832
    Top = 240
    object InciodoNome1: TMenuItem
      Caption = 'In'#237'cio do Nome'
      ShortCut = 112
    end
    object PartedoNome1: TMenuItem
      Caption = 'Parte do Nome'
      ShortCut = 113
    end
    object FecharLocalizao1: TMenuItem
      Caption = 'Fechar Localiza'#231#227'o'
      ShortCut = 27
      OnClick = FecharLocalizao1Click
    end
  end
  object qrsaida_item: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 312
    Top = 160
    object qrsaida_itemCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrsaida_itemproduto: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrsaida_itemQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 7
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsaida_itemUNITARIO: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 10
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsaida_itemTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsaida_itemICMS: TFloatField
      DisplayLabel = '%ICMS'
      DisplayWidth = 8
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object qrsaida_itemIPI: TFloatField
      DisplayLabel = '%IPI'
      DisplayWidth = 7
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object qrsaida_itemCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Size = 6
    end
    object qrsaida_itemCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrsaida_itemDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrsaida_itemACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrsaida_itemCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrsaida_itemCODNOTA: TStringField
      DisplayWidth = 6
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrsaida_itemDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qrsaida_itemNUMERONOTA: TStringField
      DisplayWidth = 6
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrsaida_itemMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrsaida_itemCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrsaida_itemunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Visible = False
      Size = 5
      Lookup = True
    end
  end
  object dssaida_item: TDataSource
    DataSet = qrsaida_item
    Left = 376
    Top = 160
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 248
    Top = 160
    object qrnfCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnfNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnfCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 280
    Top = 160
  end
  object qrgrade_saida: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 184
    Top = 160
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 216
    Top = 160
  end
end
