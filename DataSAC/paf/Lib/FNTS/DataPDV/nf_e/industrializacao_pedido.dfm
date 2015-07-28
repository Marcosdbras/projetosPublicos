object frmindustrializacao_pedido: Tfrmindustrializacao_pedido
  Left = 134
  Top = 131
  Width = 801
  Height = 543
  BorderIcons = [biSystemMenu]
  Caption = 'Industrializa'#231#227'o | Pedidos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 104
    Width = 793
    Height = 3
    Align = alTop
  end
  object bar: TRzProgressBar
    Left = 0
    Top = 440
    Width = 793
    Height = 4
    Align = alBottom
    BackColor = clBtnFace
    BarColor = 12582847
    BarColorStop = 59904
    BarStyle = bsGradient
    BorderOuter = fsStatus
    BorderWidth = 0
    FlatColor = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = 12582847
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    InteriorOffset = 0
    ParentFont = False
    PartsComplete = 0
    Percent = 0
    ShowPercent = False
    ThemeAware = False
    TotalParts = 500
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 104
    Align = alTop
    BorderOuter = fsNone
    TabOrder = 0
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 19
      Top = 9
      Width = 112
      Height = 13
      Caption = 'Data Abertura Pedido.:'
      Transparent = True
    end
    object Label2: TLabel
      Left = 91
      Top = 34
      Width = 41
      Height = 13
      Caption = 'Cliente.:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 57
      Width = 124
      Height = 13
      Caption = 'Condi'#231#227'o de pagamento.:'
      Transparent = True
    end
    object Label4: TLabel
      Left = 52
      Top = 81
      Width = 80
      Height = 13
      Caption = 'Representante.:'
      Transparent = True
    end
    object Label5: TLabel
      Left = 625
      Top = 82
      Width = 50
      Height = 13
      Caption = 'Telefone.:'
      Transparent = True
    end
    object Label7: TLabel
      Left = 251
      Top = 9
      Width = 105
      Height = 13
      Caption = 'Previs'#227'o de Entrega.:'
      Transparent = True
    end
    object Label10: TLabel
      Left = 679
      Top = 9
      Width = 45
      Height = 13
      Caption = 'PEDIDO :'
      Transparent = True
    end
    object Label11: TLabel
      Left = 472
      Top = 57
      Width = 69
      Height = 13
      Caption = 'Respons'#225'vel.:'
      Transparent = True
    end
    object ecodcliente: TRzDBButtonEdit
      Left = 135
      Top = 30
      Width = 73
      Height = 21
      DataSource = dspedido_industria
      DataField = 'CODCLIENTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 2
      OnKeyPress = ecodclienteKeyPress
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
      OnButtonClick = ecodclienteButtonClick
    end
    object DBEdit23: TDBEdit
      Left = 210
      Top = 30
      Width = 572
      Height = 21
      Color = clBtnFace
      DataField = 'cliente'
      DataSource = dspedido_industria
      Enabled = False
      TabOrder = 8
    end
    object edata: TDBDateEdit
      Left = 135
      Top = 6
      Width = 104
      Height = 21
      DataField = 'DATA_PEDIDO'
      DataSource = dspedido_industria
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      ButtonWidth = 18
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edataKeyPress
    end
    object econd_pagamento: TDBEdit
      Left = 135
      Top = 54
      Width = 330
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CONDICAO_PAGAMENTO'
      DataSource = dspedido_industria
      TabOrder = 3
      OnKeyPress = edataKeyPress
    end
    object erepresentante: TDBEdit
      Left = 210
      Top = 78
      Width = 315
      Height = 21
      Color = clBtnFace
      DataField = 'representante'
      DataSource = dspedido_industria
      Enabled = False
      TabOrder = 6
    end
    object etelefone: TDBEdit
      Left = 679
      Top = 78
      Width = 104
      Height = 21
      Color = clBtnFace
      DataField = 'representante_fone'
      DataSource = dspedido_industria
      Enabled = False
      TabOrder = 7
    end
    object DBDateEdit1: TDBDateEdit
      Left = 359
      Top = 6
      Width = 102
      Height = 21
      DataField = 'DATA_ENTREGA'
      DataSource = dspedido_industria
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      ButtonWidth = 18
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edataKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 727
      Top = 3
      Width = 55
      Height = 24
      Color = clBtnFace
      DataField = 'PEDIDO'
      DataSource = dspedido_industria
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object ecodrepresentante: TRzDBButtonEdit
      Left = 135
      Top = 78
      Width = 73
      Height = 21
      DataSource = dspedido_industria
      DataField = 'CODREPRESENTANTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 5
      OnKeyPress = ecodrepresentanteKeyPress
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
      OnButtonClick = ecodrepresentanteButtonClick
    end
    object DBEdit4: TDBEdit
      Left = 545
      Top = 54
      Width = 237
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RESPONSAVEL'
      DataSource = dspedido_industria
      TabOrder = 4
      OnKeyPress = edataKeyPress
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 475
    Width = 793
    Height = 41
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 1
    VisualStyle = vsGradient
    object bgravar: TAdvGlowButton
      Left = 272
      Top = 8
      Width = 108
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
      Left = 389
      Top = 8
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
  object Panel4: TPanel
    Left = 0
    Top = 444
    Width = 793
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label8: TLabel
      Left = 352
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Itens.:'
      Transparent = True
    end
    object Label9: TLabel
      Left = 549
      Top = 8
      Width = 101
      Height = 13
      Caption = 'Total do Pedido - R$:'
      Transparent = True
    end
    object lcodigo: TLabel
      Left = 200
      Top = 8
      Width = 3
      Height = 13
    end
    object Label6: TLabel
      Left = 448
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Pe'#231'as.:'
      Transparent = True
    end
    object ritens: TRzNumericEdit
      Left = 391
      Top = 4
      Width = 49
      Height = 21
      TabOrder = 0
      DisplayFormat = ',0;(,0)'
    end
    object rtotal: TRzNumericEdit
      Left = 662
      Top = 4
      Width = 112
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object rpecas: TRzNumericEdit
      Left = 489
      Top = 4
      Width = 49
      Height = 21
      TabOrder = 2
      DisplayFormat = ',0;(,0)'
    end
    object bincluir: TAdvGlowButton
      Left = 8
      Top = 2
      Width = 83
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
        650041646F626520496D616765526561647971C9653C000002524944415478DA
        62FCFFFF3F032500208018030B5766DB389874BEFBF69F1B6CD6BF7F0CFF81F8
        EFBFBF40FA3FC3BFFF40FEDFBF40FA3F98FE0B94E363FBFDF5FAF5A7E5EBFAC2
        A60204108B89B5C924560E6E26710E922CE6FEFAEDEF24203D15208058BEFDFE
        CFF4EDDD17929DFE1DA80F44030410CBFFBFFF195AA355483620A5E321980608
        2096FF403F82C0AF3F403F036990BFFF0285803E0706C77FB09FFFFEF90FC140
        B5BF80162A4AF082C308040002B044063900C02008A3EAFF5FBCE934EE404848
        C30142FF050C3143B5172512D96458EB0A2F799AE22C9F670B9E0062819904F2
        D07F4646A0490C0C40B50C40FD601780D84C8CCC0C2C40FE5FA0C17F99202EFE
        F717420304100BC8C910270055005D806C105808E8649061FF1941B630025DC1
        0C31006A314000B1C018103318210C2483FE01AD062A62D8737623C3818B5B18
        3E7E7DCFF0FBCF6F86EF7FD5812A7C19000288E5CFEFDF70173082F5FE071BF4
        1FC9A0EDA7D7305C78BA8BC1DEDA944146489561FFD50D0C27AEEC61B0C891EA
        010820A6FF50BF801CC60875052394CD046483F0C6A38B190C34F481FEFFCBA0
        2FE90A0C8BDF0C16BA56206DD90001C4F4EFDF3F8417A08109D2C48C845F7D78
        CEC0CAC8C3E0A7990B5657EC3C8B41594C0FC4E400082096A7F71FAECAECFF1D
        F60F94DE81AEF90BA241710FF41A8806E581771FDF335C7D768CE1E2B3230C15
        AEF3193A7625327030B3830CF80110408CC4E446A05F5B6414F9ABADF46C1854
        250C196EBF38CF70ECD2118627F73FF602041023B1D91968480790CA02625E20
        FE0CC4D34E4C7956011060007C930E9713F1927E0000000049454E44AE426082}
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
    end
    object balterar: TAdvGlowButton
      Left = 103
      Top = 2
      Width = 90
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
        650041646F626520496D616765526561647971C9653C000002B34944415478DA
        62FCFFFF3F032500208018030B5766DB389874BEFBF69F1B6CD6BF7F0CFF81F8
        EFBFBF40FA3FC3BFFF40FEDFBF40FA3F98FE0B94E363FBFDF5FAF5A7E5EBFAC2
        A60204108B89B5C924560E6E26710E922CE6FEFAEDEF24203D15208058BEFDFE
        CFF4EDDD17929DFE1DA80F44030410CBFFBFFF195AA355483620A5E321980608
        2096FF403F82C0AF3F403F036990BFFF0285803E0706C77FB09FFFFEF90FC6BF
        DFEC67F8766E0903338F2E43AED841864BD3F2E200028885011A0B8C4C8C0C8C
        A08002D2FF19FF3330FE6364600289313201313010DF6D66607D7E8641423786
        815FD190E1C37D75861BBBE6740104100B28B44100E4A1FF8C8C409318189881
        6602F5835D0062FF79BD9B81EDE735066E556B867777AF33B031FE62E0E59360
        E01196E3070820169093214E00EA00BA00D92010F5EBD52106C6CFA718F895DC
        197E3E5FC1C0C6C5C8F0F0C20D864FDF80F23FDFE9030410D33FA80B20664075
        415DF4F3F521863F6F7733F02B7B31FC78369B8191F53D032B0F2F03F7FF770C
        4B9F5A3298E6AEBB0510404C7F7EFF86BB8011AA1944BFBCB199E1DB939D0CFC
        2A7E0C3F9E4E676062FDCDF0EB9302C3EB23171944DD5A199E7D1700AB050820
        A6FF7F21B1C0CC00763558F3AB1B5B193E3F3DC620A6EDCDF0EBC51C0666B6FF
        0C3F3FC933BC3E7A9E412264060387B82638B582004000B1FC833218A006DC3E
        B682E1CFC7CB0C7F18A5189E5F9ECC2028C6C6F0E39D2CC387B33718E4C26731
        B0F24B83D5FE83C61E4000B13CBDFF705566FFEFB07FA0F40E748D1BE31C86D0
        CCB90C37579430DC3A7C8C815D4E9FE1E3CBA70C5B7F4432BC6C3D0EB6196AE7
        2A100110408CE8B9B1254DE7775952260B03D35F860B7B36303CBC7FFB0BBFA8
        908D5BDBC58BD8522440006118106627F4DD48499CC54C5391E13FEBCF63DF5F
        BD4EF4E9B8740F579206083000A64528CEAC6084320000000049454E44AE4260
        82}
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
    end
    object bexcluir: TAdvGlowButton
      Left = 199
      Top = 2
      Width = 90
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
        650041646F626520496D616765526561647971C9653C000002584944415478DA
        62FCFFFF3F032500208018030B5766DB389874BEFBF69F1B6CD6BF7F0CFF81F8
        EFBFBF40FA3FC3BFFF40FEDFBF40FA3F98FE0B94E363FBFDF5FAF5A7E5EBFAC2
        A60204108B89B5C924560E6E26710E922CE6FEFAEDEF24203D15208058BEFDFE
        CFF4EDDD17929DFE1DA80F44030410CBFFBFFF195AA355483620A5E321980608
        2096FF403F82C0AF3F403F036990BFFF0285803E0706C77FB09FFFFEF90FC140
        B5BF80162A4AF082C308040002B044063900C02008A3EAFF5FBCE934EE404848
        C30142FF050C3143B5172512D96458EB0A2F799AE22C9F670B9E0062819904F2
        D07F4646A0490C0C40B50C40FD601780D84C8CCC0C2C40FE5FA0C17F99202EFE
        F717420304100BC8C910270055005D806C105808E8649061FF1941B630025DC1
        0C31006A314000B1C018103318210C2483FE01AD062A6278B67906C3F3CDD319
        BE3DBACDC02A2ECDA0C36E0F54E1CB0010402C7F7EFF86BB8011ACF73FD8A0FF
        48063DDF3A8BE1F389550C8621C90CEC8ADA0CDF2FED62E03CBC8761B70B6B2E
        400031FD87FA05E43046A82B18A16C26201B841FAEED6750B10F60E0B87B8081
        71612403D7BDF50C8AF242A0C02E040820A0EBFE21BC00C50C30AF40C1AF670F
        193824141918BC8AE0622C0D92C0F0605400082096A7F71FAECAECFF1DF60F94
        DE81AEF90BA241710FF41A8806E581300E41866F17B632706FCA62F8F9FD05C3
        37A0019F3F3133FC6566780610408CC4E4C62311D20D6CBCDCD5B2C27F585898
        9E307C7EFD87E1C14BE6BFBF7FFCAF0308204662B3F3D108B98AAFEF9EA533FF
        6594FFCBFCFF2950D774F75D7FDA00020C00604614628C1E1942000000004945
        4E44AE426082}
      TabOrder = 5
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
  end
  object PageView3: TPageView
    Left = 0
    Top = 107
    Width = 793
    Height = 333
    ActivePage = PageSheet7
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
    TabHeight = 16
    TabOrder = 3
    TabStyle = tsFlat
    TopIndent = 3
    object PageSheet7: TPageSheet
      Left = 0
      Top = 20
      Width = 793
      Height = 313
      Caption = 'Produtos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pprodutos: TPanel
        Left = 0
        Top = 0
        Width = 793
        Height = 313
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object grid: TwwDBGrid
          Left = 0
          Top = 0
          Width = 793
          Height = 313
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          ControlType.Strings = (
            'ESTOQUE;CustomEdit;eestoque;F'
            'CUSTO;CustomEdit;ecusto;F')
          Selected.Strings = (
            'ITEM'#9'4'#9'ITEM'
            'CODPRODUTO'#9'6'#9'C'#243'digo'
            'produto'#9'51'#9'Produto'
            'codbarra'#9'15'#9'Refer'#234'ncia'
            'COR'#9'10'#9'Cor'
            'TAMANHO'#9'10'#9'Tamanho'
            'QUANTIDADE'#9'5'#9'Qtde.'
            'VALOR'#9'10'#9'VALOR'
            'TOTAL'#9'10'#9'Total')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dspedido_industria_item
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = True
          PaintOptions.AlternatingRowColor = 16316664
          PaintOptions.ActiveRecordColor = clBlack
        end
      end
    end
    object PageSheet8: TPageSheet
      Left = 0
      Top = 20
      Width = 793
      Height = 313
      Caption = 'Observa'#231#245'es'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object pobservacoes: TPanel
        Left = 0
        Top = 0
        Width = 793
        Height = 313
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBEdit22: TDBEdit
          Left = 7
          Top = 8
          Width = 761
          Height = 21
          DataField = 'OBS1'
          DataSource = dspedido_industria
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 7
          Top = 32
          Width = 761
          Height = 21
          DataField = 'OBS2'
          DataSource = dspedido_industria
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit24: TDBEdit
          Left = 7
          Top = 56
          Width = 761
          Height = 21
          DataField = 'OBS3'
          DataSource = dspedido_industria
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 7
          Top = 80
          Width = 761
          Height = 21
          DataField = 'OBS4'
          DataSource = dspedido_industria
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 7
          Top = 105
          Width = 761
          Height = 21
          DataField = 'OBS5'
          DataSource = dspedido_industria
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object batualiza: TBitBtn
    Left = 568
    Top = 360
    Width = 145
    Height = 25
    Caption = 'batualiza'
    TabOrder = 4
    Visible = False
    OnClick = batualizaClick
  end
  object dspedido_industria: TDataSource
    DataSet = frmmodulo.qrpedido_industria
    Left = 261
    Top = 285
  end
  object dspedido_industria_item: TDataSource
    DataSet = qrpedido_industria_item
    Left = 301
    Top = 285
  end
  object qrpedido_industria_item: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000127')
    Params = <>
    Left = 304
    Top = 320
    object qrpedido_industria_itemITEM: TIntegerField
      DisplayWidth = 4
      FieldName = 'ITEM'
    end
    object qrpedido_industria_itemCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrpedido_industria_itemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 51
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrpedido_industria_itemcodbarra: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 15
      FieldKind = fkLookup
      FieldName = 'codbarra'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'CODPRODUTO'
      Size = 15
      Lookup = True
    end
    object qrpedido_industria_itemCOR: TStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 10
      FieldName = 'COR'
      Size = 30
    end
    object qrpedido_industria_itemTAMANHO: TStringField
      DisplayLabel = 'Tamanho'
      DisplayWidth = 10
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qrpedido_industria_itemQUANTIDADE: TIntegerField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 5
      FieldName = 'QUANTIDADE'
    end
    object qrpedido_industria_itemVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_industria_itemTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_industria_itemREFERENCIA: TStringField
      DisplayWidth = 30
      FieldName = 'REFERENCIA'
      Visible = False
      Size = 30
    end
    object qrpedido_industria_itemCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrpedido_industria_itemPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrpedido_industria_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
  end
  object pop1: TPopupMenu
    Left = 320
    Top = 152
    object cancelar1: TMenuItem
      Caption = 'cancelar'
      ShortCut = 27
      OnClick = cancelar1Click
    end
    object gravar1: TMenuItem
      Caption = 'gravar'
      ShortCut = 113
      OnClick = gravar1Click
    end
  end
  object qrproduto_grade: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 380
    Top = 320
    object qrproduto_gradeNUMERACAO: TStringField
      DisplayLabel = 'N'#186'.'
      DisplayWidth = 11
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrproduto_gradeESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
    end
    object qrproduto_gradeCOR: TStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 15
      FieldName = 'COR'
      Size = 15
    end
    object qrproduto_gradeCODBARRA: TStringField
      DisplayWidth = 15
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qrproduto_gradeCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrproduto_gradeCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
  end
  object qrproduto_serial: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 336
    Top = 320
    object qrproduto_serialSERIAL: TStringField
      DisplayLabel = 'Seriais'
      DisplayWidth = 28
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto_serialNUMERONOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 9
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrproduto_serialESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_serialDATACOMPRA: TDateTimeField
      DisplayLabel = 'DATA'
      DisplayWidth = 10
      FieldName = 'DATACOMPRA'
      Visible = False
    end
    object qrproduto_serialPRECOCUSTO: TFloatField
      DisplayLabel = 'PR.CUSTO'
      DisplayWidth = 8
      FieldName = 'PRECOCUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_serialPRECOVENDA: TFloatField
      DisplayLabel = 'PR.VENDA'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_serialCLIENTE: TStringField
      DisplayWidth = 18
      FieldName = 'CLIENTE'
      Visible = False
      Size = 80
    end
    object qrproduto_serialDATAVENDA: TDateTimeField
      DisplayLabel = 'DATA SA'#205'DA'
      DisplayWidth = 10
      FieldName = 'DATAVENDA'
      Visible = False
    end
    object qrproduto_serialCODNOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 9
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrproduto_serialSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrproduto_serialCODITEM: TStringField
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrproduto_serialCODVENDA_ITEM: TStringField
      FieldName = 'CODVENDA_ITEM'
      Visible = False
      Size = 6
    end
    object qrproduto_serialFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrproduto_serialCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 6
    end
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 428
    Top = 320
    object qrclienteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteAPELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrclienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrclienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrclienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrclienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrclienteMORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrclienteTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrclienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrclienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrclienteTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrclienteTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object qrclienteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrclienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrclienteRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrclienteCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteFILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrclienteESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrclienteCONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrclientePROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrclienteEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrclienteLIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrclienteREF1: TStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrclienteREF2: TStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrclienteCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrclienteOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrclienteOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrclienteOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrclienteOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrclienteOBS5: TStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrclienteOBS6: TStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrclienteNASCIMENTO: TStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrclienteCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrclienteCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrclienteCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrclienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
    end
    object qrclientePREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrclienteTAMANHO_CALCA: TStringField
      FieldName = 'TAMANHO_CALCA'
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TStringField
      FieldName = 'TAMANHO_BLUSA'
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TStringField
      FieldName = 'TAMANHO_SAPATO'
      Size = 5
    end
    object qrclienteRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Size = 5
    end
    object qrclienteRG_ESTADO: TStringField
      FieldName = 'RG_ESTADO'
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
    end
    object qrclienteCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrclienteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
  end
end
