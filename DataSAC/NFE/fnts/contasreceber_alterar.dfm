object frmcontasreceber_alterar: Tfrmcontasreceber_alterar
  Left = 139
  Top = 59
  BorderStyle = bsToolWindow
  Caption = 'CONTAS A RECEBER | Altera'#231#227'o de Conta'
  ClientHeight = 382
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 108
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Emiss'#227'o:'
  end
  object Label3: TLabel
    Left = 32
    Top = 132
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vencimento:'
  end
  object Label4: TLabel
    Left = 32
    Top = 156
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Documento:'
  end
  object Label5: TLabel
    Left = 32
    Top = 180
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tipo:'
  end
  object Label6: TLabel
    Left = 32
    Top = 204
    Width = 80
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Valor:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 93
    Width = 513
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 346
    Width = 513
    Height = 3
    Align = alBottom
  end
  object DBDateEdit1: TDBDateEdit
    Left = 119
    Top = 105
    Width = 106
    Height = 21
    DataField = 'DATA_EMISSAO'
    DataSource = dscontasreceber
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
    TabOrder = 0
    OnEnter = DBDateEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object DBDateEdit2: TDBDateEdit
    Left = 119
    Top = 129
    Width = 106
    Height = 21
    DataField = 'DATA_VENCIMENTO'
    DataSource = dscontasreceber
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
    TabOrder = 1
    OnEnter = DBDateEdit2Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 119
    Top = 153
    Width = 130
    Height = 21
    DataField = 'DOCUMENTO'
    DataSource = dscontasreceber
    TabOrder = 2
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object COMBOTIPO: TwwDBLookupCombo
    Left = 119
    Top = 177
    Width = 130
    Height = 21
    DropDownAlignment = taLeftJustify
    DataField = 'TIPO'
    DataSource = dscontasreceber
    LookupTable = frmmodulo.qrformapgto
    LookupField = 'FORMAPGTO'
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object rvalor: TRxDBCalcEdit
    Left = 120
    Top = 201
    Width = 129
    Height = 21
    DataField = 'VALOR_ORIGINAL'
    DataSource = dscontasreceber
    DisplayFormat = '###,###,##0.00'
    GlyphKind = gkCustom
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90909088878786858586868687878688
      8887888787878787878786868585868584969696FFFFFFFFFFFFFFFFFFFFFFFF
      878787C1C1C0BBBBBBBBBBBBBBBBBABBBBBABBBBBABBBBBABBBBBABBBBBAC1C1
      C08A8A89FFFFFFFFFFFFFFFFFFFFFFFF8B8B8AFEFEFEEAEAEAEAEAEAE8E8E8E7
      E7E7E6E6E6E6E6E6E5E5E5E5E5E5FEFEFE8D8C8BFFFFFFFFFFFFFFFFFFFFFFFF
      919090FEFEFEB3B3B3939393E6E6E6B1B1B1929292E2E2E2AFAFAF909090FAFA
      FA919190FFFFFFFFFFFFFFFFFFFFFFFF949494FEFEFEE7E7E7E6E6E6E4E4E4E2
      E2E2E1E1E1DFDFDFDEDEDEDBDBDBFEFEFE949494FFFFFFFFFFFFFFFFFFFFFFFF
      999998FEFEFEB0B0B0909090E1E1E1ACACAC8E8E8EDBDBDBA8A8A88C8C8CFAFA
      FA999898FFFFFFFFFFFFFFFFFFFFFFFF9D9C9CFEFEFEE2E2E2E0E0E0DBDBDBDA
      DADAD6D6D6D2D2D2D2D2D2D0D0D0FEFEFE9D9C9BFFFFFFFFFFFFFFFFFFFFFFFF
      9F9F9FFEFEFEACACAC8D8D8DD7D7D7A4A4A4898989CDCDCD7273E75157DAFAFA
      FA9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA2A2A2FBFBFBD9D9D9D6D6D6D1D1D1CD
      CDCDC8C8C8C4C4C4C1C1C1BEBEBEFEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
      A2A2A2FEFEFEAF7A55C28C66C48E67C58F68C7916AC9936BC9946DAF7A55FEFE
      FEA09F9EFFFFFFFFFFFFFFFFFFFFFFFFA3A3A3FEFEFEAF7A55C08A63C28C65C4
      8E66C58F68C7916AC9936BAF7A55FEFEFE9F9F9FFFFFFFFFFFFFFFFFFFFFFFFF
      A2A2A2FEFEFEA6714CA6714CA6714CA6714CA6714CA6714CA6714CA6714CFEFE
      FE9D9D9DFFFFFFFFFFFFFFFFFFFFFFFFA9A9A9FEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEA2A2A2FFFFFFFFFFFFFFFFFFFFFFFF
      B2B2B2A8A8A8A7A7A7AAAAAAABABABACACACABABABAAAAAAA7A7A7A3A3A3A2A2
      A2B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    NumGlyphs = 1
    TabOrder = 4
    OnEnter = DBEdit1Enter
    OnExit = DBEdit1Exit
    OnKeyPress = DBEdit1KeyPress
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 0
    Width = 513
    Height = 93
    ParentColor = True
    Enabled = False
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 6
    UseDockManager = True
    object Label7: TLabel
      Left = 32
      Top = 40
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'No. Venda:'
    end
    object Label8: TLabel
      Left = 32
      Top = 16
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cliente:'
    end
    object Label9: TLabel
      Left = 32
      Top = 64
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendedor:'
    end
    object DBEdit2: TDBEdit
      Left = 119
      Top = 37
      Width = 106
      Height = 21
      DataField = 'CODVENDA'
      DataSource = dscontasreceber
      TabOrder = 0
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object ENOMECLIENTE: TEdit
      Left = 183
      Top = 13
      Width = 286
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object ENOMEVENDEDOR: TEdit
      Left = 183
      Top = 61
      Width = 285
      Height = 21
      TabOrder = 2
    end
    object ecliente: TDBEdit
      Left = 120
      Top = 13
      Width = 57
      Height = 21
      DataField = 'CODCLIENTE'
      DataSource = dscontasreceber
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = DBEdit1Enter
      OnKeyPress = DBEdit1KeyPress
    end
    object evendedor: TDBEdit
      Left = 120
      Top = 61
      Width = 57
      Height = 21
      DataField = 'CODVENDEDOR'
      DataSource = dscontasreceber
      TabOrder = 4
      OnEnter = DBEdit1Enter
      OnKeyPress = evendedorKeyPress
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 231
    Width = 497
    Height = 99
    Caption = 'Informa'#231#245'es de Boleto'
    TabOrder = 5
    object Label1: TLabel
      Left = 8
      Top = 28
      Width = 65
      Height = 13
      AutoSize = False
      Caption = 'Cedente:'
    end
    object Label10: TLabel
      Left = 8
      Top = 52
      Width = 65
      Height = 13
      AutoSize = False
      Caption = 'Banco:'
    end
    object Label11: TLabel
      Left = 208
      Top = 52
      Width = 65
      Height = 13
      AutoSize = False
      Caption = 'Ag.:'
    end
    object Label12: TLabel
      Left = 312
      Top = 52
      Width = 65
      Height = 13
      AutoSize = False
      Caption = 'Conta:'
    end
    object Label13: TLabel
      Left = 8
      Top = 76
      Width = 97
      Height = 13
      AutoSize = False
      Caption = 'Nosso N'#250'mero:'
    end
    object COMBOCONTA: TwwDBLookupCombo
      Left = 72
      Top = 20
      Width = 416
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DESCRICAO'#9'35'#9'CEDENTE'#9'F'
        'banco'#9'20'#9'BANCO'#9'F'
        'agencia'#9'10'#9'AG'#202'NCIA'#9'F'#9
        'CODCONTA'#9'15'#9'CONTA'#9'F'#9)
      LookupTable = frmmodulo.qrconfig_cobrebem
      LookupField = 'DESCRICAO'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = COMBOCONTAEnter
      OnExit = COMBOCONTAExit
      OnKeyPress = COMBOCONTAKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 71
      Top = 44
      Width = 130
      Height = 21
      DataField = 'banco'
      DataSource = dscontasreceber
      Enabled = False
      TabOrder = 1
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit4: TDBEdit
      Left = 239
      Top = 44
      Width = 66
      Height = 21
      DataField = 'agencia'
      DataSource = dscontasreceber
      Enabled = False
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit5: TDBEdit
      Left = 359
      Top = 44
      Width = 129
      Height = 21
      DataField = 'conta'
      DataSource = dscontasreceber
      Enabled = False
      TabOrder = 3
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit6: TDBEdit
      Left = 103
      Top = 68
      Width = 202
      Height = 21
      DataField = 'NOSSONUMERO'
      DataSource = dscontasreceber
      TabOrder = 4
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit6KeyPress
    end
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 349
    Width = 513
    Height = 33
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 7
    UseDockManager = True
    object bgravar: TAdvGlowButton
      Left = 140
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
      Left = 265
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
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 56
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
  object dscontasreceber: TDataSource
    DataSet = frmcontasreceber.qrcontasreceber
    Left = 280
    Top = 48
  end
end
