object frmgrupo: Tfrmgrupo
  Left = 193
  Top = 154
  Width = 645
  Height = 410
  Caption = 'GRUPO / SUBGRUPO | Ficha de Cadastro'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel99: TPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 350
    Align = alClient
    TabOrder = 0
    object pficha: TFlatPanel
      Left = 1
      Top = 1
      Width = 635
      Height = 348
      ParentColor = True
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      Align = alClient
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
        Left = 6
        Top = 36
        Width = 33
        Height = 13
        Caption = 'Grupo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 1
        Top = 344
        Width = 633
        Height = 3
        Align = alBottom
      end
      object Bevel10: TBevel
        Left = 1
        Top = 82
        Width = 633
        Height = 3
        Align = alBottom
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 8
        Width = 73
        Height = 21
        DataField = 'CODIGO'
        DataSource = dsgrupo2
        TabOrder = 0
        OnChange = DBEdit1Change
        OnEnter = DBEdit1Enter
        OnExit = DBEdit1Exit
        OnKeyPress = DBEdit1KeyPress
      end
      object DBEdit2: TDBEdit
        Left = 64
        Top = 32
        Width = 297
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GRUPO'
        DataSource = dsgrupo2
        TabOrder = 1
        OnEnter = DBEdit1Enter
        OnExit = DBEdit2Exit
        OnKeyPress = DBEdit2KeyPress
      end
      object HeaderView2: THeaderView
        Left = 1
        Top = 85
        Width = 633
        Height = 259
        AdaptiveColors = True
        Align = alBottom
        BorderStyle = bsNone
        Caption = 'Subgrupos e Grade de Numera'#231#227'o'
        Color = clBtnFace
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -11
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        HeaderSize = 16
        ParentColor = False
        object Bevel1: TBevel
          Left = 401
          Top = 16
          Width = 3
          Height = 241
          Align = alLeft
        end
        object Panel1: TPanel
          Left = 404
          Top = 16
          Width = 227
          Height = 241
          Align = alClient
          Caption = 'Panel1'
          TabOrder = 0
          object wwDBGrid1: TwwDBGrid
            Left = 1
            Top = 1
            Width = 225
            Height = 198
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'CODIGO'#9'6'#9'C'#243'digo'
              'NUMERACAO'#9'12'#9'Numera'#231#227'o'
              'ORDEM'#9'9'#9'Ordem')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsgrade_subgrupo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnEnter = wwDBGrid1Enter
            OnExit = wwDBGrid1Exit
            OnKeyPress = wwDBGrid1KeyPress
          end
          object BitBtn6: TBitBtn
            Left = 80
            Top = 210
            Width = 145
            Height = 25
            Caption = 'Excluir Numera'#231#227'o'
            TabOrder = 1
            Visible = False
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
              7940207D4A267442246537266035275E35275E3527613626EBDFDD8F4539FFFF
              FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
              A25B2D9C552B954F27B3825CF2EFEDFFFFFFFFFFFFD0C5B56D40256136255E35
              26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
              D1975CFFFFFFEEE8E1B06C39AC6737A86232A35D2DF4F2EFFDFCFCA7734CCFBD
              A9FFFFFFAE8F76663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
              ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DB16D
              37F9F7F5F5F3F09A552AC49C7EFFFFFFB7977D6F3C236A3A25693925EBDFDD8F
              4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
              FFFFFFFFFFFFFFE6C29BB6733CD4A16FFFFFFFEEE9E4FDFDFDE1D8CD8D51297B
              4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
              3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EE5BE95FFFFFFDC
              B48FE6DED3F6F4F29C5E3287461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
              FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
              B37CC38241EADDCDFEFDFDBA7840DEC1A3FFFFFFB98257904B228A471E86451C
              ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DAA368FAF9F7FFFFFFFFFFFFE2D2BE
              A35E2D98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
              8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
              BE7D41C7894EBB7A43A96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
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
          object BitBtn9: TBitBtn
            Left = 7
            Top = 212
            Width = 58
            Height = 25
            Caption = '<--'
            TabOrder = 2
            Visible = False
            OnClick = BitBtn9Click
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
              A25B2D9C552B954F278E492386461B7E421DD8CEC3F1EEEC6437266136255E35
              26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
              D1975CFFFFFFEEE8E1B06C39AC6737A86232B77845DAC4AAD7C2ABD3C0ABF2F0
              EEFAFAF9B99F88663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
              ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DCA91
              5AFFFFFFF2EEEBE8E2DBFAF9F8FDFDFDCFC0AE6F3C236A3A25693925EBDFDD8F
              4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
              FFFFFFFFFFFFFFE6C29BB9773EE8DBCCE8DFD5A96431DFD2C3F2EFEC83441C7B
              4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
              3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EC18142F1EDE8E2
              CEB7E3D6C7F2EFEC8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
              FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
              B37CC38241BB793DC98C50FBFAF8FFFFFFF2EFEC975029904B228A471E86451C
              ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542BC7A3DB7753CD49F6CFFFFFFF2EFEC
              9E572B98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
              8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
              B9773CB5723CC3844CBF814AA45E2E9F582D9B5429985128EBE0DE8F4539FFFF
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
            Layout = blGlyphRight
          end
          object AdvGlowButton3: TAdvGlowButton
            Left = 6
            Top = 210
            Width = 63
            Height = 26
            Caption = 'F4 | <--'
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
            TabOrder = 3
            OnClick = BitBtn9Click
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
          object AdvGlowButton4: TAdvGlowButton
            Left = 80
            Top = 210
            Width = 145
            Height = 26
            Caption = 'F8 | Excluir Numera'#231#227'o'
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
            TabOrder = 4
            OnClick = BitBtn6Click
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
        object Panel2: TPanel
          Left = 0
          Top = 16
          Width = 401
          Height = 241
          Align = alLeft
          Caption = 'Panel1'
          TabOrder = 1
          object wwDBGrid2: TwwDBGrid
            Left = 1
            Top = 1
            Width = 399
            Height = 198
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'CODIGO'#9'7'#9'C'#243'digo'
              'SUBGRUPO'#9'43'#9'Subgrupo'#9'F')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dssubgrupo
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnKeyPress = wwDBGrid1KeyPress
          end
          object BitBtn7: TBitBtn
            Left = 8
            Top = 211
            Width = 161
            Height = 25
            Caption = 'Excluir Subgrupo'
            TabOrder = 1
            Visible = False
            OnClick = BitBtn7Click
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
          object BitBtn8: TBitBtn
            Left = 336
            Top = 212
            Width = 57
            Height = 25
            Caption = '-->'
            TabOrder = 2
            Visible = False
            OnClick = BitBtn8Click
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
          object AdvGlowButton1: TAdvGlowButton
            Left = 8
            Top = 210
            Width = 161
            Height = 26
            Caption = 'F7 | Excluir Subgrupo'
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
            TabOrder = 3
            OnClick = BitBtn7Click
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
          object AdvGlowButton2: TAdvGlowButton
            Left = 330
            Top = 210
            Width = 63
            Height = 26
            Caption = 'F3 | -->'
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
            TabOrder = 4
            OnClick = BitBtn8Click
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
        object FlatPanel1: TFlatPanel
          Left = 0
          Top = 0
          Width = 633
          Height = 16
          Caption = 'Subgrupos e Grade de Numera'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          TabOrder = 2
          UseDockManager = True
        end
      end
      object DBEdit3: TDBEdit
        Left = 456
        Top = 24
        Width = 121
        Height = 21
        DataField = 'CODIGO'
        DataSource = dssubgrupo
        TabOrder = 3
        Visible = False
        OnChange = DBEdit3Change
      end
      object pesconde: TFlatPanel
        Left = 4
        Top = 305
        Width = 629
        Height = 39
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        TabOrder = 4
        UseDockManager = True
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 350
    Width = 637
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 87
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
      TabOrder = 0
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
    object balterar: TAdvGlowButton
      Left = 98
      Top = 3
      Width = 87
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
      TabOrder = 1
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
    end
    object bexcluir: TAdvGlowButton
      Left = 186
      Top = 3
      Width = 87
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
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 372
      Top = 3
      Width = 23
      Height = 24
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
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
      DataSource = dsgrupo2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 395
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
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
      DataSource = dsgrupo2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 418
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
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
      DataSource = dsgrupo2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 441
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
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
      DataSource = dsgrupo2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object blocalizar: TAdvGlowButton
      Left = 274
      Top = 3
      Width = 95
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
      TabOrder = 7
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
    object bfechar: TAdvGlowButton
      Left = 520
      Top = 3
      Width = 111
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
      TabOrder = 8
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
    object pgravar: TFlatPanel
      Left = 0
      Top = 8
      Width = 635
      Height = 33
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 9
      UseDockManager = True
      object bgravar: TAdvGlowButton
        Left = 216
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
        Left = 341
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
  end
  object Pop1: TPopupMenu
    Left = 520
    Top = 232
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
    Left = 552
    Top = 224
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
    object EditarGrade1: TMenuItem
      Caption = 'Editar Grade'
      ShortCut = 114
      OnClick = BitBtn8Click
    end
    object VoltarparaSubgrupo1: TMenuItem
      Caption = 'Voltar para Subgrupo'
      ShortCut = 115
      OnClick = BitBtn9Click
    end
    object ExcluirSubgrupo1: TMenuItem
      Caption = 'Excluir Subgrupo'
      ShortCut = 118
      OnClick = BitBtn7Click
    end
    object ExcluirGrade1: TMenuItem
      Caption = 'Excluir Grade'
      ShortCut = 119
      OnClick = BitBtn6Click
    end
  end
  object dsgrupo2: TDataSource
    DataSet = frmmodulo.qrgrupo
    Left = 640
    Top = 224
  end
  object qrgrupo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000017')
    Params = <>
    Left = 616
    Top = 224
  end
  object dsgrupo: TDataSource
    DataSet = qrgrupo
    Left = 488
    Top = 224
  end
  object POP3: TPopupMenu
    Left = 592
    Top = 224
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
    end
  end
  object dssubgrupo: TDataSource
    DataSet = frmmodulo.qrsubgrupo
    Left = 552
    Top = 144
  end
  object dsgrade_subgrupo: TDataSource
    DataSet = frmmodulo.qrgrade_subgrupo
    Left = 512
    Top = 152
  end
  object MainMenu1: TMainMenu
    Left = 282
    Top = 279
    object ctrldek1: TMenuItem
      Caption = 'ctrl+del'
      ShortCut = 16430
      Visible = False
    end
  end
end
