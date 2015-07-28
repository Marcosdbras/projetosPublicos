object frmproduto_gradeI: Tfrmproduto_gradeI
  Left = 292
  Top = 187
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'INDUSTRIALIZA'#199#195'O | Grade'
  ClientHeight = 322
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 255
    Height = 231
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'NUMERACAO'#9'20'#9'NUMERA'#199#195'O'#9'F'
      'QTDE'#9'16'#9'QUANTIDADE')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsgrade_produto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 283
    Width = 255
    Height = 39
    ParentColor = True
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 1
    object bgravar: TAdvGlowButton
      Left = 69
      Top = 7
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
  end
  object FlipPanel1: TFlipPanel
    Left = 0
    Top = 231
    Width = 255
    Height = 52
    Align = alBottom
    BorderStyle = bsNone
    ParentColor = False
    object Label1: TLabel
      Left = 4
      Top = 3
      Width = 102
      Height = 11
      Caption = 'QTDE. DO PRODUTO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 18
      Width = 85
      Height = 11
      Caption = 'QTDE. DIGITADA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 34
      Width = 59
      Height = 11
      Caption = 'DIFEREN'#199'A:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object RTOTAL: TRxCalcEdit
      Left = 128
      Top = 3
      Width = 106
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object RDIGITADO: TRxCalcEdit
      Left = 128
      Top = 18
      Width = 106
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object RDIFERENCA: TRxCalcEdit
      Left = 128
      Top = 34
      Width = 106
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnChange = RDIFERENCAChange
    end
  end
  object dsgrade_produto: TDataSource
    DataSet = qrgrade_entrada
    Left = 33
    Top = 25
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    BeforeInsert = qrgrade_entradaBeforeInsert
    AfterInsert = qrgrade_entradaAfterInsert
    BeforeEdit = qrgrade_entradaBeforeEdit
    AfterPost = qrgrade_entradaAfterPost
    Active = True
    SQL.Strings = (
      'select * from c000033')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 176
    Top = 112
    object qrgrade_entradaNUMERACAO: TStringField
      DisplayLabel = 'NUMERA'#199#195'O'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'NUMERACAO'
      LookupDataSet = frmmodulo.qrgrade_produto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERACAO'
      KeyFields = 'CODGRADE'
      Lookup = True
    end
    object qrgrade_entradaQTDE: TFloatField
      DisplayLabel = 'QUANTIDADE'
      DisplayWidth = 16
      FieldName = 'QTDE'
    end
    object qrgrade_entradaCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODNOTA: TStringField
      DisplayWidth = 6
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODITEM: TStringField
      DisplayWidth = 6
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
  end
  object Pop2: TPopupMenu
    Left = 136
    Top = 120
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 16499
      OnClick = Fechar1Click
    end
  end
end
