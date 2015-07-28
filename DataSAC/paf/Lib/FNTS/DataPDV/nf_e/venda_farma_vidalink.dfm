object frmvenda_farma_vidalink: Tfrmvenda_farma_vidalink
  Left = 229
  Top = 148
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'VENDA FARMA | Conv'#234'nios On-line'
  ClientHeight = 476
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 256
    Top = 664
    Width = 17
    Height = 17
    Caption = 'Panel7'
    TabOrder = 1
    Visible = False
    object Label14: TLabel
      Left = 16
      Top = 29
      Width = 96
      Height = 12
      Caption = 'RETORNO VENDA'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 17
      Top = 29
      Width = 111
      Height = 12
      Caption = 'RESPOSTA CONSULTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object RzGroupBox3: TRzGroupBox
      Left = -352
      Top = 1
      Width = 537
      Height = 40
      Caption = 'Retorno da Venda'
      Color = 16773087
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      object Label2: TLabel
        Left = 10
        Top = 19
        Width = 77
        Height = 12
        Caption = 'AUTORIZA'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 199
        Top = 19
        Width = 54
        Height = 12
        Caption = 'RESPOSTA'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eresposta_autorizacao: TEdit
        Left = 90
        Top = 15
        Width = 100
        Height = 21
        Color = 8454143
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 0
        OnKeyPress = btautorizacaoKeyPress
      end
      object eresposta_venda: TEdit
        Left = 256
        Top = 15
        Width = 30
        Height = 21
        Color = 8454143
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyPress = btautorizacaoKeyPress
      end
      object emensagem_venda: TEdit
        Left = 287
        Top = 15
        Width = 246
        Height = 21
        Color = 8454143
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = btautorizacaoKeyPress
      end
    end
    object RzGroupBox5: TRzGroupBox
      Left = -352
      Top = -5
      Width = 537
      Height = 46
      BorderColor = 8404992
      Caption = 'Informa'#231#245'es da Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object Label12: TLabel
        Left = 6
        Top = 19
        Width = 77
        Height = 12
        Caption = 'AUTORIZA'#199#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 296
        Top = 20
        Width = 76
        Height = 12
        Caption = 'CUPOM FISCAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 221
        Top = 20
        Width = 18
        Height = 12
        Caption = 'ECF'
        Font.Charset = ANSI_CHARSET
        Font.Color = 8404992
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object eautorizacao_venda: TEdit
        Left = 86
        Top = 13
        Width = 130
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 12
        ParentFont = False
        TabOrder = 0
        OnKeyPress = btautorizacaoKeyPress
      end
      object ecupom: TEdit
        Left = 375
        Top = 13
        Width = 68
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 2
        OnKeyPress = btautorizacaoKeyPress
      end
      object eecf: TEdit
        Left = 242
        Top = 13
        Width = 50
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = []
        MaxLength = 4
        ParentFont = False
        TabOrder = 1
        OnExit = eecfExit
        OnKeyPress = btautorizacaoKeyPress
      end
      object bvenda: TBitBtn
        Left = 446
        Top = 11
        Width = 88
        Height = 29
        Caption = 'VENDA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
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
    end
    object eretorno_venda: TEdit
      Left = -257
      Top = 20
      Width = 442
      Height = 21
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnKeyPress = btautorizacaoKeyPress
    end
    object eresposta: TEdit
      Left = 130
      Top = 20
      Width = 30
      Height = 21
      Color = 14680063
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnKeyPress = btautorizacaoKeyPress
    end
    object emensagem: TEdit
      Left = -227
      Top = 20
      Width = 412
      Height = 21
      Color = 14680063
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
      OnKeyPress = btautorizacaoKeyPress
    end
  end
  object tab_principal: TPageView
    Left = 0
    Top = 0
    Width = 717
    Height = 476
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alClient
    BackgroundColor = 12442335
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 0
    TabStyle = tsFlat
    TopIndent = 3
    OnChange = tab_principalChange
    object PageSheet1: TPageSheet
      Left = 0
      Top = 21
      Width = 717
      Height = 455
      Caption = 'Farm'#225'cia Popular'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel3: TBevel
        Left = 0
        Top = 49
        Width = 717
        Height = 3
        Align = alTop
      end
      object Bevel5: TBevel
        Left = 0
        Top = 415
        Width = 717
        Height = 3
        Align = alTop
      end
      object Bevel9: TBevel
        Left = 0
        Top = 266
        Width = 717
        Height = 3
        Align = alTop
      end
      object Bevel15: TBevel
        Left = 0
        Top = 97
        Width = 717
        Height = 3
        Align = alTop
      end
      object pprodutos: TPanel
        Left = 0
        Top = 52
        Width = 717
        Height = 45
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 0
        object Label37: TLabel
          Left = 512
          Top = 5
          Width = 45
          Height = 13
          Alignment = taCenter
          Caption = 'Solicitado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label38: TLabel
          Left = 100
          Top = 5
          Width = 63
          Height = 13
          Alignment = taCenter
          Caption = 'Medicamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label39: TLabel
          Left = 438
          Top = 5
          Width = 55
          Height = 13
          Alignment = taCenter
          Caption = 'Qtde.Di'#225'ria'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label46: TLabel
          Left = 591
          Top = 5
          Width = 24
          Height = 13
          Alignment = taCenter
          Caption = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label51: TLabel
          Left = 390
          Top = 5
          Width = 21
          Height = 13
          Alignment = taCenter
          Caption = 'Apr.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 5
          Width = 74
          Height = 13
          Alignment = taCenter
          Caption = 'C'#243'digo/C.Barra'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object ecodproduto: TRzDBButtonEdit
          Left = 5
          Top = 18
          Width = 89
          Height = 21
          DataSource = dsrxprod
          DataField = 'codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 0
          OnExit = ecodprodutoExit
          OnKeyPress = ecodprodutoKeyPress
          ButtonGlyph.Data = {
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
          ButtonNumGlyphs = 1
          ButtonKind = bkCustom
          ButtonShortCut = 117
          ButtonWidth = 24
          OnButtonClick = ecodprodutoButtonClick
        end
        object DBEdit6: TDBEdit
          Left = 98
          Top = 18
          Width = 283
          Height = 21
          Color = clBtnFace
          DataField = 'produto'
          DataSource = dsrxprod
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object eunitario: TRzDBNumericEdit
          Left = 573
          Top = 18
          Width = 71
          Height = 21
          DataSource = dsrxprod
          DataField = 'pv'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 4
          OnExit = eunitarioExit
          OnKeyPress = btautorizacaoKeyPress
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object eposologia: TRzDBNumericEdit
          Left = 425
          Top = 18
          Width = 74
          Height = 21
          DataSource = dsrxprod
          DataField = 'posologia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 2
          OnExit = eposologiaExit
          OnKeyPress = btautorizacaoKeyPress
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object eqtde: TRzDBNumericEdit
          Left = 502
          Top = 18
          Width = 70
          Height = 21
          DataSource = dsrxprod
          DataField = 'qtde'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 3
          OnExit = eqtdeExit
          OnKeyPress = btautorizacaoKeyPress
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object eapresentacao: TRzDBNumericEdit
          Left = 388
          Top = 18
          Width = 30
          Height = 21
          DataSource = dsrxprod
          DataField = 'apresentacao'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 7
          OnExit = eapresentacaoExit
          OnKeyPress = btautorizacaoKeyPress
          IntegersOnly = False
          DisplayFormat = ',0;(,0)'
        end
        object bgrava_item: TAdvGlowButton
          Left = 650
          Top = 16
          Width = 29
          Height = 24
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
          TabOrder = 5
          OnClick = bgrava_itemClick
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
        object bcancela_item: TAdvGlowButton
          Left = 681
          Top = 16
          Width = 30
          Height = 24
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
          TabOrder = 6
          OnClick = bcancela_itemClick
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
      end
      object pmovimentacao: TPanel
        Left = 0
        Top = 230
        Width = 717
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 1
        object Label52: TLabel
          Left = 309
          Top = 14
          Width = 72
          Height = 13
          Caption = 'Total Paciente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label53: TLabel
          Left = 525
          Top = 14
          Width = 73
          Height = 13
          Caption = 'Total DataSUS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Bevel4: TBevel
          Left = 0
          Top = 0
          Width = 717
          Height = 3
          Align = alTop
        end
        object Bevel6: TBevel
          Left = 296
          Top = 6
          Width = 2
          Height = 28
        end
        object edinheiro: TRzNumericEdit
          Left = 388
          Top = 10
          Width = 93
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameHotTrack = True
          FrameStyle = fsLowered
          FrameVisible = True
          ParentFont = False
          TabOrder = 0
          OnKeyPress = btautorizacaoKeyPress
          IntegersOnly = False
          DisplayFormat = 'R$ ,0.00;(,0.00)'
        end
        object econvenio: TRzNumericEdit
          Left = 608
          Top = 10
          Width = 97
          Height = 21
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FrameHotTrack = True
          FrameStyle = fsLowered
          FrameVisible = True
          ParentFont = False
          TabOrder = 1
          OnKeyPress = btautorizacaoKeyPress
          IntegersOnly = False
          DisplayFormat = 'R$ ,0.00;(,0.00)'
        end
        object binclui_item: TAdvGlowButton
          Left = 9
          Top = 6
          Width = 87
          Height = 24
          Caption = 'Incluir'
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
          OnClick = binclui_itemClick
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
        object bexclui_item: TAdvGlowButton
          Left = 97
          Top = 6
          Width = 87
          Height = 24
          Caption = 'Excluir'
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
          TabOrder = 3
          OnClick = bexclui_itemClick
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
        object bconsulta_itens: TAdvGlowButton
          Left = 185
          Top = 6
          Width = 103
          Height = 24
          Caption = 'Consulta'
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
          TabOrder = 4
          OnClick = bconsulta_itensClick
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
      end
      object Panel1: TPanel
        Left = 0
        Top = 269
        Width = 717
        Height = 146
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Bevel8: TBevel
          Left = 8
          Top = 56
          Width = 697
          Height = 80
        end
        object Bevel7: TBevel
          Left = 44
          Top = 2
          Width = 2
          Height = 46
        end
        object Label60: TLabel
          Left = 52
          Top = 11
          Width = 53
          Height = 13
          Caption = 'DATASUS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel
          Left = 52
          Top = 27
          Width = 76
          Height = 13
          Caption = 'Pr'#233'-autoriza'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 150
          Top = 6
          Width = 50
          Height = 13
          Caption = 'Solicita'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TLabel
          Left = 327
          Top = 6
          Width = 19
          Height = 13
          Caption = 'CPF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 230
          Top = 6
          Width = 23
          Height = 13
          Caption = 'Data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 421
          Top = 5
          Width = 22
          Height = 13
          Caption = 'CRM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 473
          Top = 5
          Width = 13
          Height = 13
          Caption = 'UF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TLabel
          Left = 518
          Top = 5
          Width = 49
          Height = 13
          Caption = 'Prescri'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 16
          Top = 88
          Width = 84
          Height = 14
          Caption = 'PACIENTE...:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 16
          Top = 63
          Width = 84
          Height = 14
          Caption = 'AUTORIZA'#199#195'O:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 16
          Top = 112
          Width = 84
          Height = 14
          Caption = 'RETORNO....:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 354
          Top = 63
          Width = 168
          Height = 14
          Caption = 'CNPJ DO ESTABELECIMENTO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
        end
        object AdvShapeButton3: TAdvShapeButton
          Left = -5
          Top = -2
          Width = 53
          Height = 55
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D494844520000001E0000002B08060000006F8738
            BC000000097048597300000B1300000B1301009A9C180000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000010EA4944415478DA8CC1B111
            82401086D16FFDF784C484C8722CD12E4CE8821A688019880C6E8604F74ECE16
            7CCFC6F909EDC6377ACEB3D2F887E1BA3CDE6D79EDDDE64A867D8448445AF1B8
            E3F58A29133A281AA80A3CED500AF394F34F00BEE61C0540180A80E864C1A5B7
            C845BCFF05C4DAD2D2420D06444C42E23F814C3FCF2A34B17A767F931F646805
            FFE7B514EE302EC7E44EB3524D41CEC276C466432747935A94F502BFE43A504C
            42A98BF244D639F79F00748F3D1240301484371131CC983193CE011C43E9A40A
            D770928C524911E4C7F3E8EDF6BBDFA7DE2122426D14FA6E40531804BA3EABBF
            94DC691EDBD55A6CF9822813046550A4710607E93D348308B9F37144BC1DD887
            711DC4119152E51F01E820632300811008DE8FBCFE7C6801B66166FFB99135D8
            80C11F788CB143081CBBD8F7B90297E5759FD8B743DC1D54E1C7BC6246EBB696
            F6800A0E4BCC3CA0AD4503B2E3107CF626A530AD1D35063C2851E215802D32B8
            01108661A0E3165446600B9EECBF071F26E0DB2A494941FCF85A27DBB2F36796
            24E1BC0E9828B67547C90B7244FC8533DE9449AAA2C218C4FCEAAE1D3A869228
            4D1D0C5CE23836B8290AF9B03DB45B00B1201BC8C6CCCEF0F2CB53867D0FB733
            28F0A932FCFF0A8CBAFF7FC071CE8814F4AC0CEC0CCF5EBFFCF2FF1F1BD0A190
            4801461D30A819800E06390C14044C40F15F0CBF4121C7F41B641BC3DF7FA028
            61002762800062C1F00DD0E73F80A9ECCAEB0B0C0F6E3D66F8F9F10730C131A3
            F81B64E4EF7F7FFE7171F031FCFFF30C98708021C6048CE37FEC0C9CDF98197E
            7DE2666062012638CE770C2CC0A0FFF59F119E64988034133313034000B1E04A
            B5ACC0D4A0AAA9CEE022E7CCC0CF2608D4FC0BEE6B50E25A757C19E3E5B38781
            06338243E4FF3FA03FFFB033B0BEE16378FBE00F033B1F30258802D58AB231FC
            F9CB0C74C81FA0CEDFC0F805FAF8EF7F06800062C2957241868182E6E6873B60
            1FF3B0700183911D8C3959381898FEFF15620226496606B0790C4CFF80C9EBFB
            5F86DB875F3318CB381E6BCAEECC156195FBF5EB3D306E19B8C1291E928318C1
            B908208098F0E657603CDD7E7797E1C893A30C3FFF7D015AF31D1863DF80F83B
            D0173FD898812C90C59CAC2C0C7F7FFE63B873F11383AE8CF9B568FF840C2B15
            EB29410EE14BFF7C0126A85F40CB80A990F13F2859021DC0C2C40010404C84CA
            2876663686479F9F316C7D7080E1C9CF2F402B39193E820A90FFBFFFBEFBF78E
            8111989ADEBFFCCB707F1F3383E033DD8B66C666DE42224297DF33BC66B035F4
            2AB651883CF4F313D0A7ACC0ACC7F40F98D2D919FEFD646100082026620A4850
            56FBF4EB1BC3A5E7E718EE7FB8CDF01398D2E578CCF7FCBCA2F4FBFE8EFF0C3F
            CFF332B8297A2ED057D6F765666479202FC4CDC00B4CFB4CFFF9DE87B9A7158A
            B22ABEF90B8C0690277E0233210B2B2B0340003187677B32FC0566E87FC00CFE
            1FE822062670CA07672030079C8681C90D986A3F7F7BC7F0EAFD1D862F3F5F30
            0830CB5E14E3D438FFF8E69DAF69E1C9BD79AEB92D91C6519FAC0D8C188444FF
            018B2056861FC082839D57F4F9CF7FDFD92F5D3DE6C4C50174CC5F0E86CF6FFF
            FF00082060BA616607FA881998A919FF318323019C69194139EE3F28678205FF
            FF6306B986039857FE307FFEF1F6FFD7DF27FE718930EF96959239FEE71BEB5F
            4E3E7E067E561E867FC25F8106FC033B59948D8BE1CECF770C3E668E93DEBD3F
            137CE0D22E0336766E86DF7FBF33000410CBEBD7AF97FCFCFB4BF0E79F9FCCC0
            829C958185F13FD026C6BF4077FCFFCFF2978991054833FDFB05CC03ACCC7FD9
            99FF7FE77CFBFDD7DF178F5E733CBCF99C575258EDBD94B05CC747AE576B3944
            BE3202FD042C5E400EFEC570F70A2FC30FCEFF0CC2F23FBE463845F63D7E7A77
            DADD672F78D880410D10402CC75F1EF17DFDFE25FB979FC02AEC3FB030670705
            3930AF01933C2330FF3133025321B0F001557AFF8155DDABC7DF18DE3CF8C020
            CBA7F2C94EDF758DBA92429BB195CE5D31011E60B1F0E7FFCB17C2FF3E006BBA
            674FDEF0FEFDCAF4E7F54B85EFC2721C7F6D3DD9D64438C4E84D5836A5E8F98F
            D74C0001C4F289E7DDB7E71F1FB3FF6003D695CC7F197EFD8314CFA05CC7052A
            1C7EB2023123C3F73B2C0C2F1E7D679011D17E19E8ECB1C4CECE659E999AEDB5
            93FBF63130BF9260F8CDF6FFEFC307ECAABBD70A79BFFDFECFFAC74F09311E2E
            DE9FBF3FB29D7AF5987BC9EB672C376292035B2E19DC8ABE727981384000B1FC
            66012673166099FA1798EA80B6B1FD03590A84BF81B9F43D03C387E7DF195EDF
            6364D0F86778CBD3DD748B9A9ADA3C564EF6AB7F8155273032185C64FD1898BE
            0A311CDBF44767F7D157F30F6FFF66F2E8F937865FC0F29985F50B83A4109BAB
            B8E0EB644D9DFFF9DED142AB7C5DC30A0E1C3CD90310402C403B81E50A3BC3DF
            DF3F18D881299715588F317E6561F8002CF6BE3E61631062977C1D1F18B224C8
            28BEFFD2EB738F3F015DF3159831393EF33170DE9760E002D683F7DFFE77D8B8
            F1D7EC959BD854FE7DE30046953CC30F60EDC4F08785E1E33D06863BFFDF49FC
            F9F570C28B6B06878595CC57D5E6773D020820162E607AE20406E7BF3F1C0C2C
            7F59195E3CF8C6F0FEFE0F06592E9537EE7A81B38C0D4CA70B68FE79A2A922C8
            20AA60CCB0F6F80E061E7641867FF74D188EDD0456EA0C9FF8CF5FFAD0B5ED34
            9BCAD75FA20C5CC046C13FB6AFA0321418229CC0620DD812F926C470F3D60FC9
            ED6B2F66044518D6CB2A699C00082096BF6C9F18FE81821B58BFBD7BFE9381F5
            9BC4DF44BF9059465A3A53F8FF4B5FFBF9FD3730337D03370CD8D940098C9781
            EB8B2B8390A02C03A8F67BFB8ED5E8E8852FBA6F1FB132F0FEE56400B55DFEFC
            04567F1CBF803EFFC1C0084C34CCCC3C0CEF7FC833ECDCF73A8499E3F954EFD0
            1FAF0002089857802918544C30B13270F3F0302444A57E0B3588EE79FEFEC5BD
            47EFEF32E8C8693108B208317C02365F7E005B19C62A360C774FCA303C7803F4
            0CD0432F5FFD51BB7AFB27C7DFBFA2E0A20654F1330233D5FF3F7FC1CD275035
            0B2A1280F994E1C1D3A79A6F3E7F12D45693F90010402C0C7FB880451B3031FC
            F9CAC02F22C870EAE641EE2F1F3E2E9717569EC4C2F57F0F070BD74B166056FA
            04AC247E337230C829FE6550E0B9CD70E5B230C3B55BC20CEF3FFEE3FDFAF937
            03132717C3976FA0F2E6333053808A3F0E06509B08E4B1FF4C5F808E78066C75
            3EF9C1C12DFB879189951520805898983981AD87BF0C5CFC5C0CDF7FBE67B8F3
            F23CD3F3B7F7CDC439A417280A6A5C136197DA2E2D2356C3C9C4FD0758B831FC
            01366F84B97F319818BD0216FAC20CFF98FE3FFD0D74F47F601B8B91950D68C9
            5BA04DFC403E37A48603DACCC2FA1F98205F32A8288B9DF2F5B67B012C22BE02
            0410CB2F50F90C2C5D3E7C7DCFC0CA014C18FF8095DF9F8F0CDF7E3F6779FCF4
            96DECD6F17F4ECAD9CE50214A2F280D1F186E1DF6F6045CEC6C00A34CCD8F611
            03BFA8C4190579865FF7AE3C6263675304369BA5C08D2350BD0B329A1558F8FE
            FDF30428768F4155CD709B9898F8D79FBFDE31000410B3469C50F9C7AF6F39FF
            811202FB7F607082AA30608D036CF4FD61FBCDF0EED74B86872FEFEA7EFEF047
            475A58F9181F1BE787C7CF2F4B3C7D733F595082FBD57F66D9BBCFEE32FCBA7D
            F9842BC3AFAFC0485104B6461819D841AD1DA0D758D8AE337CFBB38AC1CD93E3
            A881A14185A424C73731110606800062D6881029FFF9FD3BE7DF3FC054080C46
            509B888511527AFD0335CE80D9E3E7AF9F0CB76E3E5365FBC5236DAE66B4FAC5
            BB7B123B4E6D5CF995F9A7AB8E82FA162549CE1DE25C2C1C572EEFB7F9F2F31B
            031BFB2B60A8DD061A721E9895373178F8729CCD2F0ACA905710BD2728C0C620
            C0FB8701208058B8FF0A307DF9F18DE1DF574670DE6301B60E404D1E50E30854
            5B80DA48C0C4006C557E6058B260B96B98B937BBB0A0DCB7D78CEFDF2C3E3CCB
            504E46D6CDCCC86E3ECF2FC94AD63F76E7D69D389776E5CA59415D2D11D6A74F
            9FFE4E4C715D6960CC33575898F7DD6F46A03DBC0F19DEFC60650008209617E7
            3E323FB8FF95E1D70F60630D585103BB05C0A002FA9C09824159E1CF1F60BCFF
            66FE6EA36CBEE8D71B261616411EC61F1CAC7FEFBD7AC4B0FDEA964C652BB51D
            BC3282CF4DED35576F38F96CB5A8183FC3EAF5916C11212B7F890AAB013DF29A
            8147E20B03BBD833865F1F7F323CFEC2CE0010402C0E9A5E652FF8DF8B7EF9F8
            F71B1B23F79F7FBF4035120BB0CDF8EF3F23E32F6042FEC50AAC1519CD9D1CCF
            29F129EE7BF9E11DD0A09F3CCC9C42DFFF097033EC39BBCFD44AD236DA45C9B7
            874FF80783D8A29F0C37AEFF66F8F5F3DF2F36A03FA4D51818D42C4518F88541
            CD7F26709B1BD4B000082016737DABE98FF89F325CBB769F819B5508D8300359
            0CAA554105C04F60F6009645C036B2B49834C35F602976E1FD2E863F9FFFB0B2
            FC79C9C103EC907D02A68DF9FB97958A8BABEC93E5563857DBA7C970EE143F03
            132B33435D9F1383B6393BC3AB2F9F81EDF0FFDC7FFEFCD50536749E03DBE00F
            010288E5D7EF9F0CBF7EFF02B61AFF30FC06D628FFFFFE03963E0C508B41EDE0
            DFA0CE09C39FDFC0F625D31B86BF6C1F19B8587998D8BF7D6766FD0FEC82020B
            8EDB1FEF892DDEBFB026DDA73C5C4141F8B78A8228C3A79FBF18CC143980A5DD
            6F86371F3F4A5EBC7A36FBDD9B5B45FF7EFC3B636614500010402CC4F586813D
            076001F1EEFF437069F4FF3F33D07D6CFFFE827AA7C074F007D8D73975E9A0BF
            93A64FAC9BB2CDBC9F4007310233D64F605BEED5C7E7BE976E9EEF3C7163B7EA
            976F0F595E3F7D67CBCEAFB018208008B73241E90BD8BE7EFCEE22C3C74FEF81
            590D5822012D05F635FE8142E60FB02A65E4FECBF095F539D396430BCB3F7C78
            21F107583E330373C2AB0FCF3DB65C5A317BEBB5959AF77F5F61F92100ECB6F2
            7E673879F7B4024000E1B5189C9580250F973413301A8055DD3F60C2F80FC6C0
            4629EB5F506BF42F23306A40CD259E7F0CD75E1E56DB76624BC51B60EBF2D5F7
            A7161BCE2E9EBDFFF666F10F9CC0D4CCF39DE10B33B09A01361ADFBE7EF91320
            8058F0590A0A645E396660FF0798C6FF20F530FE437BAFC0A0067A1DD835FD03
            2C3480A51DE73786438FB6C5B03C13B9F8E6E3DBA0A30FF6C8BC667CC3F00B58
            36300335B103B3E96F5031FA9785012080B05A0C2AF24085179FE26F062E31A0
            8F80CD2246E4010260D833015B828C50B5FF41BD495011C9F19FE101CB4DE11D
            E736CC7BF3F5F5FFB7FF5F822B296011C8001AAD6005E61876608B0758E13000
            0410A6C590D63C03BFCA27062E716049F38711D552B0BD7F80A5EA6F564670AB
            1B6804B067C1082EE118183EB27F6278F5E224305418199939FF813B74AC4033
            D9800E64014615F35F26F0200D4000B1A0062F23D80782CA2F1978253E022D05
            2A62C4D6A5F9C3C2CCF88B8DF93F28D8818502D030504D040AFA6FBF417D3260
            D20396FBC0763B30EB016BA7BF2C905E25A85A0596FDBF587E330004100BB2A5
            20570BA93C67E093FC000C5E2670C2C29ABD80E519F3FF5F4CCCE0B8061909E9
            E93381FAC8C0128219340204B2ECFF77067660E1F303D89603BA0EDC69FB0D0C
            F36FEC5F19000288059E658014B73CB03C95FC05ACC678F00DFA00B314EBDFEF
            8C9C7F400D6141508DF69B0D58AB7131FC65FD0BEC0B03BDCCF80BD8B10715BA
            A04E39B0D60376CA41991E5805013DFD878109D88607084088B5A50008C3B06C
            B483A2A09FE2FD0FB89FBDD826665EC013240D213491CF9DBCCCEE09BD84A007
            FE5636A19069DAD38AC7CE849266A86AC85B821616183E8E63AD3BA43148A053
            DA556C823BE16A245E0FAF006201A5DFEF2C9F195E7C7FC6F0FE16070331437B
            ACAC6C6C576F3CFC76F5E68F372CA026CFAF1FC02C0E2C563980C1FC0BE8FB3F
            A08616A4B1F71FD83BF9C3F617DC2860FDFF91E1F7EB3FC05A8AF10340800100
            72B6FF3284E3083A0000000049454E44AE426082}
          ParentFont = False
          TabOrder = 12
          Version = '5.0.0.0'
        end
        object esolicitacao: TEdit
          Left = 148
          Top = 19
          Width = 76
          Height = 21
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = btautorizacaoKeyPress
        end
        object ecrm: TEdit
          Left = 418
          Top = 19
          Width = 49
          Height = 21
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 3
          OnExit = ecrmExit
          OnKeyPress = btautorizacaoKeyPress
        end
        object dfpdata: TDateEdit
          Left = 226
          Top = 19
          Width = 96
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
          OnKeyPress = btautorizacaoKeyPress
        end
        object dfpprescricao: TDateEdit
          Left = 515
          Top = 19
          Width = 97
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 5
          OnExit = dfpprescricaoExit
          OnKeyPress = btautorizacaoKeyPress
        end
        object euf: TDBComboBox
          Left = 470
          Top = 19
          Width = 43
          Height = 21
          CharCase = ecUpperCase
          DataField = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          Items.Strings = (
            'SP'
            'MG'
            'RJ'
            'RS'
            'SC'
            'PR'
            'ES'
            'DF'
            'MT'
            'MS'
            'GO'
            'TO'
            'BA'
            'SE'
            'AL'
            'PB'
            'PE'
            'MA'
            'RN'
            'CE'
            'PI'
            'PA'
            'AM'
            'AP'
            'FN'
            'AC'
            'RR'
            'RO')
          ParentFont = False
          TabOrder = 4
          OnExit = eufExit
          OnKeyPress = btautorizacaoKeyPress
        end
        object ecpf: TEdit
          Left = 323
          Top = 19
          Width = 92
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 11
          ParentFont = False
          TabOrder = 2
          OnExit = ecpfExit
          OnKeyPress = btautorizacaoKeyPress
        end
        object bpre_autorizacao: TAdvGlowButton
          Left = 619
          Top = 16
          Width = 86
          Height = 24
          Caption = 'Solicitar...'
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
            650041646F626520496D616765526561647971C9653C000003424944415478DA
            62FCFFFF3F836BDDA1044E3EF668264606630606060E206664608092FF81C4FF
            7F0C7FFEFDBBFBE1EDFFBD8C9FDE971E9EEEF38B010A00028811648057DBD1C3
            8B738D3599981805FE33303033FC678083FF60F67F86D75F7E332C3BF381E1C5
            A39FDFAE5DB9217464BACF4F900C4000B180082666467536166681ABAF189899
            1819C136032D65F80BB2F9CF7F86EFBFFF3238A8F23298ABB1309CFCF79AEBFF
            3F8DF7F6395B050F4EF1FE0910404C60673032F2005DC2CCC6CCC4C00A146101
            1A0064323083CC026226B05FFE3148F2B131F8984A3228A8B073B2F071CF07E9
            050820268803217E067198401A80BA5030D0A4E7EFBE33C8F3FC66D012626448
            B514666066650E05E90108201664BFB230834C6204861B23C3BFBFFFC1A681C4
            D8FE3331DC79FB9FE1D7BF3F0CFFFEFD62B0556267606461FA03D20710402C30
            CDA0B062616402D2FFC16C462646482400C3E23FC83F6C40F3FE010DFE070A63
            269002B0C5000104F302D08750FF22399D111885AC40E7B3020DDB70C68F61C5
            516B06761626B0DAFFD098020820B00140978105FE410DFB0F9605DAC3043110
            E48D9F7F7E33C88868324CDD63C0F0171443FF2006000410D80BFFFEFD876802
            2388D133F73900397FC1FEFEF5E70F83A4A03283A68439C3E71F5F19E2E62B32
            FCFDB312AC0E2080C006804DFC0FF12FD46060CAFBC5E0AA1D0F4E0B7FFFFD05
            8AFF6778F6F13183AE8C35C3975FDF19CE7E73E3D06BF9CE08104010170013CB
            3FA00B1ACEFF02C5010330AC18F8FFFC026B7EF8F636C36FA02BFEFCFBCDF0FB
            EF6F864F3F3F3318C8DA327CF9FD8DE1E4FD233F0002086CC09F3F7F19FEFE65
            002614560623316020015DB3F7D90F863F7FFF3088F3C90135FF051BF6FCE323
            06211E0986738F8F321CBFF5F0FF8FFF0C0200010431E0E7BF7FC0CCF2FFD75F
            06C6E34F81CE65FCCFF00DE88205C77B8161F08BE10790AD0C0C400B253786D3
            0F8F303CF9F88281F3F5F4AF7766797F070820B001BF7FFC7DC9CDC62C52AEFB
            8B1B1898A0C4C0F04FE732382CF8392169CD7FA63430EA39195E7F7ECFB029FD
            D447A3D4FD4F41E20001C402C90BFF7BDD4A0E0502F384213016B81059111AAD
            40F845EC27FB93F70718055E6EFE6092BEFF1C30392C0329010830000A6153A7
            B16A96FF0000000049454E44AE426082}
          TabOrder = 6
          OnClick = bpre_autorizacaoClick
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
        object epaciente: TEdit
          Left = 103
          Top = 89
          Width = 587
          Height = 22
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          Text = 'AAA'
          OnKeyPress = btautorizacaoKeyPress
        end
        object eretorno_datasus: TEdit
          Left = 103
          Top = 112
          Width = 587
          Height = 22
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          Text = 'AAA'
          OnKeyPress = btautorizacaoKeyPress
        end
        object ecnpj_estabelecimento: TEdit
          Left = 527
          Top = 62
          Width = 169
          Height = 22
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = 'AAA'
          OnKeyPress = btautorizacaoKeyPress
        end
        object eautorizacao_datasus: TEdit
          Left = 104
          Top = 63
          Width = 242
          Height = 22
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = 4227327
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = 'AAA'
          OnKeyPress = btautorizacaoKeyPress
        end
        object eautorizacao_datasus2: TEdit
          Left = 433
          Top = 77
          Width = 179
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227327
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          Visible = False
          OnEnter = eautorizacao_datasus2Enter
          OnExit = eautorizacao_datasus2Exit
          OnKeyPress = btautorizacaoKeyPress
        end
      end
      object FlatPanel1: TFlatPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 49
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 3
        UseDockManager = True
        object Bevel1: TBevel
          Left = 52
          Top = 4
          Width = 2
          Height = 42
        end
        object Label56: TLabel
          Left = 60
          Top = 11
          Width = 92
          Height = 13
          Caption = 'Programa Farm'#225'cia'
        end
        object Label57: TLabel
          Left = 60
          Top = 27
          Width = 48
          Height = 13
          Caption = 'Popular '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label58: TLabel
          Left = 108
          Top = 27
          Width = 40
          Height = 13
          Caption = 'do Brasil'
        end
        object lvenda_codigo: TLabel
          Left = 480
          Top = 16
          Width = 69
          Height = 13
          Caption = 'lvenda_codigo'
        end
        object lvenda_data: TLabel
          Left = 480
          Top = 32
          Width = 60
          Height = 13
          Caption = 'lvenda_data'
        end
        object AdvShapeButton1: TAdvShapeButton
          Left = 0
          Top = -2
          Width = 53
          Height = 55
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
            6D000000097048597300000EC300000EC301C76FA8640000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC54600000DD14944415478DA629C716D
            2B03232303D3E127975D3FFCF818FCEEE757C9FF0C0C20B1FFFFFF3330323130
            FC63A0196084B3FE83AD646094E512BECBC2C2B63248C5E6B8B69022034000B1
            3033B2B01C7D72BE6CE3ED038D9F7F7D63616066A5C0C2FF181693ACFFEF6F06
            294EC1187D11B91C2D2185150001C472F7FD23F715377636FD60606266E4E407
            AAF94FA6D120FFFF870405D881E499C3C0C6C8F0ECFB7BE1E6938B67A80828DC
            000820960BAFEF44FEF8FB17E8385EA0917F290BBD7F90D0FBCFF88FA21860E2
            1060F8F4ED1DFFB16717DC00028805E85A690626568824999E66F8C7CCC0F087
            898185F91FC3BFFF8C400C1463F90B095152D324C819A0D4C8C4C2F0E4F31B39
            8000620119CDC0F41F1AB3C4460D2C1241698685811DA83F52E621839DE03B86
            5FC0C0DBF9469C61FD1B49880319FF8253FF7FA2330DC8D47F60BD8C4C4CFF00
            0288E5FF7F906E98C3FE131D156095FF5818F899FE324CD4BAC81027FD189235
            8012F1324F18FA1F2831D4DDD662F8C30C339B18CF2365B2FF908C0610404CE4
            950E90905362FBCEB054EF3443BC24D071BF8171F1938581E1170B03C7BF7F0C
            950AB71966699F6310067AE0FF5F6632A21B020002887407827CF69383C198FB
            33C37AA3930CDE222F818E6286E47E607432001DC4F01F68EC5F26864460A82E
            D13DC720C5FA13A8869D2CEB0002888964C7FD666370157DC9B0C2F004831ECF
            4748CE65073A8A0598419818197E3331433208DB3FB07B3CC45F32AC3538C560
            C0FB1EA89715A98C24AEAC04082016A2CA7A60E8807316D07111528F19A66A5F
            641062FD0576DCD39FA20CFB9E58311C7FA3C7F0E4AB30C3DF3F8CC074F981C1
            90FF1683A3F4690663B15B0C1612EF1936729C6448B864C4B0FF9D18D0433FC0
            9E05179B8CB0E409CA78FF3152294000B110553241A32C5FFE36439BEA75062E
            B63F0C2FBF09334C7B98C4B0F4A90FC3E3AF320CBF80C50CC3EFDF40FC079804
            FE322CFFF5834198E12D839DF8398652B3250C968AD718561B9E62C8BBA6CBB0
            EC851C30947F332095EDD09060C4A828000288A0031980099CE31F13439DDA75
            860AC59BE0CAF9CA073586D4AB7D0C273ED9022DFAC2C0C0030C913F3F1918FF
            002DFDF987E13F339066F9C9F0F63B27C3FA3B8E0C7B6F1930B43B4E67C8B2DE
            CC305FEF3C8320EB1F86198F9481F90C981498FF3080CAF5FF58420F04000288
            056FE4FE6165100126F03EF54B0CB1524FC0A2373F2933045F5CC470EB973603
            03FF7B883A6071C3C00C09847F7F81D6B002CB3E6088FF67018626EF47864F9F
            58197236E703C5FE3164DA6D6598022C96E4B8BE3134DCD664F8FE8719A80EA8
            FE3FCC81A86913208098A0952734B81911090FE838798E6F0CCB754F31C402CB
            350660DAFAF99795A1E05A2DC3ADEF5A0C8CDCEF181838D81818B9D81918D9D9
            18408D8CFFCC2087023533031D07AC09189898C061C0C2F1938185FD1743E9D6
            148683377480198881A10C580CCDD0BEC020C20C0CC5DF2C90C2FF3F9AF380EE
            0108202654FE3F889B8145821130D76D00E65417E1370CFF41E51BEB7F86650F
            BC1976BC766160E07C0374043303230B1BC37FA023C10E05D16C6C1071705109
            B4F81F2481FDFBCFC2C005CCE95FFF703374EC0965F8F583159CC1E2A41E312C
            D33BC5A0C0F683E13F308743EA8B7F884A0318AC0001C4020F3E588E0016B836
            82AF181600D38A32E75770D1C0084C27DF7F3233CCBE1F0274C03F700881EAEF
            FF7F80E9E72B30EDBD7BCFF0FFE51B06A6B740877FFFC4C0F8EB17D09EBF4087
            41CAC4FF4087FE006A63FDC3C570E2AA04C3F907B20CE6EAF71818BEB230B88A
            BC6658092C4F532E1B325CFE22080CF05FD05804BB8B1120805810D50B90FEC3
            C61020F18C6136308D88808A1190AF400D29E6FF0CA79F68315CFDAC0E0C3DA0
            A35F7F6760FA0CA43FBE6760FA0A74D03F6041CC0674340F3BC33F316186FFDC
            1C403E3B03333B2B0333B0B66706968D8CC0F863FEF587E11B30D99EFF63C060
            FEF71EB8706004DA61064CA7EB8D4E31C45D316238F65E089832FE431A1CC074
            091080C572C501108881E8B0E1BF8E201038C472070CA7E456280E8043E0F829
            609729E0DBA669E6CDF45F50300A50EA1D5D3D202781AFA94A60CB75855C5AC3
            365B283BC2BF0E1E9011A67D2E94E14E35DBA357778EC42B82E29D14FECA1AC6
            9EE2FC903A75490257E49862232F0AC77F9272D460951EE8CC80B66FB0D82F1A
            E9BDDE23004BE5AE04100C44D16B301E9DA1A0F6010AA5DA67FB1A9D86A108C9
            48DC8D54996D766733F79C4DBC37C43DA4696A0E7499F2A1F5DBD97077F96E47
            C9554EC435CBAC224339A1287E18A4A1682D68C66A83E8D1B04A6A8DF4D6B490
            C17B1BD88BBF3BAF40CFDEEA8F9C085A660EBC4C23B3BFEC6D80C6B94F0022CB
            2005601006822296D253F1D2FF3FB10F08A6B34BDA9E0C28519765B2E30B1ACD
            A4F80760854FCFD75023EA79E202210434A4FED68B2D3C04A50CE9D079569092
            7870677FE02784B575B715ED3A6E5F96D9DF0868CC542E177C2DCC022B8F0062
            81972BC0C2F5D847018697C01C2CCE064CF8FF8051CCF41FE25AA67F0CC2FFDF
            33303EFFCAF05F00549C80320A30FA98112515B00004B65AFE014311E830605A
            FB0F0C4D96BF7F811903240ECC3040393660B2E661FEC1A029F708D1BA6384D6
            5440C9CB9FF918CE7DE687D80B2CD6981919FF010410B4D30671C4836FDC0CF9
            37F5193E83A20C58C8FE875594406975FE470C5C1F80E5E12F6008FE82441DC3
            0F6048FD007AE6E70F081F88FF8368A03C0B501D17103301D97F8021CA024C93
            7F7F303228F33F663051B8094E12B0961B23B08C7C026C2165DED06778F78B15
            EC1670FD0FF42F400031C11B92200AE8A895CF651882CF5B30DCFDC9092CE77E
            43DC0F9436927ACAA0CE729581E1CD67A0E1FF200EFA0ECC4CDF818EFA017230
            10036990E3598151CD09C44CC090FC07741C33D0A1ECC08CF31B582B7AA9EF65
            E017FC096E3B32828A1260B577EE233F43C0594B86A3EF44C07C48D262045300
            01844804FFA0450FB078D9FD5A9C21FCBC39C3B56FBCC0A0FF0DCE04A2825F18
            92348E30303C79042CFBBE03FD024CC4BF21998111E83066A003D9810EE202D2
            9C404782430E9C598021F99711583C723028FC3BCC10EF72049C21C176B2FE66
            38F84184210468D7D9CF0240BB7EA296C9400010404CE82D17B034FB4F86B35F
            0418828021B9FFAD28A47DC7CEC410AD7F9EC147EA18C3BF8B7718388065202F
            B0BEE502862617D0915C40477200732B332817FF04E5DA5F4047021DC7C8CCF0
            0B1872FFEE1E67680B5BC120AF004A16A0EEE51F8665C0D88ABA64CA70FF1727
            C471FF31DB880001C484D9658135237E31DCFCCAC3107AD18C61E533690606EE
            7F0C02A23F18BADD7631E8F15E60F872F232C3EF07771998806990155CF6010B
            8B3F90C60213B0E9C501ACB7B980B9FDD3FDD70C9FCF6C66E8F05DC41010082C
            A5411505B00C9D00ECB3A45C356278F6930D9C41C1498911D3810001C4821182
            A0EA9309DA480346F75BA04589C012FEF10F4E866285BB0C1A8A6F1996C76F63
            A8DB68C6B0F638B0BC62E6606014166260E3E50516DE9CC09A1098B88169F3EB
            BB770CBF9F3F6050E5BFCDD0927F8B212802D4FA064635D03315773419A63F50
            01D6AA401FB1403BFB8C8C88CE1812000820168CCE1003B455F31FD401FF0F6E
            D77D0776904A6FE9303CFBC5C1D0A6729D418BF10DC3ECB8FD0C3E3A320C0B76
            CB335CB9C1CAF015586BFCF90B2ABBFE31B0033B534A821F19C27CDF3124047E
            6490D7065585FF193E7C0336BB803975E93319706680B4A021AD56483B155E00
            C3014000B1A0F739FE633896095C2EFD67FCCDD07F5F95E125B03898A4758941
            98E33B431CDF3D063F93A70C371EF3323C78C2C1F01998D6D88105B98C18B0AC
            53FDC1202D074C6C1C7FC1A5C3DDCF5C0C19570C18F6BC03F69781C50A03BCFD
            074DF9E0D8C51C910008201622860D808E638218044C97CB9ECA32BCFEC9CE30
            4BEF1C8382C40F06216033C54AEA3B839529C8238C90D60EB069062E6C41F601
            0BF433C06224F1B211C3954F82E0021954EB801A0FFF89E83801041013E13E09
            13B48303350C58ECEC7E23CE1072D69CE1CC171E60EBE60FD841FF39811E6103
            D52ED0F4FB8711DC05DDF24A9C21F89C05C395CF820C8C6C3FC0D51878A48191
            B80E2540003111338A00192F6162800F1D0043E12CB04A0A3E6B057400B09706
            AA9FFFFF83B6311920AD0C60B4CE7D2ACF1073D994E111A84F0C0A39701A6384
            364C89EBC803041013EA680B8EBE09E37FB4F4F11FDC2B7B04CC34B197CC18E6
            3D9163F80B0C454660D9C6C0FE87E12B30885AEFA933645E3300369D18C11D23
            489AFB8F3AC28173E0025AE00169800082371610BE229C2E18612361C0F2EB03
            3087A7031DB21758A03B0BBF64F8096C416C7925C9B00D980CC02109761CB447
            454CA881CBB97FD0DAEE3F034000014BA17F90E6C87F682F9A91B0F320FD6C68
            22073AE00FD08865CF651956BD9401863323B8E5058A62708CFE67226D5014E6
            06F030DE5F2680006292E0167A066ACF3102D318232331C311A0B28E11A9DE61
            82F81A58AFFE01668A7F4C7FC0E98D11D48E84E65358214CFC182110FFFDC520
            CD23F6082080984C4535967232B1FDFEFFEB2B6478039C1960AD0926EC186C0E
            88CD0C095160F102F22038C4C0A1066CD032B240873618A1E632E3360F6E2713
            C4DBC08E9700B7D07B0769831D0001C4A22BACB82B5AD3BD66E5AD7D2D9FBFBD
            67C51C44FF877B4C1AA9A8C556A3FF672031E440AA812D24496EA13765E6B1D9
            7A22CA97000288E50FB0196C29A5DDF39BF1FFD95FBF7F78BFFBF145023E8CF8
            FF3F7EE31919307325235AD388D8B14B70D2636454E015BBFDF3DF9F4D4A02D2
            6740C2000106004662666261B35A540000000049454E44AE426082}
          ParentFont = False
          TabOrder = 0
          Version = '5.0.0.0'
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 423
        Width = 717
        Height = 32
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
        object bconsulta_datasus: TAdvGlowButton
          Left = 10
          Top = 1
          Width = 123
          Height = 24
          Caption = 'F4 | Nova Consulta'
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
          TabOrder = 0
          OnClick = bconsulta_datasusClick
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
        object bgravar_datasus: TAdvGlowButton
          Left = 144
          Top = 1
          Width = 123
          Height = 24
          Caption = 'F5 | Fechamento'
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
          TabOrder = 1
          OnClick = bgravar_datasusClick
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
        object bcancelar: TAdvGlowButton
          Left = 581
          Top = 1
          Width = 123
          Height = 24
          Caption = 'ESC | Retornar'
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
            61000000097048597300000B1300000B1301009A9C1800000A4D694343505068
            6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
            F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
            561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
            7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
            1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
            01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
            C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
            00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
            00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
            CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
            4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
            48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
            223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
            560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
            2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
            FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
            F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
            4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
            79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
            812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
            0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
            170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
            48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
            90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
            5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
            5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
            8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
            272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
            48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
            6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
            A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
            2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
            1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
            192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
            3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
            09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
            46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
            EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
            4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
            EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
            79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
            3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
            67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
            6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
            A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
            5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
            D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
            743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
            4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
            D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
            C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
            3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
            FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
            0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
            15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
            476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
            BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
            F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
            A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
            6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
            68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
            949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
            F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
            DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
            772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
            A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
            955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
            EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
            CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
            26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
            8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
            B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
            7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
            EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
            E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
            5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
            EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
            EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
            FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
            CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
            ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
            CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
            F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
            0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
            003A980000176F925FC546000002284944415478DA8CD23D6C95751406F0DFFB
            716F6969A1252D29D66023A47C95488844063448020E263830299184F09DB0C1
            42800DEAE0060E24181C9D4C1860C0401417257150304125A0161028B9DC40B9
            EDDB7BDFFBFE195A304A4D7AC69373CEF33CE7799849AD74C02EC1164D7C8145
            28433AA303ADD6B4AC236D11D7321F3B2FC727184E6674E0AE9BCDBACDE57774
            A4AF89F36F2D94F903C3F1B40B8BBD6A99E3781B6DB8E5B14A9411BF82F5E6E1
            3DF4BD2CA1D7A0E5BE32CB80EB1661C802FD565B66CEA4E67885B8386B00FDFF
            66D0ED5D6FF9AEEB9881A80FBC8E4D5639317B93248DD04298DC6AC3FC7F18F4
            D8618B13BD47B525DD916A16E834E80383EDDBB426732846895B0923A08E34B2
            54C998A1AEBD0EF41EEA8C6A794DFD7143E31ECD06C95C8CD21C9F342EAA51DD
            2A77DBF7F83CD5B47DF191F6836FEC5AE56EE30EE381D2A8A8AFD0CC08351A09
            49374599EA29DCF610BF6324754325D4423E57679AA70D629222F6B43CA63E6B
            42E8A054221FA1322438AD829FF113FE4A305CBDD0E879307E6BF5F28D4BA3A4
            DCA1287251A9246413B2BF9BAAE778B25BDDD7EEE0475CC615DC84040B71A667
            9FC647D9FAF061D818E67F266897E13EAEE3224E6227DE44175EB858423F4E96
            369BD8D17C3FF47FDA1A700F5FE230B661C394B5B3113D4787024F71B5F84DF5
            D76B37D646495E1EFBC1137C834B53D4FF440513FF97FA140BB067EA5197B17F
            0A75DAD847D3F462CCC312F4E1017EC12384FF0E3F1B001E31B6BB673B659C00
            00000049454E44AE426082}
          TabOrder = 2
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
      end
      object wwDBGrid3: TwwDBGrid
        Left = 0
        Top = 100
        Width = 717
        Height = 130
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        ControlType.Strings = (
          'TURBO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size')
        Selected.Strings = (
          'produto'#9'36'#9'Produto'#9#9
          'pv'#9'10'#9'Valor'#9#9
          'qtde'#9'7'#9'Solicitado'#9#9
          'pc_vista'#9'10'#9'Datasus'#9#9
          'pmc'#9'10'#9'Paciente'#9#9
          'qtde_autorizado'#9'7'#9'Autorizado'#9'F'#9
          'obs'#9'200'#9'Retorno'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsrxprod
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 5
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        PaintOptions.AlternatingRowColor = 16117737
        PaintOptions.ActiveRecordColor = clBlack
      end
      object Memo1: TMemo
        Left = 17
        Top = 648
        Width = 4727
        Height = 249
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'Lucida Console'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
      end
      object Memo2: TMemo
        Left = 400
        Top = 536
        Width = 417
        Height = 89
        Lines.Strings = (
          'Memo2')
        TabOrder = 7
        Visible = False
      end
    end
    object PageSheet2: TPageSheet
      Left = 0
      Top = 21
      Width = 717
      Height = 455
      Caption = 'Vidalink'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel16: TBevel
        Left = 0
        Top = 49
        Width = 717
        Height = 3
        Align = alTop
      end
      object FlatPanel3: TFlatPanel
        Left = 250
        Top = 193
        Width = 217
        Height = 21
        Caption = 'Produtos autorizados pelo Conv'#234'nio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 0
        UseDockManager = True
      end
      object FlatPanel5: TFlatPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 49
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 1
        UseDockManager = True
        object Bevel2: TBevel
          Left = 108
          Top = 4
          Width = 2
          Height = 42
        end
        object Label26: TLabel
          Left = 116
          Top = 11
          Width = 132
          Height = 13
          Caption = 'Programa de Medicamentos'
        end
        object Label27: TLabel
          Left = 116
          Top = 27
          Width = 127
          Height = 13
          Caption = 'administrados pela Vidalink'
        end
        object AdvShapeButton5: TAdvShapeButton
          Left = 2
          Top = 4
          Width = 102
          Height = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000580000002408060000000D75FD
            8E000000097048597300000EC400000EC401952B0E1B0000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC54600001AF14944415478DA62FCFFFF
            3F030833FEFAC7F09B9991E1C8B55B5A8FDEFF505551D2BDA223CB7C979B8181
            81E5EF4786FF4C7C0CFFFEFD03AB65616161F8F9F327033B3B3B032AF807267F
            FFFECDC0CA8A2E37320140003182020C0CFE7F6760F80E0C64566E869D575E99
            2DD87BB45C5088F74DBAA74D838938C7730626548DE048616484F3DF03311B48
            1C889980041B508A65347C19000288119682BFFD6564E06606A6C13F5F18FEB1
            F2303CFCCEC03A71F1DE8E3D47CF840404F9CFAD75936F02A558262626861F3F
            7E3070707030FCF9F3079C9A3F7EFCC870F8F12FB3DBB76E187C7CF342303634
            A04F5A90F537C768F8320004103C05FFFBCBC0C0080C6046101798FD19D87E33
            7C656266987FF0655C79FFDE85069AE2670A93AC4B8355790F30FEFCC5F0E53F
            2BC3D1876F8D369F781CB7F3F2EBB0A7CF9F4B7E67E06360FEF29C615DB9AF95
            9F89F4710636B6111FC0000104CFC54CFF7F00439983E13730A0593818194090
            9D819321C64E619112BFD7B590BECDA78BBAB66D781E6D53C8CAF4F3C7B223CF
            0B8E5E7D68C6CAFC93E1E71F0E06262E3EA029DC0CCC8CBC0C7F393959195847
            0B08100008204419FCF737C39F5F4C0C8C9CCCC072145499313030FF61626002
            2569E6CF0C336EB0441635AC5CF69F1558C9717E67F8F2990BA85688818DF537
            C34F604430337E63F8FBED1F03CB9F770C0B0B7D3DC3CD6476308F862F034000
            2192D93F5660C0FD64F8CBF00B18B8C000FB034CD540D93FC08AECE6A36FFC7B
            F75E0F62106467F8F19D071819C0D682E05F062EA0DCD737BF181804D81978DE
            DF631093967FAE23A3744A5D4AE8E268E042004000215230309CFEB2008B09A6
            DF0CCCFF818DB3FF4C0CEF8081BCF6DCD3F0AEA5BBFAEFBC659164E0FEC7C00C
            AC0C19998418FEB0B13230BCBDC36021CF77CE4055F284BF99E65C0565E91B02
            9C0CDF4481A1CBFC1BA879101413F06628B072FEF3EB2BC37B366E86CEE5FB3B
            7A231D2BE8613F4000C103F80FB060600696BBFFFFFC05A6DC7F0CDF185819A6
            EF789C51B970D7F4DFECBC0C2C6C9C40077E61E067FDC2F0F1335003AB0C83BE
            E20F86B5A58E6CCAEC9CBFFF02CD6166E380B4D3FEFE610097312CACA07802B7
            8E99913C0B6A89806850BB9A99993E69FDEFEF7F0C3F59991832E71D9CB7F5C8
            F1F837F32AE862314000C15BB77F8121F3FF0FD0F3C0A6042870DBD75FA8A95F
            BA67FA6F062E06266E2E863FFF8081F6EDC7437D19B1459ED6DA331898FE3DBC
            F9E80BC3C91BAF9D19809D0A6676606AFDF713D4CD008626D05856600A670485
            F51F70131AD4F900B59B41810B0A5858E082E8BF7FFFD2CC83B0CE11330B13C3
            E12B2F8D56EDB991A8A86472955E39082080E001FC0B180C4C2CDF8081F28761
            CDAE7BBE13D69E6BFECAC8C6C02ACCCEC0F1FA31031FCBDFCBEDB16615072BBD
            E3A744EA678A70BF7EF3E33B17C3F6232F237F30FC60F80AEC56FC616607A658
            5686EFC032FA2FA80FC2086A27FF058633A867C70AF62CD8526020C3522E28D0
            69998A4176C192D08B0F3F657FFCE464E06511FA44AF000608207800F30203E9
            2FB09975F4C567E5BAB5FB177E61156460E0E266F8FFFA1383BE92C08A23A556
            56253EDA2BFE31FF67501262663094933ACF004CB5071FBFF37FFBE633B8D7C6
            042C5E8061CAC009AC1D99C0C50E0B305FB0830A7714CFC252152C80C1E0E77F
            9A78F017C868901DFFFF30FC66FCC90A4CCA0C2CFFDFFFA65700030410520798
            99E125B0AB3C6BFD99EA87EFBF0B327200B3F8FB370FFD8C85FBE63544266A29
            4A7D01BB939915DC23519511BD0DEA5EBF7DF79EFFEEDBDFAA7FFF838A02604A
            6402B53C8001FD0FD89CFBF38FE10FA83C6666C44855A0800505F2DFFFFF408D
            42862FC078F8091ECDA06E40B3018DE300BA85E13F3B3017F1FE06F5A47E33FF
            007AE22B30E2BF337C07D9F91B54BA81F84017FC273EECBFFE850C11FC840E11
            60733940002102F8EF7F863B1F7EAAAE3CF62C9141488681F1E73B06471591FD
            7D79DEC51A6C0C3F9881499319A20C6C940007EB0786DF9F197EFCFAC370EFFD
            3F2D5005C90095FBCAC4C8F00B8841653128FBFFC552AB8302F23F5009132313
            B853C301EAD8000382E90F23418F1D797147B9EBF4D6AC030FAE6A1059978323
            FED7DF1F1C0CFF9841ADA4BFA0AA02D47D65F9F30D18E15F1898D880310CECB9
            1213BFDF806A4EDE7E2F573AEBE0A4C9EBAF95FC05DBF00F8CD1014000210298
            898D61DDBE0B693FD9841818BEFF6650E6F9B3B739C3B7469E03A8FDF7478823
            81A9940598E2806D1E86B79FBF08811CC4046C29FCF8C7C4C5C60849BDA0ECFF
            E8F32BC12D4F2FD95DFCF44C04D227FC8FE27050E04244214EFAFAE33BC3CEA7
            57CD4E3FBF2BFD8F85B00FCF7E7CEA30EFFA91A9C7DEDC776780A69CDF4077FD
            0597B46818E8EC3FA0D127C69F0C2C8CE0B4CAF0FF1F0BC35F566E865F8C3C0C
            ABCE3DF3DA71E3B3D137A0D82F4616869FC03AE4C75F84FE7F30A7FF03F90D22
            061AC8BAFBEAB3D6AC1D9772B79DB81EC30CEA17FCC19EF20102081EC0EF7FFC
            64387FF3AD35C39FAF0CCCFFBE31C4D9EB2E3095657E0A2E3F593980D99E19DC
            FC0215A33F8062571F7FD46660E30536267E338871333F05A5BBDF4C1057DCB8
            77C7A87DD7CA83D34FED6C7C07CC7A4CA0A4FA1F11C8A0E20116D73F7EFF6478
            F1EA256BDABE057B275ED8DD71FBFB3B2E42012CC0CCFE8601588431B2B302CB
            79060650ABF13F23C42BCCC01061FEC700C5D0711650E2F805ACAC9959BF818A
            B59F7F5E7301AB7386DDB7BE9AC5F4ECDAEAD974E0ECEBB71F81291CD29C0467
            3E70A1F98F8109586C30828A0DA0BF9880C99E198859184095380BEB5F76604F
            9657F8273BA8A40755D4B0DC89949E000208DE1378F7F517EB83179F3418B839
            18E4187F1E0CB4D25AC7C600AC6C19F980DAD9C11A58802916D4DA387EF385E2
            B9076F8C1918B9180439187F2A09735C839432FF807D0B56063545E58B1C8F05
            4F9DFBF4CCF6C2DBC7BACE121A9741299B09DA2C03D1B0320B346ECCC1CDF5DB
            5DC560A526ABE039314EDE6FE050FB078BFEBF0CFF803E061525603160B9FEEF
            C72F6616209F8389E53B0BB069C9CDC208094C5024FE03C720A266F9076AC580
            EA0E60F313D80D05368519045818DEF002034A4380E1BCAFB1F4361656E1DF42
            1CFF197898FEC2732AB8FC628036E0FF829A9EAC90340D6C8AFEFBCF0AEB4500
            C395E9F78F5FBF18383858C0CDCDBFA05CCD042F98180002081EC09FBFFFE7FF
            F9EF9720C37716062535BEBBAA92DC408F7E86580054091A3E0735C1EE7F6160
            5BBCE742ECB79F4C9A0C4C3F18B41445CEC888F0BC01398D1DECBE7F0C127CC2
            6F1CE5B5366CBC7AB2EDE0B35B3E0E926A97614D316668E0FEFD072A06811102
            345354588C61BA6574CA9F9F3F18B8FFB34187F640E52613B8426504E54D50CE
            019542C072FD1F072B13A84880244F60E0FE857A075899FE04B6727E010302D8
            E804B6E61919D8801E0085DB7FE6DFA0CA97F5F75F90F9C09EEA4F603128CAF2
            7B46BEBBB7300707D0EDB0AA8A19D8DC6463F8F31F12C6205B80A507B895C40E
            B48B11988B1959B918383839BF31FEFB0E74EA4FA67FC01C0E2A3619C0ED7C48
            3102349E8113180F000178AE969D8481287A91EAA485428B4120213E50C44734
            E9C6C4E027B8F28FFC21779AB83171A33B2246D9986220C323A1B4B616EDBBDE
            198D1F3067EE3DF771CEFD27F8DB4FF311D3C34885C3D6D66BCCAA96E0432144
            E161CE8129AE08D70FFAF9D5FDD3259435DC2B03D8DFDCE9C8220695C6405284
            C33591C3D4DACAC6ED1D742E9E4D7A3A5B3850958ABF5AFAD7C1F6A703CEC25D
            2EAA4AC83CF28769E13E4732087AEF152E991CD3C72E193B33A94BFB6D3BF14B
            C7E5F54796B7C80798B3082E16358F27A3E1B9D033C7CDFE7C7A200842B85BA9
            77F794EAA880FA920996A0902BB14FC0C8666B1E91F85DF43EB5B72791FFA535
            E449822479084A0D4F7AD1E9893E328EFC144F28228567CDD51BADA1BEC944E4
            531CC411C9C401F2CA5C09160D636579315B38A073625956A55E5B1BFE082078
            000B71BC7F052CBEFF31B0FC6362FBFBEB170B3035FC07A6985FC0E8630715BF
            C0C0DD74F69D79F1FCC37D8C72560C0CAF6E338873FDF9196C673083FDCF17A0
            093C0C7F806DA25FC094C5F38785C1425CE99C1CAFD0EDDB9FDEE9EC7E77D737
            96DB7833B857070C44505A6938BF65D2D967F7EC5A9C2262655978EF261E5F7C
            588985EFDA0CEFD458503AE2FA070C30606A98787967DDE95B57F9C4F90445B8
            9958BF9C7E70D3E109CBAF0C262E76069EDF0C1F81B51B030F1B13C3FDDF1F99
            EA8FAE99FFF3F357764951B1C72FFE7E937D7F76BF8887A6F1AA3863A759C2AC
            C0A610B067C4CCF803D45AF9C60E8C9E4B2FBF88D8B56EBEC3CDC6C570B3CD95
            5192FB3743D3F64FCDB3B69DADF9FBF60183B492D653695EA6BBF79F5DD7EA58
            FA6B82A681C1C5BE3493606BE1AF77D9FF7CFDF68F991358AE737E63FD03292E
            FEB2FC62D87EE585756AC79EFDEC5CC23F37B5A8280304103C80D90564BF89F1
            723D79FBFA931C2333EF3F56509EFCF999818D9D1FDCFBDD7BFB9D6AEB828DB5
            ECDC1CF23FDF3E076AE0617033945B69A9C00A2C7F59C1B90B94EED8803531B8
            4801A6141365CD03F72E1C8EBCF4ECBEE52F39C3CD6CA0C11FA0BADB1F9F0BDE
            F9F84A4B5148FC9A06BFC46560452808CC8E462C1CEC17FF03533848EF3760B3
            70E681F525971EDD620EB5743819AA6ABE9A1D98515F7E78C5B4E8F6897B1B1E
            5CE8FAC4F847F00FB04A078632C3A4B33B3BAFBC7962566517941922A67BE0CD
            EF2F0C857F562E5C71EF4C96A984D25E1B29B5BB789B5E6CBCACE71F3C119CB1
            FE50CD5F60793EBD20D8CFC35C61B3303071BD02A688F2E907172E3E7A2E6EE1
            FA6F256631FA996CAC4C3F41B9E1F7CFAFAC6CA0A2949383E1E8A3DF1A29138E
            1F626213F83B37D3CC5E5FF4D32B800082B722B881D95C439CEF3C031B07C3A5
            07EFF41940651CF31F861FC000B9F4F81B4FF9D23D5D57DEFEF4FE091A4D0356
            6412CC3FBEE504D85471FEFFC9F00D54F633FE8717ECA0B80156400CF68ADA9B
            0599D8775F78FDC8F2CE87973C3005279EDE767BF8E59DB391B8C21119567E60
            93FF0FFF7F6053E7D79FDF1CA0DA9F0958599D7A7A47E3E88B3B1EBACA6A7F23
            54AD560BFE6166E00246B4228FD83F396EC1DBA02153F0042CC8EDC0B2F1E397
            CF828112DA730325750F801284303B3783AA88D4E56FBF7FEA7FFCF3439850CB
            84E3F7AFDF4CEC9CFF3E035B48CAF2B2778380812B06ACE4997F3C6710035640
            594136B5A05EE0D5A71F4C5838B841151A2B03B0CEF8CFCCC4CC020CDC934F7E
            C945B7AF39FDE9C71FA6B678DB287703C973CCC0FA032080E001CC032C043C4C
            149733FCFFC570F3F537F5579F81D1C6C4CE70E0EE4FCDF4491B665F78F03980
            89979F81899397E1FFA7D70C95012639A6B29C4FFFFC6566E00486CA1F70BBF6
            3FD2DC2823830ABBD0734D11E9732F7F7D7138F6F4B60728F5BEFEF595E1D8AB
            7BEE3C9C5CD7CC2494F631805B40FF98B9D839807A19FF32B1B000CBFABF0CBB
            AE9F0DFBC6CAC0E9AE67BE920FD8BBF9010A49E6FF904A17D83CFBCFCA0CA904
            81B511073050DAF47D52922CDD7BFE805B333FC1ED6C4976DEC7ECC0A2E1F1FF
            6FCA84029815980AFF8306B480E5223B3BFB3756707B0D18B2CC020C5FC015DC
            D71F20BB81A52EFB2F60B4FEFEC7C80A72070BAFD0EF736F59C47226EDDEF2E2
            D55B9EFE2CFBF8047BD1357F7E836A496E0680008287072730B5DAEB886F96E2
            FBFEE5C1E3FB0A7B1F7EB75C7FEB9B61FAA455B34FBCF819C1202401EC04013B
            426F5F3044DBA92F49F1D09ECFF81F14B0CCE0C11C4890328253F05F682B971F
            D86BB290D7D80DEAAB9D7871D7155469DDFDF15EEEC68717FA46A2F287748565
            6E801CCDC9C8F2F9EF4F60D5F1EFFFBF6FBF7E001BFCCC0C0F7F7E54E566E7FC
            A2C12572131490CCB0E40F74F78F9F3FB97E002BE1BFCC8CACA07A02948C2584
            C519F880EDF2EFBFBF335CF9F85CA4E3FCB6DCE50FCEE6B203539DCA77B62B84
            02F8072B1FC397BF2CFC60BBFEFD040F4BFD6704063030C2598139F4FB7F462E
            0E6005CCC3F2FF1328EC983905FFB201E5EE3F7FEB90376DD3CB338FBEEBF6A6
            7AA72458C92C0255742C2CBFC0CD3B80008297C1A091047909FE6F910E9A93A7
            EDBA5CD9B6FECCB107AFDF337CF9C6C1C0C2036C4B7E7EC9F0FB173383B3AEF8
            A1CE648758B6FF90862A073062FEFF6783D4E9D0C63E786C9811D28D3296523A
            A4709D7F33B0CCD5BDF6FEB9E0E90F0F9C7F7EFB6E64ABA6D82004AC5C406D67
            B6FF8CC0D615230327B0E9F31FD8E6FD03849FFFFD12E2E2E1FA2C006C73829A
            4BACB0361390E26261FBC2034C401CFF18BF837B8440B1B75F3F306CFE7827E8
            D0C533C2A03692BCBC3C8F9AB0E4952BAFAF5BFFE36465223CAEF917D4DAFFC1
            C3F28781E7DFE78FCCBF81CD486093900DD842E162FA0D2C16D980C6023B113F
            7F00FB567F81953F13C72F60E7ECC797CF0C77DE037BBA5CBCC0F6C1BFDFDCA0
            4C000CD51FC0D4CF01D40710404C88B9A37FC074C8C4606A61BB9F9D8D9BE1CA
            BD770C5F3E03A539B9809EFBCBC007ECCE9ACB705C9C92EFE329C509CC24A0EC
            CAF80F3A10086AE8431AE6A09218347B001EAE04726439057E5B4BABEDF8FEF7
            B7E5D60717DF1D7F7A7B9E2287C03A4B71A51DA032F417B0EDC808EC3C3002D9
            5FFFFEE2010D04B17CF9019E96FAC2F4971FB43400DC81008D2D033B00A08124
            50803203BB5D6CBF4133B5C0C00536CFEACF6D9E34EBD0D6485D350DA6C9C199
            B31B4CFCDA2578051FBEE0049AF3EF373FA1F0E504B56DFEFD62F8F6FD0BB09F
            F193818D15D4A605157BC0E200580CB2FCFDF5FB3F3052817C665E60F90174F3
            5F16605DA4212D78A036C12B9EE1FB6B86FE75A7BA779C7D6A046CB8018B95FF
            4013591900020811B3C046F3FA83777D5B666E9CFE0DD41807B508B880AD83CF
            EF18BE7FFDC5A0AEAC76665145B8B91A3768AC03A4ED07D841A0661C38FB027D
            FDFBDF5F7851F19B0112286CC0E69699A2C63E0E76F6E3879FDE62B8F7FE2583
            96B0F4791521C9DFBF818D76C810C97F2650C07EF9FB8B9F1DD8F1106001F610
            F9055E3EFAF65EE5C9EB175C8CA0C803063833B015F20FD853FA036CFD828A88
            3FECCCAC1F81917CF8F10DBB036FEFF906AB99EECB507398C9F1EB3FB8E523F4
            9DE10527B07DFC9F8991600AFEC6C8C9F09D5394EB1F9B28C32F565EF0920E50
            4A054F12B00073EADF2FDF8001C2F0F31F2B3B6848E3CFCF9FACA07284F7FFB7
            8F3116928BF2C3027AEEBEFE2596B8F4D4E1136FFE2888FC7BC3C0FEF32F0340
            00318192C089370C729133AE2ECB9DB777D39557EF9519B959C0EDBA5FC0CA83
            1B98627CF444B66D2CD6335513FCF9F3C71FD0E00950FEE777A09ABFE0B632AC
            D3CDC6C40CEF1E8246C72083C40C0CF6020A3734D984CEBF65FF079A7F3E6A26
            ADB217346806EA56B380DB77C0DE19B0C1FE8F899399EB3713C357D6CF0CF682
            325BFE7FFDC73AEFD5EDF20FCCDF20830BC040FE012C3E80E1FC9B0DD4B80706
            003730522F7D7861C9F88B5DC154D2680FD7F76F0C8C6C5F816D52D08C09E7BF
            BFFF7E30B030FEF8FD07D8ECE3FAFFE5F35FA0BE9FFFA5B9407DBD1FFF3F72B1
            007B785F58791938FF027B91BF3E0133CD5760E711D89900CD75B182DAECC032
            1998A2FF32B23033FD02E6716E6089FC0798A3991FBC0745F627064E41FE9F3F
            191A02A54B7D8DE4B7BD7EFE95AB62D6F6950FFE8A82C72700028869CEA65371
            C9F5B30FAE38782FF213232FB028E101367F81C1CE096CD97CFAC420CDF693A1
            2BDB375C44501C5C68B3B1FD835461C0E615C35F6E50180363F927C122CE5EC3
            60F3EF0F5F18A45879EEEBC9281D870DF6B00353FECF5FBF38BEFD0205F88F1F
            EFFF7D04069A0083A78CC93A056EF61BFB5F9DF5ED3FB2BBFCFCFB6762A01CF2
            E9F3078633776EDABF6303C63437B0650C4CF1D25C0277FFFFF9F160C3930399
            77D93E000B2F6E86AFBF18195E7FF92AC5F587E71AF32F6160D5C7C2C0F8F5F7
            3FE6EFDF815DEB97BF598099989399FBF35FA01F787EBF66F8050CD46F2CFC3C
            A071862F3F7EF181EA10D05832308B0213092BB04E6017FCCFC2CDF0E61787E4
            1F608BE72BAB083F03B0EE79F38753F217B03214009A31BDC4CD5B5F99F7DAE1
            93AFCC3A979C9EFAF3F70F06800062D97FE5B9FFB517AC0A8C223CE071826F9F
            BF82475A64185E7E4C4E706A3F79F8B073EBD213D3E76659C4026B3B50C1002E
            67D941831FC040014D2E8307A919F12FF63312963D24CBC8B5595740EA941C87
            003065FC0337B519814508B059F4035875DC10FAF6EFCD3F76600A067A4A5254
            88A1CC29B0B0F7D8C6DE3D8FAF85EC7B73C34F8091E50DCBB7BFBF819DCDA3E1
            AA46F59ECA464B40458197A2FE9A136F1EB9EEBA732CF0F9B7670A4A5C4A97BF
            FEFA2170FEC1356153058D03BA728AA740A367EC7C623FF898BE017BADDF5FFD
            00EAFB032C4DD980750BEBEFAFFF587E01DBBCFFD87FF3FEFFC0C0FDE7EF2770
            C6FCFB0DD812838C337033FDFCC8F5E52E03F76FE92FA0C1063626C61F8CBF5F
            0273B8E047D0A4021BBB288334F71786CE54DB88C4CEA387676CB89A25CEF7FF
            11400031E62EBCD03BF9C8AB22D6FF6F80BD92EF0CDCC010B356E2DFDB99E014
            6120C9F3E6D43306E9D4A97BF7479A734C9696D57EB07ECB81645121EEE7713E
            663DC60AFC77D940630B4C842B6950A4EC7A79D3489E5FE486069BF03706D880
            17B0827B056CF91EFB70C35AFB97F8195549999F10395008B0323CFEF38EE1D6
            9B57BAA7DF3F76F8FBEF3BAB38ABD02327258375729CC0CEF40F90DDC0721958
            1CBCF9F183E1C0CBABCE575E3D37FBC1F0974B948FE9B98198FC511361D58B82
            7F99C0A317EF7FFF63D87FE9B69D9A8CF4451D19AE8F6FBF7D65D879FAA187A0
            80DC1B4F5D86335F7EB1336C39FFD8555156FAA6AE08C3232ED0442E2333B875
            FF07D87CDC7AFEA9350737CF770F2DBE73CFBFFC673878E3BDABA830FF0B6745
            E6CBE0F290F113B0121664B874F79FD8ADC7AFF48584BEBD020820C67597BED8
            0555CF39C8C023CCA021FAEF51B697616D8CBBEE220150F2FA016C7E700832BC
            00A6D488FE1DC70E9EBA6DC9C927C6F0FFFB3B0615C19F7767D4A6B89B48F2DC
            65676218F2003C1F0EF43207B061F207D8DEA7D6C245800062B152E33E94ECA4
            328B575CE2536EA071B922FBFF7FA0E1C13FC0586701062EA87521F1EF33C3D3
            8FEC0A0CFCD20CDF398065198B08C38D376F94D76CBF94619262553A1C56E080
            0A384842E1A0EAB25B80006201F5B33BB2BCD34540ED0946E828F7BFFFE05CFA
            0BDCF6E460F8FDE71BC3CF0F4FB818D978806D4468AF0DD865FEFCFD27DFEFDF
            E09EEB28C001000288E9F7CF2F0C22A01A99890D98359818E063D74C7F805DD2
            FFC05E092303070F0F83B3B1F4BAFF9F5E3130FE02AD78FFCFF0F7CF27067373
            F57D1CA3818B170004100B2BB0D7F6EF1F6439130B6C380CB432079892F9606D
            5C600BA129D83E09D82BFFBDF2C2B3347E36A68F65AE8E85C9C6522B9910733B
            A3000B0008300039A6F40338D15B410000000049454E44AE426082}
          ParentFont = False
          TabOrder = 0
          Version = '5.0.0.0'
        end
      end
      object PageView2: TPageView
        Left = 0
        Top = 52
        Width = 717
        Height = 403
        ActivePage = PageSheet5
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alClient
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 17
        TabOrder = 2
        TabStyle = tsWhidbey
        TopIndent = 3
        object PageSheet5: TPageSheet
          Left = 0
          Top = 21
          Width = 717
          Height = 382
          Caption = 'Autoriza'#231#227'o'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object Bevel12: TBevel
            Left = 0
            Top = 338
            Width = 717
            Height = 3
            Align = alBottom
          end
          object Bevel11: TBevel
            Left = -4
            Top = 147
            Width = 721
            Height = 2
          end
          object Label30: TLabel
            Left = 290
            Top = 318
            Width = 33
            Height = 13
            Caption = #192' Vista'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 165
            Top = 318
            Width = 52
            Height = 13
            Caption = 'Nota Fiscal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 496
            Top = 318
            Width = 50
            Height = 13
            Caption = #192' Receber'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel
            Left = 385
            Top = 318
            Width = 45
            Height = 13
            Caption = 'Conv'#234'nio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 615
            Top = 318
            Width = 39
            Height = 13
            Caption = 'Subs'#237'dio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 61
            Top = 297
            Width = 36
            Height = 13
            Caption = 'P.M.C. '
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 290
            Top = 297
            Width = 33
            Height = 13
            Caption = #192' Vista'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label71: TLabel
            Left = 165
            Top = 297
            Width = 52
            Height = 13
            Caption = 'Nota Fiscal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 496
            Top = 297
            Width = 50
            Height = 13
            Caption = #192' Receber'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label73: TLabel
            Left = 385
            Top = 297
            Width = 45
            Height = 13
            Caption = 'Conv'#234'nio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 615
            Top = 297
            Width = 39
            Height = 13
            Caption = 'Subs'#237'dio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object evalornf: TRzNumericEdit
            Left = 139
            Top = 312
            Width = 109
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameHotStyle = fsLowered
            FrameStyle = fsLowered
            ParentFont = False
            TabOrder = 0
            OnKeyPress = btautorizacaoKeyPress
            IntegersOnly = False
            DisplayFormat = 'R$ ,0.00;(,0.00)'
          end
          object evalorvista: TRzNumericEdit
            Left = 249
            Top = 312
            Width = 109
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameHotStyle = fsLowered
            FrameStyle = fsLowered
            ParentFont = False
            TabOrder = 1
            OnKeyPress = btautorizacaoKeyPress
            IntegersOnly = False
            DisplayFormat = 'R$ ,0.00;(,0.00)'
          end
          object evalorconvenio: TRzNumericEdit
            Left = 360
            Top = 312
            Width = 109
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameHotStyle = fsLowered
            FrameStyle = fsLowered
            ParentFont = False
            TabOrder = 2
            OnKeyPress = btautorizacaoKeyPress
            IntegersOnly = False
            DisplayFormat = 'R$ ,0.00;(,0.00)'
          end
          object evalorcliente: TRzNumericEdit
            Left = 471
            Top = 312
            Width = 109
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameHotStyle = fsLowered
            FrameStyle = fsLowered
            ParentFont = False
            TabOrder = 3
            OnKeyPress = btautorizacaoKeyPress
            IntegersOnly = False
            DisplayFormat = 'R$ ,0.00;(,0.00)'
          end
          object evalorpcm: TRzNumericEdit
            Left = 28
            Top = 313
            Width = 109
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameHotStyle = fsLowered
            FrameStyle = fsLowered
            ParentFont = False
            TabOrder = 4
            OnKeyPress = btautorizacaoKeyPress
            IntegersOnly = False
            DisplayFormat = 'R$ ,0.00;(,0.00)'
          end
          object evalorsubsidio: TRzNumericEdit
            Left = 582
            Top = 312
            Width = 109
            Height = 21
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FrameHotStyle = fsLowered
            FrameStyle = fsLowered
            ParentFont = False
            TabOrder = 5
            OnKeyPress = btautorizacaoKeyPress
            IntegersOnly = False
            DisplayFormat = 'R$ ,0.00;(,0.00)'
          end
          object Panel2: TPanel
            Left = 0
            Top = 341
            Width = 717
            Height = 41
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 6
            object bgravar: TAdvGlowButton
              Left = 453
              Top = 8
              Width = 125
              Height = 24
              Caption = 'F3 | Fechamento'
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
            object bfechar: TAdvGlowButton
              Left = 583
              Top = 8
              Width = 125
              Height = 24
              Caption = 'ESC | Retornar'
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
                61000000097048597300000B1300000B1301009A9C1800000A4D694343505068
                6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
                F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
                561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
                7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
                1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
                01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
                C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
                00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
                00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
                CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
                4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
                48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
                223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
                560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
                2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
                FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
                F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
                4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
                79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
                812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
                0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
                170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
                48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
                90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
                5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
                5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
                8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
                272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
                48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
                6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
                A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
                2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
                1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
                192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
                3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
                09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
                46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
                EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
                4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
                EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
                79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
                3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
                67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
                6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
                A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
                5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
                D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
                743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
                4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
                D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
                C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
                3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
                FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
                0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
                15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
                476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
                BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
                F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
                A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
                6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
                68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
                949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
                F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
                DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
                772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
                A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
                955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
                EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
                CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
                26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
                8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
                B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
                7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
                EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
                E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
                5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
                EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
                EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
                FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
                CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
                ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
                CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
                F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
                0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
                003A980000176F925FC546000002284944415478DA8CD23D6C95751406F0DFFB
                716F6969A1252D29D66023A47C95488844063448020E263830299184F09DB0C1
                42800DEAE0060E24181C9D4C1860C0401417257150304125A0161028B9DC40B9
                EDDB7BDFFBFE195A304A4D7AC69373CEF33CE7799849AD74C02EC1164D7C8145
                28433AA303ADD6B4AC236D11D7321F3B2FC727184E6674E0AE9BCDBACDE57774
                A4AF89F36F2D94F903C3F1B40B8BBD6A99E3781B6DB8E5B14A9411BF82F5E6E1
                3DF4BD2CA1D7A0E5BE32CB80EB1661C802FD565B66CEA4E67885B8386B00FDFF
                66D0ED5D6FF9AEEB9881A80FBC8E4D5639317B93248DD04298DC6AC3FC7F18F4
                D8618B13BD47B525DD916A16E834E80383EDDBB426732846895B0923A08E34B2
                54C998A1AEBD0EF41EEA8C6A794DFD7143E31ECD06C95C8CD21C9F342EAA51DD
                2A77DBF7F83CD5B47DF191F6836FEC5AE56EE30EE381D2A8A8AFD0CC08351A09
                49374599EA29DCF610BF6324754325D4423E57679AA70D629222F6B43CA63E6B
                42E8A054221FA1322438AD829FF113FE4A305CBDD0E879307E6BF5F28D4BA3A4
                DCA1287251A9246413B2BF9BAAE778B25BDDD7EEE0475CC615DC84040B71A667
                9FC647D9FAF061D818E67F266897E13EAEE3224E6227DE44175EB858423F4E96
                369BD8D17C3FF47FDA1A700F5FE230B661C394B5B3113D4787024F71B5F84DF5
                D76B37D646495E1EFBC1137C834B53D4FF440513FF97FA140BB067EA5197B17F
                0A75DAD847D3F462CCC312F4E1017EC12384FF0E3F1B001E31B6BB673B659C00
                00000049454E44AE426082}
              TabOrder = 1
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
            object bexcluir: TAdvGlowButton
              Left = 273
              Top = 8
              Width = 125
              Height = 24
              Caption = 'Excluir'
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
              TabOrder = 2
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
              Enabled = False
            end
            object bincluir: TAdvGlowButton
              Left = 17
              Top = 8
              Width = 125
              Height = 24
              Caption = 'Incluir'
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
              TabOrder = 3
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
              Enabled = False
            end
            object balterar: TAdvGlowButton
              Left = 145
              Top = 8
              Width = 125
              Height = 24
              Caption = 'Alterar'
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
              TabOrder = 4
              OnClick = balterarClick
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
              Enabled = False
            end
          end
          object grid1: TwwDBGrid
            Left = 9
            Top = 158
            Width = 696
            Height = 139
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            ControlType.Strings = (
              'TURBO;CheckBox;1;0'
              'SITUACAO;ImageIndex;Original Size')
            Selected.Strings = (
              'produto'#9'36'#9'Produto'
              'pv'#9'10'#9'Valor'
              'qtde'#9'7'#9'Solicitado'
              'pc_vista'#9'10'#9'Datasus'
              'pmc'#9'10'#9'Paciente'
              'qtde_autorizado'#9'7'#9'Autorizado'
              'obs'#9'200'#9'Retorno')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsrxprod
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            ParentFont = False
            TabOrder = 7
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = True
            PaintOptions.AlternatingRowColor = 16053492
            PaintOptions.ActiveRecordColor = clBlack
          end
          object RzGroupBox2: TRzGroupBox
            Left = 11
            Top = 6
            Width = 697
            Height = 128
            BorderColor = 8404992
            Caption = 'Consulta Autoriza'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            object Label9: TLabel
              Left = 10
              Top = 18
              Width = 153
              Height = 13
              Caption = 'Pr'#233'-autorica'#231#227'o VIDALINK :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label3: TLabel
              Left = 10
              Top = 58
              Width = 84
              Height = 14
              Caption = 'AUTORIZA'#199#195'O:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 10
              Top = 81
              Width = 84
              Height = 14
              Caption = 'CNPJ.......:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 267
              Top = 82
              Width = 140
              Height = 14
              Caption = 'PLANO DO CONV'#202'NIO..:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 10
              Top = 105
              Width = 84
              Height = 14
              Caption = 'CONVENIADO.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 267
              Top = 105
              Width = 140
              Height = 14
              Caption = 'NOME DO CONV'#202'NIO...:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 267
              Top = 58
              Width = 140
              Height = 14
              Caption = 'TIPO DE AUTORIZA'#199#195'O:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
            end
            object Bevel10: TBevel
              Left = 0
              Top = 44
              Width = 698
              Height = 2
            end
            object btautorizacao: TEdit
              Left = 170
              Top = 11
              Width = 311
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 12
              ParentFont = False
              TabOrder = 0
              OnExit = btautorizacaoExit
              OnKeyPress = btautorizacaoKeyPress
            end
            object bconsulta: TAdvGlowButton
              Left = 488
              Top = 10
              Width = 200
              Height = 24
              Caption = 'F2 | Consulta Autoriza'#231#227'o'
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
              TabOrder = 1
              OnClick = bconsultaClick
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
            object eautorizacao: TEdit
              Left = 104
              Top = 58
              Width = 158
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              OnKeyPress = btautorizacaoKeyPress
            end
            object ecnpj: TEdit
              Left = 104
              Top = 81
              Width = 158
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              OnKeyPress = btautorizacaoKeyPress
            end
            object eplanoconvenio: TEdit
              Left = 414
              Top = 81
              Width = 281
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
              OnKeyPress = btautorizacaoKeyPress
            end
            object ecodconveniado: TEdit
              Left = 104
              Top = 104
              Width = 159
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
              OnKeyPress = btautorizacaoKeyPress
            end
            object enomeconveniado: TEdit
              Left = 414
              Top = 104
              Width = 281
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 6
              OnKeyPress = btautorizacaoKeyPress
            end
            object etpautorizacao: TEdit
              Left = 414
              Top = 58
              Width = 30
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
              OnKeyPress = btautorizacaoKeyPress
            end
            object etipo: TEdit
              Left = 445
              Top = 58
              Width = 250
              Height = 22
              BorderStyle = bsNone
              Color = clBtnFace
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Courier New'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
              OnKeyPress = btautorizacaoKeyPress
            end
            object FlatPanel2: TFlatPanel
              Left = 7
              Top = 34
              Width = 55
              Height = 21
              Caption = 'Retorno'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentColor = True
              ColorHighLight = clBtnFace
              ColorShadow = clBtnFace
              TabOrder = 9
              UseDockManager = True
            end
          end
          object bretorno: TButton
            Left = 472
            Top = 244
            Width = 177
            Height = 25
            Caption = 'RETORNO CONSULTA'
            TabOrder = 9
            Visible = False
            OnClick = bretornoClick
          end
          object FlatPanel6: TFlatPanel
            Left = 250
            Top = 137
            Width = 217
            Height = 21
            Caption = 'Produtos autorizados pelo Conv'#234'nio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = True
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            TabOrder = 10
            UseDockManager = True
          end
        end
      end
    end
    object PageSheet7: TPageSheet
      Left = 0
      Top = 21
      Width = 717
      Height = 455
      Caption = 'Novartis'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel19: TBevel
        Left = 0
        Top = 49
        Width = 717
        Height = 3
        Align = alTop
      end
      object FlatPanel7: TFlatPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 49
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 0
        UseDockManager = True
        object Bevel18: TBevel
          Left = 108
          Top = 4
          Width = 2
          Height = 42
        end
        object Label10: TLabel
          Left = 116
          Top = 11
          Width = 132
          Height = 13
          Caption = 'Programa de Medicamentos'
        end
        object Label11: TLabel
          Left = 116
          Top = 27
          Width = 132
          Height = 13
          Caption = 'administrados pela Novartis'
        end
        object AdvShapeButton2: TAdvShapeButton
          Left = 2
          Top = 4
          Width = 105
          Height = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D4948445200000064000000120806000000AD997B
            88000000097048597300000B1300000B1301009A9C180000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC546000012544944415478DA8490CD4A
            42011085BFEB4FFE54823F656A6646448A44144545042E5BF500F5062D7B8456
            BD418B2882F6B5AE4D148444102E3432354D0B05CBD4DB35ADAB5D2F12B4EAAC
            CE0C3373CE19418E5D80CE483B7D8ED61B42B48FB3936A3260D279F6237707D1
            6C716621E43FD408C216FFA021B798B4590838FA692ABC03B9DDC6693632EDB4
            A2D76A504A157A8D86BD68924C456279D8C1A72CE3B3F46235F470F5F2CA75F1
            0D7F9F89FBB248B2FAC1DA988B78B9C67AC0C792DB415AE137853267D90241BB
            85CDD90984AE0FAD20B07BFB40516AB0E8B1237D7D131E19C26136102F553849
            E431EBB5E8140F61EF205D4BEAFE69A640EA5D44C9AB7A9F77D978AA4A6C0447
            79AC88541A4D35E765BEA4EA74F2782D269E6BF5DF3B2DA5B9BD3285DDD84344
            C97214CBA833AB7EF79F7F75F4733589E3448E8C58674EF9D18F006281CA3101
            4D9167E0E279CDC1C2FCC55E8483E11313C77B2E161676A08DC2DCAC2CBF400E
            C407408EE1666560E0E760013B681490070002081621FF1859594C7FEF5825CB
            1A9237D95080E9D7A57F3CDF3958985E83247545F96E310363131425DF8109FF
            CF7F0606F4E8F9F71F14214C0CC26C2C0C3FFFFD63601C0D5BB2004000B18083
            F6EF6F064679B36D7F366F3DF27772BDA4605C41899900C77F1616B6C7A03CC9
            C3C6FA1D54C47C054646B4183383020723C36FB44C008C0B867BDFFE336C7CF9
            878193793460C9050001C4C2F0FB1B03B820E413FCC2C82BF4EFDF839BA64C8C
            7F05569CBFF661F7DBCF3F5980E5BF0C0FE78BBFCC6C0CEE0CEF19CCB9FF3230
            B0733030A0174BC008F90C94FA3B1AA61401800062F97F771F30308155C8D7CF
            76FFDF3D9567E0E0FACEC0C8C8F20B981B1899987E808A2A1E76B6AFAC4C8C0C
            627F7E0323828DE1FF3F68A581044045D4FF7FA3014A29000820264651750626
            255386BFCF7FA8FE7BF99697E1EFBF630C4CAC5F6478D9199C6544AE73B130BF
            90E2E57965C4F58F41F1DF478EFFAC7CACC0981A0D391A0180005C56CB4A4341
            0C4D32731F94E2D22E4441BA505C2896BA7653A47FE017E847B9EE37F8018A1B
            3742A170B175A128888AA28B526EE7269EB9B4F8580D930C39C990931C0FED46
            3A2976745C9C709E27F956EBE1F9F67A76E1BA185536BD217A83F2FA4A2A2C06
            DF14BA3B3BA5CDE301B9C6FB7F4A442116A5A0F09F65BF9679D7824A1B8255E1
            D7F306487624688952ABCBB96AB19C82F170C2EB73B55D28369E866A0F711FBD
            F0397CAF0BB404BE3E33B7B1DFEE6100D5E97311BB09BC1EDA266ADA689FA4A8
            3383EC462DDBC07495EA28E6CAB574B5256EDBC8BA980A2BB3100C5EC9123782
            EBCAEAEE65F28811CC0E2BB57D9C9C3A2953EF9E90EB06F211DCC5B30CD0C82F
            56C7B40EF00E1CCB07AEF84E1AFFB08108EF3B41AD57AAAEC234FC164040A7B1
            30FD7BFBDAE2DFAB971AC072E73A936FE6D42FD27A0C9F99D881FD0060D35798
            F74BC8D6E33FFBCFDD6260E064FBF6FFEDDFEF8CE76A5A8191819A53808EFDF6
            FB2FC3FD0F5F199E00DBD630FCFEE72FFEC9472E4FB9FDFAA31507B8EDCF08F6
            18D0A1DF84D8D9641FBF781BE3A726FBDC4D519281978D15E45946A09F432FBE
            FC50E4282FFE554D90F7D46427A3B3B75FBE773D76E7D90660E4DA8202F0CFFF
            7FBFD584F99EFDF8FC2D6CEBDDA7CD40BF7D8735CD8101F1E5E1A76F618FBE7E
            770516B577D881C5EEE63BCF18165EB9CF3DEBF48D96D7EF3F3BAB89F0338872
            73303CFDF28D01A60F483FE3656156BDF1E4D5AC443DA569261242D3E61EBB36
            0718F8B9A022FB1EB07F72E8D16B86F32F3E44184B08F2E719ABDE00A61C978D
            17EE2C709617638CD2927BF997F1BFEFB9B71FE40B0F5E00D6048C203B7E3E7F
            F5BEE4D69B8FF140773DFF0FEDA780E8179FBF39ADBB70A7C94A46744F94BAEC
            2EA03BED000288E5DF2F4EF15F7B761630B0B1F1B33AD94C6510927AC8F39B8D
            C1F00F3383201BF3537E4E8E7757DE7C62780FEC9B30888A3030DAE4CF663810
            B98CF16CC9EC7F0613131859FE432A7820E20266220EA67FC0CED37F50C60303
            6013F9DFD79FBFA512B71EDFB820C8CE13D8AC3B21050C080160A7C95E4E6CD7
            8A53D73DDF7DFAFEF1C093D70CB7811D2FC67FFFD40EDC7CD26CAF2E5720C4C1
            7600988218C4B8D876E8CA889CFCF9EBF7C2CC4DC75657DAEB1909B2B13E03E6
            A2B39CFCDC7BDFDC7E92F3FEFB4F196000DCBB03EC48BEFDFE93F9EAC3170A3D
            3E9649C0C00477F040CE79F7F3B7D8AE1B8F9CCC6444B8B8D95897733133BF06
            B51E4189E4E7DFFFA034F55D8E97FBFA3F6027D544529835D34095E1D5D7EF1A
            A7EE3C8DFEA5A3B80198681E47003B88EFBEFFAC3BF8E8E56B60FF8C41928B5D
            E3D2DFBF2E1E4A522B809DD5977FFE31ACFA06CC7EDF7EFD65B8FEEA2303171B
            CB03A03D9F04D8589F1F7EFCEACBDB1F3F811DCDEF603BBFFEFE9306CC819F81
            9DCF73CF811D4B7309E1670001C4C4F0FBAB3AD0B1320CDFBE3C65D4F79FCFC0
            230C4CFA7F8101C60E4CB16C3F9479B96EEB8A08FE9361FEC9C0F0E00CC3FFC7
            6781D58CF13986F7B78219EE6EF060E01004962FAC0CFF195918D4C479181CC5
            D818AEBCFD0CEEDD82F0ADB79F44C425855FA8F0727D4A5C737061CC96E33AF5
            C7AF327CFEF59B81979DF5EF931FBF7EBB4FDBC070051821C094C2F0E0F3F746
            1501EE43CBFC2C77584A8B00D5FD01172BC0B87EAF2823BA8AE5F75FB6A71FBE
            26BFF9FE0BDCF789D6905B2BCECEF6B3F3F4CDAC134FDF308002E9D9D7EFD92A
            F2E28F3EFCF87503941A85807E012580975F7FF8294A09739E7AFAD6938F8559
            3958438EC15D5992410C9840806188D64481007D310186FFBF7E330323FFDD9B
            6F3F18FE00D5B103FB673F80BDF575C01EFFA34F5FFFB33231FF07251C65215E
            06166007FFDF8F5FFF0B8D541980C5303827803220A85000E67E060176360603
            A0999A427C0CEAFC3CF71FDD7F61F4F0C317F7FB9FBF8072EB15800062FAFFEC
            8215B02A1064565678C6F4F6F2D73FD7F633BCE4106750E0E76090E6E7FC20C4
            C9FA4E10D8F4E5FEFD8581E1EE6986FF0FCE323072093E6760F9C6C3F4EB4A10
            C38BFB0C0CAFEE41F03360F1F8F93D0313330BB818006160D9CA652E26B02B40
            4FC9579687F31BCBDFBFEB0E3F7CA97FE8F16B86F7DF7F8B320BF0FED4355465
            C8B0D666F05692E4BCF6ECADD9E33FFFD953769E66C8DD778E418E9F9BE10FD0
            F3CA02BC0CBE8A92BB940579DEACBBF3D47DCD9DA70C024077C5682B5E909310
            DC7FEBD95B4B600A66F10206F099971F5C2DC405FB1F018B4C266056D514E563
            90E6E3623FF6EC4DC49E68570E50C41FB9FFC26533D08C0D371F335C7DF31158
            9633230D6940EA1B10D8FFE4CD3B0F3DE5253FFFFCFDFA1F3A2C0382975E7F60
            B8F9FE3303270B441F28F079819DE2245D6586587D6578B1840C403915588731
            5801139AAF8A1483BFBAEC141E6E8EAFDD5B4F2CFCF0FD77EAA7DF7F58000288
            85E1DB7B21609C3230CB49BE61F8FCE01BE38BAB0C3CC0EEF83B8D0006963F3F
            BFAB08F0DEE0E5FCFB4F9609581F332A029DC20634FAD72B86AFEC0CFFDFBF30
            FEF77EB30C03C3CF279031A45FC064A005646881D4C0C695FEBCF8FA439E8795
            E589B2A4701CC3F3772B1F7DFBBE76FBFD175E1A427C6F7EFDF9C3A82FC2C7A0
            2BCC0F4AD9DC7FBFFE606405A658455E2E864F3F7F31B82B4A30BCFEFA834194
            8B9D818F9DF517A81B2BCAC9FE011449071FBE6090E7E16088D2575954B5F9D8
            E413CFDFB9038BD7F742ECACEF5E7FFB791D94204E3D7BCB700D1878BFFEFD0F
            FAF0FB8FB13C2F2783B6BC38C3EC235732D8D959A6B3B230BF95E4E6641001E6
            22507A06D6154CA031B0BA63D74E7E7EFB51F4EDFFFFE7B38D54277EFEF18B41
            9C87930198EB805527B06C03D697A0C08535444079EA0BB098329712629005BA
            0964063A0045E62B602EFBFCFB0F8326B00EFBF8F3F7537B1D8594C3D71ECE5A
            71EC4A47BEB3D17780006261145639CAC0743CECF7C90BDA4C16AD42CCAA5A1F
            B9BEFE6478F2E6350328134BF170DE14E162FCABC409AC43F845C111F2EFC44C
            2D50EF9E8187E70DA380F65B602D01B5F12F03E37B1160610DEC1E32C3EBFAFF
            3FFFFC63E364F90F2CD7182E2B4B0A45FE7DFA66F9C3D7EFA7DFFBF865212F2B
            CBBF15371E3328F07133F8AB48BFE111E5FFC0F1F79FB495B4A8F0876F3FDE02
            2392819D8F8BE1E1C7AFA0413D566091C16C2C267099075804490303E829B03C
            E66363D9FD5F80E7CFA9E76F9D80C5DB5F170589EDF632A29F807509581F3FB0
            B1D070F25AF8932FDF2FCBCFDEFA838585F93FB0689107E68448291EAE297C6C
            20A741EA41608B874D9E8FEBA9101B73F89D7FFF5C1F3E7D53FAFCD3570BA08F
            4E4800EDFBF2F70FC3924B0F81390873380254348122EA13B09885945598CD5A
            509D05B28F0BE82F50EEF250943A076CCC44EEBE727FC6CC0B77AB0102888941
            40EC00A388C49DFF5FBE0833FCFAACF2FFCB3B06E1EF6F1922385F33E871FD65
            F8CDC0745193FDD75FEB3F4F18FE7F790FC41FF999FF1D0C63F8F7EF33A3A8E1
            42462DC7EF8CEA760C20CCA0EDCCF0574886E1FBCFEF0C3FFEFC65F80EC4C094
            FC9F8385E92730F5FD13E66465F8F2F3F7457519D138C6BFFFF92AF69C5BF81F
            D42D05FA64E7FDE70CFDA7AE33584A0ACDB9FEFA83E9C107CF7D6E7DF8CCF001
            984B408E07153F934F5FB7F9FCE72F8BA3BCC41677054960B1CA0DACA87F327C
            FDF3E74FA1BED29495072F165D7AF9DE49999FE710A4086105D61F6CA0B1357D
            A0E75980916BF3F4D547EB246D451B6F0DB9038B2E3F480F509361B0971703D7
            3DBF406370C05E00D03D7F407587B9B4E81C597E9EABB96B0ECEC83F7041E8E4
            8B770C3CACAC0C2E0AE20C5F7EFF06FB0F946341890E98FAFF82720033BCC506
            C91140FC0F58C4FD676166FC0DD2A305CC19A692E01168B6D7DF7FAA7D06FAEF
            EFDF7FB79D7595E6FCFFF8950320809818158DDF732495C631296A5CFEBD767A
            F5BF63F3F5FFDDD8CBF08F99934187E7378315EF2F062B60BDFDEFCD43867F57
            0E31305C9894CBF0F589CE7F01BFBA7FDCD6EB19FE7E0577D181FE60F80BECDE
            33B17133D8C988002D1562B0069695623C1CDC275EBC330256ACDCDA22020C4A
            823C0C1FBEFF3AA3262D9223CBC97E1E98CDB97EFDF80DAE2380AD2E067B45C9
            B9763A8AFB569CBB5D7CFFDD274F512E0E664160A03EFFFA43EDC0AD274E72A2
            8253812D9393A0E17A6960B1E6A624C9008C20067359B13DC0A8FD622AC4B706
            58013F7BFBED170327B099AD24C8CB30F7CCAD2C1B71A123F906AADF6D8165F7
            A7EF3F18D4A445F7327DFA2ABD0758978086E441152EA872FFF6EB0FCF87CFDF
            F9808D067117397186660FF34C1D19D15F0CEFBFEC05166F52A08006A5727329
            61065BA03FBFFFFF27F1EDDB4F7660E3830B9423DF0031A865076CEE33805A54
            6F7EFCE4FEFDF317EB8D379FB55504F9187980F5CC5760C400699686BDE71A4E
            3D7F27C1054C383FBE7C579510E67B0910802373E749188CC2F0575A28BD534A
            DA42552E42D0048897B89818621C74707067F71F38BB38F83FFC034E444D8CD1
            44270762E240428C17B408949256ADD0423D75FC966F38E7BCEFF39E1CFC70BF
            863045B3FC9E5E078D7953C3AC85525A3F942AEB281C99C804A41C1442FEB09F
            C6FA170718CF3028573BF2A7D953D0AD83F13244D5091AC3A89F99F03134B29C
            E05056605151E403B0AF03FC16B7D3EA6321CE3DE578160DC08721F1BC2B22DB
            5853637E5EE2EE4A128FAAB3325A96450F605D3F7FED862432BC77DB31775B03
            AB04D65651E3C215F8EF09A49469906AC05E903DF290F913DC287C37AB259C4C
            9CBBA470FC4313681481C2B5865F1BCF036BA998109A4234DC088A5880A10075
            19FAC82D3D187605B87F9F64A96126C6F037EDDE0E4D9396C2D0BF331CD5703C
            CF9E93B86B818E2E8082564432D20576E8B01F05B71F060665531598CED8F749
            0A275EAC91FB0FFF36EC37012BE03D4F5364526048632BAD36598230DE82046A
            7FBB9FB65335DD491578B7CAE3B89457C4E33F01C4022EF87E032BE36F5F9F33
            ABA9CFFE73FACC0E4619137160F3D61668EE450659DD37C09A4B90914B488A49
            5A74E1FFAFDC2F19C45C811D93DD9042130A7E0033E6F3DFCC0C5CC07EC8B7DF
            0CD096C77F666051B1D140847F2328EB023B8E8CC054FB5F0A3CF1F41958EAFD
            3BA52FC27F0164CA27603318541182CAE6B7DF7E7CD610E79F24CACBB56CE9CD
            C7E2BA427CDF8254A5DE29F272BEBBFBEE13BCBC064D14818A4628FF93B9B860
            37B0A8FA0B12FF078C2C609719D420B8222BC257022A37409D40500B4A4F14D8
            8EF9FFEFB18AA8402CB0B3C70F6C517D00B9E1F7DFFFDF81DDF3C906D222DFD8
            1819B980AD224650CB08D819BDE5A2229DBCEBFE7351604EF801CAB1A0E20A28
            F747828BBD438E8FF3073077F0B332337D6280369F619D4D606BEB8E8A287F31
            0BB048FBFDF71F0BC8FE8F40BFBE06E6521D69E1F25DF75E4A7EFBF387CD4653
            FEC9DBEF3FBE00041800A0F7A6BDDDF7A5990000000049454E44AE426082}
          ParentFont = False
          TabOrder = 0
          Version = '5.0.0.0'
        end
      end
    end
    object PageSheet3: TPageSheet
      Left = 0
      Top = 21
      Width = 717
      Height = 455
      Caption = 'Autoriza'#231#245'es'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel14: TBevel
        Left = -4
        Top = 51
        Width = 721
        Height = 2
      end
      object Label62: TLabel
        Left = 53
        Top = 374
        Width = 36
        Height = 13
        Caption = 'P.M.C. '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label63: TLabel
        Left = 282
        Top = 374
        Width = 33
        Height = 13
        Caption = #192' Vista'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label64: TLabel
        Left = 157
        Top = 374
        Width = 52
        Height = 13
        Caption = 'Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label65: TLabel
        Left = 488
        Top = 374
        Width = 50
        Height = 13
        Caption = #192' Receber'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label66: TLabel
        Left = 377
        Top = 374
        Width = 45
        Height = 13
        Caption = 'Conv'#234'nio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label67: TLabel
        Left = 607
        Top = 374
        Width = 39
        Height = 13
        Caption = 'Subs'#237'dio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel13: TBevel
        Left = 0
        Top = 452
        Width = 717
        Height = 3
        Align = alBottom
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 39
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label32: TLabel
          Left = 6
          Top = 13
          Width = 61
          Height = 13
          Caption = 'Autoriza'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label33: TLabel
          Left = 324
          Top = 14
          Width = 62
          Height = 13
          Caption = 'Lan'#231'amento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label34: TLabel
          Left = 501
          Top = 14
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 181
          Top = 13
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DateEdit3: TDateEdit
          Left = 401
          Top = 10
          Width = 97
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 2
          OnKeyPress = btautorizacaoKeyPress
        end
        object DateEdit4: TDateEdit
          Left = 512
          Top = 10
          Width = 97
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
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
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 3
          OnKeyPress = btautorizacaoKeyPress
        end
        object eautoriza: TEdit
          Left = 82
          Top = 10
          Width = 95
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 12
          ParentFont = False
          TabOrder = 0
          OnKeyPress = btautorizacaoKeyPress
        end
        object ecnpj1: TEdit
          Left = 217
          Top = 10
          Width = 95
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clInfoText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
          OnKeyPress = btautorizacaoKeyPress
        end
        object bfiltra: TAdvGlowButton
          Left = 626
          Top = 7
          Width = 75
          Height = 24
          Caption = 'Filtrar'
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
            61000000097048597300000B1300000B1301009A9C1800000A4D694343505068
            6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
            F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
            561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
            7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
            1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
            01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
            C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
            00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
            00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
            CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
            4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
            48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
            223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
            560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
            2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
            FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
            F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
            4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
            79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
            812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
            0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
            170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
            48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
            90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
            5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
            5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
            8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
            272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
            48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
            6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
            A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
            2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
            1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
            192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
            3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
            09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
            46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
            EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
            4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
            EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
            79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
            3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
            67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
            6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
            A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
            5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
            D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
            743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
            4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
            D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
            C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
            3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
            FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
            0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
            15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
            476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
            BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
            F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
            A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
            6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
            68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
            949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
            F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
            DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
            772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
            A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
            955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
            EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
            CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
            26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
            8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
            B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
            7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
            EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
            E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
            5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
            EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
            EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
            FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
            CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
            ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
            CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
            F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
            0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
            003A980000176F925FC546000002644944415478DA74D25D68150418C6F1DFCE
            D976DAF1B4CDB90F6D6DEA18A38D10A653C98430698205E2CDC0860651C47275
            DB5810DD45D408BAF0C20C0A6F6A23EAAEE6CD88820962594118139299501E3B
            C76DBAADF3B1B79B61C3B6E7FEF93FCFFBC1866A4FB07DEFD69EA10B87863F5F
            38F8E2A7B9C496435FE3206A51B1B1D7F6244FBEF2F2B96BA55CFCA75F23E2C8
            EB5F963182ADA8DC00D0D1FBF4C8E4DCDC7D6B3622F2F7218DDD83CB3889A6F5
            ABD73C333A7669654DEE17B112E3113113CB1171EA6C363089BDEB5448A464EA
            7B96934593D7AFDA94C8E86D2F2A2ACBE61F91D84C34D7412776AC03B8BE22BB
            927BF3AD94EA1D146E71EE8DACD4438D067AB854E4E72B3720D090F8FFFE941C
            997DADF100BD8369893AB2B7672CCEE5153199E7A78FDE0EE4507EC03D94903A
            7EC071F1C4E54CEC9F4E47FDAB7BC2B3C25131307537EA062603799CC7B13523
            9CA866F17DE5AE41553CDC9256FAA7EC4EF6B2CA4769ED63FC4C8609F3F801BF
            E0F73580CA776DDA7D5ADBCE84027337EF69DFD762F7D082A57C41677FAB9AFA
            9BAE526BC2F798C66C72357D4CBAEFB46D9D950E7793FDD072B9A8754F4653D7
            660D9DB5AA6BAA343E56A750B8235FF09419A3C82579FE9454DF3B5ABAAA1C6E
            53B1B39BCF92B154315591BF352F555B56539B92AC4E2A2D95CC5E9CB7F01BD2
            46FDA58CE16F744F859357C27B111AC756F007C635FBD880E8F8441CBDBD2DDA
            CE08CF09FD6AD66CFEA5AF7C10B1E57C84A6B3813F318E61ECB2CBE35E109911
            E198D02FB3F66E15D847E5049A29FD8D8BF816DF61068BFA75A003D32EB8FB20
            208D1EEC47C36AFD1F710DF7563F6E43FD3B0008F30AA90F7811AC0000000049
            454E44AE426082}
          TabOrder = 4
          OnClick = bfiltraClick
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
      end
      object FlatPanel4: TFlatPanel
        Left = 250
        Top = 41
        Width = 217
        Height = 21
        Caption = 'Produtos autorizados pelo Conv'#234'nio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 1
        UseDockManager = True
      end
      object wwDBGrid1: TwwDBGrid
        Left = 9
        Top = 62
        Width = 695
        Height = 307
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        ControlType.Strings = (
          'TURBO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'chave;ImageIndex;Original Size')
        Selected.Strings = (
          'DATA'#9'10'#9'DATA'#9#9
          'CONVENIO'#9'10'#9'CONV'#202'NIO'#9#9
          'PRE_AUTORIZACAO'#9'10'#9'PR'#201'.AUTOR'#9'F'#9
          'AUTORIZACAO'#9'18'#9'AUTORIZACAO'#9'F'#9
          'CUPOM'#9'6'#9'CUPOM'#9#9
          'LOTE'#9'10'#9'LOTE'#9#9
          'PV'#9'8'#9'VALOR'#9#9
          'PC_VISTA'#9'8'#9'A VISA'#9#9
          'PC_RECEBER'#9'7'#9'A REC'#9'F'#9
          'chave'#9'2'#9'    '#9'F'#9
          'cliente'#9'50'#9'cliente'#9'F'#9
          'obs'#9'20'#9'obs'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsautoriza
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 2
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        ImageList = ImageList1
        PaintOptions.AlternatingRowColor = 16117737
      end
      object rnfiscal: TRzNumericEdit
        Left = 131
        Top = 389
        Width = 108
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        TabOrder = 3
        OnKeyPress = btautorizacaoKeyPress
        IntegersOnly = False
        DisplayFormat = 'R$ ,0.00;(,0.00)'
      end
      object ravista: TRzNumericEdit
        Left = 241
        Top = 389
        Width = 109
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        TabOrder = 4
        OnKeyPress = btautorizacaoKeyPress
        IntegersOnly = False
        DisplayFormat = 'R$ ,0.00;(,0.00)'
      end
      object rconvenio: TRzNumericEdit
        Left = 352
        Top = 389
        Width = 109
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        TabOrder = 5
        OnKeyPress = btautorizacaoKeyPress
        IntegersOnly = False
        DisplayFormat = 'R$ ,0.00;(,0.00)'
      end
      object rareceber: TRzNumericEdit
        Left = 463
        Top = 389
        Width = 109
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        TabOrder = 6
        OnKeyPress = btautorizacaoKeyPress
        IntegersOnly = False
        DisplayFormat = 'R$ ,0.00;(,0.00)'
      end
      object rsubsidio: TRzNumericEdit
        Left = 574
        Top = 389
        Width = 109
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        TabOrder = 7
        OnKeyPress = btautorizacaoKeyPress
        IntegersOnly = False
        DisplayFormat = 'R$ ,0.00;(,0.00)'
      end
      object rqtde: TRzNumericEdit
        Left = 21
        Top = 389
        Width = 108
        Height = 21
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        FrameHotTrack = True
        FrameStyle = fsLowered
        FrameVisible = True
        ParentFont = False
        TabOrder = 8
        OnKeyPress = btautorizacaoKeyPress
        IntegersOnly = False
        DisplayFormat = ' ,0;(,0)'
      end
      object btotaliza_autorizacao: TButton
        Left = 112
        Top = 152
        Width = 257
        Height = 25
        Caption = 'btotaliza_autorizacao'
        TabOrder = 9
        Visible = False
        OnClick = btotaliza_autorizacaoClick
      end
      object Panel8: TPanel
        Left = 0
        Top = 411
        Width = 717
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 10
        object brelatorio: TAdvGlowButton
          Left = 21
          Top = 9
          Width = 148
          Height = 24
          Caption = 'Imprimir'
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
            650041646F626520496D616765526561647971C9653C000002B64944415478DA
            62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
            B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
            44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
            CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
            1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
            6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
            40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
            03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
            EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
            C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
            1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
            B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
            7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
            F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
            2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
            E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
            0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
            01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
            F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
            194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
            62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
            13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
            AE426082}
          TabOrder = 0
          OnClick = brelatorioClick
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
          Left = 581
          Top = 9
          Width = 123
          Height = 24
          Caption = 'ESC | Retornar'
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
            61000000097048597300000B1300000B1301009A9C1800000A4D694343505068
            6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
            F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
            561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
            7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
            1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
            01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
            C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
            00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
            00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
            CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
            4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
            48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
            223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
            560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
            2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
            FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
            F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
            4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
            79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
            812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
            0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
            170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
            48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
            90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
            5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
            5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
            8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
            272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
            48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
            6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
            A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
            2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
            1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
            192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
            3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
            09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
            46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
            EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
            4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
            EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
            79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
            3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
            67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
            6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
            A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
            5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
            D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
            743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
            4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
            D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
            C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
            3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
            FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
            0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
            15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
            476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
            BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
            F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
            A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
            6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
            68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
            949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
            F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
            DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
            772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
            A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
            955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
            EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
            CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
            26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
            8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
            B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
            7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
            EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
            E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
            5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
            EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
            EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
            FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
            CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
            ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
            CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
            F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
            0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
            003A980000176F925FC546000002284944415478DA8CD23D6C95751406F0DFFB
            716F6969A1252D29D66023A47C95488844063448020E263830299184F09DB0C1
            42800DEAE0060E24181C9D4C1860C0401417257150304125A0161028B9DC40B9
            EDDB7BDFFBFE195A304A4D7AC69373CEF33CE7799849AD74C02EC1164D7C8145
            28433AA303ADD6B4AC236D11D7321F3B2FC727184E6674E0AE9BCDBACDE57774
            A4AF89F36F2D94F903C3F1B40B8BBD6A99E3781B6DB8E5B14A9411BF82F5E6E1
            3DF4BD2CA1D7A0E5BE32CB80EB1661C802FD565B66CEA4E67885B8386B00FDFF
            66D0ED5D6FF9AEEB9881A80FBC8E4D5639317B93248DD04298DC6AC3FC7F18F4
            D8618B13BD47B525DD916A16E834E80383EDDBB426732846895B0923A08E34B2
            54C998A1AEBD0EF41EEA8C6A794DFD7143E31ECD06C95C8CD21C9F342EAA51DD
            2A77DBF7F83CD5B47DF191F6836FEC5AE56EE30EE381D2A8A8AFD0CC08351A09
            49374599EA29DCF610BF6324754325D4423E57679AA70D629222F6B43CA63E6B
            42E8A054221FA1322438AD829FF113FE4A305CBDD0E879307E6BF5F28D4BA3A4
            DCA1287251A9246413B2BF9BAAE778B25BDDD7EEE0475CC615DC84040B71A667
            9FC647D9FAF061D818E67F266897E13EAEE3224E6227DE44175EB858423F4E96
            369BD8D17C3FF47FDA1A700F5FE230B661C394B5B3113D4787024F71B5F84DF5
            D76B37D646495E1EFBC1137C834B53D4FF440513FF97FA140BB067EA5197B17F
            0A75DAD847D3F462CCC312F4E1017EC12384FF0E3F1B001E31B6BB673B659C00
            00000049454E44AE426082}
          TabOrder = 1
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
        object bestorno: TAdvGlowButton
          Left = 176
          Top = 9
          Width = 148
          Height = 24
          Caption = 'F6 | Extornar'
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
          TabOrder = 2
          OnClick = bestornoClick
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
      end
      object BitBtn1: TBitBtn
        Left = 112
        Top = 208
        Width = 257
        Height = 25
        Caption = 'Imprime Estorno'
        TabOrder = 11
        Visible = False
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 112
        Top = 180
        Width = 257
        Height = 25
        Caption = 'Fecha relatorio gerencial'
        TabOrder = 12
        Visible = False
        OnClick = BitBtn2Click
      end
    end
    object PageSheet4: TPageSheet
      Left = 0
      Top = 21
      Width = 717
      Height = 455
      Caption = 'Configura'#231#245'es'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel17: TBevel
        Left = 0
        Top = 411
        Width = 717
        Height = 3
        Align = alBottom
      end
      object Bevel21: TBevel
        Left = 0
        Top = 49
        Width = 717
        Height = 3
        Align = alTop
      end
      object Panel5: TPanel
        Left = 0
        Top = 414
        Width = 717
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object balteracaminho: TAdvGlowButton
          Left = 204
          Top = 7
          Width = 150
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
          TabOrder = 0
          OnClick = balteracaminhoClick
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
        object bgravacaminho: TAdvGlowButton
          Left = 362
          Top = 7
          Width = 150
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
          TabOrder = 1
          OnClick = bgravacaminhoClick
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
          Enabled = False
        end
      end
      object pconfiguracoes: TRzPanel
        Left = 0
        Top = 52
        Width = 717
        Height = 359
        Align = alClient
        BorderOuter = fsNone
        Enabled = False
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 16
          Top = 8
          Width = 377
          Height = 97
          Caption = 'ECF'
          TabOrder = 0
          object Label45: TLabel
            Left = 64
            Top = 43
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Caixa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 12
            Top = 67
            Width = 83
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#250'mero de S'#233'rie:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 37
            Top = 18
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Impressora:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit13: TDBEdit
            Left = 104
            Top = 39
            Width = 49
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ECF_CAIXA'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 0
            OnKeyPress = btautorizacaoKeyPress
          end
          object DBEdit14: TDBEdit
            Left = 104
            Top = 63
            Width = 177
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ECF_SERIAL'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 1
            OnExit = DBEdit14Exit
            OnKeyPress = btautorizacaoKeyPress
          end
          object DBEdit15: TDBEdit
            Left = 104
            Top = 15
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ECF_MODELO'
            DataSource = dsconfig
            Enabled = False
            TabOrder = 2
            OnKeyPress = btautorizacaoKeyPress
          end
        end
        object GroupBox2: TGroupBox
          Left = 16
          Top = 112
          Width = 617
          Height = 69
          Caption = 'Vidalink'
          TabOrder = 1
          object Label21: TLabel
            Left = 65
            Top = 18
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Envio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 46
            Top = 43
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Resposta:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 104
            Top = 38
            Width = 497
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FARMACIA_RESPOSTA'
            DataSource = dsconfig
            TabOrder = 0
            OnExit = DBEdit5Exit
            OnKeyPress = btautorizacaoKeyPress
          end
          object DBEdit1: TDBEdit
            Left = 104
            Top = 14
            Width = 497
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FARMACIA_ENVIO'
            DataSource = dsconfig
            TabOrder = 1
            OnKeyPress = btautorizacaoKeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 16
          Top = 187
          Width = 617
          Height = 97
          Caption = 'Farm'#225'cia Popular'
          TabOrder = 2
          object Label23: TLabel
            Left = 66
            Top = 18
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Login:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 61
            Top = 43
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Senha:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 16
            Top = 67
            Width = 79
            Height = 13
            Alignment = taRightJustify
            Caption = 'Envio/Resposta:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit9: TDBEdit
            Left = 104
            Top = 65
            Width = 497
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FARMACIA_ENVIO_RESPOSTA'
            DataSource = dsconfig
            TabOrder = 2
            OnExit = DBEdit9Exit
            OnKeyPress = btautorizacaoKeyPress
          end
          object DBEdit3: TDBEdit
            Left = 104
            Top = 16
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FARMACIA_LOGIN'
            DataSource = dsconfig
            TabOrder = 0
            OnKeyPress = btautorizacaoKeyPress
          end
          object bsenha: TEdit
            Left = 104
            Top = 40
            Width = 137
            Height = 21
            PasswordChar = '*'
            TabOrder = 1
            OnKeyPress = btautorizacaoKeyPress
          end
        end
      end
      object FlatPanel8: TFlatPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 49
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 2
        UseDockManager = True
        object Bevel20: TBevel
          Left = 108
          Top = 4
          Width = 2
          Height = 42
        end
        object Label16: TLabel
          Left = 116
          Top = 11
          Width = 132
          Height = 13
          Caption = 'Programa de Medicamentos'
        end
        object Label18: TLabel
          Left = 116
          Top = 27
          Width = 69
          Height = 13
          Caption = 'Configura'#231#245'es'
        end
        object AdvShapeButton4: TAdvShapeButton
          Left = 2
          Top = 4
          Width = 105
          Height = 40
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Version = '5.0.0.0'
        end
      end
    end
    object PageSheet6: TPageSheet
      Left = 0
      Top = 21
      Width = 717
      Height = 455
      Caption = 'LOG'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 5
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object mLog: TMemo
        Left = 0
        Top = 0
        Width = 717
        Height = 455
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Lines.Strings = (
          '')
        TabOrder = 0
      end
    end
  end
  object dsrxprod: TwwDataSource
    DataSet = rxprodutos
    Left = 704
    Top = 403
  end
  object PopupMenu1: TPopupMenu
    Left = 905
    Top = 359
    object ESC1: TMenuItem
      Caption = 'ESC'
      ShortCut = 27
      OnClick = ESC1Click
    end
    object consulta1: TMenuItem
      Caption = 'consulta'
      ShortCut = 113
      OnClick = consulta1Click
    end
    object gravar1: TMenuItem
      Caption = 'gravar'
      ShortCut = 114
      OnClick = gravar1Click
    end
    object consultad1: TMenuItem
      Caption = 'consultta datasus'
      ShortCut = 115
      OnClick = consultad1Click
    end
    object gravard1: TMenuItem
      Caption = 'gravar datasus'
      ShortCut = 116
      OnClick = gravard1Click
    end
    object estorno1: TMenuItem
      Caption = 'estorno'
      ShortCut = 117
      OnClick = estorno1Click
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 944
    Top = 384
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 905
    Top = 381
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
    object qrprodutoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrprodutoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrprodutoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
    end
    object qrprodutoVALIDADE: TStringField
      FieldName = 'VALIDADE'
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
    end
    object qrprodutoCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
    end
    object qrprodutoCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrprodutoNBM: TStringField
      FieldName = 'NBM'
    end
    object qrprodutoNCM: TStringField
      FieldName = 'NCM'
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
    end
    object qrprodutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrprodutoFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
    end
  end
  object dsautorizacao: TDataSource
    DataSet = qrautorizacao
    Left = 992
    Top = 376
  end
  object qrautorizacao: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * FROM FARMACIA_AUTORIZACAO'
      '')
    Params = <>
    Left = 1020
    Top = 373
    object qrautorizacaoDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
    end
    object qrautorizacaoPC_RECEBER: TFloatField
      DisplayWidth = 10
      FieldName = 'PC_RECEBER'
    end
    object qrautorizacaoPC_VISTA: TFloatField
      DisplayWidth = 10
      FieldName = 'PC_VISTA'
    end
    object qrautorizacaoPV: TFloatField
      DisplayWidth = 10
      FieldName = 'PV'
    end
    object qrautorizacaoREEMBOLSO: TFloatField
      DisplayWidth = 10
      FieldName = 'REEMBOLSO'
    end
    object qrautorizacaoSUBSIDIO: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBSIDIO'
    end
    object qrautorizacaoTIPO: TStringField
      DisplayWidth = 1
      FieldName = 'TIPO'
      Visible = False
      Size = 1
    end
    object qrautorizacaoCNPJ: TStringField
      DisplayWidth = 14
      FieldName = 'CNPJ'
      Visible = False
      Size = 14
    end
    object qrautorizacaoPLANO: TStringField
      DisplayWidth = 8
      FieldName = 'PLANO'
      Visible = False
      Size = 8
    end
    object qrautorizacaoCONVENIADO: TStringField
      DisplayWidth = 30
      FieldName = 'CONVENIADO'
      Visible = False
      Size = 30
    end
    object qrautorizacaoCONVENIO: TStringField
      DisplayWidth = 40
      FieldName = 'CONVENIO'
      Visible = False
      Size = 40
    end
    object qrautorizacaoECF: TStringField
      DisplayWidth = 4
      FieldName = 'ECF'
      Visible = False
      Size = 4
    end
    object qrautorizacaoCUPOM: TStringField
      DisplayWidth = 6
      FieldName = 'CUPOM'
      Visible = False
      Size = 6
    end
    object qrautorizacaoCODBARRA: TStringField
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Visible = False
      Size = 14
    end
    object qrautorizacaoQTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE'
      Visible = False
    end
    object qrautorizacaoPMC: TFloatField
      DisplayWidth = 10
      FieldName = 'PMC'
      Visible = False
    end
    object qrautorizacaoDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrautorizacaoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrautorizacaoCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrautorizacaoNOMECLIENTE: TStringField
      DisplayWidth = 40
      FieldName = 'NOMECLIENTE'
      Visible = False
      Size = 40
    end
    object qrautorizacaoUF_MEDICO: TStringField
      FieldName = 'UF_MEDICO'
      Size = 2
    end
    object qrautorizacaoSOLICITACAO: TIntegerField
      FieldName = 'SOLICITACAO'
    end
    object qrautorizacaoQTDE_AUTORIZADO: TFloatField
      FieldName = 'QTDE_AUTORIZADO'
    end
    object qrautorizacaoCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object qrautorizacaoCODCONVENIO: TIntegerField
      FieldName = 'CODCONVENIO'
    end
    object qrautorizacaoAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Required = True
    end
    object qrautorizacaoCRM_MEDICO: TStringField
      FieldName = 'CRM_MEDICO'
      Size = 5
    end
    object qrautorizacaoPACIENTE: TStringField
      FieldName = 'PACIENTE'
      Size = 50
    end
    object qrautorizacaoPRE_AUTORIZACAO: TStringField
      FieldName = 'PRE_AUTORIZACAO'
    end
    object qrautorizacaoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object qrautorizacaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object dsconfig: TDataSource
    DataSet = frmmodulo.qrconfig
    Left = 748
    Top = 415
  end
  object dsautoriza: TwwDataSource
    DataSet = qrautoriza
    Left = 748
    Top = 357
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 833
    Top = 374
  end
  object Timer_datasus: TTimer
    OnTimer = Timer_datasusTimer
    Left = 832
    Top = 411
  end
  object rxprodutos: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'produto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'pv'
        DataType = ftFloat
      end
      item
        Name = 'qtde'
        DataType = ftFloat
      end
      item
        Name = 'pc_vista'
        DataType = ftFloat
      end
      item
        Name = 'pmc'
        DataType = ftFloat
      end
      item
        Name = 'qtde_autorizado'
        DataType = ftFloat
      end
      item
        Name = 'obs'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'posologia'
        DataType = ftFloat
      end
      item
        Name = 'codbarra'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'unidade'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'cst'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'aliquota'
        DataType = ftFloat
      end
      item
        Name = 'item'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'desconto'
        DataType = ftFloat
      end
      item
        Name = 'reembolso'
        DataType = ftFloat
      end
      item
        Name = 'pc_receber'
        DataType = ftFloat
      end
      item
        Name = 'subsidio'
        DataType = ftFloat
      end
      item
        Name = 'comissao'
        DataType = ftFloat
      end
      item
        Name = 'codigo'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'apresentacao'
        DataType = ftInteger
      end>
    Left = 712
    Top = 355
    object rxprodutosproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 36
      FieldName = 'produto'
      Size = 40
    end
    object rxprodutospv: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'pv'
      DisplayFormat = '###,##0.00'
    end
    object rxprodutosqtde: TFloatField
      DisplayLabel = 'Solicitado'
      DisplayWidth = 7
      FieldName = 'qtde'
    end
    object rxprodutospc_vista: TFloatField
      DisplayLabel = 'Datasus'
      DisplayWidth = 10
      FieldName = 'pc_vista'
      DisplayFormat = '###,##0.00'
    end
    object rxprodutospmc: TFloatField
      DisplayLabel = 'Paciente'
      DisplayWidth = 10
      FieldName = 'pmc'
      DisplayFormat = '###,##0.00'
    end
    object rxprodutosqtde_autorizado: TFloatField
      DisplayLabel = 'Autorizado'
      DisplayWidth = 7
      FieldName = 'qtde_autorizado'
    end
    object rxprodutosobs: TStringField
      DisplayLabel = 'Retorno'
      DisplayWidth = 200
      FieldName = 'obs'
      Size = 200
    end
    object rxprodutosposologia: TFloatField
      DisplayLabel = 'QT.DI'#193'RIA'
      DisplayWidth = 7
      FieldName = 'posologia'
      Visible = False
    end
    object rxprodutoscodbarra: TStringField
      DisplayLabel = 'C'#211'D.BARRAS'
      DisplayWidth = 13
      FieldName = 'codbarra'
      Visible = False
      Size = 13
    end
    object rxprodutosunidade: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'unidade'
      Visible = False
      Size = 2
    end
    object rxprodutoscst: TStringField
      DisplayLabel = 'CST'
      DisplayWidth = 3
      FieldName = 'cst'
      Visible = False
      Size = 3
    end
    object rxprodutosaliquota: TFloatField
      DisplayLabel = 'ALIQUOTA'
      DisplayWidth = 5
      FieldName = 'aliquota'
      Visible = False
      DisplayFormat = '#,##0.00'
    end
    object rxprodutositem: TStringField
      DisplayLabel = 'ITEM'
      DisplayWidth = 4
      FieldName = 'item'
      Visible = False
      Size = 3
    end
    object rxprodutosdesconto: TFloatField
      DisplayLabel = 'DESCONTO'
      DisplayWidth = 14
      FieldName = 'desconto'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object rxprodutosreembolso: TFloatField
      DisplayLabel = 'CONV'#202'NIO'
      DisplayWidth = 10
      FieldName = 'reembolso'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object rxprodutospc_receber: TFloatField
      DisplayLabel = 'A RECEBER'
      DisplayWidth = 14
      FieldName = 'pc_receber'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object rxprodutossubsidio: TFloatField
      DisplayLabel = 'SUBSIDIO'
      DisplayWidth = 13
      FieldName = 'subsidio'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object rxprodutoscomissao: TFloatField
      DisplayLabel = 'COMISS'#195'O'
      DisplayWidth = 13
      FieldName = 'comissao'
      Visible = False
      DisplayFormat = '###,##0.00'
    end
    object rxprodutoscodigo: TStringField
      FieldName = 'codigo'
      Visible = False
      Size = 14
    end
    object rxprodutosapresentacao: TIntegerField
      FieldName = 'apresentacao'
      Visible = False
    end
  end
  object qrautorizacao_novartis: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from FARMACIA_NOVARTIS_AUTORIZACAO')
    Params = <>
    Left = 864
    Top = 409
    object qrautorizacao_novartisAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Required = True
    end
    object qrautorizacao_novartisOPERADORA: TStringField
      FieldName = 'OPERADORA'
    end
    object qrautorizacao_novartisNUMERO_CARTAO: TStringField
      FieldName = 'NUMERO_CARTAO'
    end
    object qrautorizacao_novartisDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrautorizacao_novartisCODOPERADOR: TStringField
      FieldName = 'CODOPERADOR'
      Size = 6
    end
    object qrautorizacao_novartisITEM: TStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrautorizacao_novartisCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 14
    end
    object qrautorizacao_novartisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrautorizacao_novartisPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrautorizacao_novartisUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrautorizacao_novartisCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object qrautorizacao_novartisALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrautorizacao_novartisEMBALAGEM: TStringField
      FieldName = 'EMBALAGEM'
      Size = 3
    end
    object qrautorizacao_novartisQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrautorizacao_novartisPMC: TFloatField
      FieldName = 'PMC'
    end
    object qrautorizacao_novartisDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrautorizacao_novartisDESCONTO1: TFloatField
      FieldName = 'DESCONTO1'
    end
    object qrautorizacao_novartisPRECO_LIQUIDO: TFloatField
      FieldName = 'PRECO_LIQUIDO'
    end
    object qrautorizacao_novartisCLIENTE: TFloatField
      FieldName = 'CLIENTE'
    end
    object qrautorizacao_novartisSUBSIDIO: TFloatField
      FieldName = 'SUBSIDIO'
    end
    object qrautorizacao_novartisTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrautorizacao_novartisSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrautorizacao_novartisSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object qrautorizacao_novartisTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object qrautoriza: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrautorizaCalcFields
    SQL.Strings = (
      
        'select sum(pv) pv, sum(pc_vista) pc_vista,sum(pc_receber) pc_rec' +
        'eber,'
      'sum(reembolso) reembolso, sum(subsidio)subsidio,'
      
        'pre_autorizacao,autorizacao,data,convenio,cupom,cnpj,lote,codcli' +
        'ente,obs'#13',cpf'#10
      'from FARMACIA_AUTORIZACAO'
      
        'group by pre_autorizacao,autorizacao,data,convenio,cupom,cnpj,lo' +
        'te,codcliente,obs'#13',cpf'#10
      'order by data,cupom')
    Params = <>
    Left = 744
    Top = 445
    object qrautorizaDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrautorizaCONVENIO: TStringField
      DisplayLabel = 'CONV'#202'NIO'
      DisplayWidth = 10
      FieldName = 'CONVENIO'
      Size = 40
    end
    object qrautorizaPRE_AUTORIZACAO: TStringField
      DisplayLabel = 'PR'#201'.AUTOR'
      DisplayWidth = 10
      FieldName = 'PRE_AUTORIZACAO'
    end
    object qrautorizaAUTORIZACAO: TStringField
      DisplayWidth = 18
      FieldName = 'AUTORIZACAO'
      Required = True
    end
    object qrautorizaCUPOM: TStringField
      DisplayWidth = 6
      FieldName = 'CUPOM'
      Size = 6
    end
    object qrautorizaLOTE: TStringField
      DisplayWidth = 10
      FieldName = 'LOTE'
      Size = 10
    end
    object qrautorizaPV: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 8
      FieldName = 'PV'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrautorizaPC_VISTA: TFloatField
      DisplayLabel = 'A VISA'
      DisplayWidth = 8
      FieldName = 'PC_VISTA'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrautorizaPC_RECEBER: TFloatField
      DisplayLabel = 'A REC'
      DisplayWidth = 7
      FieldName = 'PC_RECEBER'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrautorizachave: TIntegerField
      DisplayLabel = '    '
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'chave'
      Calculated = True
    end
    object qrautorizacliente: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrautorizaREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrautorizaSUBSIDIO: TFloatField
      FieldName = 'SUBSIDIO'
      ReadOnly = True
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrautorizaCNPJ: TStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 14
    end
    object qrautorizaCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrautorizaCPF: TStringField
      FieldName = 'CPF'
      Visible = False
      Size = 11
    end
    object qrautorizaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object qrestorno: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select data,codcliente,codproduto,codbarra,cupom_numero,qtde'
      'from c000032')
    Params = <>
    Left = 792
    Top = 445
    object qrestornoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrestornoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrestornoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrestornoCUPOM_NUMERO: TStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrestornoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrestornoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrestornoapresentacao: TFloatField
      FieldKind = fkLookup
      FieldName = 'apresentacao'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FARMACIA_APRESENTACAO'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 640
    Top = 480
    Bitmap = {
      494C01010200040004000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000000F0000000100200000000000100E
      0000000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FBF91003A8C3E0024792800247628003A843E008FB99100E0EB
      E00000000000000000000000000000000000000000000000000000000000E5E7
      F7009EA9E100536AC6003E58BF003953BE004B66C10097A7DB00E1E6F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B5D9B600308E3400419F510086C999009AD2
      AA009AD1AA0082C695003C964B00307B3300B4D0B60000000000000000000000
      00000000000000000000C2C8ED005465CB003B51CB007479E7008E91ED008E91
      ED007077E300324CC0003F5BBD00B9C4E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5DBBA00248E
      29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30065B6
      7C0023712600B4D0B600000000000000000000000000C5C9EE00505FCC005B64
      DF00A0A5F4007D85EE005A62E800585CE6007C83ED009D9FF300505CD6003351
      B900B9C4E7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1F2E40032A0430071C18600A7DAB1005FBB76005BB9720058B7
      6F0058B46E0057B46E005AB67300A4D8B20068B77E00307F3400E0ECE1000000
      0000E8EAF9006470D300606AE200A0ABF400535EEB004F5BE9004C58E8004D58
      E5004B55E5004F55E5009DA1F300535FD5003F5CBE00E2E7F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008FD29F004BAF6300A9DC
      B30063C078005EBD700074C48400D3EBD80089CC980055B56B0057B46D005BB6
      7300A5D9B300409A4D008EBB900000000000ACB0E9004A55DA00A1AAF5005563
      EF005165ED004C58E8004C58E8004C58E8004C58E8004B57E5005159E5009EA2
      F400334FC30095A5DB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003EB45C0090D19E008CD3990063C2730078C88600F1F9F300FEFE
      FE00FCFDFC0085CA950056B66C005AB8710084CB960086C699003A8A3E000000
      00007277DC00808BED007D90F6005C72F2004C58E8004C58E8004C58E8004C58
      E8004C58E8004C58E8004E5AE8007A82EF00747AE1004B64C300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000026AF4800A5DBAE006FC9
      7E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8
      700066BD7C009FD6AE00227E2500000000006468DA00A0AAF6006F85F7006781
      F500FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE004C58E8005B65
      E900959BF0003855BD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002DB65000A6DCB00071CB7F0065C67200AFE0B600D1EDD50062C0
      6F00B7E2BE00FEFEFE00FAFCFB008BCF980068C07D00A0D6AD00228325000000
      0000696DDB00AEB8F8007E92F9006F84EF00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFEFE004C58E8005D69ED00959CF0003C54BF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004AC46B0094D6A00090D6
      9A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3
      E5008AD098008ACD9C003B983F00000000007C7EE200A4AEF4009CAAF900768B
      EF00535EEB00535EEB00535EEB00535EEB00535EEB00535EEB006276F100808D
      F300777EE800556AC80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009ADEAC0056BE6F00AEE0B6006CCB790067C7710064C66F0062C4
      6D0061C36D0062C37000B5E2BD006EC67D00ABDEB40047A85D008EC793000000
      0000B5B4EF007C82E900CCD3FB008A9CF9007D92F6007489ED006B83F5006B83
      F5006B83F5006B83F5006278F200A3AEF7003D4ECF009FAAE000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4F7E90048C465007ECD
      8F00ADE0B4006CCB790069C9750067C7710067C7730067C774006AC87800ABDE
      B30075C3880032A04200E1F1E30000000000EBEBFB007877E200A2A6F200D3DA
      FC008699F9007E90EF00798DF0007E93F7007D91F800758BF700A7B5F700626D
      E2005767CC00E6E8F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BFECCA003CC25B007ECD8F00AEE0B60091D79C0076CD
      820076CD820091D79C00ADE0B40077C78A0026A03A00B5DFBD00000000000000
      000000000000CFCFF6006F6FE000A9ACF100D7DBFC00ADB9F90090A2F9008A9C
      F9009BA8FA00B9C6FB006F7AE8005361CD00C3C8ED0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0EC
      CB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B2
      5400B6E3C1000000000000000000000000000000000000000000CFCFF6007878
      E1008D92EC00BDC2F700CBD2F800C3CAF800A9B3F300656FE100636DD500C6CA
      EF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5F7E9009EE2B00054CA71003ABF
      5B0036BD590048C26A0097DBAA00E1F5E7000000000000000000000000000000
      0000000000000000000000000000EBEBFB00B6B5F0007C7EE100696ADD00676A
      DB007378DE00AEB2EA00E8E9F900000000000000000000000000000000000000
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
      0000424D3E000000000000003E000000280000003C0000000F00000001000100
      00000000780000000000000000000000000000000000000000000000FFFFFF00
      F00FE01C00000000E007C00C00000000C0038004000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      800100000000000080010000000000008001000000000000C003800400000000
      E007C00C00000000F00FE01C00000000FFFFFFFC000000000000000000000000
      0000000000000000000000000000}
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 832
    Top = 440
  end
end
