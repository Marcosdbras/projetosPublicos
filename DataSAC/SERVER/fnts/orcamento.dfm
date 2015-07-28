object frmOrcamento: TfrmOrcamento
  Left = 162
  Top = 66
  Width = 795
  Height = 573
  Caption = 'Or'#231'amento'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = popnormal
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel10: TBevel
    Left = 0
    Top = 510
    Width = 787
    Height = 3
    Align = alBottom
  end
  object eproduto: TwwDBEdit
    Left = 176
    Top = 96
    Width = 121
    Height = 21
    DataField = 'CODPRODUTO'
    DataSource = dsorcamento_produto
    TabOrder = 0
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = eprodutoExit
  end
  object eqtde: TwwDBEdit
    Left = 176
    Top = 144
    Width = 121
    Height = 21
    DataField = 'QTDE'
    DataSource = dsorcamento_produto
    TabOrder = 1
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = eqtdeExit
  end
  object eunitario: TwwDBEdit
    Left = 176
    Top = 168
    Width = 121
    Height = 21
    DataField = 'UNITARIO'
    DataSource = dsorcamento_produto
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = eunitarioExit
  end
  object edesconto: TwwDBEdit
    Left = 176
    Top = 192
    Width = 121
    Height = 21
    DataField = 'DESCONTO'
    DataSource = dsorcamento_produto
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = edescontoExit
  end
  object eacrescimo: TwwDBEdit
    Left = 176
    Top = 216
    Width = 121
    Height = 21
    DataField = 'ACRESCIMO'
    DataSource = dsorcamento_produto
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = eacrescimoExit
  end
  object etotal: TwwDBEdit
    Left = 176
    Top = 240
    Width = 121
    Height = 21
    DataField = 'TOTAL'
    DataSource = dsorcamento_produto
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object pficha: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 510
    Align = alClient
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 6
    object ViewSplit2: TViewSplit
      Left = 0
      Top = 0
      Width = 787
      Height = 0
      Cursor = crVSplit
      Align = alTop
    end
    object ViewSplit4: TViewSplit
      Left = 0
      Top = 0
      Width = 787
      Height = 0
      Cursor = crVSplit
      Align = alTop
    end
    object Panel1: TPanel
      Left = 0
      Top = 385
      Width = 787
      Height = 125
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label5: TLabel
        Left = 547
        Top = 13
        Width = 64
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Subtotal:'
      end
      object Label6: TLabel
        Left = 547
        Top = 37
        Width = 64
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Desconto:'
      end
      object Label7: TLabel
        Left = 547
        Top = 61
        Width = 64
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Acr'#233'scimo:'
      end
      object Bevel3: TBevel
        Left = 519
        Top = 0
        Width = 3
        Height = 125
        Align = alLeft
      end
      object PageView1: TPageView
        Left = 0
        Top = 0
        Width = 519
        Height = 125
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alLeft
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 15
        TabOrder = 0
        TabStyle = tsFlat
        TopIndent = 3
        object PageSheet1: TPageSheet
          Left = 0
          Top = 19
          Width = 519
          Height = 106
          Caption = ' Condi'#231#245'es de Pagamento '
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object FlatPanel3: TFlatPanel
            Left = 0
            Top = 0
            Width = 519
            Height = 26
            ParentColor = True
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            Align = alTop
            TabOrder = 0
            UseDockManager = True
            object Label9: TLabel
              Left = 8
              Top = 7
              Width = 31
              Height = 13
              Caption = 'Prazo:'
            end
            object Label10: TLabel
              Left = 336
              Top = 7
              Width = 72
              Height = 13
              Caption = 'Qtde.Parcelas:'
            end
            object combocondpgto: TwwDBLookupCombo
              Left = 56
              Top = 3
              Width = 257
              Height = 21
              DropDownAlignment = taLeftJustify
              LookupTable = frmmodulo.qrcondpgto
              LookupField = 'CONDPGTO'
              TabOrder = 0
              AutoDropDown = True
              ShowButton = True
              PreciseEditRegion = False
              AllowClearKey = False
              OnEnter = combocondpgtoEnter
              OnExit = combocondpgtoExit
              OnKeyPress = rqtdeKeyPress
            end
            object rqtde: TRxCalcEdit
              Left = 432
              Top = 3
              Width = 49
              Height = 21
              AutoSize = False
              DecimalPlaces = 0
              DisplayFormat = '###,##0'
              ButtonWidth = 0
              NumGlyphs = 2
              TabOrder = 1
              OnEnter = combocondpgtoEnter
              OnExit = rqtdeExit
              OnKeyPress = rqtdeKeyPress
            end
          end
          object wwDBGrid2: TwwDBGrid
            Left = 0
            Top = 26
            Width = 519
            Height = 80
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            ControlType.Strings = (
              'TIPO;CustomEdit;combotipo;F')
            Selected.Strings = (
              'PRESTACAO'#9'3'#9'N'#186
              'VENCIMENTO'#9'18'#9'VENCIMENTO'
              'TIPO'#9'36'#9'TIPO'
              'VALOR'#9'20'#9'VALOR')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 1
            ShowHorzScrollBar = True
            Align = alClient
            DataSource = dsorcamento_contasreceber
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnKeyPress = wwDBGrid2KeyPress
          end
          object combotipo: TwwDBLookupCombo
            Left = 64
            Top = 77
            Width = 121
            Height = 21
            DropDownAlignment = taLeftJustify
            DataField = 'TIPO'
            DataSource = dsorcamento_contasreceber
            LookupTable = frmmodulo.qrformapgto
            LookupField = 'FORMAPGTO'
            TabOrder = 2
            AutoDropDown = True
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
          end
        end
        object PageSheet2: TPageSheet
          Left = 0
          Top = 19
          Width = 519
          Height = 106
          Caption = 'Observa'#231#245'es'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object DBEdit2: TDBEdit
            Left = 8
            Top = 8
            Width = 503
            Height = 21
            DataField = 'OBS1'
            DataSource = dsorcamento
            TabOrder = 0
            OnEnter = DBEdit2Enter
            OnExit = DBEdit2Exit
            OnKeyPress = DBEdit2KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 8
            Top = 32
            Width = 503
            Height = 21
            DataField = 'OBS2'
            DataSource = dsorcamento
            TabOrder = 1
            OnEnter = DBEdit2Enter
            OnExit = DBEdit2Exit
            OnKeyPress = DBEdit2KeyPress
          end
          object DBEdit4: TDBEdit
            Left = 8
            Top = 56
            Width = 503
            Height = 21
            DataField = 'OBS3'
            DataSource = dsorcamento
            TabOrder = 2
            OnEnter = DBEdit2Enter
            OnExit = DBEdit2Exit
            OnKeyPress = DBEdit2KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 80
            Width = 503
            Height = 21
            DataField = 'OBS4'
            DataSource = dsorcamento
            TabOrder = 3
            OnEnter = DBEdit2Enter
            OnExit = DBEdit2Exit
            OnKeyPress = DBEdit6KeyPress
          end
        end
      end
      object rsubtotal: TRxDBCalcEdit
        Left = 619
        Top = 10
        Width = 153
        Height = 21
        DataField = 'SUBTOTAL'
        DataSource = dsorcamento
        DecimalPlaces = 15
        DisplayFormat = '###,###,##0.00'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
      end
      object rdesconto: TRxDBCalcEdit
        Left = 691
        Top = 34
        Width = 81
        Height = 21
        DataField = 'DESCONTO'
        DataSource = dsorcamento
        DecimalPlaces = 3
        DisplayFormat = '###,###,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 3
        OnEnter = rdescontoEnter
        OnExit = rdescontoExit
        OnKeyPress = rdescontoKeyPress
      end
      object racrescimo: TRxDBCalcEdit
        Left = 691
        Top = 58
        Width = 81
        Height = 21
        DataField = 'ACRESCIMO'
        DataSource = dsorcamento
        DecimalPlaces = 3
        DisplayFormat = '###,###,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 5
        OnEnter = rdescontoEnter
        OnExit = racrescimoExit
        OnKeyPress = racrescimoKeyPress
      end
      object Panel3: TPanel
        Left = 539
        Top = 82
        Width = 241
        Height = 41
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 6
        object Label8: TLabel
          Left = 47
          Top = 15
          Width = 28
          Height = 13
          Caption = 'Total:'
        end
        object rtotal: TRxDBCalcEdit
          Left = 80
          Top = 4
          Width = 153
          Height = 31
          DataField = 'TOTAL'
          DataSource = dsorcamento
          DecimalPlaces = 15
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Verdana'
          Font.Style = []
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
        end
      end
      object rdesconto1: TRxCalcEdit
        Left = 619
        Top = 34
        Width = 65
        Height = 21
        AutoSize = False
        DisplayFormat = ',0.##%'
        GlyphKind = gkCustom
        Glyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C00000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0C0C0000000C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0
          C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
          0000000000000000C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0000000C0C0C0000000
          C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000}
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 2
        OnEnter = rdesconto1Enter
        OnExit = rdesconto1Exit
        OnKeyPress = rdesconto1KeyPress
      end
      object racrescimo1: TRxCalcEdit
        Left = 619
        Top = 58
        Width = 65
        Height = 21
        AutoSize = False
        DisplayFormat = ',0.##%'
        GlyphKind = gkCustom
        Glyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000C0C0C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C00000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0000000C0C0C0000000C0
          C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0
          C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C000
          0000000000000000C0C0C0000000000000000000000000C0C0C0C0C0C0C0C0C0
          0000C0C0C0C0C0C0C0C0C0000000C0C0C0000000C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0000000C0C0C0000000
          C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
          C0C0C0000000000000000000C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0000000C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C00000}
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 4
        OnEnter = rdesconto1Enter
        OnExit = racrescimo1Exit
        OnKeyPress = rdesconto1KeyPress
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 787
      Height = 385
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Bevel2: TBevel
        Left = 0
        Top = 70
        Width = 787
        Height = 3
        Align = alTop
      end
      object Bevel4: TBevel
        Left = 0
        Top = 382
        Width = 787
        Height = 3
        Align = alBottom
      end
      object Bevel1: TBevel
        Left = 0
        Top = 334
        Width = 787
        Height = 3
        Align = alTop
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 73
        Width = 787
        Height = 261
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        ControlType.Strings = (
          'CODPRODUTO;CustomEdit;eproduto;F'
          'PRODUTO;CustomEdit;comboproduto;F'
          'QTDE;CustomEdit;eqtde;F'
          'UNITARIO;CustomEdit;eunitario;F'
          'DESCONTO;CustomEdit;edesconto;F'
          'ACRESCIMO;CustomEdit;eacrescimo;F'
          'TOTAL;CustomEdit;etotal;F')
        Selected.Strings = (
          'CODPRODUTO'#9'13'#9'C'#211'DIGO'#9#9
          'PRODUTO'#9'57'#9'PRODUTO'#9#9
          'UNIDADE'#9'5'#9'UN'#9#9
          'QTDE'#9'8'#9'QTDE.'#9#9
          'UNITARIO'#9'10'#9'PRE'#199'O'#9#9
          'DESCONTO'#9'8'#9'DESC-R$'#9#9
          'ACRESCIMO'#9'8'#9'ACRES-$'#9#9
          'TOTAL'#9'10'#9'TOTAL'#9'T'#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alTop
        DataSource = dsorcamento_produto
        KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
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
        PaintOptions.AlternatingRowColor = 14540253
      end
      object bitbtn2: TAdvGlowButton
        Left = 3
        Top = 343
        Width = 116
        Height = 24
        Caption = 'Del | Excluir Item'
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
        TabOrder = 1
        OnClick = BitBtn2Click
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
      object bitbtn1: TAdvGlowButton
        Left = 123
        Top = 343
        Width = 174
        Height = 24
        Caption = 'F5 | Finalizar a Edi'#231#227'o'
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
          650041646F626520496D616765526561647971C9653C0000014A4944415478DA
          62FCFFFF3F0325002080587049949EC8FC0F32FCEF9F7F40FC976192E35C466C
          EA000288099701FFFEFD63B010B266B014B566F8FDEB374E170004104E17FCFD
          FD97E1CFBF3F60837EFFFA83D3008000C269C0EFDF7F2006FCFFC7F0EBC72F9C
          060004106E037E420CF8FB0F64006E2F0004104E037EFDFCCDF0FBEF5FA00BFE
          32FCC4E3028000C263C02FA001BFC106E0F3024000E13600A809EC05022E0008
          209C06FCFCFE1BEC82BF045C00104058D381CF54170B4E564E86DF4017FCF9FB
          07E802DC810810401806784F76DE01B471BFB8B038D0057FC08648494831E8E6
          697CD7CC54DD8DAE1E2080300C00FAD70FE8FC47AFDFBC01870108FFFEFD1B14
          AD4F8009CA1B5D3D400031E2CA4C26657AE7A5A4A40DFE02A3F2CECDBB976ECE
          BAAB8F4D1D400031E2CB8D5A596A47FEFCFEC37A6BF63D735C6A00028891D2EC
          0C1060003C24B7C70ECF9DE80000000049454E44AE426082}
        TabOrder = 2
        OnClick = BitBtn1Click
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
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 787
        Height = 70
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object Bevel5: TBevel
          Left = 64
          Top = 11
          Width = 2
          Height = 53
        end
        object Label11: TLabel
          Left = 592
          Top = 17
          Width = 55
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 606
          Top = 45
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 72
          Top = 17
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 72
          Top = 45
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 421
          Top = 43
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Estoque:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object AdvShapeButton1: TAdvShapeButton
          Left = 5
          Top = 4
          Width = 57
          Height = 65
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Picture.Data = {
            89504E470D0A1A0A0000000D49484452000000320000003208060000001E3F88
            B1000000097048597300000B1300000B1301009A9C180000000467414D410000
            B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
            75300000EA6000003A980000176F925FC54600000B354944415478DA62FCFFFF
            3F0336C0C8C808A605F8F9C5F40D0C344022FF19B02A8628FC0FA1816A2062FF
            416CA81C90FE0F55046233333133DDB87EEDDEAB57AFEE309001B0B919208058
            0869B2B4B6B19D356FBEDE9FBFFFBEFFFFF70F45EEDFFFFF4C60FCEF1FCB9F7F
            FF59FEFDFD0FA4FFB2FEFDF79FF5EFDF7FAC7F80E2407996BF20B97FFF99FF31
            FC6706690202C68F2F9F30D79517CDB87EFDC61E062A0080006222A480999999
            859189F9070B33F35F1656967FA898F53F0B0B2B48CD7F56166606661006B2C1
            98851928C702E40331130B488C81054883D47FFBF6F50FBFB018DFBC854B1AF4
            74F58240D650EA1180006222221A8111F11794D41859C08E023A0B8E99188198
            898D8D8D818D8D9D819D9D8D81839D9D1188816C30FF3F071083C4D921F47F0E
            0EB6BF1C40F5F7EEDDFDA2A4A6CEB266E3A6024747C738A0556C947804208058
            88F22D13F3BF4F1F3EF03EBC77C70EE81FB885E03C004C26CC2CACFF401E8525
            35601206D2FFC0F47F081F24C708C97A8C0CDFBE7EFDFFE9D573967BB76E708A
            8B4BFCEB9F30B1A5B2A25C61FBF6EDDD40355FC8F108400011E511A0E57F3F7D
            FC20AA20276BC7CBCFC7004CEFA8B106CC3B2819901191CB91CB035821F2EBE7
            4F0671215E0631612106415E6E06617E5E86993367D63535364ACC993BB706A8
            EC35A91E01082016C29E801435CC4C4CFF050405FF73F3F230FEFFF79FEC2400
            F6C8AF5F0CEF3F7E640025496E1E1E86DFBF7F33080909314C9D362D4D5A5A5A
            BCADADADF0F79F3FF749311720809848510C2C9DA882C16912E8A13F7FFE8032
            2138367F026389959595A1BEA1C17FD2E4C94BB9B9B8D448711B4000B1905A7E
            83620357DD439C217082E1EFDFBF2881F4E9D327607E6462484848B06462645C
            565E5191F9E1C387D3E846FC397336928993B3E0FF9F3F3C3F9E3DDBF8E5FAF5
            1680006221C57E705E40CF0F64F8035469826204E41146A0C321C53433C3D7AF
            5FC16C50EC4444461A7372722ECCCDCB8BFEF8F1E37998FE6F9B3627FCFEFC79
            3EE3B76FE074CFC8C6AA052C4E990102888968BBA90880D633B003F3C78F1F3F
            C0B1F0FEFD7BB027407907E86886B76FDF32BC7BF78EC1D9C545B1B7B7B71898
            E4E441FA9E1C3D5AF5EBCB97D95F6EDF6680E05B0CDF1E3E64F8F3F56B044000
            B110632D724685355D28F208D00C7E7E7E86C78F1F331C387080E1FBF7EF6031
            50B26202990FC4A018BA7FFFFE7B330B2B81B0D0D090B6A050E95FDF7F147EFD
            F39BE1EFBDBB0C0CDCDC90FC058CD5BF5FBEFC05082016E24391016A1923035A
            4B852CC0C5C5C5202F2FCF202A2A0A4E62204F801C0FF70890FFF7CFDF5F0F1E
            3DBE50DB541DF9FDC27DE35F3B0F317C71B361E03C749881F135B0840656C2FF
            80EAFE7C78DF0D1040246576708831815A1394FB0464160FB0E8E506852C5A43
            1504402598ACACF47F5DE5575EFFBEEC34BCA5ECCAF071C31686C72BD632A8D8
            D93070EFDFCFC0F0FCF9AB2F6F5EE7D91E39B212208058484859E08C0972003D
            00B0DA62D0947F27CAF3718EC2FFAFAF1998BF08327C8F08657839B987E1FCB2
            FB0C3FF8F9DF097CFC10DA79E4C821907A80002236B3A3E4115A6326C6BF0CAC
            3F8F32087C9DC9FDEFD30B863FEF7E30C8BF9BCBC0FFFB3683447C02C3BBFF0C
            57CF1D3AE4DDB97FFF2198DB00028885D44C4AAD0C8F3B01FC6160FFB98F81E9
            E574867F9FDF30FC7AFF9FE1EF372686B7576F33307EAD6178FB59E7D02F7EE1
            E8D3CF9F3F41D60710402C24F882E61E01365E18D8BEEF067A6206C3DF8F6F19
            7E033DF1EBD35F862737DF31BCFAFC8BE1C73F8E75128C0F5257AEDAFF0E5D2F
            400031919045689A9C9819BF33B07F59C9C0F4620AC39F37C09878FD97E1DBAB
            9F0CF7AFBC6278FEF907C3832FFCEB5959FE44444F7EF00E9B3B010288B47A04
            09533563337C6260F9B08081F1CD3AA007BE01F3C45F862FAF7F313C7AF09EE1
            1DB093C9AD19B275DACC0B334E9F3AF51B97190001C44462514275CCCCF89E81
            F5ED2460BDB08EE1E7B32F0CBF5EFD6678FFE43BC3FD7BC0DA9D81EB1FAF51E2
            5209D7FA23849C061040A4D523E012055261512526FEBD61607EDDC3C0F0EE10
            C38F27DF187EBFFDCDF0E1E52F86C7AF3E31FCE09264E0314C7F2DA0E37B9981
            081B01028885618000D3DFA70CCCAFFA18FEBF3DC6F0FDE11786DFEFFE30BC7B
            F193E1E9FBAF0CFF8435188CA3A730DC7EF9EF1BB66A001B0008A001297E99FE
            3E0466EA3686FFEF2E307CBBFB19EC89372F819EF8FC9D8149DC80C1207A1A03
            9FA40603C3CB33449B091040748E917F0C4CBFAE003DD1C7F0F7C52586EFF7BF
            32FC78F387E1C5EB1F0CAF7EFE6510D40B6150F76D6060E31123D964800062A1
            A727987F9C60607CD1CBF0E7F93D86AF373F31FCFAF08FE1E99B1F0CAFFFFE67
            90304D60D0086805368398B1375841AD553C002080E8E491BF0CCCDF8F023DD1
            C7F0FBF17D866FB73E317C7BFF8FE1F9879F0C6FFE3231C83B173128BB96602F
            D8FFE318CF4003000144078FFC6760FEBA8781F1E524869FF71F327C03C6C4B7
            4F0C0C4F3FFD64F8C0C0028C856606298B248A6D0108209A7B84F1FF4F068657
            2B197EDEBE034C4EDF18BE7EFACFF0F4DB6F861F1C020C3ABE4D0C6286E154B1
            07208058880951F2DB4EC0B6D2D7170CEFDE6831B05EDBCBF0E5E36F86D7BF81
            BD3A21050665EF4E06314D0782831DFFFEFD63FCFBE70FE3DF7FFF986043AB8C
            8C903171D020284C2D4000B1D0CE1BA00AF427C3C747E7185EDC7FCDF09BDB8A
            81F1D3518677FC5A0C9A411318249534B00E31411D0FEEF77CFEFC99E9FD976F
            1CC0FE3DE38FEFDFB980CAF9A0BDBA3F200CF4D01FC858FAFFFF000144B3A4F5
            FAD50B06DEBF0F181E5C3AC2F0FCDD278657DF0418B825D3184C1D431904C4A4
            819DBBE7E0712D94F12EE4A4C2C2021A8860FAFAF337072707276860820328CC
            012E3920191F45034000B11095424804C09064A8ABAD66E0F9F39C414A4E9E81
            53448341415B8B41504898E1E9F3970C0F1E3D81F7D1410E46C7A06E2EACE265
            6363FBC7CEC10E1ACD0785FE4F686CFC86D2E0390A909D000144F5180199FBEA
            D52B060949190679055B06414141B0E3FEFCFD071EEA018DD283FAEA201A3464
            0AA2D13D02F220484E4848E82F2B17CF372E2E6E064E2EAEAFA03082C6C47F64
            4F80004000B1D022AF2B282830D4D6D5831D0E1ABB8225155048831C09C3F021
            2020466EF680D820F55C5C5CFFB905047FB3737030B1B1B2FE85C604D6014280
            006221AE2620AD3D067224088062836AC53881061E4000D16748842AD52AFEBC
            0A10404CB4AC47E80900028889C8528B71B07B042080864CD222943200028869
            98F883012080988832E0FFE0CF270001C4446969414780D71D000144FC8CD5FF
            FF4CC04A8A91898E03D9C0AA831954F941A634F0F710010288588F30B2B2B17D
            B975F3E6274E4E2E3668EB991139DA2031F71F2AFC9F11673F8F01AA105505AA
            06468851DFBE7D7F25202A01EC08333013AA100102106AE6380002211495E504
            C64CA28DF7F59A5E816E60229F89AD16E4073A9602C2FB4D24BB00B281DB7EDC
            66764DAE6428581330273E42A7C2AF189894E24E504CFC85B2832E650BB4C394
            29555C054ACE2C9167793051BC6BC8B96E3D77B1F0C85359BEC7E01140043DF2
            F0E1836FC78F1C92065AF40BE881FF90D50D90150DA00533E0C532E08535A015
            0EFF41F2FFC07D0AD83221A047408B22800EFC0F4A1C409A19348E00140352E0
            5520AC4C5035608C9421FE43C61C98BF7DFBC6F4F4E9D313F8DC0910408C8496
            39819A4CC0B6930AD0012CF0CA91113216806DA8004702802D7B42C9B8FF11E9
            92112D43FF47C6C000FC018CED5B0C90E51DFFB1B9192080F0790464282B14B3
            403B3530CC09ED76A23B80114F29C388471E9DFD17DAF7F88E84412D5F5053FA
            077217170600028850D2FA0B0D95BFD08ECC77A81E26228A6E4632E51991EC84
            D9FB1709630D79800003003974CF17B18CEEFE0000000049454E44AE426082}
          ParentFont = False
          TabOrder = 7
          Version = '5.4.0.0'
        end
        object DBEdit1: TDBEdit
          Left = 654
          Top = 13
          Width = 97
          Height = 21
          DataField = 'CODIGO'
          DataSource = dsorcamento
          Enabled = False
          TabOrder = 4
          OnChange = DBEdit1Change
        end
        object DBDateEdit1: TDBDateEdit
          Left = 654
          Top = 40
          Width = 97
          Height = 21
          DataField = 'DATA'
          DataSource = dsorcamento
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
          TabOrder = 5
          OnEnter = DBDateEdit1Enter
          OnExit = DBDateEdit1Exit
          OnKeyPress = DBDateEdit1KeyPress
        end
        object enomecliente: TDBEdit
          Left = 211
          Top = 14
          Width = 374
          Height = 21
          DataField = 'cliente'
          DataSource = dsorcamento
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object ecliente: TRzDBButtonEdit
          Left = 136
          Top = 14
          Width = 73
          Height = 21
          DataSource = dsorcamento
          DataField = 'CODCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 0
          OnEnter = eclienteEnter
          OnKeyPress = eclienteKeyPress
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
          OnButtonClick = eclienteButtonClick
        end
        object evendedor: TRzDBButtonEdit
          Left = 136
          Top = 38
          Width = 73
          Height = 21
          DataSource = dsorcamento
          DataField = 'CODVENDEDOR'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          FocusColor = 11075583
          ParentFont = False
          TabOrder = 2
          OnEnter = evendedorEnter
          OnExit = evendedorExit
          OnKeyPress = evendedorKeyPress
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
          OnButtonClick = evendedorButtonClick
        end
        object DBEdit5: TDBEdit
          Left = 211
          Top = 38
          Width = 185
          Height = 21
          DataField = 'vendedor'
          DataSource = dsorcamento
          Enabled = False
          TabOrder = 3
        end
        object DBEdit7: TDBEdit
          Left = 483
          Top = 38
          Width = 102
          Height = 21
          DataField = 'estoque'
          DataSource = dsorcamento_produto
          Enabled = False
          TabOrder = 6
        end
      end
      object comboproduto: TwwDBLookupCombo
        Left = 176
        Top = 120
        Width = 305
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PRODUTO'#9'50'#9'PRODUTO'#9'F'#9
          'CODIGO'#9'6'#9'CODIGO'#9'F'#9
          'CODBARRA'#9'13'#9'CODBARRA'#9'F'#9
          'UNIDADE'#9'2'#9'UNIDADE'#9'F'#9
          'PRECOVENDA'#9'10'#9'PRECO'#9'F'#9
          'estoque'#9'10'#9'ESTOQUE'#9'F')
        DataField = 'PRODUTO'
        DataSource = dsorcamento_produto
        LookupTable = QRPRODUTO
        LookupField = 'PRODUTO'
        Options = [loColLines, loTitles]
        TabOrder = 4
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnExit = comboprodutoExit
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 513
    Width = 787
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 7
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
      Left = 380
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
      DataSource = dsorcamento
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 403
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
      DataSource = dsorcamento
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 426
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
      DataSource = dsorcamento
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 449
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
      DataSource = dsorcamento
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn7: TAdvGlowButton
      Left = 477
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F7 | Imprimir'
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
      TabOrder = 7
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
    object blocalizar: TAdvGlowButton
      Left = 274
      Top = 3
      Width = 103
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
      TabOrder = 8
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
      Left = 698
      Top = 3
      Width = 73
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
      TabOrder = 9
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
      Left = 744
      Top = 0
      Width = 776
      Height = 33
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 10
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
    object babrir: TAdvGlowButton
      Left = 584
      Top = 3
      Width = 108
      Height = 24
      Caption = 'F8 | Abrir PDV'
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
        650041646F626520496D616765526561647971C9653C000002FB4944415478DA
        62FCFFFF3F033630EFC8EBFF3FFFFC61F8F3E71F987FEBE9DB6F8CFFFE337EFA
        F1E7C9E3C73F96FC7AF7AEFBF00CDFEF0001C488CB80E9FB9FFDCF70946278FD
        E51F032390FF0FA8EEF7DF7F0C2CCC0C0C0B4F7E60387BEAE996174F9E460204
        100B030EF0F7EF7F86F7DFFE33DC79FD9F818909A819E8924FDFFF30D8AB7132
        D8A80B3070B331F96CDDF3A51D208098701900721733D06A0EA0156C40060873
        B03131BCFAF09D415D908121C19C1F68087B364000E1340004188106B0029DCC
        02A4594006B03031DC7BC7C870E4DE4F868FDFFF33B002F90001C4726BABE905
        0E3E2D2D46462614FBFF33B402FDCEC8C0CC041567FCCFF0EF1FD05DECCC0C8C
        4C40716666B02B01028885F13F9386ACCD7C56469075FFA18E07B1773F638084
        3FC8987F60EFB0016D04863AD020A018500D28FC01028885E1CFFF1F0CFF7EB1
        FF7C319DE1EF2FA07B99F88092BC0C074FC93124D84A3300F53030015D07B21C
        640813C8543606064E60D8806210208058187E3332FDFFF70BA8998DE13F50D5
        D77B47193EDEB8C8D021C0C0F0722E03380AFF3340686628E600456BD23120C1
        C80010402C403771FCFBF39DE1D3BD3B0CBFDF3D65F8F7FB0783A0690C038B56
        26031F37D09FFF9910E1023409142477A79933FCFCF38581F11F13234000015D
        C0C4C0C229C620E1D8013217E42EA0D27F0CDF5E2C60F8F519A48D116A082398
        CDC2670D368E0DE8D57FFFFFFC020820A001409FFCFDC1F0EBE53CA86319C006
        7DFDCEC4F0EB0F03C3CFDF0CC044F497E10790F3FDE72F0601F1F70CA0D417D6
        70E2253F372B274000B130FC045AF0EF0FD4B3FF21AEF8F79B818F1DA8930D28
        09349CE1DF57867F7F3F31FCFFF3918143CA8DE13E50D5EE6E2B0990550001C4
        C2F0EBFF7F4686BF10CDFF41F42F6060FE046AFA0114FA0E14FA06C45F809A81
        06FCFD0CB10009000410CBFF5FFF58FE7C7BCBF0EF0F2B5033D0AFFF41010764
        FF63071AC40DE4FF06F27F015D08C44C7F18FEFEF88162004000B1FCFFF1F3DA
        BD19816AF0B8C207C06AF682B2E62D98104080010069213C296A514760000000
        0049454E44AE426082}
      TabOrder = 11
      OnClick = babrirClick
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
  object dsorcamento: TDataSource
    DataSet = frmmodulo.qrorcamento
    Left = 464
    Top = 152
  end
  object qrorcamento_produto: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrorcamento_produtoCalcFields
    BeforeInsert = qrorcamento_produtoBeforeInsert
    BeforeEdit = qrorcamento_produtoBeforeEdit
    BeforePost = qrorcamento_produtoBeforePost
    BeforeDelete = qrorcamento_produtoBeforeDelete
    SQL.Strings = (
      'select * from c000057')
    Params = <>
    Left = 264
    Top = 200
    object qrorcamento_produtoCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 13
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrorcamento_produtoPRODUTO: TStringField
      DisplayWidth = 57
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrorcamento_produtoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 5
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qrorcamento_produtoQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 8
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamento_produtoUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 10
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamento_produtoDESCONTO: TFloatField
      DisplayLabel = 'DESC-R$'
      DisplayWidth = 8
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamento_produtoACRESCIMO: TFloatField
      DisplayLabel = 'ACRES-$'
      DisplayWidth = 8
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamento_produtoTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamento_produtoCODORCAMENTO: TStringField
      DisplayWidth = 14
      FieldName = 'CODORCAMENTO'
      Visible = False
      Size = 6
    end
    object qrorcamento_produtoestoque: TFloatField
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Visible = False
      Calculated = True
    end
  end
  object dsorcamento_produto: TDataSource
    DataSet = qrorcamento_produto
    Left = 440
    Top = 168
  end
  object popnormal: TPopupMenu
    Left = 384
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
      OnClick = BitBtn7Click
    end
    object OramentoPDV1: TMenuItem
      Caption = 'Or'#231'amento PDV'
      ShortCut = 119
      OnClick = babrirClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object popedicao: TPopupMenu
    Left = 416
    Top = 232
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
    object FinalizarEdio1: TMenuItem
      Caption = 'Finalizar Edi'#231#227'o'
      Enabled = False
      ShortCut = 116
      OnClick = BitBtn1Click
    end
    object ExcluirProduto1: TMenuItem
      Caption = 'Excluir Produto'
      Enabled = False
      ShortCut = 46
      OnClick = BitBtn2Click
    end
  end
  object dsorcamento_contasreceber: TDataSource
    DataSet = qrorcamento_contasreceber
    Left = 440
    Top = 200
  end
  object qrorcamento_contasreceber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000060')
    Params = <>
    Left = 296
    Top = 200
    object qrorcamento_contasreceberPRESTACAO: TIntegerField
      DisplayLabel = 'N'#186
      DisplayWidth = 3
      FieldName = 'PRESTACAO'
    end
    object qrorcamento_contasreceberVENCIMENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'VENCIMENTO'
    end
    object qrorcamento_contasreceberTIPO: TStringField
      DisplayWidth = 36
      FieldName = 'TIPO'
    end
    object qrorcamento_contasreceberVALOR: TFloatField
      DisplayWidth = 20
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamento_contasreceberDOCUMENTO: TStringField
      DisplayWidth = 18
      FieldName = 'DOCUMENTO'
      Visible = False
    end
    object qrorcamento_contasreceberCODORCAMENTO: TStringField
      FieldName = 'CODORCAMENTO'
      Visible = False
      Size = 6
    end
  end
  object QRPRODUTO: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = QRPRODUTOCalcFields
    SQL.Strings = (
      'SELECT '
      'codigo,'
      'codbarra,'
      'produto,'
      'unidade,'
      'precovenda'
      'from (select'
      'p.codigo as codigo,'
      'p.codbarra as codbarra,'
      'p.produto as produto,'
      'p.unidade as unidade,'
      'p.precovenda as precovenda '
      'from c000025 p'
      'where p.situacao = 0'
      'union'
      'select '
      's.codigo as codigo,'
      's.codigo as codbarra,'
      's.servico as produto,'
      #39'OS'#39' as unidade,'
      's.valor as precovenda'
      'from c000011 s)'
      'as tmp'
      'order by produto')
    Params = <>
    Left = 336
    Top = 200
    object QRPRODUTOPRODUTO: TStringField
      DisplayWidth = 50
      FieldName = 'PRODUTO'
      ReadOnly = True
      Size = 60
    end
    object QRPRODUTOCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object QRPRODUTOCODBARRA: TStringField
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      ReadOnly = True
      Size = 13
    end
    object QRPRODUTOUNIDADE: TStringField
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      ReadOnly = True
      Size = 2
    end
    object QRPRODUTOPRECOVENDA: TFloatField
      DisplayLabel = 'PRECO'
      DisplayWidth = 10
      FieldName = 'PRECOVENDA'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRPRODUTOestoque: TFloatField
      DisplayLabel = 'ESTOQUE'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Calculated = True
    end
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 264
    Top = 232
  end
end
