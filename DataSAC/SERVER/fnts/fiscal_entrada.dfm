object frmfiscal_entrada: Tfrmfiscal_entrada
  Left = 4
  Top = 6
  BorderStyle = bsDialog
  Caption = 'NOTA FISCAL DE ENTRADA'
  ClientHeight = 557
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = menu_gravar
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 521
    Width = 786
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object pprincipal: TFlatPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 521
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 126
      Width = 771
      Height = 407
      BevelOuter = bvNone
      TabOrder = 0
      object PageControl2: TPageView
        Left = -4
        Top = 9
        Width = 1205
        Height = 384
        ActivePage = PageSheet1
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alCustom
        BackgroundColor = clGray
        BackgroundKind = bkVertGradient
        Color = clBtnFace
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab, pgCloseButton, pgTopBorder]
        ParentColor = False
        ShowTabs = True
        Spacing = 0
        TabHeight = 15
        TabOrder = 0
        TabStyle = tsOneNote
        TopIndent = 3
        OnKeyPress = edcodKeyPress
        object PageSheet1: TPageSheet
          Left = 0
          Top = 19
          Width = 1205
          Height = 365
          Caption = 'Itens da Nota'
          Color = clBtnFace
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          ParentColor = False
          TabColor = 10547454
          TabWidth = 0
          TransparentColor = clNone
          object RzGroupBox1: TRzGroupBox
            Left = 5
            Top = 92
            Width = 770
            Height = 272
            Caption = 'Lan'#231'amento de Itens da Nota Fiscal'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label23: TLabel
              Left = 424
              Top = 12
              Width = 58
              Height = 12
              Caption = '&Quantidade'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label46: TLabel
              Left = 564
              Top = 12
              Width = 27
              Height = 12
              Caption = '&Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 7
              Top = 11
              Width = 35
              Height = 12
              Caption = 'C'#243'digo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label13: TLabel
              Left = 56
              Top = 60
              Width = 34
              Height = 12
              Caption = 'Al'#237'q.%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 697
              Top = 12
              Width = 50
              Height = 12
              Caption = 'Sub-Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label71: TLabel
              Left = 441
              Top = 60
              Width = 34
              Height = 12
              Caption = 'Aliq.%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label72: TLabel
              Left = 141
              Top = 11
              Width = 39
              Height = 12
              Caption = 'Produto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label14: TLabel
              Left = 393
              Top = 12
              Width = 22
              Height = 12
              Caption = 'CST'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 228
              Top = 60
              Width = 39
              Height = 12
              Caption = 'Isentas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 289
              Top = 60
              Width = 35
              Height = 12
              Caption = 'Outras'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 661
              Top = 59
              Width = 44
              Height = 12
              Caption = 'Situa'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object locproduto: TFlatSpeedButton
              Left = 114
              Top = 25
              Width = 18
              Height = 21
              Color = clWhite
              ColorFocused = 10658466
              ColorDown = clBtnShadow
              ColorBorder = clBtnShadow
              ColorHighLight = clBtnShadow
              ColorShadow = clBtnShadow
              Caption = '...'
              ParentColor = False
              OnClick = locprodutoClick
            end
            object Label53: TLabel
              Left = 551
              Top = 60
              Width = 39
              Height = 12
              Caption = 'Isentas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label55: TLabel
              Left = 612
              Top = 60
              Width = 35
              Height = 12
              Caption = 'Outras'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 151
              Top = 60
              Width = 54
              Height = 12
              Caption = 'Base C'#225'lc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label79: TLabel
              Left = 484
              Top = 60
              Width = 54
              Height = 12
              Caption = 'Base Calc.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 301
              Top = 12
              Width = 16
              Height = 12
              Caption = 'UN'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label56: TLabel
              Left = 363
              Top = 60
              Width = 22
              Height = 12
              Caption = 'Tipo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 494
              Top = 12
              Width = 34
              Height = 12
              Caption = 'Fra'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 321
              Top = 12
              Width = 30
              Height = 12
              Caption = 'CFOP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label29: TLabel
              Left = 631
              Top = 12
              Width = 48
              Height = 12
              Caption = 'Desconto'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Shape1: TShape
              Left = 11
              Top = 58
              Width = 332
              Height = 1
              Pen.Color = clBlue
            end
            object Shape2: TShape
              Left = 11
              Top = 59
              Width = 1
              Height = 9
              Pen.Color = clBlue
            end
            object Label58: TLabel
              Left = 97
              Top = 60
              Width = 46
              Height = 12
              Caption = 'Redu'#231#227'o '
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Shape3: TShape
              Left = 342
              Top = 59
              Width = 1
              Height = 9
              Pen.Color = clBlue
            end
            object Label59: TLabel
              Left = 13
              Top = 46
              Width = 29
              Height = 12
              Caption = 'ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Shape4: TShape
              Left = 349
              Top = 58
              Width = 310
              Height = 1
              Pen.Color = clRed
            end
            object Shape5: TShape
              Left = 349
              Top = 59
              Width = 1
              Height = 9
              Pen.Color = clRed
            end
            object Shape6: TShape
              Left = 658
              Top = 59
              Width = 1
              Height = 9
              Pen.Color = clRed
            end
            object Label63: TLabel
              Left = 497
              Top = 46
              Width = 17
              Height = 12
              Caption = 'IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object LICMS: TLabel
              Left = 40
              Top = 46
              Width = 257
              Height = 12
              Alignment = taCenter
              AutoSize = False
              Caption = 'TRIBUTADO INTEGRALMENTE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label41: TLabel
              Left = 16
              Top = 60
              Width = 32
              Height = 12
              Caption = 'Retido'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object edcodproduto: TRzEdit
              Left = 8
              Top = 25
              Width = 105
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
              OnKeyPress = edcodprodutoKeyPress
            end
            object edqde: TCurrencyEdit
              Left = 422
              Top = 25
              Width = 69
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              Value = 1.000000000000000000
              OnEnter = edqdeEnter
              OnExit = edqdeExit
              OnKeyPress = edserieKeyPress
            end
            object edvalor: TCurrencyEdit
              Left = 562
              Top = 25
              Width = 66
              Height = 21
              AutoSize = False
              Ctl3D = False
              DecimalPlaces = 3
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              OnEnter = edvalorEnter
              OnExit = edvalorExit
              OnKeyPress = edserieKeyPress
            end
            object btincuir: TBitBtn
              Left = 706
              Top = 72
              Width = 28
              Height = 22
              TabOrder = 22
              OnClick = btincuirClick
              OnKeyPress = edserieKeyPress
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0E79FC8A5559B5E3F
                8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFC3DDC8569F6340984F7CC18E95CFA595CEA577BD88358C41408C47B9D5
                BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B377A7DAB486CB9765
                BB7C63B97B85CA97A4D8B357A96A34853CB9D5BBFFFFFFFFFFFFFFFFFFE9F3EB
                66AB7569B87CA7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B259A9
                6B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DCB363C0785EBD705FBB76FE
                FEFEFEFEFE58B76F57B46D5BB673A5D9B3378E4296C19AFFFFFFFFFFFF76B788
                89CB9788D2956AC57962C06F54AA64FEFEFEFEFEFE58B76F58B76F5AB87184CB
                967ABD8C4C9554FFFFFFFFFFFF69B17EA8DCB27CCE8974CB80FEFEFEFEFEFEFE
                FEFEFEFEFEFEFEFEFEFEFE58B76F66BD7C9BD3AA3A8B43FFFFFFFFFFFF6DB482
                B5E1BD8AD49679C885FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE58B76F68C0
                7D9CD3A93E8E48FFFFFFFFFFFF81BF94ABDCB5A5DEAE80CA8B7BC8856DBC78FE
                FEFEFEFEFE5AAB695FBB765BB9728AD0987FC491579D60FFFFFFFFFFFFB8DBC3
                84C696D1EDD694D89F89D2937EC788FEFEFEFEFEFE78CC846AC27B6EC67DABDE
                B4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9D9B6D7F0DB91D79C87CC9283
                CB8D8AD39589D39482D18DAEDFB66AB87C5AA266E6F1E8FFFFFFFFFFFFFFFFFF
                D1E9D975BA8BAEDBBADBF1DFB5E3BC9ADAA495D89FA4DEAEBFE7C478C18957A1
                65C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE9293CDA3C2E5CACE
                EAD3C8E8CDAEDCB76CB87E67AD77C7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989B1D5BAE8F3EBFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            end
            object btcancela: TBitBtn
              Left = 733
              Top = 72
              Width = 28
              Height = 22
              TabOrder = 23
              OnClick = btcancelaClick
              OnKeyPress = edserieKeyPress
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
            object edaicms: TCurrencyEdit
              Left = 50
              Top = 73
              Width = 46
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              OnEnter = edaicmsEnter
              OnExit = edaicmsExit
              OnKeyPress = edserieKeyPress
            end
            object edsubtotal: TCurrencyEdit
              Left = 696
              Top = 25
              Width = 65
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnKeyPress = edserieKeyPress
            end
            object edproduto: TRzEdit
              Left = 133
              Top = 25
              Width = 165
              Height = 21
              DisabledColor = clInfoBk
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
              OnKeyPress = edserieKeyPress
            end
            object edst: TRzEdit
              Left = 391
              Top = 25
              Width = 30
              Height = 21
              Color = clWhite
              DisabledColor = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 4
              OnExit = edstExit
              OnKeyPress = edserieKeyPress
            end
            object edaisentasicms: TCurrencyEdit
              Left = 217
              Top = 73
              Width = 63
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
              OnKeyPress = edserieKeyPress
            end
            object edaoutrasicms: TCurrencyEdit
              Left = 281
              Top = 73
              Width = 63
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 15
              OnKeyPress = edserieKeyPress
            end
            object ednotacancelada: TRzComboBox
              Left = 661
              Top = 73
              Width = 43
              Height = 21
              Hint = 'N - Normal;'#13#10'S - Cancelado;'#13#10'E - ExtNormal;'#13#10'X - ExtCancelado;'#13#10
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FrameColor = clGray
              FrameVisible = True
              ItemHeight = 13
              ParentCtl3D = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 21
              Text = 'N'
              OnKeyPress = edserieKeyPress
              Items.Strings = (
                'N'
                'S'
                'E'
                'X')
              ItemIndex = 0
              Values.Strings = (
                'N'
                'S'
                'E'
                'X')
            end
            object edaisentasipi: TCurrencyEdit
              Left = 542
              Top = 73
              Width = 58
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 19
              OnKeyPress = edserieKeyPress
            end
            object edaoutrasipi: TCurrencyEdit
              Left = 601
              Top = 73
              Width = 59
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 20
              OnKeyPress = edserieKeyPress
            end
            object PageView5: TPageView
              Left = 5
              Top = 98
              Width = 761
              Height = 173
              ActivePage = PageSheet19
              ActivePageIndex = 0
              AdaptiveColors = True
              Align = alCustom
              BackgroundColor = clSilver
              BackgroundKind = bkInveseVertGradient
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              Indent = 2
              Margin = 0
              Options = [pgBoldActiveTab, pgCloseButton, pgTopBorder]
              ParentFont = False
              ShowTabs = True
              Spacing = 0
              TabHeight = 17
              TabOrder = 24
              TabStyle = tsOneNote
              TopIndent = 3
              object PageSheet19: TPageSheet
                Left = 0
                Top = 21
                Width = 761
                Height = 152
                Caption = 'Itens da Nota'
                DisplayMode = tdGlyph
                ImageIndex = 0
                Margin = 0
                PageIndex = 0
                TabColor = 15527167
                TabWidth = 0
                TransparentColor = clNone
                object Label28: TLabel
                  Left = 582
                  Top = 108
                  Width = 75
                  Height = 12
                  Caption = 'Valor Produtos'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object cxGrid1: TcxGrid
                  Left = 3
                  Top = 6
                  Width = 411
                  Height = 144
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object cxGridDBTableView2: TcxGridDBTableView
                    OnDblClick = cxGridDBTableView2DblClick
                    OnKeyPress = cxGridDBTableView2KeyPress
                    NavigatorButtons.ConfirmDelete = False
                    DataController.DataSource = dsrxitem
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Format = '000'
                        Kind = skCount
                        FieldName = 'num_item'
                        sum = cxGridDBTableView2num_item
                      end
                      item
                        Format = '0.00'
                        Kind = skSum
                        FieldName = 'valor_icms'
                      end
                      item
                        Format = '0.00'
                        Kind = skSum
                        FieldName = 'valor_ipi'
                      end
                      item
                        Format = '0.00'
                        Kind = skSum
                        FieldName = 'subtotal'
                        sum = cxGridDBTableView2subtotal
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsCustomize.ColumnGrouping = False
                    OptionsSelection.CellSelect = False
                    OptionsView.ScrollBars = ssVertical
                    OptionsView.ColumnAutoWidth = True
                    OptionsView.Footer = True
                    OptionsView.GridLines = glVertical
                    OptionsView.GroupByBox = False
                    Styles.Content = cxStyle1
                    Styles.Header = cxStyle2
                    object cxGridDBTableView2num_item: TcxGridDBColumn
                      Caption = 'ITM'
                      DataBinding.FieldName = 'num_item'
                      HeaderAlignmentHorz = taCenter
                      Options.Filtering = False
                      Width = 34
                    end
                    object cxGridDBTableView2cd_produto: TcxGridDBColumn
                      Caption = 'C'#211'D.'
                      DataBinding.FieldName = 'cd_produto'
                      HeaderAlignmentHorz = taCenter
                      Options.Filtering = False
                      Width = 44
                    end
                    object cxGridDBTableView2produto: TcxGridDBColumn
                      Caption = 'PRODUTO'
                      DataBinding.FieldName = 'produto'
                      HeaderAlignmentHorz = taCenter
                      Options.Filtering = False
                      Width = 199
                    end
                    object cxGridDBTableView2quantidade: TcxGridDBColumn
                      Caption = 'QTDE '
                      DataBinding.FieldName = 'quantidade'
                      HeaderAlignmentHorz = taCenter
                      Options.Filtering = False
                      Width = 50
                    end
                    object cxGridDBTableView2subtotal: TcxGridDBColumn
                      Caption = 'TOTAL - R$'
                      DataBinding.FieldName = 'subtotal'
                      HeaderAlignmentHorz = taCenter
                      Options.Filtering = False
                      Width = 82
                    end
                  end
                  object cxGridLevel2: TcxGridLevel
                    GridView = cxGridDBTableView2
                  end
                end
                object RzGroupBox5: TRzGroupBox
                  Left = 416
                  Top = 2
                  Width = 345
                  Height = 49
                  Caption = 'ICMS'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  object Label18: TLabel
                    Left = 7
                    Top = 11
                    Width = 51
                    Height = 12
                    Caption = 'B. C'#225'lculo'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label19: TLabel
                    Left = 192
                    Top = 13
                    Width = 76
                    Height = 12
                    Caption = 'Isentas(ICMS)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label20: TLabel
                    Left = 73
                    Top = 11
                    Width = 36
                    Height = 12
                    Caption = 'Alq(%)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label21: TLabel
                    Left = 272
                    Top = 13
                    Width = 72
                    Height = 12
                    Caption = 'Outras(ICMS)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 115
                    Top = 11
                    Width = 64
                    Height = 12
                    Caption = 'Valor(ICMS)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object edicmsbase: TRzDBEdit
                    Left = 5
                    Top = 25
                    Width = 66
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'base_icms'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    OnKeyPress = edserieKeyPress
                  end
                  object edicms: TRzDBEdit
                    Left = 72
                    Top = 25
                    Width = 44
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'aliquota_icms'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    OnKeyPress = edserieKeyPress
                  end
                  object edicmsimposto: TRzDBEdit
                    Left = 117
                    Top = 25
                    Width = 73
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'valor_icms'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    OnKeyPress = edserieKeyPress
                  end
                  object edicmsisentas: TRzDBEdit
                    Left = 191
                    Top = 25
                    Width = 73
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'isentas_icms'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    OnKeyPress = edserieKeyPress
                  end
                  object edicmsoutras: TRzDBEdit
                    Left = 270
                    Top = 25
                    Width = 73
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'outras_icms'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 4
                    OnKeyPress = edserieKeyPress
                  end
                end
                object RzGroupBox6: TRzGroupBox
                  Left = 416
                  Top = 51
                  Width = 345
                  Height = 50
                  Caption = 'IPI'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  object Label15: TLabel
                    Left = 7
                    Top = 12
                    Width = 51
                    Height = 12
                    Caption = 'B. C'#225'lculo'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 195
                    Top = 13
                    Width = 64
                    Height = 12
                    Caption = 'Isentas(IPI)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label25: TLabel
                    Left = 74
                    Top = 12
                    Width = 36
                    Height = 12
                    Caption = 'Alq(%)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label26: TLabel
                    Left = 270
                    Top = 12
                    Width = 60
                    Height = 12
                    Caption = 'Outras(IPI)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label27: TLabel
                    Left = 120
                    Top = 12
                    Width = 52
                    Height = 12
                    Caption = 'Valor(IPI)'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object edipibase: TRzDBEdit
                    Left = 5
                    Top = 26
                    Width = 67
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'base_ipi'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    OnKeyPress = edserieKeyPress
                  end
                  object edipiisentas: TRzDBEdit
                    Left = 192
                    Top = 26
                    Width = 74
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'isentas_ipi'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    OnKeyPress = edserieKeyPress
                  end
                  object edipi: TRzDBEdit
                    Left = 73
                    Top = 26
                    Width = 43
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'aliquota_ipi'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    OnKeyPress = edserieKeyPress
                  end
                  object edipioutras: TRzDBEdit
                    Left = 268
                    Top = 26
                    Width = 74
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'outras_ipi'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    OnKeyPress = edserieKeyPress
                  end
                  object edipiimposto: TRzDBEdit
                    Left = 117
                    Top = 26
                    Width = 74
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'valor_ipi'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 4
                    OnKeyPress = edserieKeyPress
                  end
                end
                object RzGroupBox7: TRzGroupBox
                  Left = 416
                  Top = 102
                  Width = 160
                  Height = 48
                  Caption = 'Substitui'#231#227'o Tribut'#225'ria'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 3
                  object Label33: TLabel
                    Left = 10
                    Top = 11
                    Width = 51
                    Height = 12
                    Caption = 'B. C'#225'lculo'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label37: TLabel
                    Left = 81
                    Top = 11
                    Width = 63
                    Height = 12
                    Caption = 'Substitui'#231#227'o'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object RzDBEdit15: TRzDBEdit
                    Left = 8
                    Top = 25
                    Width = 71
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'base_icms_subst'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    OnKeyPress = edserieKeyPress
                  end
                  object RzDBEdit16: TRzDBEdit
                    Left = 81
                    Top = 25
                    Width = 71
                    Height = 18
                    DataSource = dsrxitem
                    DataField = 'valor_substituicao'
                    ReadOnly = True
                    Alignment = taRightJustify
                    Ctl3D = False
                    DisabledColor = clInfoBk
                    Enabled = False
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -9
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    OnKeyPress = edserieKeyPress
                  end
                end
                object RzDBEdit1: TRzDBEdit
                  Left = 581
                  Top = 123
                  Width = 76
                  Height = 18
                  DataSource = dsrxitem
                  DataField = 'subtotal'
                  ReadOnly = True
                  Alignment = taRightJustify
                  Ctl3D = False
                  DisabledColor = clInfoBk
                  Enabled = False
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 4
                  OnKeyPress = edserieKeyPress
                end
                object RzGroupBox3: TRzGroupBox
                  Left = 664
                  Top = 104
                  Width = 96
                  Height = 45
                  Caption = 'TOTAL-R$'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -9
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 5
                  object RTOTAL: TRxCalcEdit
                    Left = 8
                    Top = 18
                    Width = 81
                    Height = 21
                    AutoSize = False
                    BorderStyle = bsNone
                    Color = clBtnFace
                    DisplayFormat = '###,###,##0.00'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ButtonWidth = 0
                    NumGlyphs = 2
                    ParentFont = False
                    TabOrder = 0
                  end
                end
                object btexcluir: TBitBtn
                  Left = 40
                  Top = 126
                  Width = 105
                  Height = 21
                  Caption = 'Excluir Item'
                  TabOrder = 6
                  OnClick = btexcluirClick
                  OnKeyPress = edserieKeyPress
                  Glyph.Data = {
                    36030000424D3603000000000000360000002800000010000000100000000100
                    18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E7F79EA9E1536AC63E
                    58BF3953BE4B66C197A7DBE1E6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFC2C8ED5465CB3B51CB7479E78E91ED8E91ED7077E3324CC03F5BBDB9C4
                    E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C9EE505FCC5B64DFA0A5F47D85EE5A
                    62E8585CE67C83ED9D9FF3505CD63351B9B9C4E7FFFFFFFFFFFFFFFFFFE8EAF9
                    6470D3606AE2A0ABF4535EEB4F5BE94C58E84D58E54B55E54F55E59DA1F3535F
                    D53F5CBEE2E7F5FFFFFFFFFFFFACB0E94A55DAA1AAF55563EF5165ED4C58E84C
                    58E84C58E84C58E84B57E55159E59EA2F4334FC395A5DBFFFFFFFFFFFF7277DC
                    808BED7D90F65C72F24C58E84C58E84C58E84C58E84C58E84C58E84E5AE87A82
                    EF747AE14B64C3FFFFFFFFFFFF6468DAA0AAF66F85F76781F5FEFEFEFEFEFEFE
                    FEFEFEFEFEFEFEFEFEFEFE4C58E85B65E9959BF03855BDFFFFFFFFFFFF696DDB
                    AEB8F87E92F96F84EFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE4C58E85D69
                    ED959CF03C54BFFFFFFFFFFFFF7C7EE2A4AEF49CAAF9768BEF535EEB535EEB53
                    5EEB535EEB535EEB535EEB6276F1808DF3777EE8556AC8FFFFFFFFFFFFB5B4EF
                    7C82E9CCD3FB8A9CF97D92F67489ED6B83F56B83F56B83F56B83F56278F2A3AE
                    F73D4ECF9FAAE0FFFFFFFFFFFFEBEBFB7877E2A2A6F2D3DAFC8699F97E90EF79
                    8DF07E93F77D91F8758BF7A7B5F7626DE25767CCE6E8F7FFFFFFFFFFFFFFFFFF
                    CFCFF66F6FE0A9ACF1D7DBFCADB9F990A2F98A9CF99BA8FAB9C6FB6F7AE85361
                    CDC3C8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF67878E18D92ECBDC2F7CB
                    D2F8C3CAF8A9B3F3656FE1636DD5C6CAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFEBEBFBB6B5F07C7EE1696ADD676ADB7378DEAEB2EAE8E9F9FFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                end
              end
              object PageSheet24: TPageSheet
                Left = 0
                Top = 21
                Width = 761
                Height = 152
                Caption = 'Outros'
                DisplayMode = tdGlyph
                ImageIndex = 0
                Margin = 0
                PageIndex = 1
                TabColor = 13559807
                TabWidth = 0
                TransparentColor = clNone
                object RzGroupBox9: TRzGroupBox
                  Left = 0
                  Top = 0
                  Width = 713
                  Height = 152
                  Caption = 'Adicionais'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object Label39: TLabel
                    Left = 9
                    Top = 19
                    Width = 68
                    Height = 13
                    Caption = 'Observa'#231#227'o'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBRadioGroup3: TDBRadioGroup
                    Left = 8
                    Top = 89
                    Width = 117
                    Height = 48
                    Caption = 'Cond.Pagamento'
                    DataField = 'CONDICAO_PAGAMENTO'
                    DataSource = dsentrada
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Items.Strings = (
                      #192' Vista'
                      #192' Prazo')
                    ParentFont = False
                    TabOrder = 0
                    Values.Strings = (
                      '0'
                      '1')
                  end
                  object DBRadioGroup1: TDBRadioGroup
                    Left = 132
                    Top = 89
                    Width = 108
                    Height = 48
                    Caption = 'Tipo de Venda'
                    DataField = 'TIPO_VENDA'
                    DataSource = dsentrada
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    Items.Strings = (
                      #192' Vista'
                      #192' Prazo')
                    ParentFont = False
                    TabOrder = 1
                    Values.Strings = (
                      '0'
                      '1')
                  end
                  object dbmemo1: TMemo
                    Left = 8
                    Top = 32
                    Width = 449
                    Height = 57
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 2
                    OnKeyPress = Memo1KeyPress
                  end
                end
              end
            end
            object edaipi: TCurrencyEdit
              Left = 436
              Top = 73
              Width = 47
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 17
              OnEnter = edaipiEnter
              OnExit = edaipiExit
              OnKeyPress = edserieKeyPress
            end
            object edabaseicms: TCurrencyEdit
              Left = 143
              Top = 73
              Width = 73
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
              OnKeyPress = edserieKeyPress
            end
            object edabaseipi: TCurrencyEdit
              Left = 484
              Top = 73
              Width = 57
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 18
              OnKeyPress = edserieKeyPress
            end
            object edunidade: TRzEdit
              Left = 299
              Top = 25
              Width = 21
              Height = 21
              DisabledColor = clInfoBk
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
              OnKeyPress = edserieKeyPress
            end
            object edtipoipi: TRzComboBox
              Left = 348
              Top = 73
              Width = 87
              Height = 21
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FrameColor = clGray
              FrameVisible = True
              ItemHeight = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 16
              Text = '0.N'#227'o Tem IPI'
              OnKeyPress = edtipoipiKeyPress
              Items.Strings = (
                '0.N'#227'o Tem IPI'
                '1.IPI Normal'
                '2.IPI Aproveit.50%')
              ItemIndex = 0
              Values.Strings = (
                '0'
                '1'
                '2')
            end
            object edfracao: TCurrencyEdit
              Left = 492
              Top = 25
              Width = 69
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              OnEnter = edqdeEnter
              OnExit = edqdeExit
              OnKeyPress = edserieKeyPress
            end
            object ecfop: TRzComboBox
              Left = 321
              Top = 25
              Width = 69
              Height = 21
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ItemHeight = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnKeyPress = ecfopKeyPress
            end
            object rdesconto: TCurrencyEdit
              Left = 629
              Top = 25
              Width = 66
              Height = 21
              AutoSize = False
              Ctl3D = False
              DecimalPlaces = 3
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              OnEnter = edvalorEnter
              OnExit = edvalorExit
              OnKeyPress = edserieKeyPress
            end
            object comboreducao: TCurrencyEdit
              Left = 97
              Top = 73
              Width = 45
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 12
              OnEnter = comboreducaoEnter
              OnExit = comboreducaoExit
              OnKeyPress = edserieKeyPress
            end
            object comboretido: TRzComboBox
              Left = 16
              Top = 73
              Width = 33
              Height = 21
              Style = csDropDownList
              Color = clWhite
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FrameColor = clGray
              FrameVisible = True
              ItemHeight = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
              Text = 'N'
              OnKeyPress = comboretidoKeyPress
              Items.Strings = (
                'N'
                'S')
              ItemIndex = 0
              Values.Strings = (
                '0'
                '1'
                '2')
            end
          end
          object RzGroupBox8: TRzGroupBox
            Left = 5
            Top = 0
            Width = 769
            Height = 89
            Caption = 'C'#225'lculo do Imposto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Transparent = True
            object Label36: TLabel
              Left = 21
              Top = 12
              Width = 61
              Height = 12
              Caption = 'BASE ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label54: TLabel
              Left = 130
              Top = 12
              Width = 53
              Height = 12
              Caption = 'VLR.ICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label69: TLabel
              Left = 224
              Top = 12
              Width = 71
              Height = 12
              Caption = 'BASE SUBST.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label70: TLabel
              Left = 334
              Top = 12
              Width = 63
              Height = 12
              Caption = 'VLR.SUBST.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label73: TLabel
              Left = 419
              Top = 12
              Width = 86
              Height = 12
              Caption = 'VLR.PRODUTOS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label74: TLabel
              Left = 28
              Top = 50
              Width = 34
              Height = 12
              Caption = 'FRETE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label75: TLabel
              Left = 131
              Top = 50
              Width = 46
              Height = 12
              Caption = 'SEGURO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label76: TLabel
              Left = 223
              Top = 50
              Width = 81
              Height = 12
              Caption = 'OUTRAS DESP.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label77: TLabel
              Left = 334
              Top = 50
              Width = 58
              Height = 12
              Caption = 'VALOR IPI'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label78: TLabel
              Left = 666
              Top = 40
              Width = 73
              Height = 12
              Caption = 'VALOR NOTA'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Label42: TLabel
              Left = 470
              Top = 50
              Width = 75
              Height = 12
              Caption = 'ICMS RETIDO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object tbasecalculo: TCurrencyEdit
              Left = 11
              Top = 27
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 0
              OnEnter = tbasecalculoEnter
              OnExit = tbasecalculoExit
              OnKeyPress = edserieKeyPress
            end
            object tvaloricms: TCurrencyEdit
              Left = 113
              Top = 27
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnEnter = tvaloricmsEnter
              OnExit = tvaloricmsExit
              OnKeyPress = edserieKeyPress
            end
            object tbaseicmssubst: TCurrencyEdit
              Left = 215
              Top = 27
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 2
              OnEnter = tbaseicmssubstEnter
              OnExit = tbaseicmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object tvaloricmssubst: TCurrencyEdit
              Left = 317
              Top = 27
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
              OnEnter = tvaloricmssubstEnter
              OnExit = tvaloricmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object tvalorproduto: TCurrencyEdit
              Left = 419
              Top = 27
              Width = 96
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
              OnEnter = tvalorprodutoEnter
              OnExit = tvalorprodutoExit
              OnKeyPress = edserieKeyPress
            end
            object tfrete: TCurrencyEdit
              Left = 11
              Top = 63
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
              OnExit = tvaloricmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object tseguro: TCurrencyEdit
              Left = 113
              Top = 63
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              OnExit = tvaloricmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object tdespesas: TCurrencyEdit
              Left = 215
              Top = 63
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 8
              OnExit = tvaloricmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object tipi: TCurrencyEdit
              Left = 317
              Top = 63
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnExit = tvaloricmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object tnota: TCurrencyEdit
              Left = 657
              Top = 55
              Width = 96
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              OnEnter = tnotaEnter
              OnExit = tnotaExit
              OnKeyPress = tnotaKeyPress
            end
            object RDESCONTO_NOTA: TCurrencyEdit
              Left = 517
              Top = 27
              Width = 96
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
              OnEnter = RDESCONTO_NOTAEnter
              OnExit = tvaloricmssubstExit
              OnKeyPress = edserieKeyPress
            end
            object NDESCONTO: TCheckBox
              Left = 520
              Top = 12
              Width = 97
              Height = 15
              Caption = 'DESCONTO'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              State = cbChecked
              TabOrder = 12
              OnClick = NDESCONTOClick
            end
            object RICMS_RETIDO: TCurrencyEdit
              Left = 419
              Top = 63
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.00;-,0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 10
              OnExit = RICMS_RETIDOExit
              OnKeyPress = edserieKeyPress
            end
            object RRETIDO: TCurrencyEdit
              Left = 518
              Top = 63
              Width = 67
              Height = 21
              AutoSize = False
              Color = clBtnFace
              Ctl3D = False
              DecimalPlaces = 4
              DisplayFormat = '###,##0.0000%'
              Enabled = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
              OnExit = RICMS_RETIDOExit
              OnKeyPress = edserieKeyPress
            end
          end
          object picms: TFlatPanel
            Left = 18
            Top = 189
            Width = 209
            Height = 65
            Color = clInfoBk
            Visible = False
            TabOrder = 2
            object Label30: TLabel
              Left = 13
              Top = 11
              Width = 185
              Height = 39
              Caption = 
                '1 - II - Isentas  '#13#10'2 - FF - Substitui'#231#227'o Tribut'#225'ria'#13#10'Informar o' +
                ' % - Outras Al'#237'quotas'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object PageSheet3: TPageSheet
          Left = 0
          Top = 19
          Width = 1205
          Height = 365
          Caption = 'Transportadora'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = 13100737
          TabWidth = 0
          TransparentColor = clNone
          object RzGroupBox10: TRzGroupBox
            Left = 0
            Top = 0
            Width = 1205
            Height = 365
            Align = alClient
            Caption = 'Transportadora'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label34: TLabel
              Left = 9
              Top = 21
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Nome/Raz'#227'o Social:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label43: TLabel
              Left = 9
              Top = 142
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Endere'#231'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label45: TLabel
              Left = 9
              Top = 191
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Esp'#233'cie:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label47: TLabel
              Left = 9
              Top = 215
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Marca:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label48: TLabel
              Left = 454
              Top = 142
              Width = 45
              Height = 13
              Caption = 'Cidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label64: TLabel
              Left = 9
              Top = 94
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C.N.P.J / C.P.F:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label65: TLabel
              Left = 9
              Top = 118
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Inscr. Estadual:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label67: TLabel
              Left = 9
              Top = 287
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Peso L'#237'quido:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label80: TLabel
              Left = 9
              Top = 263
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Peso Bruto:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label81: TLabel
              Left = 9
              Top = 239
              Width = 116
              Height = 14
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'N'#250'mero:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label83: TLabel
              Left = 9
              Top = 167
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Quantidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label51: TLabel
              Left = 9
              Top = 46
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Frete Por Conta:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label31: TLabel
              Left = 176
              Top = 46
              Width = 180
              Height = 13
              Caption = '1 - Emitente  |  2 - Destinat'#225'rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label82: TLabel
              Left = 9
              Top = 70
              Width = 116
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Placa/UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label50: TLabel
              Left = 697
              Top = 142
              Width = 19
              Height = 13
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label62: TLabel
              Left = 209
              Top = 71
              Width = 8
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = '/'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object edtnome: TRzEdit
              Left = 128
              Top = 18
              Width = 361
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 0
              OnKeyPress = edtnomeKeyPress
            end
            object edtplaca: TRzEdit
              Left = 128
              Top = 66
              Width = 78
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 2
              OnKeyPress = edtnomeKeyPress
            end
            object edtuf: TRzEdit
              Left = 223
              Top = 66
              Width = 34
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 3
              OnKeyPress = edtnomeKeyPress
            end
            object edtcnpj: TRzEdit
              Left = 128
              Top = 90
              Width = 193
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 4
              OnKeyPress = edtnomeKeyPress
            end
            object edtendereco: TRzEdit
              Left = 128
              Top = 139
              Width = 321
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 6
              OnKeyPress = edtnomeKeyPress
            end
            object edtespecie: TRzEdit
              Left = 128
              Top = 188
              Width = 153
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 10
              OnKeyPress = edtnomeKeyPress
            end
            object edtmarca: TRzEdit
              Left = 128
              Top = 212
              Width = 153
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 11
              OnKeyPress = edtnomeKeyPress
            end
            object edtmunicipio: TRzEdit
              Left = 503
              Top = 139
              Width = 186
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 7
              OnKeyPress = edtnomeKeyPress
            end
            object edtmunicipiouf: TRzEdit
              Left = 720
              Top = 139
              Width = 34
              Height = 21
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 8
              OnKeyPress = edtnomeKeyPress
            end
            object edtie: TRzEdit
              Left = 129
              Top = 115
              Width = 194
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 5
              OnKeyPress = edtnomeKeyPress
            end
            object edtnumero: TRzEdit
              Left = 128
              Top = 236
              Width = 100
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FocusColor = 8454143
              FrameColor = clGray
              FrameVisible = True
              ParentFont = False
              TabOrder = 12
              OnKeyPress = edtnomeKeyPress
            end
            object edtbruto: TCurrencyEdit
              Left = 128
              Top = 260
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DecimalPlaces = 3
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 13
              OnKeyPress = edtnomeKeyPress
            end
            object edtliquido: TCurrencyEdit
              Left = 128
              Top = 284
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DecimalPlaces = 3
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 14
              OnKeyPress = edtliquidoKeyPress
            end
            object edtqde: TCurrencyEdit
              Left = 128
              Top = 164
              Width = 100
              Height = 21
              AutoSize = False
              Ctl3D = False
              DisplayFormat = ',0.000;-,0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 9
              OnKeyPress = edtnomeKeyPress
            end
            object edtipofrete: TRzComboBox
              Left = 128
              Top = 42
              Width = 40
              Height = 21
              Ctl3D = False
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              FrameHotStyle = fsFlat
              FrameVisible = True
              ItemHeight = 13
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 1
              OnKeyPress = edtnomeKeyPress
              Items.Strings = (
                '1'
                '2')
              Values.Strings = (
                '1'
                '2')
            end
          end
        end
        object PageSheet4: TPageSheet
          Left = 0
          Top = 19
          Width = 1205
          Height = 365
          Caption = 'Adicionais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = 16380136
          TabWidth = 0
          TransparentColor = clNone
          object RzGroupBox11: TRzGroupBox
            Left = 0
            Top = 0
            Width = 1205
            Height = 365
            Align = alClient
            Caption = 'Adicionais'
            Font.Charset = ANSI_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object RzGroupBox4: TRzGroupBox
      Left = 8
      Top = 45
      Width = 769
      Height = 89
      Caption = 'Fornecedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Transparent = True
      object Label57: TLabel
        Left = 564
        Top = 12
        Width = 14
        Height = 13
        Caption = 'UF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 9
        Top = 12
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 417
        Top = 12
        Width = 56
        Height = 13
        Caption = 'CNPJ/CPF'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 590
        Top = 12
        Width = 76
        Height = 13
        Caption = 'Insc.Estadual'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 680
        Top = 12
        Width = 74
        Height = 13
        Caption = 'IE.Subst.Trib'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 285
        Top = 48
        Width = 40
        Height = 13
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 220
        Top = 48
        Width = 61
        Height = 13
        Caption = 'Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edlomodelo: TFlatSpeedButton
        Left = 327
        Top = 63
        Width = 25
        Height = 21
        ColorFocused = 10658466
        ColorDown = clBtnShadow
        ColorBorder = clBtnShadow
        ColorHighLight = clBtnShadow
        ColorShadow = clBtnShadow
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = edlomodeloClick
      end
      object Label6: TLabel
        Left = 355
        Top = 48
        Width = 43
        Height = 13
        Caption = 'Esp'#233'cie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 401
        Top = 48
        Width = 30
        Height = 13
        Caption = 'S'#233'rie'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object locfornecedor: TFlatSpeedButton
        Left = 84
        Top = 27
        Width = 25
        Height = 21
        Color = clWhite
        ColorFocused = 10658466
        ColorDown = clBtnShadow
        ColorBorder = clBtnShadow
        ColorHighLight = clBtnShadow
        ColorShadow = clBtnShadow
        Caption = '...'
        ParentColor = False
        OnClick = locfornecedorClick
      end
      object Label49: TLabel
        Left = 113
        Top = 12
        Width = 119
        Height = 13
        Caption = 'Nome do Fornecedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 438
        Top = 48
        Width = 31
        Height = 13
        Caption = 'CFOP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 10
        Top = 48
        Width = 86
        Height = 13
        Caption = 'Dt Lan'#231'amento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 117
        Top = 48
        Width = 82
        Height = 13
        Caption = 'Dt Documento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label68: TLabel
        Left = 511
        Top = 48
        Width = 128
        Height = 13
        Caption = 'Natureza da Opera'#231#227'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object edmodelo: TRzComboBox
        Left = 284
        Top = 63
        Width = 41
        Height = 21
        Color = clWhite
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FrameColor = clGray
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        Text = '01'
        OnExit = edmodeloExit
        OnKeyPress = edserieKeyPress
      end
      object edcodcliente: TRzEdit
        Left = 8
        Top = 27
        Width = 74
        Height = 21
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 8454143
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edcodclienteKeyPress
      end
      object edcliente: TRzEdit
        Left = 112
        Top = 27
        Width = 297
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = edserieKeyPress
      end
      object edclientecnpj: TRzEdit
        Left = 410
        Top = 27
        Width = 153
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnKeyPress = edserieKeyPress
      end
      object edclienteuf: TRzEdit
        Left = 564
        Top = 27
        Width = 25
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnKeyPress = edserieKeyPress
      end
      object edclienteie: TRzEdit
        Left = 590
        Top = 27
        Width = 88
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        OnKeyPress = edserieKeyPress
      end
      object RzEdit2: TRzEdit
        Left = 679
        Top = 27
        Width = 82
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        OnKeyPress = edserieKeyPress
      end
      object edespecie: TRzEdit
        Left = 355
        Top = 63
        Width = 41
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        OnKeyPress = edserieKeyPress
      end
      object edserie: TRzEdit
        Left = 399
        Top = 63
        Width = 33
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 8454143
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        TabOrder = 11
        OnExit = ednfiscalExit
        OnKeyPress = edserieKeyPress
      end
      object ednfiscal: TRzEdit
        Left = 219
        Top = 63
        Width = 62
        Height = 21
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 8454143
        FrameColor = clGray
        FrameVisible = True
        MaxLength = 6
        ParentFont = False
        TabOrder = 8
        OnExit = ednfiscalExit
        OnKeyPress = edserieKeyPress
      end
      object eddtlancamento: TDateEdit
        Left = 8
        Top = 63
        Width = 103
        Height = 21
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyPress = edserieKeyPress
      end
      object eddtdocumento: TDateEdit
        Left = 115
        Top = 63
        Width = 102
        Height = 21
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        NumGlyphs = 2
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        OnKeyPress = edserieKeyPress
      end
      object edhistorico: TRzEdit
        Left = 508
        Top = 63
        Width = 253
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        OnKeyPress = edserieKeyPress
      end
      object edcfop: TRzComboBox
        Left = 436
        Top = 63
        Width = 69
        Height = 21
        Color = clWhite
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        FocusColor = 8454143
        FrameColor = clGray
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
        OnKeyPress = edcfopKeyPress
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 8
      Top = 1
      Width = 457
      Height = 44
      Caption = 'Informante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Transparent = True
      object edlocempresa: TFlatSpeedButton
        Left = 83
        Top = 15
        Width = 26
        Height = 21
        Color = clWhite
        ColorFocused = 10658466
        ColorDown = clBtnShadow
        ColorBorder = clGray
        ColorHighLight = clBtnShadow
        ColorShadow = clBtnShadow
        Caption = '...'
        ParentColor = False
        OnClick = edlocempresaClick
      end
      object edcod: TRzEdit
        Left = 8
        Top = 15
        Width = 74
        Height = 21
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 8454143
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edcodKeyPress
      end
      object RzPanel14: TRzPanel
        Left = 110
        Top = 15
        Width = 331
        Height = 21
        BorderInner = fsFlatRounded
        BorderOuter = fsNone
        Color = clWhite
        TabOrder = 1
        object edempresa: TRzLabel
          Left = 7
          Top = 3
          Width = 15
          Height = 16
          Caption = '...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RzGroupBox12: TRzGroupBox
      Left = 467
      Top = 1
      Width = 313
      Height = 44
      Caption = 'Plano de Contas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Transparent = True
      object locpcontas: TFlatSpeedButton
        Left = 82
        Top = 16
        Width = 25
        Height = 21
        Color = clWhite
        ColorFocused = 10658466
        ColorDown = clBtnShadow
        ColorBorder = clBtnShadow
        ColorHighLight = clBtnShadow
        ColorShadow = clBtnShadow
        Caption = '...'
        ParentColor = False
        OnClick = locpcontasClick
      end
      object edcodpcontas: TRzEdit
        Left = 7
        Top = 16
        Width = 74
        Height = 21
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FocusColor = 8454143
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        TabOrder = 0
        OnKeyPress = edcodpcontasKeyPress
      end
      object edpcontas: TRzEdit
        Left = 108
        Top = 16
        Width = 193
        Height = 21
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        FrameColor = clGray
        FrameVisible = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = edserieKeyPress
      end
    end
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 524
    Width = 786
    Height = 33
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alClient
    TabOrder = 1
    object bgravar: TBitBtn
      Left = 6
      Top = 3
      Width = 94
      Height = 26
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = bgravarClick
      OnKeyPress = edserieKeyPress
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
      Left = 110
      Top = 3
      Width = 94
      Height = 26
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = bcancelarClick
      OnKeyPress = edserieKeyPress
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
    end
  end
  object dsempresa: TwwDataSource
    DataSet = frmmodulo.qrFilial
    Left = 144
    Top = 528
  end
  object dsentrada: TwwDataSource
    DataSet = frmmodulo.qrnota
    OnDataChange = dsentradaDataChange
    Left = 176
    Top = 528
  end
  object dspcontas: TwwDataSource
    DataSet = frmmodulo.qrplano
    Left = 288
    Top = 528
  end
  object dsfornecedor: TwwDataSource
    DataSet = frmmodulo.qrfornecedor
    Left = 320
    Top = 528
  end
  object dsrxitem: TwwDataSource
    DataSet = rxitem
    Left = 72
    Top = 528
  end
  object dsprodutos: TwwDataSource
    DataSet = frmmodulo.qrproduto
    Left = 208
    Top = 528
  end
  object rxitem: TRxMemoryData
    FieldDefs = <
      item
        Name = 'modelo_nf'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'datahora_ini'
        DataType = ftDate
      end
      item
        Name = 'notafiscal'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'cd_produto'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'quantidade'
        DataType = ftFloat
      end
      item
        Name = 'produto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
      end
      item
        Name = 'valor_venda_bruta'
        DataType = ftFloat
      end
      item
        Name = 'valor_total_geral'
        DataType = ftFloat
      end
      item
        Name = 'DATA_EMISSAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'base_calculo'
        DataType = ftFloat
      end
      item
        Name = 'base_icms'
        DataType = ftFloat
      end
      item
        Name = 'valor_icms'
        DataType = ftFloat
      end
      item
        Name = 'movimento'
        DataType = ftInteger
      end
      item
        Name = 'cod_pedidos'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'num_item'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'cl_fis'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'apr_und'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'aliquota_ipi'
        DataType = ftFloat
      end
      item
        Name = 'aliquota_icms'
        DataType = ftFloat
      end
      item
        Name = 'reducao_base_icms'
        DataType = ftFloat
      end
      item
        Name = 'base_icms_subst'
        DataType = ftFloat
      end
      item
        Name = 'datahora'
        DataType = ftDateTime
      end
      item
        Name = 'valor_desconto'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'base_ipi'
        DataType = ftFloat
      end
      item
        Name = 'valor_ipi'
        DataType = ftFloat
      end
      item
        Name = 'cfop'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'outras_ipi'
        DataType = ftFloat
      end
      item
        Name = 'isentas_ipi'
        DataType = ftFloat
      end
      item
        Name = 'outras_icms'
        DataType = ftFloat
      end
      item
        Name = 'isentas_icms'
        DataType = ftFloat
      end
      item
        Name = 'ipi_nao_creditado'
        DataType = ftFloat
      end
      item
        Name = 'frete'
        DataType = ftFloat
      end
      item
        Name = 'valor_substituicao'
        DataType = ftFloat
      end
      item
        Name = 'seguro'
        DataType = ftFloat
      end
      item
        Name = 'outras_despesas'
        DataType = ftFloat
      end
      item
        Name = 's_trib'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TIPO_FRETE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nro_serie_eqp'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nro_ordem_eqp'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'modelo_doc'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'nro_contador_inicio'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'nro_contador_fim'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'nro_contador_z'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'contador_reinicio'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'brancos'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'datahora_recebimento'
        DataType = ftDate
      end
      item
        Name = 'datahora_fim'
        DataType = ftDate
      end
      item
        Name = 'datahora_emissao'
        DataType = ftDate
      end
      item
        Name = 'CODNOTA'
        DataType = ftString
        Size = 15
      end>
    Left = 39
    Top = 531
    object rxitemmodelo_nf: TStringField
      DisplayWidth = 2
      FieldName = 'modelo_nf'
      Size = 2
    end
    object rxitemdatahora_ini: TDateField
      DisplayWidth = 10
      FieldName = 'datahora_ini'
    end
    object rxitemnotafiscal: TStringField
      DisplayWidth = 6
      FieldName = 'notafiscal'
      Size = 6
    end
    object rxitemcd_produto: TStringField
      DisplayWidth = 6
      FieldName = 'cd_produto'
      Size = 6
    end
    object rxitemquantidade: TFloatField
      DisplayWidth = 10
      FieldName = 'quantidade'
      DisplayFormat = '0.000'
    end
    object rxitemproduto: TStringField
      DisplayWidth = 40
      FieldName = 'produto'
      Size = 40
    end
    object rxitemsubtotal: TFloatField
      DisplayWidth = 10
      FieldName = 'subtotal'
      DisplayFormat = '0.00'
    end
    object rxitemvalor_venda_bruta: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_venda_bruta'
      DisplayFormat = '0.00'
    end
    object rxitemvalor_total_geral: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_total_geral'
      DisplayFormat = '0.00'
    end
    object rxitemDATA_EMISSAO: TStringField
      DisplayWidth = 6
      FieldName = 'DATA_EMISSAO'
      Required = True
      Visible = False
      EditMask = '!99/99/0000;1;_'
      Size = 6
    end
    object rxitemtotal: TFloatField
      DisplayWidth = 10
      FieldName = 'total'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitembase_calculo: TFloatField
      DisplayWidth = 10
      FieldName = 'base_calculo'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitembase_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'base_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitemvalor_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitemmovimento: TIntegerField
      DisplayWidth = 10
      FieldName = 'movimento'
      Visible = False
    end
    object rxitemcod_pedidos: TStringField
      DisplayWidth = 10
      FieldName = 'cod_pedidos'
      Visible = False
      Size = 10
    end
    object rxitemnum_item: TStringField
      DisplayWidth = 5
      FieldName = 'num_item'
      Visible = False
      Size = 5
    end
    object rxitemcl_fis: TStringField
      DisplayWidth = 1
      FieldName = 'cl_fis'
      Visible = False
      Size = 1
    end
    object rxitemapr_und: TStringField
      DisplayWidth = 2
      FieldName = 'apr_und'
      Visible = False
      Size = 2
    end
    object rxitemaliquota_ipi: TFloatField
      DisplayWidth = 10
      FieldName = 'aliquota_ipi'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitemaliquota_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'aliquota_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitemreducao_base_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'reducao_base_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitembase_icms_subst: TFloatField
      DisplayWidth = 10
      FieldName = 'base_icms_subst'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitemdatahora: TDateTimeField
      DisplayWidth = 18
      FieldName = 'datahora'
      Visible = False
    end
    object rxitemvalor_desconto: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_desconto'
      Visible = False
      DisplayFormat = '0.00'
    end
    object rxitemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object rxitembase_ipi: TFloatField
      FieldName = 'base_ipi'
      DisplayFormat = '0.00'
    end
    object rxitemvalor_ipi: TFloatField
      FieldName = 'valor_ipi'
      DisplayFormat = '0.00'
    end
    object rxitemcfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object rxitemoutras_ipi: TFloatField
      FieldName = 'outras_ipi'
      DisplayFormat = '0.00'
    end
    object rxitemisentas_ipi: TFloatField
      FieldName = 'isentas_ipi'
      DisplayFormat = '0.00'
    end
    object rxitemoutras_icms: TFloatField
      FieldName = 'outras_icms'
      DisplayFormat = '0.00'
    end
    object rxitemisentas_icms: TFloatField
      FieldName = 'isentas_icms'
      DisplayFormat = '0.00'
    end
    object rxitemipi_nao_creditado: TFloatField
      FieldName = 'ipi_nao_creditado'
      DisplayFormat = '0.00'
    end
    object rxitemfrete: TFloatField
      FieldName = 'frete'
      DisplayFormat = '0.00'
    end
    object rxitemvalor_substituicao: TFloatField
      FieldName = 'valor_substituicao'
      DisplayFormat = '0.00'
    end
    object rxitemseguro: TFloatField
      FieldName = 'seguro'
      DisplayFormat = '0.00'
    end
    object rxitemoutras_despesas: TFloatField
      FieldName = 'outras_despesas'
      DisplayFormat = '0.00'
    end
    object rxitems_trib: TStringField
      FieldName = 's_trib'
      Size = 3
    end
    object rxitemTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object rxitemnro_serie_eqp: TStringField
      FieldName = 'nro_serie_eqp'
    end
    object rxitemnro_ordem_eqp: TStringField
      FieldName = 'nro_ordem_eqp'
      Size = 2
    end
    object rxitemmodelo_doc: TStringField
      FieldName = 'modelo_doc'
      Size = 50
    end
    object rxitemnro_contador_inicio: TStringField
      FieldName = 'nro_contador_inicio'
      Size = 10
    end
    object rxitemnro_contador_fim: TStringField
      FieldName = 'nro_contador_fim'
      Size = 5
    end
    object rxitemnro_contador_z: TStringField
      FieldName = 'nro_contador_z'
      Size = 10
    end
    object rxitemcontador_reinicio: TStringField
      FieldName = 'contador_reinicio'
      Size = 5
    end
    object rxitembrancos: TStringField
      FieldName = 'brancos'
      Size = 10
    end
    object rxitemdatahora_recebimento: TDateField
      FieldName = 'datahora_recebimento'
    end
    object rxitemdatahora_fim: TDateField
      FieldName = 'datahora_fim'
    end
    object rxitemdatahora_emissao: TDateField
      FieldName = 'datahora_emissao'
    end
    object rxitemCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object rxitemfracao: TFloatField
      FieldName = 'fracao'
    end
    object rxitemdesconto: TFloatField
      FieldName = 'desconto'
    end
    object rxitemreducao: TFloatField
      FieldName = 'reducao'
    end
    object rxitemcodigo: TStringField
      FieldName = 'codigo'
      Size = 10
    end
    object rxitemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
  end
  object dsitem: TwwDataSource
    DataSet = frmmodulo.qritem
    Left = 240
    Top = 528
  end
  object dsadiciona_item: TDataSource
    Left = 304
    Top = 568
  end
  object qradiciona_item: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 272
    Top = 568
  end
  object menu_gravar: TPopupMenu
    Left = 689
    Top = 125
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 115
      OnClick = bcancelarClick
    end
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 593
    Top = 21
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 496
    Top = 65528
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 428
    Top = 20
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000033')
    Params = <>
    Left = 296
    Top = 216
  end
end
