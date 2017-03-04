object frmproduto_entrada: Tfrmproduto_entrada
  Left = 256
  Top = 320
  Width = 786
  Height = 498
  Caption = 'NOTA DE ENTRADA | Simplificada'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 426
    Width = 778
    Height = 3
    Align = alBottom
  end
  object panel99: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 426
    Align = alClient
    TabOrder = 1
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
        Width = 37
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 158
        Top = 12
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 616
        Top = 12
        Width = 27
        Height = 13
        Caption = 'Data:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 278
        Top = 12
        Width = 31
        Height = 13
        Caption = 'CFOP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 6
        Top = 44
        Width = 59
        Height = 13
        Caption = 'Fornecedor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 555
        Top = 81
        Width = 114
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'TOT.PRODUTOS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 555
        Top = 105
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
        Left = 555
        Top = 129
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
        Left = 80
        Top = 8
        Width = 73
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsentrada_produto2
        TabOrder = 0
        OnChange = DBEdit1Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object edata_cadastro: TDBDateEdit
        Left = 656
        Top = 8
        Width = 97
        Height = 21
        DataField = 'DATA'
        DataSource = dsentrada_produto2
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
        Left = 216
        Top = 8
        Width = 57
        Height = 21
        DataField = 'NUMERO'
        DataSource = dsentrada_produto2
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
        Left = 320
        Top = 8
        Width = 47
        Height = 21
        DataField = 'CFOP'
        DataSource = dsentrada_produto2
        TabOrder = 2
        OnEnter = DBEdit1Enter
        OnExit = ecfopExit
        OnKeyPress = DBEdit1KeyPress
      end
      object bloccfop: TBitBtn
        Left = 368
        Top = 8
        Width = 25
        Height = 21
        TabOrder = 8
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
        Left = 393
        Top = 8
        Width = 209
        Height = 21
        Color = clBtnFace
        DataField = 'natureza'
        DataSource = dsentrada_produto2
        TabOrder = 9
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object efornecedor: TDBEdit
        Left = 80
        Top = 40
        Width = 64
        Height = 21
        DataField = 'CODFORNECEDOR'
        DataSource = dsentrada_produto2
        TabOrder = 4
        OnEnter = DBEdit1Enter
        OnExit = efornecedorExit
        OnKeyPress = DBEdit1KeyPress
      end
      object blocfornecedor: TBitBtn
        Left = 144
        Top = 40
        Width = 25
        Height = 21
        TabOrder = 10
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
        Left = 169
        Top = 40
        Width = 432
        Height = 21
        Color = clBtnFace
        DataField = 'fornecedor'
        DataSource = dsentrada_produto2
        TabOrder = 11
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 675
        Top = 76
        Width = 85
        Height = 21
        DataField = 'VALOR_PRODUTOS'
        DataSource = dsentrada_produto2
        TabOrder = 6
        OnEnter = DBEdit1Enter
        OnExit = DBEdit11Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 675
        Top = 100
        Width = 85
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dsentrada_produto2
        TabOrder = 7
        OnEnter = DBEdit1Enter
        OnExit = DBEdit12Exit
        OnKeyPress = DBEdit12KeyPress
      end
      object DBEdit13: TDBEdit
        Left = 675
        Top = 124
        Width = 85
        Height = 21
        DataField = 'TOTAL_NOTA'
        DataSource = dsentrada_produto2
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 67
        Width = 566
        Height = 82
        Caption = 'Resumo da Nota / Confer'#234'ncia'
        TabOrder = 5
        object Label3: TLabel
          Left = 7
          Top = 17
          Width = 57
          Height = 24
          Caption = 'BASE DE '#13#10'C'#193'LCULO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 155
          Top = 17
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
          Left = 295
          Top = 17
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
          Left = 427
          Top = 17
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
          Left = 7
          Top = 54
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
          Left = 155
          Top = 54
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
          Left = 295
          Top = 46
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
          Left = 427
          Top = 46
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
        object DBEdit3: TDBEdit
          Left = 67
          Top = 20
          Width = 77
          Height = 21
          DataField = 'BASE_CALCULO'
          DataSource = dsentrada_produto2
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 215
          Top = 20
          Width = 77
          Height = 21
          DataField = 'VALOR_ICMS'
          DataSource = dsentrada_produto2
          TabOrder = 1
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 347
          Top = 20
          Width = 77
          Height = 21
          DataField = 'BASE_SUB'
          DataSource = dsentrada_produto2
          TabOrder = 2
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 479
          Top = 20
          Width = 77
          Height = 21
          DataField = 'ICMS_SUB'
          DataSource = dsentrada_produto2
          TabOrder = 3
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 67
          Top = 49
          Width = 77
          Height = 21
          DataField = 'FRETE'
          DataSource = dsentrada_produto2
          TabOrder = 4
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 215
          Top = 49
          Width = 77
          Height = 21
          DataField = 'SEGURO'
          DataSource = dsentrada_produto2
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 347
          Top = 49
          Width = 77
          Height = 21
          DataField = 'OUTRAS_DESPESAS'
          DataSource = dsentrada_produto2
          TabOrder = 6
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 479
          Top = 49
          Width = 77
          Height = 21
          DataField = 'VALOR_TOTAL_IPI'
          DataSource = dsentrada_produto2
          TabOrder = 7
          OnEnter = DBEdit1Enter
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit1KeyPress
        end
      end
    end
    object panel22: TPanel
      Left = 1
      Top = 173
      Width = 776
      Height = 252
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 776
        Height = 249
        ActivePage = PageSheet1
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
        TabOrder = 0
        TabStyle = tsFlat
        TopIndent = 3
        OnChange = PageView1Change
        object PageSheet1: TPageSheet
          Left = 0
          Top = 20
          Width = 776
          Height = 229
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
            Width = 776
            Height = 229
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
              object bincluir_item: TAdvGlowButton
                Left = 2
                Top = 3
                Width = 100
                Height = 24
                Caption = 'F5 | Incluir'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 49
                FocusType = ftHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Picture.Data = {
                  89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                  610000000467414D410000AFC837058AE90000001974455874536F6674776172
                  650041646F626520496D616765526561647971C9653C000002134944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208060069881347FF9F2E5FFD7AF5FE1F8E3C78FFFDFBF7FFFFFE5CB
                  9760439E3F7FFE7FEAD4A928860004E0688E510080421080F2EF7F82AED81404
                  86931F1DC2455F1E3F032EDC9D48267DBBAB9951770700203FA9AA2006BE0062
                  841A600A5470F2EFDFBF70AFFDFBF70FEC3AA03803D0500641414194C0606161
                  310752A701028805599089890914A07036C8406666660636363606A04BC08682
                  0C14131383EB0108201403609A616C9066643ECC40640010402CF8E20CD91010
                  1B84610107030001C44220DEC19A90BD860E000288A0013043F69CDBC8B0FFE2
                  56868F5FDF33FCFEF39BC126492DE9C8BC5BA7010208A701C84EDD767215C385
                  E77B18ECAD4D1964845419F65FDDC0F08DF571BA79B6E41780006222643BC8A0
                  8DC797321868E833FC65FACBA02FE9CAF097F1378385AE15483A1B208098F039
                  1B46BFFAF09C81959187C14F33172C56EC3C8B41594C0FC4E40008206403FE63
                  3304843F7FFBC870F5D931868EDD8960F18E5D890C775F5D02317F000410283D
                  8334FE03C6F177108DCD35E10E290C272E1D6360636061D87C791A031B230BC3
                  910B07415253010288119A9D65A1D919A797F4A244B339045842800EE2026AF9
                  F6E7FBBF8567E7BDC8020830001BDD194BE2EFEAED0000000049454E44AE4260
                  82}
                TabOrder = 0
                OnClick = bincluir_itemClick
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
              object balterar_item: TAdvGlowButton
                Left = 106
                Top = 3
                Width = 100
                Height = 24
                Caption = 'F7 | Alterar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 49
                FocusType = ftHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Picture.Data = {
                  89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                  610000000467414D410000AFC837058AE90000001974455874536F6674776172
                  650041646F626520496D616765526561647971C9653C0000026A4944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208018A12E30036A3EFEF3E74F26201B6E385023C3BF7FFF187EFDFA
                  C5202C2CCCF0E2E606862F17D63030F3E8327C7D739081F1C7D3788000626184
                  EA00524CCCCCCC0C4C4C4C604D200062432D60F8FE623303F3CBD30C12BA310C
                  FC8A860C1FEEAB33DCD835A70B208058903D08D200A34186800C0419F0EFFD3E
                  86DF7F6F3208A95A33BCBB7B9D818DF117032F9F04038FB01C3F4000611800F3
                  0288FDF7EF5F867F1F4F30B0FDBECAC0AFE4CEF0F3F90A06362E468687176E30
                  FCF8F6F3E3D7AF9FCD010208C50064FF83D8BFDE1E65F8F7613F03BF8A1FC38F
                  A7331898D8FE30B0F2C83370FF7FC23065E3A59CA9DBEEDE020820265CF1F5F2
                  C66686AFCF7641354F676062FDCDF0EB9302C3EB231719849D9B19409A41EA00
                  0208AB012F6F6E63F8F4EC388398B637C3AF17731898D9FE33FCFC240FD47C8E
                  41D47F3203BBB8065C2D4000B1A06BBE7D7C25C3BFCF5719FE304A313CBF3C99
                  41508C8DE1C73B59860F676F3048064F6360E69544510F1040182EB87C6C1E83
                  964D1A03FBE3230CB7361E65B8B0F31DC3AD7D1718C43CDB3134830040006118
                  70FBDE6B865F57B73028EADB327073AB33BCBC7C97413DA487815D44091C33B0
                  A886018000C2F0C2D53BAF1826CC9ACE60AAA9C8C0ABACC7E09C329F814B481A
                  67E6000820640340998271D1CE270C44807FD07CF41F2080409902A4F11F30D1
                  7C874910D20C54FB0D48FF0571000208969964A1D99989813800D2FC0AA8F731
                  40800100C0FB079BECFEDE790000000049454E44AE426082}
                TabOrder = 1
                OnClick = balterar_itemClick
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
              object bexcluir_item: TAdvGlowButton
                Left = 210
                Top = 3
                Width = 100
                Height = 24
                Caption = 'Del | Excluir'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 49
                FocusType = ftHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Picture.Data = {
                  89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                  610000000467414D410000AFC837058AE90000001974455874536F6674776172
                  650041646F626520496D616765526561647971C9653C0000021B4944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208060069881347FF9F2E5FFD7AF5FE1F8E3C78FFFDFBF7FFFFFE5CB
                  9760439E3F7FFE7FEAD4A928860004E0688E510080421080F2EF7F82AED81404
                  86931F1DC2455F1E3F032EDC9D48267DBBAB9951770700203FA9AA2006BE0062
                  841A600A5470F2EFDFBF70AFFDFBF70FEC3AA03803D0500641414194C0606161
                  310752A701028805599089890914A07036C8406666660636363606A04BC08682
                  0C14131383EB0108201403609A616C9066643ECC40640010402CF8E20CD91010
                  1B84610107030001C44220DEC19A90BD860E00028889810800D2FC7CCB4C868B
                  D9260CC77CF9198EC629334C35678A07C90104104E17203BF5D9E6190C9F4EAE
                  66300849666057D466F87E691703E7E1DD193BB9AFDF040820822E0019F470DD
                  440615FB00068EBB07181817463270DD5BCFA0282FCC044C4A050001C482CFD9
                  D07CC2F0EBF943060E09450606AF2244E035483230FF63540008206403FE4313
                  1546B4B28849327CBBB095817B5316C3CFEF2F18BE01C53E7F6266F8CBCCF00C
                  208040E919A4F11F308EBF83686CAE910FC865B876F228C3F31F9C0C9F985919
                  DEBF6364B8FD94F11F50E334800062843A53169A9D7186C93C37F178D1BF6F02
                  39FF334AFC60FCFFFAC32F8605D187FE94030418000F8C1BB2E02B3552000000
                  0049454E44AE426082}
                TabOrder = 2
                OnClick = bexcluir_itemClick
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
              object BitBtn6: TAdvGlowButton
                Left = 314
                Top = 3
                Width = 100
                Height = 24
                Caption = 'F11 | Finalizar'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 49
                FocusType = ftHot
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                Picture.Data = {
                  89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                  610000000467414D410000AFC837058AE90000001974455874536F6674776172
                  650041646F626520496D616765526561647971C9653C000002014944415478DA
                  62FCFFFF3F032323A30C03038338103333E007AF80F81150CF3F980040003180
                  0C0002E31F3F7E7CF8FDFBF7DF3F7FFEFCC78681F2FFA74C993211A856018899
                  40FA4018208060069881347FF9F2E5FFD7AF5FE1F8E3C78FFFDFBF7FFFFFE5CB
                  9760439E3F7FFE7FEAD4A928860004E0688E510080421080F2EF7F82AED81404
                  86931F1DC2455F1E3F032EDC9D48267DBBAB9951770700203FA9AA2006BE0062
                  841A600A5470F2EFDFBF70AFFDFBF70FEC3AA03803D0500641414194C0606161
                  310752A701028805599089890914A07036C8406666660636363606A04BC08682
                  0C14131383EB0108201403609A616C9066643ECC40640010402CF8E20CD91010
                  1B84610107030001C44220DEC19A90BD860E000288A00130438A0EA531FCFEF5
                  87E1D7AFDF0CBF7FFC86CB010410132E4DB08402C33F819AEC151C191C959D18
                  BE7FFB09570710404C846C87F9F9E7F79F0C3FFFFC64F8FEE70703072307837A
                  80B20E481C208058F0391BA479C2A94E86EBCFAF3088728A31FCF8F38BE1D7DF
                  5F0CA282E20CA2FA42D3F93479C3000208D905FFB119926756CAC0C5C0CBF0E3
                  07D005BF7F80F18B572F18BE7EFEFEE2E7B79F7E0001C408CD8D26C0D4761018
                  651CB8BC95B93899E1FBFF6FE04064F8C2F86F55C97A33A0DEB3000104334016
                  9A9DF1868951B1DEBCDFDF7FFDB93CED4632286B03F53E06083000A9CF31C38A
                  3034D80000000049454E44AE426082}
                TabOrder = 3
                OnClick = BitBtn6Click
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
            object FlatPanel3: TFlatPanel
              Left = 664
              Top = 196
              Width = 89
              Height = 24
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 0
              UseDockManager = True
              object Label17: TLabel
                Left = 7
                Top = 5
                Width = 29
                Height = 13
                Caption = 'Itens:'
              end
              object DBText1: TDBText
                Left = 45
                Top = 5
                Width = 29
                Height = 13
                Alignment = taCenter
                DataField = 'ITENS'
                DataSource = dsentrada_produto2
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
              Width = 776
              Height = 191
              DittoAttributes.ShortCutDittoField = 0
              DittoAttributes.ShortCutDittoRecord = 0
              DittoAttributes.Options = []
              DisableThemesInTitle = False
              ControlType.Strings = (
                'produto;CustomEdit;COMBOPRODUTO;F')
              Selected.Strings = (
                'CODPRODUTO'#9'9'#9'C'#243'digo'#9#9
                'produto'#9'45'#9'Produto'#9#9
                'QTDE'#9'11'#9'Qtde.'#9#9
                'UNITARIO'#9'14'#9'Unit'#225'rio'#9#9
                'TOTAL'#9'12'#9'Total'#9#9
                'ICMS'#9'9'#9'ICMS'#9#9
                'IPI'#9'7'#9'IPI'#9'F'#9
                'CFOP'#9'8'#9'CFOP'#9#9
                'MOVIMENTO_ESTOQUE'#9'10'#9'MOVIMENTO_ESTOQUE'#9'F'#9)
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dsentrada_item
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              TabOrder = 1
              TitleAlignment = taLeftJustify
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
              OnKeyPress = grid1KeyPress
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clBlack
            end
            object panel_item: TFlatPanel
              Left = 4
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
        object PageSheet2: TPageSheet
          Left = 0
          Top = 20
          Width = 776
          Height = 229
          Caption = 'Faturamento'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 776
            Height = 229
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            OnClick = Panel1Click
            object wwDBGrid1: TwwDBGrid
              Left = 0
              Top = 0
              Width = 776
              Height = 229
              DittoAttributes.ShortCutDittoField = 0
              DittoAttributes.ShortCutDittoRecord = 0
              DittoAttributes.Options = []
              DisableThemesInTitle = False
              ControlType.Strings = (
                'FILTRO;CheckBox;1;0'
                'SITUACAO;ImageIndex;Original Size'
                'situacao2;ImageIndex;Original Size')
              Selected.Strings = (
                'DATA_VENCIMENTO'#9'12'#9'VENCIMENTO'#9#9
                'DOCUMENTO'#9'12'#9'DOCUMENTO'#9#9
                'ESPECIE'#9'10'#9'ESP'#201'CIE'#9#9
                'VALOR'#9'11'#9'VALOR-R$'#9#9
                'DESCONTO'#9'10'#9'DESCONTO'#9#9
                'ACRESCIMO'#9'10'#9'ACR'#201'SCIMO'#9#9
                'VALORPAGO'#9'9'#9'VLR.PAGO'#9#9
                'DATA_PAGAMENTO'#9'13'#9'DT.PAGTO.'#9#9
                'LIQUIDO'#9'10'#9'LIQUIDO'#9#9)
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alClient
              DataSource = dscontaspagar
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
              ParentFont = False
              RowHeightPercent = 107
              TabOrder = 0
              TitleAlignment = taCenter
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -9
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = True
              ImageList = ImageList1
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clRed
            end
          end
        end
      end
    end
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 429
    Width = 778
    Height = 42
    AdaptiveColors = True
    Align = alBottom
    BorderStyle = bsNone
    Color = clBtnFace
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 0
    ParentColor = False
    object bfechar: TAdvGlowButton
      Left = 696
      Top = 8
      Width = 77
      Height = 24
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
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
      TabOrder = 11
      OnClick = bfecharClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 496
      Top = 8
      Width = 20
      Height = 24
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 10
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 476
      Top = 8
      Width = 20
      Height = 24
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 9
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 456
      Top = 8
      Width = 20
      Height = 24
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 8
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 436
      Top = 8
      Width = 20
      Height = 24
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 7
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsentrada_produto2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object blocalizar: TAdvGlowButton
      Left = 344
      Top = 8
      Width = 91
      Height = 24
      Caption = 'F6 | Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002514944415478DA
        62FCFFFF3F032500208058608C43F7FF32FDFBF76FEA9FBFFF7DFEFEFD2BF5E7
        EF3F86DF7FFE3EFBF3E7EF96DFBFFF66475A8AFCC36600400031825C7010A4F9
        EFBF7DFCECFFED05B91819589880AE02A21F7FFE333C7EF383E1D1EBEF077FFF
        F9E394EA2C8361084000318188BF7FFF4DE563FF672FC6C3C8F0E3F75F86375F
        FE32BC04E26FBFFE312888723288F1B3DAFFFCF5672A3617000410D800A0337D
        843819193EFF0469FACFF0E7DF7FA0A1FF19BE02D9EFBEFF659016E664001AE0
        83CD008000021B00F4AB14339005D2FC17A419E850B02140FCF5E73F06365666
        865FBFFE486133002080C081F8EBF71F867FFF59C19AFE0135FFFD8FA0FF8369
        06869F4035D8004000815D0034FDD98FDFFF8081C708B599014EB3B230327CFB
        F19BE1CFAF5FAFB0190010404C50176C79F0F21B032F3B13031B3323D8E92017
        B003350B7032335CB9FB8641FCEB0581BDAD3EEAE806000410D800600065DF7F
        F1E5E0D5871F1880DE6510E36501863C0B031B303A4F5D7BC1F0E5ED0B0667A9
        971C3F7F7E3BB2A1C20AC51080006284A5C4099BEF3101E37A2A30D1F8FC0206
        EA1F60740203F7B9C8F7ABBF9CF82F2BCA689A313CBB799AE1D6995D6F7EFFFE
        611333E5FA4D903E8000622494947734B8B2FDFAF563B9889C4690BC9625C3E3
        1B2719AE9DD9F92669D60351903C400031114AEB1E0DBB7F019D1EF9E0DAF175
        37CEEC601093510606FA4F11983C400031129B99E6A72BB3FDF9F37339332B7B
        D0B72FEF3B7296BCAB04890304102329B9715A9C28F3DFBF7FC47397BE7F0613
        030820464AB333408001004AB837A11ECA28F10000000049454E44AE426082}
      TabOrder = 6
      OnClick = blocalizarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 255
      Top = 8
      Width = 88
      Height = 24
      Caption = 'F4 | Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E74944415478DA
        62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
        FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
        5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
        6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
        2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
        721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
        1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
        0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
        4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
        3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
        3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
        9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
        7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
        DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
        865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
        9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
        68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
        73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
        8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
        2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
        0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
        01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
        9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
        008C5756165E6F8C750000000049454E44AE426082}
      TabOrder = 5
      OnClick = bcancelarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bexcluir: TAdvGlowButton
      Left = 171
      Top = 8
      Width = 83
      Height = 24
      Caption = 'Del | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E04944415478DA
        62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
        F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
        FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
        DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
        FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
        FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
        7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
        1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
        FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
        D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
        F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
        010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
        370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
        E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
        AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
        0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
        161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
        918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
        3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
        BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
        48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
        A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
        90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
        B7520000000049454E44AE426082}
      TabOrder = 4
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object balterar: TAdvGlowButton
      Left = 87
      Top = 8
      Width = 83
      Height = 24
      Caption = 'F3 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD735200C65A
        0000AD4A0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C65A
        0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A
        3100C6630000CE630000B55A2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00B55A2100CE630000C6630000C6846300FFFFFF00FFFFFF00AD4A0000BD5A
        0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300FFFF
        FF00FFFFFF00AD4A0000CE630000B54A0000FFFFFF00FFFFFF00B5520000D673
        0000CE6B0000CE630000CE630000CE630000CE630000C6630000BD6B4200FFFF
        FF00FFFFFF00CE9C8400C6630000C6630000C6846300FFFFFF00BD5A0000DE7B
        0000D6730000CE630000A5421000CE9C8400CE9C8400CE9C8400FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AD4A0000CE630000B5521000FFFFFF00C6630000E784
        0000CE630000DE730000CE630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE630000F794
        0000B5521000B5520000DE7B0000CE6B0000BD7B5200FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE6B0800FF9C
        0800CE844200FFFFFF00B5520000E7840000CE6B0000BD633100FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00B54A0000CE630000B5521000FFFFFF00CE732100FFAD
        3100CE844A00FFFFFF00FFFFFF00C6631000E7840000E77B0000BD520000C67B
        5200C68C7300B5521000C6630000C6630000C6846300FFFFFF00CE7B3900FFBD
        6300C67B5200FFFFFF00FFFFFF00FFFFFF00B55A2100E77B0000E7840000DE7B
        0000D6730000CE6B0000C6630000AD4A1000FFFFFF00FFFFFF00CE947B00C684
        5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C8400C6631000CE6B
        0000CE6B0000BD5A0000BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 3
      OnClick = balterarClick
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bincluir: TAdvGlowButton
      Left = 3
      Top = 8
      Width = 83
      Height = 24
      Caption = 'F2 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E14944415478DA
        62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
        EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
        DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
        E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
        E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
        6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
        FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
        CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
        672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
        1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
        8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
        580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
        C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
        FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
        85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
        043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
        6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
        3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
        063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
        86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
        082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
        F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
        00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
        891CF10000000049454E44AE426082}
      TabOrder = 2
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object pgravar: TFlatPanel
      Left = 1080
      Top = 3
      Width = 766
      Height = 39
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 0
      UseDockManager = True
      object bgravar: TAdvGlowButton
        Left = 272
        Top = 4
        Width = 107
        Height = 24
        Caption = 'F2 | Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000003274944415478DA
          62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
          EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
          FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
          8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
          8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
          108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
          C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
          10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
          609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
          EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
          1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
          009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
          7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
          5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
          030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
          93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
          E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
          ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
          00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
          95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
          F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
          32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
          52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
          F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
          CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
          00B9755E16835EC02B0000000049454E44AE426082}
        TabOrder = 0
        OnClick = bgravarClick
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
      object bcancelar: TAdvGlowButton
        Left = 397
        Top = 4
        Width = 108
        Height = 24
        Caption = 'ESC | Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002E74944415478DA
          62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
          FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
          5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
          6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
          2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
          721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
          1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
          0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
          4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
          3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
          3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
          9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
          7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
          DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
          865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
          9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
          68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
          73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
          8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
          2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
          0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
          01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
          9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
          008C5756165E6F8C750000000049454E44AE426082}
        TabOrder = 1
        OnClick = bcancelarClick
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
    object bimportar: TAdvGlowButton
      Left = 520
      Top = 8
      Width = 105
      Height = 24
      Caption = 'F9 | Importar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360300000000000036000000280000001000000010000000010018000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A8129027A1DDEEEE1FFFFFF
        FFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC68655C283
        51C2835108822C42A05E147B23A48148CFA07CFFFFFFFFFFFFD6A074F7F1ECF6
        EFE9F5ECE5F3E9E12196511B9049158E430F8A3B399E5D7FC09545A26116862F
        A58752FFFFFFFFFFFFD8A379F8F2EDEAD1BDFEFEFEEAD2BE289A5A8FC9A88CC7
        A489C5A087C49D69B58481C19647A4650F7D25CFE6D4FFFFFFDCA77DF8F2EEEA
        CFB9EACFBAEACFBA309E6293CCAC6EB98D6AB78865B58460B27F66B48182C197
        3B9F5B038027FFFFFFDEA981F8F2EEE9CDB6FEFEFEEACFBA36A26A95CDAF93CC
        AC90CAA98FCAA773BB8F89C6A045A467088634F0F8F3FFFFFFE0AD86F9F3EFE9
        CAB1E9CBB2E9CBB23CA46E37A26D33A0672F9C6154AE7B90CAA94EAA73188F45
        BB8552FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEE9C8AFFEFEFEFEFEFEFEFE
        FEE7C6AB38A26859B280279756E9E1D5C58554FFFFFFFFFFFFE4B38EF9F5F1E8
        C5A9E8C5ABE9C6ABE8C6ACE8C8ADE8C8AFE7C6AB3DA36D309E64E0C9B1F1E6DD
        C78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEE7C3A8FEFEFEFEFEFEFEFE
        FEE7C6ABFEFEFEFEFEFEFEFEFEF6F0EACA8E5EFFFFFFFFFFFFE8B997FAF6F3E8
        C2A5E8C2A5E8C2A5E8C2A5E8C2A5E8C2A5E8C2A5E8C2A5E8C2A5E8C2A5FAF6F3
        CD9263FFFFFFFFFFFFEABC9AFAF6F3FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFAF6F3D09669FFFFFFFFFFFFEBBE9DFAF6F39B
        D4A497D2A093CF9C8FCD978ACA9286C88D81C5887DC28379C07F75BD7BFAF6F3
        D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6
        F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1F0C7ABEC
        BF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA87FDBA47C
        E1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 12
      OnClick = bimportarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object plocalizar1: TFlatPanel
      Left = 1064
      Top = 19
      Width = 766
      Height = 39
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 1
      UseDockManager = True
      object LOC: TEdit
        Left = 208
        Top = 9
        Width = 265
        Height = 21
        TabOrder = 0
        OnKeyPress = LOCKeyPress
      end
      object FlatPanel1: TFlatPanel
        Left = 0
        Top = 0
        Width = 201
        Height = 32
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 1
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
      object bloc: TAdvGlowButton
        Left = 480
        Top = 6
        Width = 91
        Height = 24
        Caption = 'Localizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002514944415478DA
          62FCFFFF3F032500208058608C43F7FF32FDFBF76FEA9FBFFF7DFEFEFD2BF5E7
          EF3F86DF7FFE3EFBF3E7EF96DFBFFF66475A8AFCC36600400031825C7010A4F9
          EFBF7DFCECFFED05B91819589880AE02A21F7FFE333C7EF383E1D1EBEF077FFF
          F9E394EA2C8361084000318188BF7FFF4DE563FF672FC6C3C8F0E3F75F86375F
          FE32BC04E26FBFFE312888723288F1B3DAFFFCF5672A3617000410D800A0337D
          843819193EFF0469FACFF0E7DF7FA0A1FF19BE02D9EFBEFF659016E664001AE0
          83CD008000021B00F4AB14339005D2FC17A419E850B02140FCF5E73F06365666
          865FBFFE486133002080C081F8EBF71F867FFF59C19AFE0135FFFD8FA0FF8369
          06869F4035D8004000815D0034FDD98FDFFF8081C708B599014EB3B230327CFB
          F19BE1CFAF5FAFB0190010404C50176C79F0F21B032F3B13031B3323D8E92017
          B003350B7032335CB9FB8641FCEB0581BDAD3EEAE806000410D800600065DF7F
          F1E5E0D5871F1880DE6510E36501863C0B031B303A4F5D7BC1F0E5ED0B0667A9
          971C3F7F7E3BB2A1C20AC51080006284A5C4099BEF3101E37A2A30D1F8FC0206
          EA1F60740203F7B9C8F7ABBF9CF82F2BCA689A313CBB799AE1D6995D6F7EFFFE
          611333E5FA4D903E8000622494947734B8B2FDFAF563B9889C4690BC9625C3E3
          1B2719AE9DD9F92669D60351903C400031114AEB1E0DBB7F019D1EF9E0DAF175
          37CEEC601093510606FA4F11983C400031129B99E6A72BB3FDF9F37339332B7B
          D0B72FEF3B7296BCAB04890304102329B9715A9C28F3DFBF7FC47397BE7F0613
          030820464AB333408001004AB837A11ECA28F10000000049454E44AE426082}
        TabOrder = 2
        OnClick = BLOCClick
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
  end
  object plocalizar2: THeaderView
    Left = 752
    Top = 8
    Width = 766
    Height = 418
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
      Height = 401
      Align = alClient
      BorderStyle = bsNone
      DataSource = dsentrada_produto
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
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
    object ImportarNF1: TMenuItem
      Caption = 'Importar NF'
      ShortCut = 120
      OnClick = bimportarClick
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
  object dsentrada_produto2: TDataSource
    DataSet = frmmodulo.qrentrada_produto
    Left = 880
    Top = 240
  end
  object qrentrada_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 864
    Top = 240
    object qrentrada_produtoCODIGO2: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrentrada_produtoNUMERO2: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrentrada_produtoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrentrada_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrentrada_produtoCODFORNECEDOR2: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrentrada_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrentrada_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrentrada_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrentrada_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrentrada_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrentrada_produtoFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrentrada_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrentrada_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrentrada_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrentrada_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrentrada_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrentrada_produtofornecedor: TStringField
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
  object dsentrada_produto: TDataSource
    DataSet = qrentrada_produto
    Left = 728
    Top = 240
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
  object qrentrada_item: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrentrada_itemBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 464
    Top = 288
    object qrentrada_itemCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 9
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrentrada_itemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrentrada_itemQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 11
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_itemUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 14
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_itemTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 12
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_itemICMS: TFloatField
      DisplayWidth = 9
      FieldName = 'ICMS'
      DisplayFormat = '###,##0.00%'
    end
    object qrentrada_itemIPI: TFloatField
      DisplayWidth = 7
      FieldName = 'IPI'
      DisplayFormat = '###,##0.00%'
    end
    object qrentrada_itemCFOP: TStringField
      DisplayWidth = 8
      FieldName = 'CFOP'
      Size = 6
    end
    object qrentrada_itemCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrentrada_itemDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrentrada_itemACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrentrada_itemCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrentrada_itemCODNOTA: TStringField
      DisplayWidth = 6
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrentrada_itemDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qrentrada_itemNUMERONOTA: TStringField
      DisplayWidth = 6
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrentrada_itemMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrentrada_itemCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrentrada_itemunidade: TStringField
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
    object qrentrada_itemCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrentrada_itemSERIAL: TStringField
      DisplayWidth = 25
      FieldName = 'SERIAL'
      Visible = False
      Size = 25
    end
    object qrentrada_itemVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrentrada_itemICMS_REDUZIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrentrada_itemBASE_CALCULO: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrentrada_itemVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrentrada_itemMOVIMENTO_ESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
  end
  object dsentrada_item: TDataSource
    DataSet = qrentrada_item
    Left = 496
    Top = 288
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 224
    Top = 200
    object qrentrada_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrentrada_produtoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrentrada_produtoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 592
    Top = 384
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 296
    Top = 216
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 264
    Top = 208
  end
  object qrcontaspagar: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 464
    Top = 208
    object qrcontaspagarDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCIMENTO'
      DisplayWidth = 12
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontaspagarDOCUMENTO: TStringField
      DisplayWidth = 12
      FieldName = 'DOCUMENTO'
    end
    object qrcontaspagarESPECIE: TStringField
      DisplayLabel = 'ESP'#201'CIE'
      DisplayWidth = 10
      FieldName = 'ESPECIE'
    end
    object qrcontaspagarVALOR: TFloatField
      DisplayLabel = 'VALOR-R$'
      DisplayWidth = 11
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarACRESCIMO: TFloatField
      DisplayLabel = 'ACR'#201'SCIMO'
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarVALORPAGO: TFloatField
      DisplayLabel = 'VLR.PAGO'
      DisplayWidth = 9
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = 'DT.PAGTO.'
      DisplayWidth = 13
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontaspagarLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontaspagarCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontaspagarDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrcontaspagarCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrcontaspagarNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object qrcontaspagarHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Visible = False
      Size = 60
    end
    object qrcontaspagarC: TStringField
      FieldName = 'C'
      Visible = False
      Size = 1
    end
    object qrcontaspagarE: TStringField
      FieldName = 'E'
      Visible = False
      Size = 1
    end
    object qrcontaspagarFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrcontaspagarSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontaspagarCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrcontaspagarMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcontaspagarCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 432
    Top = 208
    Bitmap = {
      494C01010500090004000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000002D0000000100200000000000302A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007AC8EC002CA6DF002AA3DE0028A0DC00269DDB00249AD9002297D8001F92
      D5001A8BD2001584CE00107DCB000C76C8000870C500056BC2000267C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000047B5E500BDE2F400F3FBFD00EEFA
      FD00EDFAFD00EDFAFD00EEFBFD00EEFBFD00EEFAFD00EDFAFD00ECFAFD00ECFA
      FD00EBFAFD00F1FBFD00AACDEA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3E7F70061BEE700F3FBFD00B4EEF90057D9F40057D9F40056D7F20057D6
      F10057D5F10056D8F30050D7F4004DD6F30061D9F500E9FAFD004392D1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005DC0EA009CD6F000E6F8
      FC008AE4F70059DAF5005AD9F3003CA0D4003CA0D40053D5F10051D7F4004FD5
      F300D7F5FB0087BEE40054A0D800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2F4FB0036B1E400F2FAFD00C2F1FA005BDBF5005BD9F30063DE
      F50056CAEA0054D5F10053D8F40093E6F700E2F3FA001B89D000DEEDF8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000078CCEE008BD1
      EF00E9FAFD0093E5F7005BD9F30046B0DC003CA0D40055D6F1005BDAF400DDF7
      FC007CBFE60087C3E80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6FCFE0044B9E700C7E9F600E5F9FC005CD9F3003CA0
      D4003CA0D40056D6F100C6F2FB00BFE2F3003AA3DC00F5FAFD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8E5
      F70070C7EC00F8FDFE005DDBF3003DA1D4003DA1D4005BD8F300ECFAFD0067BA
      E400B2DCF2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C2EB00A8DEF300ECF8FC003DA2
      D5003DA2D500D3F4FB00A1D6F0005CB8E5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DAF2FB0039B7E700F8FCFE0093E8F8009DEAF900EBF9FD0030A9E000D7EE
      F900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073CDEF0093D7F100F2FB
      FD00E6F9FD008ED2EF0085CEEE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1FAFE0043BDE900F0F9FC00D4EEF90042B7E700F1F9FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CD7F30084D3
      F00081D0EF00ACE0F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF005CC6EE0068C9EE00FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1E7
      E300CAAA9B00A16A50008F573D008D563D0099685100C5A99B00EEE7E3000000
      0000000000000000000000000000000000000000000000000000E0EEE0008FBF
      91003A8C3E0024792800247628003A843E008FB99100E0EBE000000000000000
      00000000000000000000000000000000000000000000E3E6F7009AA6E3004C61
      CB00354EC400334CC200455CC60094A1DE00E1E4F50000000000000000000000
      0000A97151A9C38E68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C
      5AFFB17B58FFAE7957FFAD7656FFAB7554FFA97353FFA97151FFA97151A90000
      00000000000000000000DFC8BD00A2654700B17F5600D4B69200DAC2A500D9C2
      A500D1B38F00AA795100915F4700D8C6BD000000000000000000000000000000
      000000000000B5D9B600308E3400419F510086C999009AD2AA009AD1AA0082C6
      95003C964B00307B3300B4D0B600000000000000000000000000000000000000
      0000BFC7EF004B62D0005163D300838FE600949FED00949EEC00828DE4004B5C
      CD003C53C300B8C0E9000000000000000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF0000000000000000E2CCBD00A25B3B00CAA6
      7C00D7BA9E00C29B7600B5896100B3855F00BD957100D0B29600C4A276008856
      3D00D8C6BD00000000000000000000000000B5DBBA00248E29006CBD8200A7DA
      B40086CB970065BB7C0063B97B0085CA9700A4D8B30065B67C0023712600B4D0
      B600000000000000000000000000C1CAF100465FD4007483E200A0ABF3007E8A
      EB005B66E3005A65E2007C86E9009EA7F0006E7BDC00314AC100B8C1E9000000
      0000CA946EFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFE
      FCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFEFAFFFCFCF9FFFFFFFFFFAA7353FF0000
      0000F4ECE400B3774900CEA98000D9BBA100BD906500B98B6100B6885E00B283
      5D00B0825C00AF825B00CCA98C00C5A4780094614800EFE8E40000000000E1F2
      E40032A0430071C18600A7DAB1005FBB76005BB9720058B76F0058B46E0057B4
      6E005AB67300A4D8B20068B77E00307F3400E0ECE10000000000E7EAFA00586F
      DD007787E500A2AFF4005666E6005564E5008891EC008791EB00525EE100515C
      E0009EA8F1006E7CDC004056C600E2E6F600CC976FFFFFFFFFFFFFFFFCFFFFFF
      FDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFC
      F7FFFBFBF6FFFFFFFFFFAC7554FF00000000DBBC9B00BE905D00DFC1A700C495
      6B00C1906800E0CAB700FDFCFB00FEFEFD00E9DBCF00B3845D00B2845D00D3B4
      9800AD7A5500C7A99B00000000008FD29F004BAF6300A9DCB30063C078005EBD
      700074C48400D3EBD80089CC980055B56B0057B46D005BB67300A5D9B300409A
      4D008EBB900000000000A7B4F0005F72DF00A3B2F600596DEA00586BE9005768
      E700FEFEFE00FEFEFE005461E4005360E200525EE1009EA8F1004F60D00097A3
      E000D19C73FFFFFFFFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFD
      FAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFAF6FFFBF8F4FFFFFFFFFFB07A58FF0000
      0000C58F5100DABB9B00D4AC8800C6976B00C2946800C0926600ECDED200F9F6
      F300BA8A6200B8896200B7896100C49C7700D1B792009F695100000000003EB4
      5C0090D19E008CD3990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA
      950056B66C005AB8710084CB960086C699003A8A3E00000000006A81E8008D9E
      EF008398F3005B72ED005A6FEB00596DEA008F9CF000A5AEF2005666E6005564
      E5005461E4007C88EA008490E6004D63CD00D49E75FFFFFFFFFFFEFEFCFFFDFD
      FBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7
      F2FFFBF5F2FFFFFFFFFFB27C5AFF00000000C0823B00E2C6AE00CFA17500C498
      6A00C3966900C3956800EDDFD300FAF6F300BE8F6500BD8E6400BD8E6300BD91
      6800DEC5A90095553A000000000026AF4800A5DBAE006FC97E0072C97F00EFF8
      F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8700066BD7C009FD6
      AE00227E2500000000005C75E9009FB2F600647FF1005E77EF005C75EE005B72
      ED00D2D8F900FEFEFE00586BE9005768E7005666E6005C6BE60098A4F0003B54
      CB00D5A076FFFFFFFFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9
      F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3EFFFF8F2ECFFFFFFFFFFB57E5CFF0000
      0000C6884100E3C8AF00CFA27900CB9C7000C6996B00C4976A00FEFEFE00FEFE
      FD00C2956800C0936700C1936700C2976C00DEC4AA0098583A00000000002DB6
      5000A6DCB00071CB7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFE
      FE00FAFCFB008BCF980068C07D00A0D6AD002283250000000000607AED00A0B5
      F7006683F3005F7BF2005E79F0005E77EF00FEFEFE00FEFEFE005A6FEB00596D
      EA00586BE9005E6EE8009AA7F0004058CF00D8A279FFFFFFFFFFFDFDFAFFFCFC
      FAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0
      EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D19D5B00DFBB9E00DAB29200CE9F
      7400CC9D7100CA9B7000DCBEA200DCBEA100C4986A00C4986A00C3976A00D0AA
      8400D7B99600AB6D5100000000004AC46B0094D6A00090D69A0068C8750063C5
      6E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3E5008AD098008ACD
      9C003B983F0000000000758CF20090A5F20087A0F700617FF300607DF2005F7B
      F200FEFEFE00FEFEFE005C75EE005B72ED005A6FEB008192F0008897EB00586F
      D700D9A379FFFFFFFFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5
      F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FF0000
      0000E6C8A400CC9B6700E6CAB300D3A47900CF9F7600CE9D7300FAF7F400FAF7
      F400CA9D7000CA9C7000CCA07600DEBFA400B8895A00D2AE9A00000000009ADE
      AC0056BE6F00AEE0B6006CCB790067C7710064C66F0062C46D0061C36D0062C3
      7000B5E2BD006EC67D00ABDEB40047A85D008EC7930000000000B1BFFA006B80
      EB00A8BCFA006281F4006180F400617FF300FEFEFE00FEFEFE005E79F0005E77
      EF005C75EE00A4B4F7005C6FDC00A2AEEB00DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF00000000F9F0E700D2995900D8B18B00E5C9
      B200D5A87C00D0A47800E1C3A700E0C2A700CFA17500D0A37600DCBCA100CFAB
      8400B3754900F3EAE40000000000E4F7E90048C465007ECD8F00ADE0B4006CCB
      790069C9750067C7710067C7730067C774006AC87800ABDEB30075C3880032A0
      4200E1F1E30000000000EBEEFE00748BF6008296EF00A8BCFA006281F4006281
      F400FEFEFE00FEFEFE00607DF2005F7BF200A5B8F8007A8CE9005C73E000E6EA
      FA00DCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FF0000
      000000000000F1DCC500D0914E00D8B18B00E5CCB700DFB99C00D6AA8400D5A8
      8100D8B29000E0C1AA00D3AD8500B3703D00E5D0BD0000000000000000000000
      0000BFECCA003CC25B007ECD8F00AEE0B60091D79C0076CD820076CD820091D7
      9C00ADE0B40077C78A0026A03A00B5DFBD00000000000000000000000000CED6
      FD006C85F7008396F000A8BCFA0089A2F7006A88F5006A88F50088A1F700A7BB
      F9007E91EB005971E400C5CEF50000000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD000000000000000000000000F1DDC500D59B
      5A00CF9F6900DFBE9F00E2C4AD00E2C4AD00DEBB9E00C7966100C3894800E9D5
      BD000000000000000000000000000000000000000000C0ECCB0049C7680058C1
      730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B25400B6E3C1000000
      000000000000000000000000000000000000CED7FD00768DF9006D82ED0091A5
      F3009FB3F7009FB3F70090A5F200677CE8006880EC00C8D0F800000000000000
      0000A971516BDDB18DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E
      75FFD29D73FFCF9A72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516B0000
      0000000000000000000000000000FAF1E700E9CBA700D7A16400CE904D00CC90
      4900D09B5A00E3C6A100F7EEE400000000000000000000000000000000000000
      00000000000000000000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C2
      6A0097DBAA00E1F5E70000000000000000000000000000000000000000000000
      000000000000EAEEFE00B5C2FC007C93F9006B85F6006983F500768EF400B0BD
      F800E9ECFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E000000280000003C0000002D00000001000100
      00000000680100000000000000000000000000000000000000000000FFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      C002000000000000C002000000000000E006000000000000F00E000000000000
      F00E000000000000F81E000000000000F81E000000000000FC3E000000000000
      FC3E000000000000FFFE000000000000FFFFE01FC03F80700001C00F801F0030
      00018007000E0010000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      000100020004000000018007000E00100001C00F801F00300001E01FC03F8070
      FFFFFFFFFFFFFFF000000000000000000000000000000000000000000000}
  end
  object dscontaspagar: TDataSource
    DataSet = qrcontaspagar
    Left = 432
    Top = 240
  end
end
