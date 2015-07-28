object frmexporta: Tfrmexporta
  Left = 166
  Top = 167
  Width = 657
  Height = 503
  Caption = 'Exporta'#231#227'o de Dados'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 769
    Top = 504
    Width = 444
    Height = 20
    BorderStyle = bsNone
    ForeColor = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Progress = 0
    Visible = False
  end
  object FlatGauge1: TFlatGauge
    Left = 301
    Top = 512
    Width = 448
    Height = 20
    AdvColorBorder = 0
    Transparent = True
    Color = clWindow
    ColorBorder = 8623776
    BarColor = 6242079
    Progress = 25
    ParentColor = False
    Visible = False
  end
  object RzGroupBox2: TRzGroupBox
    Left = 8
    Top = 108
    Width = 626
    Height = 293
    Caption = 'Movimenta'#231#227'o'
    TabOrder = 9
    object RichEdit1: TRichEdit
      Left = 1
      Top = 14
      Width = 624
      Height = 278
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Lucida Console'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 8
    Top = 6
    Width = 625
    Height = 99
    Caption = 'Informa'#231#245'es Gerais'
    TabOrder = 8
    object Label6: TLabel
      Left = 9
      Top = 56
      Width = 142
      Height = 13
      Caption = 'Caminho do arquivo de sa'#237'da:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 452
      Top = 74
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 341
      Top = 54
      Width = 110
      Height = 13
      Caption = 'Per'#237'odo de Refer'#234'ncia:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 9
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Empresa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 362
      Top = 16
      Width = 29
      Height = 13
      Caption = 'CNPJ:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 377
      Top = 31
      Width = 14
      Height = 13
      Caption = 'IE:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lcnpj: TLabel
      Left = 397
      Top = 16
      Width = 22
      Height = 13
      Caption = 'lcnpj'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lie: TLabel
      Left = 397
      Top = 31
      Width = 10
      Height = 13
      Caption = 'lie'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ecaminho: TEdit
      Left = 8
      Top = 70
      Width = 299
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'c:\siscom\'
      OnKeyPress = COMBO_EMPRESAKeyPress
    end
    object BitBtn3: TBitBtn
      Left = 309
      Top = 69
      Width = 26
      Height = 26
      Hint = 'Localizar arquivo...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitBtn3Click
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
    object DateEdit1: TDateEdit
      Left = 339
      Top = 70
      Width = 108
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnKeyPress = COMBO_EMPRESAKeyPress
    end
    object DateEdit2: TDateEdit
      Left = 463
      Top = 70
      Width = 108
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnKeyPress = DateEdit2KeyPress
    end
    object COMBO_EMPRESA: TwwDBLookupCombo
      Left = 8
      Top = 31
      Width = 328
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      LookupTable = frmmodulo.qrFilial
      LookupField = 'FILIAL'
      Style = csDropDownList
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = COMBO_EMPRESAExit
      OnKeyPress = COMBO_EMPRESAKeyPress
    end
  end
  object BENTRADA: TButton
    Left = 584
    Top = 316
    Width = 169
    Height = 25
    Caption = 'MONTAR TAB. ENTRADA'
    TabOrder = 0
    Visible = False
    OnClick = BENTRADAClick
  end
  object BSAIDA: TButton
    Left = 584
    Top = 292
    Width = 169
    Height = 25
    Caption = 'MONTAR TAB. SAIDA'
    TabOrder = 1
    Visible = False
    OnClick = BSAIDAClick
  end
  object RichEdit2: TRichEdit
    Left = 177
    Top = 560
    Width = 1103
    Height = 184
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    Visible = False
  end
  object Memo1: TMemo
    Left = 200
    Top = 704
    Width = 1497
    Height = 185
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -7
    Font.Name = 'Lucida Console'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object btprosoftw: TButton
    Left = 192
    Top = 184
    Width = 75
    Height = 25
    Caption = 'PROSOFTW'
    TabOrder = 4
    Visible = False
    OnClick = btprosoftwClick
  end
  object btprosoftd: TButton
    Left = 192
    Top = 210
    Width = 75
    Height = 25
    Caption = 'PROSOFTD'
    TabOrder = 5
    Visible = False
  end
  object btalterdata: TButton
    Left = 192
    Top = 236
    Width = 75
    Height = 25
    Caption = 'ALTERDATA'
    TabOrder = 6
    Visible = False
  end
  object btmastermaq: TButton
    Left = 192
    Top = 262
    Width = 75
    Height = 25
    Caption = 'OUTROS'
    TabOrder = 7
    Visible = False
    OnClick = btmastermaqClick
  end
  object btnota_entrada_ps: TBitBtn
    Left = 288
    Top = 176
    Width = 145
    Height = 25
    Caption = 'NOTA DE ENTRADA - PS'
    TabOrder = 10
    Visible = False
    OnClick = btnota_entrada_psClick
  end
  object btnota_saida_ps: TBitBtn
    Left = 288
    Top = 208
    Width = 145
    Height = 25
    Caption = 'NOTA DE SAIDA - PS'
    TabOrder = 11
    Visible = False
    OnClick = btnota_saida_psClick
  end
  object btfaturas_ps: TBitBtn
    Left = 288
    Top = 240
    Width = 145
    Height = 25
    Caption = 'FATURAS - PS'
    TabOrder = 12
    Visible = False
    OnClick = btfaturas_psClick
  end
  object btreducaoz_ps: TBitBtn
    Left = 288
    Top = 272
    Width = 145
    Height = 25
    Caption = 'REDUCAO Z - PS'
    TabOrder = 13
    Visible = False
    OnClick = btreducaoz_psClick
  end
  object panel1: TRzPanel
    Left = 0
    Top = 440
    Width = 649
    Height = 36
    Align = alBottom
    BorderOuter = fsNone
    TabOrder = 14
    VisualStyle = vsGradient
    object btransfere: TAdvGlowButton
      Left = 30
      Top = 5
      Width = 175
      Height = 24
      Caption = 'F2 | Transfer'#234'ncia de Dados'
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
      OnClick = btransfereClick
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
    object bcancela: TAdvGlowButton
      Left = 225
      Top = 5
      Width = 175
      Height = 24
      Caption = 'F3 | Cancela Opera'#231#227'o'
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
      OnClick = bcancelaClick
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
    object bretorna: TAdvGlowButton
      Left = 419
      Top = 5
      Width = 175
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
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000001264944415478DA
        62FCFFFF3F032500208098182804000144B101000144B1010001846240E9894C
        3620DE4D8A010001C482C6BFFAF7CF5F19520C00082046582C006DBE28CE26A1
        F7E7CF1F8687EF1F32FCFAF99BE1D70F10FEC5F01388C1F477041B2477A1FF2A
        234000B140359F146315D753E05662F8F3EF0F830CB71C98FEFDF72F10FF66F8
        FD0F88FFFE818A81E8DF0CAB57AE055B0C1040600380CEFEFD87F10FC3AFBFBF
        C08AFE0015FD062BFE8DA0A10680E4FEFC078AFDFA0336002080E05EC8DC1977
        5E984DC480839993E1E1CB870CAFDFBFC1EA6C90D7409AFFFCFEC3707FE12346
        800062444E89B1AB426E0215CA0135386E48DB718298400408209468046AD605
        6A3E48AC6610000820464AF3024000519C120102886203000288620300020C00
        E3A1BBBC9B532B0E0000000049454E44AE426082}
      TabOrder = 2
      OnClick = bretornaClick
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
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 417
    Width = 649
    Height = 23
    Align = alBottom
    TabOrder = 15
  end
  object DtsQrySintegra: TDataSource
    DataSet = QrySIntegra
    Left = 432
    Top = 216
  end
  object PopupMenu1: TPopupMenu
    Left = 464
    Top = 216
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.txt'
    FileName = 'SIntegra_Log.txt'
    Filter = 'Arquivos Texto (*.txt)|*.txt|Todos os Arquivos (*.*)|*.*'
    Title = 'Indique o nome do arquivo...'
    Left = 496
    Top = 216
  end
  object OpenDialog1: TOpenDialog
    Left = 528
    Top = 216
  end
  object QrySIntegra: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 432
    Top = 248
  end
  object QrySintegra_D: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 464
    Top = 248
  end
  object zquery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'SELECT'
      ''
      '               NOTAFISCAL,'
      '               DATA,'
      '               MODELO_NF,'
      '               SERIE,'
      '               SUBSERIE,'
      '               ESPECIE,'
      '               CPF_CLIENTE,'
      '               CNPJ_CLIENTE,'
      '               IE_CLIENTE,'
      '               UF_IE_CLIENTE,'
      '               CFOP,'
      '               NOTA_CANCELADA,'
      '               CODIGO_CLIENTE,'
      '               valor_icms_isentas,'
      '               valor_despesas,'
      '               aliquota_icms,'
      '               CODIGO'
      ''
      ''
      '               FROM SINTEGRA_SAIDA'
      '               where (tipo = '#39'S'#39') AND ('
      '               (modelo_nf = '#39'01'#39') OR'
      '               (modelo_nf = '#39'1A'#39') OR'
      '               (modelo_nf = '#39'03'#39') OR'
      '               (modelo_nf = '#39'06'#39') OR'
      '               (modelo_nf = '#39'22'#39'))'
      '               GROUP BY'
      ''
      '               NOTAFISCAL,'
      '               DATA,'
      '               MODELO_NF,'
      '               SERIE,'
      '               SUBSERIE,'
      '               ESPECIE,'
      '               CPF_CLIENTE,'
      '               CNPJ_CLIENTE,'
      '               IE_CLIENTE,'
      '               UF_IE_CLIENTE,'
      '               CFOP,'
      '               NOTA_CANCELADA,'
      '               CODIGO_CLIENTE,'
      '               valor_icms_isentas,'
      '               valor_despesas,'
      '               aliquota_icms,'
      '               CODIGO')
    Params = <>
    Left = 496
    Top = 248
  end
  object DataSource1: TDataSource
    DataSet = zquery1
    Left = 528
    Top = 248
  end
  object QRNOTA: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 560
    Top = 248
  end
  object QRITEM: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 592
    Top = 248
  end
  object qrsaida_temp: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 624
    Top = 248
  end
  object qrsaida: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select n.*,c.codigo,c.nome,c.cpf,c.rg, c.uf , c.COD_MUNICIPIO_IB' +
        'GE'
      'from c000061 n, c000007 c'
      'where n.codcliente = c.codigo'
      'and data >= '#39'01.06.2009'#39' and data <= '#39'30.06.2009'#39
      'order by data')
    Params = <>
    Left = 424
    Top = 320
    object qrsaidaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsaidaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrsaidaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrsaidaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrsaidaCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrsaidaVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
    end
    object qrsaidaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrsaidaBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrsaidaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrsaidaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrsaidaICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
    end
    object qrsaidaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrsaidaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrsaidaOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
    end
    object qrsaidaVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
    end
    object qrsaidaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrsaidaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsaidaCODTRANSPORTADOR: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrsaidaFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object qrsaidaPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrsaidaPLACA_UF: TStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object qrsaidaVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object qrsaidaVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
    end
    object qrsaidaVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
    end
    object qrsaidaVOL_NUMERO: TStringField
      FieldName = 'VOL_NUMERO'
    end
    object qrsaidaPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
    end
    object qrsaidaPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
    end
    object qrsaidaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrsaidaMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object qrsaidaFATURAMENTO_DATA1: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object qrsaidaFATURAMENTO_DATA2: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object qrsaidaFATURAMENTO_DATA3: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object qrsaidaFATURAMENTO_DATA4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object qrsaidaFATURAMENTO_NUMERO1: TStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object qrsaidaFATURAMENTO_NUMERO2: TStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object qrsaidaFATURAMENTO_NUMERO3: TStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object qrsaidaFATURAMENTO_NUMERO4: TStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object qrsaidaFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
    end
    object qrsaidaFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
    end
    object qrsaidaFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
    end
    object qrsaidaFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
    end
    object qrsaidaCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrsaidaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrsaidaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrsaidaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrsaidaINF1: TStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrsaidaINF2: TStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrsaidaINF3: TStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrsaidaINF4: TStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrsaidaINF5: TStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrsaidaDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object qrsaidaHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object qrsaidaSITUACAO_A: TStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object qrsaidaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrsaidaSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrsaidaVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrsaidaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrsaidaSIT: TStringField
      FieldName = 'SIT'
      Size = 1
    end
    object qrsaidaCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrsaidaMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrsaidaBAIXA_ESTOQUE: TStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object qrsaidaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrsaidaOS_COD1: TStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object qrsaidaOS_COD2: TStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object qrsaidaOS_COD3: TStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object qrsaidaOS_COD4: TStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object qrsaidaOS_COD5: TStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object qrsaidaOS_COD6: TStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object qrsaidaOS_SERV1: TStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object qrsaidaOS_SERV2: TStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object qrsaidaOS_SERV3: TStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object qrsaidaOS_SERV4: TStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object qrsaidaOS_SERV5: TStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object qrsaidaOS_SERV6: TStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object qrsaidaOS_COMP1: TStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object qrsaidaOS_COMP2: TStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object qrsaidaOS_COMP3: TStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object qrsaidaOS_COMP4: TStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object qrsaidaOS_COMP5: TStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object qrsaidaOS_COMP6: TStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object qrsaidaOS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object qrsaidaOS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object qrsaidaOS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object qrsaidaOS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object qrsaidaOS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object qrsaidaOS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object qrsaidaOS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object qrsaidaOS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object qrsaidaOS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object qrsaidaOS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object qrsaidaOS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object qrsaidaOS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object qrsaidaOS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object qrsaidaOS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object qrsaidaOS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object qrsaidaOS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object qrsaidaOS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object qrsaidaOS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object qrsaidaOS_ISS: TFloatField
      FieldName = 'OS_ISS'
    end
    object qrsaidaOS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object qrsaidaOS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
    object qrsaidaFAT_FORMA_PGTO: TStringField
      FieldName = 'FAT_FORMA_PGTO'
      Size = 50
    end
    object qrsaidaFAT_QTDE_PRESTACAO: TIntegerField
      FieldName = 'FAT_QTDE_PRESTACAO'
    end
    object qrsaidaFAT_GERAR_RECEBER: TIntegerField
      FieldName = 'FAT_GERAR_RECEBER'
    end
    object qrsaidaFAT_GERAR_DUPLICATA: TIntegerField
      FieldName = 'FAT_GERAR_DUPLICATA'
    end
    object qrsaidaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrsaidaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrsaidaFAT_TIPO: TIntegerField
      FieldName = 'FAT_TIPO'
    end
    object qrsaidaCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrsaidaCUSTO_VENDA: TStringField
      FieldName = 'CUSTO_VENDA'
      Size = 1
    end
    object qrsaidaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrsaidaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrsaidaCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      Required = True
      Size = 6
    end
    object qrsaidaNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrsaidaCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrsaidaRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrsaidaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrsaidaCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
  end
  object QRSAIDA_ITEM: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 688
    Top = 248
  end
  object QrAdiciona_item: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 720
    Top = 248
  end
  object qrentrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select n.*,f.codigo,f.nome,f.cnpj,f.ie, f.uf,f.COD_MUNICIPIO_IBG' +
        'E'
      ' from c000087 n, c000009 f'
      'where n.codfornecedor = f.codigo'
      'order by data_lancamento'
      '  ')
    Params = <>
    Left = 424
    Top = 292
    object qrentradaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrentradaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrentradaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qrentradaCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrentradaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrentradaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrentradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrentradaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrentradaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrentradaDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrentradaCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object qrentradaCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object qrentradaCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object qrentradaCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object qrentradaCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object qrentradaCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object qrentradaCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object qrentradaCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object qrentradaCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object qrentradaCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object qrentradaCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object qrentradaCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object qrentradaCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object qrentradaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrentradaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrentradaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrentradaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object qrentradaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrentradaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrentradaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrentradaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrentradaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrentradaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object qrentradaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrentradaTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object qrentradaTRANSP_FRETE: TStringField
      FieldName = 'TRANSP_FRETE'
    end
    object qrentradaTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object qrentradaTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrentradaTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object qrentradaTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrentradaTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrentradaTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrentradaTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object qrentradaTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object qrentradaTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object qrentradaTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
    end
    object qrentradaTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object qrentradaTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object qrentradaTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object qrentradaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qrentradaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qrentradaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qrentradaOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qrentradaOBS5: TStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object qrentradaOBS6: TStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object qrentradaOBS7: TStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object qrentradaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrentradaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrentradaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrentradaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object qrentradaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrentradaCODREMETENTE: TStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrentradaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrentradaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrentradaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object qrentradaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object qrentradaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object qrentradaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object qrentradaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object qrentradaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object qrentradaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object qrentradaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object qrentradaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object qrentradaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object qrentradaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object qrentradaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object qrentradaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object qrentradaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object qrentradaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object qrentradaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object qrentradaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object qrentradaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object qrentradaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object qrentradaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object qrentradaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object qrentradaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object qrentradaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object qrentradaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object qrentradaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object qrentradaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object qrentradaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrentradaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qrentradaCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object qrentradaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrentradaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrentradaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrentradaOBS8: TStringField
      FieldName = 'OBS8'
      Size = 60
    end
    object qrentradaOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object qrentradaINTEGRACAO: TIntegerField
      FieldName = 'INTEGRACAO'
    end
    object qrentradaCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      Required = True
      Size = 6
    end
    object qrentradaNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrentradaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrentradaIE: TStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrentradaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrentradaCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
  end
  object qritem2: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 456
    Top = 292
  end
  object qrentrada_temp: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 488
    Top = 292
  end
  object qrentrada_item: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 520
    Top = 292
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 592
    Top = 208
  end
  object fxlog: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 40024.425277523100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 648
    Top = 187
    Datasets = <
      item
        DataSet = fslog
        DataSetName = 'fslog'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 76.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 56.897650000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line2: TfrxLineView
          Top = 73.692950000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo8: TfrxMemoView
          Left = 71.000000000000000000
          Top = 57.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 121.606370000000000000
          Top = 58.031496060000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'NOME/RAZ'#195#402'O SOCIAL')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 404.409710000000000000
          Top = 57.897650000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'INCONSIST'#195#352'NCIA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 38.779530000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 58.031496060000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'TABELA')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 173.858380000000000000
          Top = 31.897650000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'LOG DE INCONSIST'#195#352'NCIAS NAS EXPORTA'#195#8225#195#8226'ES')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Siscom +7')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 21.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Emiss'#195#163'o: [Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        DataSet = fslog
        DataSetName = 'fslog'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 71.000000000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'codigo'
          DataSet = fslog
          DataSetName = 'fslog'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[fslog."codigo"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 404.409710000000000000
          Width = 332.598640000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'log'
          DataSet = fslog
          DataSetName = 'fslog'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[fslog."log"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 121.661417320000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'nome'
          DataSet = fslog
          DataSetName = 'fslog'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[fslog."nome"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'tabela'
          DataSet = fslog
          DataSetName = 'fslog'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[fslog."tabela"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999965000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo15: TfrxMemoView
          Top = 3.779529999999965000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779529999999965000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779529999999965000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Line4: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line5: TfrxLineView
          Top = 22.677179999999990000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo5: TfrxMemoView
          Top = 3.779529999999994000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            'Total de Registros...:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 113.385900000000000000
          Top = 4.779529999999994000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object rxlog: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'log'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'tabela'
        DataType = ftString
        Size = 40
      end>
    Left = 681
    Top = 184
    object rxlogcodigo: TStringField
      FieldName = 'codigo'
      Size = 6
    end
    object rxlognome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object rxloglog: TStringField
      FieldName = 'log'
      Size = 250
    end
    object rxlogtabela: TStringField
      FieldName = 'tabela'
      Size = 40
    end
  end
  object fslog: TfrxDBDataset
    UserName = 'fslog'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'nome=nome'
      'log=log'
      'tabela=tabela')
    DataSet = rxlog
    BCDToCurrency = False
    Left = 712
    Top = 187
  end
  object qrfaturas: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select d.*,n.codigo,n.numero,n.codfornecedor,n.data_lancamento,'
      'n.modelo, n.serie , n.especie,'
      'f.codigo,f.nome,f.cnpj,f.ie, f.uf , f.COD_MUNICIPIO_IBGE'
      'from c000046 d, c000087 n , c000009 f'
      'where d.notafiscal = n.numero'
      'and d.codfornecedor = n.codfornecedor'
      'and d.codfornecedor = f.codigo'
      'and d.data_emissao = n.data_lancamento'
      
        'and d.data_emissao >= '#39'01.10.2009'#39' and d.data_emissao <= '#39'31.10.' +
        '2009'#39
      'order by d.data_emissao')
    Params = <>
    Left = 456
    Top = 320
    object qrfaturasCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfaturasDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrfaturasDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrfaturasDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrfaturasCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrfaturasCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrfaturasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrfaturasVALORPAGO: TFloatField
      FieldName = 'VALORPAGO'
    end
    object qrfaturasLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object qrfaturasDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrfaturasACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrfaturasDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qrfaturasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrfaturasHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrfaturasC: TStringField
      FieldName = 'C'
      Size = 1
    end
    object qrfaturasE: TStringField
      FieldName = 'E'
      Size = 1
    end
    object qrfaturasFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrfaturasESPECIE: TStringField
      FieldName = 'ESPECIE'
    end
    object qrfaturasSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrfaturasCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrfaturasMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrfaturasCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrfaturasCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      Required = True
      Size = 10
    end
    object qrfaturasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrfaturasCODFORNECEDOR_1: TStringField
      FieldName = 'CODFORNECEDOR_1'
      Size = 10
    end
    object qrfaturasDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrfaturasMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrfaturasSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrfaturasESPECIE_1: TStringField
      FieldName = 'ESPECIE_1'
      Size = 10
    end
    object qrfaturasCODIGO_2: TStringField
      FieldName = 'CODIGO_2'
      Required = True
      Size = 6
    end
    object qrfaturasNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrfaturasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrfaturasIE: TStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrfaturasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfaturasCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
  end
  object qrreducaoz: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from sintegra_reg60')
    Params = <>
    Left = 496
    Top = 320
    object qrreducaozID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrreducaozMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrreducaozCODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrreducaozOBS1: TStringField
      FieldName = 'OBS1'
      Size = 40
    end
    object qrreducaozCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrreducaozIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrreducaozUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrreducaozCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrreducaozCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrreducaozIE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrreducaozUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      Size = 2
    end
    object qrreducaozCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrreducaozCOD_SINTEGRA_R60: TStringField
      FieldName = 'COD_SINTEGRA_R60'
      Size = 10
    end
    object qrreducaozDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrreducaozNRO_SERIE_EQP: TStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qrreducaozNRO_ORDEM_EQP: TIntegerField
      FieldName = 'NRO_ORDEM_EQP'
    end
    object qrreducaozMODELO_DOC: TStringField
      FieldName = 'MODELO_DOC'
      Size = 2
    end
    object qrreducaozNRO_CONTADOR_INICIO: TIntegerField
      FieldName = 'NRO_CONTADOR_INICIO'
    end
    object qrreducaozNRO_CONTADOR_FIM: TIntegerField
      FieldName = 'NRO_CONTADOR_FIM'
    end
    object qrreducaozNRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
    end
    object qrreducaozNRO_DOC_FISCAL: TIntegerField
      FieldName = 'NRO_DOC_FISCAL'
    end
    object qrreducaozNRO_ITENS: TIntegerField
      FieldName = 'NRO_ITENS'
    end
    object qrreducaozCONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
    end
    object qrreducaozVALOR_VENDA_BRUTA: TFloatField
      FieldName = 'VALOR_VENDA_BRUTA'
    end
    object qrreducaozVALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
    end
    object qrreducaozBRANCOS: TStringField
      FieldName = 'BRANCOS'
      Size = 37
    end
    object qrreducaozDATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qrreducaozMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrreducaozDATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
    end
    object qrreducaozDATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object qrreducaozCANCELAMENTO: TFloatField
      FieldName = 'CANCELAMENTO'
    end
    object qrreducaozDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrreducaozISSQN: TFloatField
      FieldName = 'ISSQN'
    end
    object qrreducaozSUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
    object qrreducaozISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qrreducaozNAO_INCIDENCIA: TFloatField
      FieldName = 'NAO_INCIDENCIA'
    end
    object qrreducaozACRESCIMO_IOF: TFloatField
      FieldName = 'ACRESCIMO_IOF'
    end
    object qrreducaozALIQUOTA01: TFloatField
      FieldName = 'ALIQUOTA01'
    end
    object qrreducaozALIQUOTA02: TFloatField
      FieldName = 'ALIQUOTA02'
    end
    object qrreducaozALIQUOTA03: TFloatField
      FieldName = 'ALIQUOTA03'
    end
    object qrreducaozALIQUOTA04: TFloatField
      FieldName = 'ALIQUOTA04'
    end
    object qrreducaozALIQUOTA05: TFloatField
      FieldName = 'ALIQUOTA05'
    end
    object qrreducaozBASE01: TFloatField
      FieldName = 'BASE01'
    end
    object qrreducaozBASE02: TFloatField
      FieldName = 'BASE02'
    end
    object qrreducaozBASE03: TFloatField
      FieldName = 'BASE03'
    end
    object qrreducaozBASE04: TFloatField
      FieldName = 'BASE04'
    end
    object qrreducaozBASE05: TFloatField
      FieldName = 'BASE05'
    end
    object qrreducaozVALOR_TPARCIAL01: TFloatField
      FieldName = 'VALOR_TPARCIAL01'
    end
    object qrreducaozVALOR_TPARCIAL02: TFloatField
      FieldName = 'VALOR_TPARCIAL02'
    end
    object qrreducaozVALOR_TPARCIAL03: TFloatField
      FieldName = 'VALOR_TPARCIAL03'
    end
    object qrreducaozVALOR_TPARCIAL04: TFloatField
      FieldName = 'VALOR_TPARCIAL04'
    end
    object qrreducaozVALOR_TPARCIAL05: TFloatField
      FieldName = 'VALOR_TPARCIAL05'
    end
    object qrreducaozBRANCOS_60A01: TStringField
      FieldName = 'BRANCOS_60A01'
    end
    object qrreducaozBRANCOS_60A02: TStringField
      FieldName = 'BRANCOS_60A02'
    end
    object qrreducaozBRANCOS_60A03: TStringField
      FieldName = 'BRANCOS_60A03'
    end
    object qrreducaozBRANCOS_60A04: TStringField
      FieldName = 'BRANCOS_60A04'
    end
    object qrreducaozBRANCOS_60A05: TStringField
      FieldName = 'BRANCOS_60A05'
    end
    object qrreducaozTOTAL_INICIO_DIA: TFloatField
      FieldName = 'TOTAL_INICIO_DIA'
    end
    object qrreducaozTOTAL_FINAL_DIA: TFloatField
      FieldName = 'TOTAL_FINAL_DIA'
    end
    object qrreducaozTOTAL_DIA: TFloatField
      FieldName = 'TOTAL_DIA'
    end
    object qrreducaozOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 60
    end
    object qrreducaozVALOR_VENDA_LIQUIDA: TFloatField
      FieldName = 'VALOR_VENDA_LIQUIDA'
    end
    object qrreducaozNRO_CONTADOR_CANCELAMENTO: TIntegerField
      FieldName = 'NRO_CONTADOR_CANCELAMENTO'
    end
  end
end
