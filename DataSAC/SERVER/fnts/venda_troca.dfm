object frmvenda_troca: Tfrmvenda_troca
  Left = 220
  Top = 331
  BorderStyle = bsToolWindow
  Caption = 'PEDIDO DE VENDA | Troca de Mercadorias'
  ClientHeight = 322
  ClientWidth = 617
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 251
    Width = 617
    Height = 3
    Align = alBottom
  end
  object Bevel1: TBevel
    Left = 0
    Top = 289
    Width = 617
    Height = 3
    Align = alBottom
  end
  object Panel4: TPanel
    Left = 0
    Top = 292
    Width = 617
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bgravar: TAdvGlowButton
      Left = 6
      Top = 2
      Width = 91
      Height = 24
      Caption = 'Confirmar'
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
      Left = 104
      Top = 2
      Width = 105
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
  object Panel1: TPanel
    Left = 0
    Top = 254
    Width = 617
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object Label15: TLabel
      Left = 365
      Top = 7
      Width = 80
      Height = 13
      Caption = 'Diferen'#231'a - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object rdiferenca: TRxCalcEdit
      Left = 453
      Top = 3
      Width = 129
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 0
    Width = 617
    Height = 121
    AdaptiveColors = False
    Align = alTop
    BorderStyle = bsNone
    Caption = 'Produto - ENTRADA'
    Color = clBtnFace
    HeaderColor = 42496
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 145
      Height = 12
      Caption = 'C'#211'DIGO OU C'#211'D. BARRAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 163
      Top = 24
      Width = 67
      Height = 12
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 197
      Top = 72
      Width = 76
      Height = 12
      Caption = 'QUANTIDADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 285
      Top = 91
      Width = 9
      Height = 16
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 309
      Top = 72
      Width = 119
      Height = 12
      Caption = 'PRE'#199'O VENDIDO - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 437
      Top = 91
      Width = 9
      Height = 16
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 458
      Top = 72
      Width = 113
      Height = 12
      Caption = 'TOTAL DO ITEM - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object ecodigo: TEdit
      Left = 8
      Top = 40
      Width = 145
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = ecodigoEnter
      OnExit = ecodigoExit
      OnKeyPress = ecodigoKeyPress
    end
    object EPRODUTO: TwwIncrementalSearch
      Left = 162
      Top = 40
      Width = 421
      Height = 24
      DataSource = dsproduto
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = EPRODUTOChange
      OnEnter = EPRODUTOEnter
      OnExit = EPRODUTOExit
      OnKeyDown = EPRODUTOKeyDown
      OnKeyPress = EPRODUTOKeyPress
    end
    object rqtde: TRxCalcEdit
      Left = 197
      Top = 88
      Width = 81
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnEnter = rqtdeEnter
      OnExit = rqtdeExit
      OnKeyPress = rqtdeKeyPress
    end
    object runitario: TRxCalcEdit
      Left = 301
      Top = 88
      Width = 129
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnEnter = runitarioEnter
      OnExit = rqtdeExit
      OnKeyPress = runitarioKeyPress
    end
    object rtotal: TRxCalcEdit
      Left = 453
      Top = 88
      Width = 129
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 72
      Width = 177
      Height = 41
      Caption = 'Numera'#231#227'o/Serial'
      TabOrder = 5
      object lserial: TLabel
        Left = 2
        Top = 15
        Width = 173
        Height = 24
        Align = alClient
        Alignment = taCenter
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object HeaderView2: THeaderView
    Left = 0
    Top = 121
    Width = 617
    Height = 121
    AdaptiveColors = False
    Align = alTop
    BorderStyle = bsNone
    Caption = 'Produto - SA'#205'DA'
    Color = clBtnFace
    HeaderColor = clRed
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Tahoma'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object Label8: TLabel
      Left = 8
      Top = 25
      Width = 145
      Height = 12
      Caption = 'C'#211'DIGO OU C'#211'D. BARRAS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 163
      Top = 25
      Width = 67
      Height = 12
      Caption = 'DESCRI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 197
      Top = 72
      Width = 76
      Height = 12
      Caption = 'QUANTIDADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 285
      Top = 94
      Width = 9
      Height = 16
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 307
      Top = 72
      Width = 119
      Height = 12
      Caption = 'PRE'#199'O VENDIDO - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 437
      Top = 94
      Width = 9
      Height = 16
      Caption = '='
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 458
      Top = 72
      Width = 113
      Height = 12
      Caption = 'TOTAL DO ITEM - R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object ecodigo2: TEdit
      Left = 8
      Top = 41
      Width = 145
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = ecodigo2Enter
      OnExit = ecodigo2Exit
      OnKeyPress = ecodigo2KeyPress
    end
    object eproduto2: TwwIncrementalSearch
      Left = 162
      Top = 41
      Width = 421
      Height = 24
      DataSource = dsproduto
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = eproduto2Change
      OnEnter = eproduto2Enter
      OnExit = eproduto2Exit
      OnKeyDown = eproduto2KeyDown
      OnKeyPress = eproduto2KeyPress
    end
    object rqtde2: TRxCalcEdit
      Left = 197
      Top = 89
      Width = 81
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnEnter = rqtde2Enter
      OnExit = rqtde2Exit
      OnKeyPress = rqtde2KeyPress
    end
    object runitario2: TRxCalcEdit
      Left = 301
      Top = 89
      Width = 129
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnEnter = runitario2Enter
      OnExit = runitario2Exit
      OnKeyPress = runitario2KeyPress
    end
    object rtotal2: TRxCalcEdit
      Left = 453
      Top = 89
      Width = 129
      Height = 24
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 72
      Width = 177
      Height = 41
      Caption = 'Numera'#231#227'o/Serial'
      TabOrder = 5
      object lserial2: TLabel
        Left = 2
        Top = 15
        Width = 173
        Height = 24
        Align = alClient
        Alignment = taCenter
        Caption = '---'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object PPRODUTO: TFlatPanel
    Left = 592
    Top = 27
    Width = 617
    Height = 254
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 0
    UseDockManager = True
    object wwDBGrid1: TwwDBGrid
      Left = 4
      Top = 4
      Width = 609
      Height = 245
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'PRODUTO'#9'45'#9'PRODUTO'
        'UNIDADE'#9'2'#9'UN'
        'marca'#9'13'#9'MARCA'
        'fornecedor'#9'24'#9'FORNECEDOR'
        'PRECOVENDA'#9'9'#9'PRE'#199'O')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid1DblClick
      OnKeyPress = wwDBGrid1KeyPress
      PaintOptions.AlternatingRowColor = 16053492
      PaintOptions.ActiveRecordColor = clBlack
    end
  end
  object pproduto2: TFlatPanel
    Left = 592
    Top = 291
    Width = 617
    Height = 134
    ParentColor = True
    Visible = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
    UseDockManager = True
    object wwDBGrid2: TwwDBGrid
      Left = 4
      Top = 4
      Width = 609
      Height = 126
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'PRODUTO'#9'45'#9'PRODUTO'
        'UNIDADE'#9'2'#9'UN'
        'marca'#9'13'#9'MARCA'
        'fornecedor'#9'24'#9'FORNECEDOR'
        'PRECOVENDA'#9'9'#9'PRE'#199'O')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsproduto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid2DblClick
      OnKeyPress = wwDBGrid2KeyPress
      PaintOptions.AlternatingRowColor = 16053492
      PaintOptions.ActiveRecordColor = clBlack
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 288
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object dsproduto: TDataSource
    DataSet = frmmodulo.qrproduto
    Left = 406
    Top = 96
  end
  object qrvendido: TZQuery
    Connection = frmmodulo.ConexaoLocal
    Params = <>
    Left = 152
    Top = 216
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000100')
    Params = <>
    Left = 112
    Top = 240
  end
end
