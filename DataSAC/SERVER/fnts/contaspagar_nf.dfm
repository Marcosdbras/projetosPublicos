object frmcontaspagar_nf: Tfrmcontaspagar_nf
  Left = 206
  Top = 175
  BorderStyle = bsToolWindow
  Caption = 'CONTAS A PAGAR | Visuzalia'#231#227'o de Nota Fiscal'
  ClientHeight = 483
  ClientWidth = 746
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 746
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 387
    Width = 746
    Height = 3
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Nota Fiscal:'
    end
    object Label2: TLabel
      Left = 144
      Top = 12
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label3: TLabel
      Left = 272
      Top = 12
      Width = 59
      Height = 13
      Caption = 'Fornecedor:'
    end
    object DBEdit1: TDBEdit
      Left = 72
      Top = 8
      Width = 57
      Height = 21
      DataField = 'NUMERO'
      DataSource = dsnota
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 81
      Height = 21
      DataField = 'DATA_EMISSAO'
      DataSource = dsnota
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 344
      Top = 8
      Width = 385
      Height = 21
      DataField = 'fornecedor'
      DataSource = dsnota
      TabOrder = 2
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 44
    Width = 746
    Height = 343
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODPRODUTO'#9'6'#9'C'#243'digo'
      'produto'#9'47'#9'Produto'
      'UN_COMPRA'#9'5'#9'Un.'
      'CFOP'#9'6'#9'CFOP'
      'CST'#9'5'#9'CST'
      'QTDE'#9'7'#9'Qtde.'
      'UNITARIO'#9'8'#9'Unit'#225'rio'
      'SUBTOTAL'#9'8'#9'Subtotal'
      'DESCONTO'#9'8'#9'Desconto'
      'TOTAL'#9'10'#9'Total')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsitem
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel2: TPanel
    Left = 0
    Top = 390
    Width = 746
    Height = 93
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 14
      Top = 3
      Width = 65
      Height = 13
      Caption = 'Base C. ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 88
      Top = 3
      Width = 52
      Height = 13
      Caption = 'Valor ICMS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label54: TLabel
      Left = 159
      Top = 3
      Width = 71
      Height = 13
      Caption = 'Base C. Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label61: TLabel
      Left = 238
      Top = 3
      Width = 58
      Height = 13
      Caption = 'Valor Subst.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label62: TLabel
      Left = 316
      Top = 27
      Width = 90
      Height = 13
      Caption = 'Total dos Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 30
      Top = 45
      Width = 26
      Height = 13
      Caption = 'Frete'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 100
      Top = 45
      Width = 34
      Height = 13
      Caption = 'Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 164
      Top = 45
      Width = 64
      Height = 13
      Caption = 'Outras Desp.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label31: TLabel
      Left = 243
      Top = 45
      Width = 41
      Height = 13
      Caption = 'Valor IPI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 439
      Top = 27
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 535
      Top = 27
      Width = 65
      Height = 13
      Caption = 'Total da Nota'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 16
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_ICMS'
      TabOrder = 0
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 88
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_ICMS'
      TabOrder = 1
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit3: TRzDBNumericEdit
      Left = 160
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'BASE_SUB'
      TabOrder = 2
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit4: TRzDBNumericEdit
      Left = 232
      Top = 20
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SUB'
      TabOrder = 3
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit5: TRzDBNumericEdit
      Left = 312
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_PRODUTOS'
      TabOrder = 4
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit6: TRzDBNumericEdit
      Left = 16
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'FRETE'
      TabOrder = 5
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit7: TRzDBNumericEdit
      Left = 88
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'SEGURO'
      TabOrder = 6
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit8: TRzDBNumericEdit
      Left = 160
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'OUTRAS'
      TabOrder = 7
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit9: TRzDBNumericEdit
      Left = 232
      Top = 60
      Width = 65
      Height = 21
      DataSource = dsnota
      DataField = 'VALOR_SUB'
      TabOrder = 8
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit10: TRzDBNumericEdit
      Left = 520
      Top = 44
      Width = 97
      Height = 21
      DataSource = dsnota
      DataField = 'TOTAL_NOTA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      DisplayFormat = '###,###,##0.00'
    end
    object RzDBNumericEdit11: TRzDBNumericEdit
      Left = 424
      Top = 44
      Width = 81
      Height = 21
      DataSource = dsnota
      DataField = 'DESCONTO'
      TabOrder = 10
      DisplayFormat = '###,###,##0.00'
    end
  end
  object bcancelar: TAdvGlowButton
    Left = 637
    Top = 409
    Width = 92
    Height = 53
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
    TabOrder = 3
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
    Layout = blGlyphTop
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000087')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 88
    Top = 248
    object qrnotaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrnotaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrnotaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qrnotaCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrnotaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrnotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrnotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrnotaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qrnotaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrnotaDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnotaCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
    end
    object qrnotaCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
    end
    object qrnotaCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
    end
    object qrnotaCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
    end
    object qrnotaCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
    end
    object qrnotaCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
    end
    object qrnotaCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
    end
    object qrnotaCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
    end
    object qrnotaCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
    end
    object qrnotaCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
    end
    object qrnotaCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
    end
    object qrnotaCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
    end
    object qrnotaCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
    end
    object qrnotaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
    end
    object qrnotaFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnotaSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnotaOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnotaIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrnotaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnotaTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
    end
    object qrnotaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnotaTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Size = 60
    end
    object qrnotaTRANSP_FRETE: TStringField
      FieldName = 'TRANSP_FRETE'
    end
    object qrnotaTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Size = 10
    end
    object qrnotaTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Size = 2
    end
    object qrnotaTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Size = 25
    end
    object qrnotaTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Size = 25
    end
    object qrnotaTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Size = 40
    end
    object qrnotaTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Size = 30
    end
    object qrnotaTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Size = 2
    end
    object qrnotaTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
    end
    object qrnotaTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
    end
    object qrnotaTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
    end
    object qrnotaTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
    end
    object qrnotaTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
    end
    object qrnotaTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
    end
    object qrnotaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 60
    end
    object qrnotaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 60
    end
    object qrnotaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 60
    end
    object qrnotaOBS4: TStringField
      FieldName = 'OBS4'
      Size = 60
    end
    object qrnotaOBS5: TStringField
      FieldName = 'OBS5'
      Size = 60
    end
    object qrnotaOBS6: TStringField
      FieldName = 'OBS6'
      Size = 60
    end
    object qrnotaOBS7: TStringField
      FieldName = 'OBS7'
      Size = 60
    end
    object qrnotaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotaITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
    object qrnotaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 6
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaCODREMETENTE: TStringField
      FieldName = 'CODREMETENTE'
      Size = 6
    end
    object qrnotaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrnotaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
    end
    object qrnotaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
    end
    object qrnotaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
    end
    object qrnotaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
    end
    object qrnotaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
    end
    object qrnotaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
    end
    object qrnotaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
    end
    object qrnotaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
    end
    object qrnotaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
    end
    object qrnotaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
    end
    object qrnotaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
    end
    object qrnotaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
    end
    object qrnotaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
    end
    object qrnotaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
    end
    object qrnotaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
    end
    object qrnotaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
    end
    object qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
    end
    object qrnotaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
    end
    object qrnotaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
    end
    object qrnotaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
    end
    object qrnotaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
    end
    object qrnotaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
    end
    object qrnotaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
    end
    object qrnotaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
    end
    object qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
    end
    object qrnotaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
    end
    object qrnotaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
    end
    object qrnotaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
    object qrnotaCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
    end
    object qrnotafornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
  end
  object qritem: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * FROM C000088')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 120
    Top = 248
    object qritemCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritemproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 47
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object qritemUN_COMPRA: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qritemCFOP: TStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Size = 6
    end
    object qritemCST: TStringField
      DisplayWidth = 5
      FieldName = 'CST'
      Size = 5
    end
    object qritemQTDE: TFloatField
      DisplayLabel = 'Qtde.'
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object qritemUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
    end
    object qritemSUBTOTAL: TFloatField
      DisplayLabel = 'Subtotal'
      DisplayWidth = 8
      FieldName = 'SUBTOTAL'
    end
    object qritemDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 8
      FieldName = 'DESCONTO'
    end
    object qritemTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object qritemCODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Visible = False
      Size = 10
    end
    object qritemITEM: TStringField
      DisplayWidth = 3
      FieldName = 'ITEM'
      Visible = False
      Size = 3
    end
    object qritemCODNOTA: TStringField
      DisplayWidth = 10
      FieldName = 'CODNOTA'
      Visible = False
      Size = 10
    end
    object qritemCODLANCAMENTO: TStringField
      DisplayWidth = 10
      FieldName = 'CODLANCAMENTO'
      Visible = False
      Size = 10
    end
    object qritemUN_FRACAO: TStringField
      DisplayWidth = 5
      FieldName = 'UN_FRACAO'
      Visible = False
      Size = 5
    end
    object qritemFRACAO: TFloatField
      DisplayWidth = 10
      FieldName = 'FRACAO'
      Visible = False
    end
    object qritemDESCONTO_P: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO_P'
      Visible = False
    end
    object qritemICMS_RETIDO: TStringField
      DisplayWidth = 1
      FieldName = 'ICMS_RETIDO'
      Visible = False
      Size = 1
    end
    object qritemICMS_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_ALIQUOTA'
      Visible = False
    end
    object qritemICMS_REDUCAO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUCAO'
      Visible = False
    end
    object qritemICMS_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_BASE'
      Visible = False
    end
    object qritemICMS_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_VALOR'
      Visible = False
    end
    object qritemICMS_VALORRETIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_VALORRETIDO'
      Visible = False
    end
    object qritemICMS_ISENTO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qritemICMS_NAOTRIBUTADO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_NAOTRIBUTADO'
      Visible = False
    end
    object qritemSUB_MARGEM: TFloatField
      DisplayWidth = 10
      FieldName = 'SUB_MARGEM'
      Visible = False
    end
    object qritemSUB_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'SUB_BASE'
      Visible = False
    end
    object qritemSUB_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'SUB_VALOR'
      Visible = False
    end
    object qritemIPI_TIPO: TStringField
      DisplayWidth = 25
      FieldName = 'IPI_TIPO'
      Visible = False
      Size = 25
    end
    object qritemIPI_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI_ALIQUOTA'
      Visible = False
    end
    object qritemIPI_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI_BASE'
      Visible = False
    end
    object qritemIPI_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI_VALOR'
      Visible = False
    end
    object qritemDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qritemTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qritemNOTAFISCAL: TStringField
      DisplayWidth = 10
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object qritemFRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'FRETE'
      Visible = False
    end
    object qritemOUTRAS: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTRAS'
      Visible = False
    end
    object qritemSEGURO: TFloatField
      DisplayWidth = 10
      FieldName = 'SEGURO'
      Visible = False
    end
    object qritemCLASSIFICACAO_FISCAL: TStringField
      DisplayWidth = 25
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
      Size = 25
    end
    object qritemSUB_PRODUTOS: TFloatField
      DisplayWidth = 10
      FieldName = 'SUB_PRODUTOS'
      Visible = False
    end
    object qritemCODFORNECEDOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qritemITEM_ESPECIAL_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000009')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 152
    Top = 248
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 184
    Top = 248
  end
  object dsitem: TDataSource
    DataSet = qritem
    Left = 216
    Top = 248
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    Active = True
    SQL.Strings = (
      'select * from c000025')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 248
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 128
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
