object frmproduto_entrada_item: Tfrmproduto_entrada_item
  Left = 230
  Top = 250
  BorderStyle = bsToolWindow
  Caption = 'Nota Fiscal de Compra - Edi'#231#227'o de Item'
  ClientHeight = 275
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 240
    Top = 101
    Width = 29
    Height = 13
    Caption = 'ICMS:'
  end
  object Label7: TLabel
    Left = 240
    Top = 127
    Width = 18
    Height = 13
    Caption = 'IPI:'
  end
  object Label8: TLabel
    Left = 240
    Top = 149
    Width = 31
    Height = 13
    Caption = 'CFOP:'
  end
  object Label9: TLabel
    Left = 372
    Top = 98
    Width = 46
    Height = 16
    Caption = '% - R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 372
    Top = 124
    Width = 46
    Height = 16
    Caption = '% - R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 0
    Top = 39
    Width = 672
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 233
    Width = 672
    Height = 3
    Align = alBottom
  end
  object DBEdit5: TDBEdit
    Left = 280
    Top = 97
    Width = 89
    Height = 21
    DataField = 'ICMS'
    DataSource = dsentrada_item
    TabOrder = 2
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 280
    Top = 121
    Width = 89
    Height = 21
    DataField = 'IPI'
    DataSource = dsentrada_item
    TabOrder = 3
    OnEnter = DBEdit5Enter
    OnExit = DBEdit6Exit
    OnKeyPress = eprodutoKeyPress
  end
  object ecfop: TDBEdit
    Left = 280
    Top = 145
    Width = 64
    Height = 21
    DataField = 'CFOP'
    DataSource = dsentrada_item
    TabOrder = 4
    OnExit = ecfopExit
    OnKeyPress = eprodutoKeyPress
  end
  object bloccfop: TBitBtn
    Left = 344
    Top = 145
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
  object pgravar: TFlatPanel
    Left = 0
    Top = 236
    Width = 672
    Height = 39
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 6
    UseDockManager = True
    object bgravar: TAdvGlowButton
      Left = 223
      Top = 6
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
      Left = 340
      Top = 6
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
  object encfop: TEdit
    Left = 368
    Top = 145
    Width = 297
    Height = 21
    Color = clBtnFace
    TabOrder = 7
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 39
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 544
      Top = 12
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object blocproduto: TBitBtn
      Left = 232
      Top = 8
      Width = 25
      Height = 21
      TabOrder = 1
      OnClick = blocprodutoClick
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
    object DBEdit30: TDBEdit
      Left = 257
      Top = 8
      Width = 280
      Height = 21
      Color = clBtnFace
      DataField = 'produto'
      DataSource = dsentrada_item
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 592
      Top = 8
      Width = 66
      Height = 21
      Color = clBtnFace
      DataField = 'unidade'
      DataSource = dsentrada_item
      TabOrder = 3
    end
    object EPRODUTO: TEdit
      Left = 87
      Top = 8
      Width = 145
      Height = 21
      TabOrder = 0
      OnExit = eprodutoExit
      OnKeyPress = eprodutoKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 48
    Width = 217
    Height = 177
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 29
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 16
      Top = 61
      Width = 58
      Height = 13
      Caption = 'Unit'#225'rio-R$:'
    end
    object Label5: TLabel
      Left = 16
      Top = 93
      Width = 45
      Height = 13
      Caption = 'Total-R$:'
    end
    object lponto: TLabel
      Left = 197
      Top = 21
      Width = 13
      Height = 25
      Cursor = crHelp
      Hint = 
        'Este produto n'#227'o pode ser alterado,'#13#10'devido ele possuir uma grad' +
        'e de pre'#231'os'#13#10'ou um controle de Seriais, neste caso'#13#10'ser'#225' necess'#225 +
        'rio excluir o item para que'#13#10'o sistema possa refazer a grade/ser' +
        'iais'#13#10'atribuidos a ele.'
      Caption = '?'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Transparent = True
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 96
      Top = 25
      Width = 98
      Height = 24
      DataField = 'QTDE'
      DataSource = dsentrada_item
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = DBEdit2Exit
      OnKeyPress = eprodutoKeyPress
    end
    object DBEdit3: TDBEdit
      Left = 96
      Top = 57
      Width = 98
      Height = 24
      DataField = 'UNITARIO'
      DataSource = dsentrada_item
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit3Exit
      OnKeyPress = eprodutoKeyPress
    end
    object DBEdit4: TDBEdit
      Left = 96
      Top = 89
      Width = 98
      Height = 24
      DataField = 'TOTAL'
      DataSource = dsentrada_item
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = eprodutoKeyPress
    end
    object bserial: TAdvGlowButton
      Left = 14
      Top = 132
      Width = 179
      Height = 24
      Caption = 'Editar Seriais'
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
        424D380300000000000036000000280000001000000010000000010018000000
        000002030000120B0000120B00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF13405815425E25699C2C76B47AB0D0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1242595D9CD4A6
        CFF5A9CFEC488BC12C76B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1E6D93CBE3F961AAEC4098E81567C21660AA2C76B4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6D93C8E1F2D1
        E7FA347DB53199C36DC4DC4A9CCF3483C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3EBF22689B9B0CBE167A9C860DCF544D6F48EEEFA5DB4
        E63B8FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26
        89B9BEE6F2B3F4FC60DCF544D6F48EEEFA5DB4E63B8FD9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2790BFC3EDF8B3F4FC60DCF544D6
        F48EEEFA5DB4E63B8FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF2FBAE4C3EDF8B3F4FC60DCF544D6F48EEEFA5DB4E63B8FD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBAE4C3EDF8B3F4
        FC60DCF544D6F48EEEFA5DB4E63B8FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF2FBAE4C3EDF8B3F4FC68D9F56FCFF3599DD073ABDD
        4F91C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBA
        E4C3EDF8A8E2F86CAEDDA5CFF4A5CFF4BDDBF75896CDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBAE4A7D4F4C5E1F8CCE3F9CCE3F9
        BDDBF75091C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF50A8D96AA5D8C9E1F7CBE3F84295CA72AAD5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FDFE5DB1DE5194CA4E90C8
        49A9D8EBF6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 3
      Visible = False
      OnClick = bserialClick
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
      Layout = blGlyphLeftAdjusted
    end
    object bgrade: TAdvGlowButton
      Left = 14
      Top = 132
      Width = 179
      Height = 24
      Caption = 'Editar Grade de N'#250'meros'
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
        424D380300000000000036000000280000001000000010000000010018000000
        000002030000120B0000120B00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF13405815425E25699C2C76B47AB0D0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1242595D9CD4A6
        CFF5A9CFEC488BC12C76B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1E6D93CBE3F961AAEC4098E81567C21660AA2C76B4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6D93C8E1F2D1
        E7FA347DB53199C36DC4DC4A9CCF3483C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3EBF22689B9B0CBE167A9C860DCF544D6F48EEEFA5DB4
        E63B8FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26
        89B9BEE6F2B3F4FC60DCF544D6F48EEEFA5DB4E63B8FD9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2790BFC3EDF8B3F4FC60DCF544D6
        F48EEEFA5DB4E63B8FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF2FBAE4C3EDF8B3F4FC60DCF544D6F48EEEFA5DB4E63B8FD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBAE4C3EDF8B3F4
        FC60DCF544D6F48EEEFA5DB4E63B8FD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF2FBAE4C3EDF8B3F4FC68D9F56FCFF3599DD073ABDD
        4F91C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBA
        E4C3EDF8A8E2F86CAEDDA5CFF4A5CFF4BDDBF75896CDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBAE4A7D4F4C5E1F8CCE3F9CCE3F9
        BDDBF75091C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF50A8D96AA5D8C9E1F7CBE3F84295CA72AAD5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FDFE5DB1DE5194CA4E90C8
        49A9D8EBF6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      TabOrder = 4
      Visible = False
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
      Layout = blGlyphLeftAdjusted
    end
  end
  object DBEdit7: TDBEdit
    Left = 424
    Top = 97
    Width = 89
    Height = 21
    DataField = 'VALOR_ICMS'
    DataSource = dsentrada_item
    Enabled = False
    TabOrder = 8
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit8: TDBEdit
    Left = 424
    Top = 121
    Width = 89
    Height = 21
    DataField = 'VALOR_IPI'
    DataSource = dsentrada_item
    Enabled = False
    TabOrder = 9
    OnKeyPress = eprodutoKeyPress
  end
  object Pop2: TPopupMenu
    Left = 684
    Top = 245
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
  end
  object dsentrada_item: TDataSource
    DataSet = frmproduto_entrada.qrentrada_item
    Left = 648
    Top = 253
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000033')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 616
    Top = 256
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000022')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 720
    Top = 248
  end
end
