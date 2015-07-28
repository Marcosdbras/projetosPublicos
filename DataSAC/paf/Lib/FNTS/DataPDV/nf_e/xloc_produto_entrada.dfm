object frmxloc_produto_entrada: Tfrmxloc_produto_entrada
  Left = 182
  Top = 204
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = 'NOTAS FISCAIS DE COMPRA | Localizar'
  ClientHeight = 437
  ClientWidth = 760
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
  object Bevel3: TBevel
    Left = 0
    Top = 41
    Width = 760
    Height = 3
    Align = alTop
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 44
    Width = 760
    Height = 393
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'DATA_EMISSAO'#9'10'#9'Emiss'#227'o'
      'NUMERO'#9'6'#9'N'#250'mero'
      'MODELO'#9'3'#9'Mod.'
      'ESPECIE'#9'3'#9'Esp.'
      'CFOP'#9'4'#9'CFOP'
      'fornecedor'#9'43'#9'Fornecedor'
      'DATA_LANCAMENTO'#9'10'#9'Entrada'
      'TOTAL_PRODUTOS'#9'9'#9'Vlr.Produtos'
      'TOTAL_NOTA'#9'10'#9'Total Nota')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PPROCURA: TFlatPanel
    Left = 760
    Top = 141
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 1
    UseDockManager = True
    object wwDBGrid1: TwwDBGrid
      Left = 16
      Top = 0
      Width = 369
      Height = 255
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
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
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label56: TLabel
      Left = 19
      Top = 13
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 203
      Top = 13
      Width = 52
      Height = 13
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 389
      Top = 13
      Width = 78
      Height = 13
      Caption = 'F6 | Nota Fiscal:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edata_inicio: TDateEdit
      Left = 90
      Top = 10
      Width = 104
      Height = 20
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
      OnEnter = edata_inicioEnter
      OnExit = edata_inicioExit
      OnKeyPress = edata_inicioKeyPress
    end
    object edata_final: TDateEdit
      Left = 267
      Top = 10
      Width = 104
      Height = 20
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
      OnEnter = edata_inicioEnter
      OnKeyPress = edata_inicioKeyPress
    end
    object ENUMERO: TEdit
      Left = 480
      Top = 7
      Width = 89
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 6
      ParentFont = False
      TabOrder = 2
      OnEnter = edata_inicioEnter
      OnExit = ENUMEROExit
      OnKeyPress = edata_inicioKeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 640
      Top = 8
      Width = 104
      Height = 24
      Caption = 'Filtrar'
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
        003A980000176F925FC546000002644944415478DA74D25D68150418C6F1DFCE
        D976DAF1B4CDB90F6D6DEA18A38D10A653C98430698205E2CDC0860651C47275
        DB5810DD45D408BAF0C20C0A6F6A23EAAEE6CD88820962594118139299501E3B
        C76DBAADF3B1B79B61C3B6E7FEF93FCFFBC1866A4FB07DEFD69EA10B87863F5F
        38F8E2A7B9C496435FE3206A51B1B1D7F6244FBEF2F2B96BA55CFCA75F23E2C8
        EB5F963182ADA8DC00D0D1FBF4C8E4DCDC7D6B3622F2F7218DDD83CB3889A6F5
        ABD73C333A7669654DEE17B112E3113113CB1171EA6C363089BDEB5448A464EA
        7B96934593D7AFDA94C8E86D2F2A2ACBE61F91D84C34D7412776AC03B8BE22BB
        927BF3AD94EA1D146E71EE8DACD4438D067AB854E4E72B3720D090F8FFFE941C
        997DADF100BD8369893AB2B7672CCEE5153199E7A78FDE0EE4507EC03D94903A
        7EC071F1C4E54CEC9F4E47FDAB7BC2B3C25131307537EA062603799CC7B13523
        9CA866F17DE5AE41553CDC9256FAA7EC4EF6B2CA4769ED63FC4C8609F3F801BF
        E0F73580CA776DDA7D5ADBCE84027337EF69DFD762F7D082A57C41677FAB9AFA
        9BAE526BC2F798C66C72357D4CBAEFB46D9D950E7793FDD072B9A8754F4653D7
        660D9DB5AA6BAA343E56A750B8235FF09419A3C82579FE9454DF3B5ABAAA1C6E
        53B1B39BCF92B154315591BF352F555B56539B92AC4E2A2D95CC5E9CB7F01BD2
        46FDA58CE16F744F859357C27B111AC756F007C635FBD880E8F8441CBDBD2DDA
        CE08CF09FD6AD66CFEA5AF7C10B1E57C84A6B3813F318E61ECB2CBE35E109911
        E198D02FB3F66E15D847E5049A29FD8D8BF816DF61068BFA75A003D32EB8FB20
        208D1EEC47C36AFD1F710DF7563F6E43FD3B0008F30AA90F7811AC0000000049
        454E44AE426082}
      TabOrder = 3
      OnClick = BfiltrarClick
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
    Left = 552
    Top = 256
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object PesquisaNota1: TMenuItem
      Caption = 'Pesquisa Nota'
      ShortCut = 117
      OnClick = PesquisaNota1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 496
    Top = 200
    object queryDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object queryNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 6
      FieldName = 'NUMERO'
      Size = 10
    end
    object queryMODELO: TStringField
      DisplayLabel = 'Mod.'
      DisplayWidth = 3
      FieldName = 'MODELO'
      Size = 10
    end
    object queryESPECIE: TStringField
      DisplayLabel = 'Esp.'
      DisplayWidth = 3
      FieldName = 'ESPECIE'
      Size = 10
    end
    object queryCFOP: TStringField
      DisplayWidth = 4
      FieldName = 'CFOP'
      Size = 10
    end
    object queryfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object queryDATA_LANCAMENTO: TDateTimeField
      DisplayLabel = 'Entrada'
      DisplayWidth = 10
      FieldName = 'DATA_LANCAMENTO'
    end
    object queryTOTAL_PRODUTOS: TFloatField
      DisplayLabel = 'Vlr.Produtos'
      DisplayWidth = 9
      FieldName = 'TOTAL_PRODUTOS'
    end
    object queryTOTAL_NOTA: TFloatField
      DisplayLabel = 'Total Nota'
      DisplayWidth = 10
      FieldName = 'TOTAL_NOTA'
    end
    object queryCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object querySERIE: TStringField
      DisplayWidth = 4
      FieldName = 'SERIE'
      Visible = False
      Size = 10
    end
    object queryNOTA_FISCAL: TStringField
      DisplayWidth = 11
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 6
    end
    object queryVALOR_MERCADORIAS: TFloatField
      DisplayWidth = 18
      FieldName = 'VALOR_MERCADORIAS'
      Visible = False
    end
    object queryCODEMPRESA: TStringField
      DisplayWidth = 10
      FieldName = 'CODEMPRESA'
      Visible = False
      Size = 10
    end
    object queryCODFORNECEDOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object queryCONF_BASEICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_BASEICMS'
      Visible = False
    end
    object queryCONF_VALORICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_VALORICMS'
      Visible = False
    end
    object queryCONF_BASESUB: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_BASESUB'
      Visible = False
    end
    object queryCONF_VALORSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_VALORSUB'
      Visible = False
    end
    object queryCONF_FRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_FRETE'
      Visible = False
    end
    object queryCONF_SEGURO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_SEGURO'
      Visible = False
    end
    object queryCONF_OUTRAS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_OUTRAS'
      Visible = False
    end
    object queryCONF_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_IPI'
      Visible = False
    end
    object queryCONF_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_DESCONTO'
      Visible = False
    end
    object queryCONF_TOTALPRODUTOS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_TOTALPRODUTOS'
      Visible = False
    end
    object queryCONF_TOTALNOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_TOTALNOTA'
      Visible = False
    end
    object queryCONF_ICMSRETIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_ICMSRETIDO'
      Visible = False
    end
    object queryCONF_ICMSREDITO_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_ICMSREDITO_PERC'
      Visible = False
    end
    object queryBASE_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_ICMS'
      Visible = False
    end
    object queryVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object queryBASE_SUB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_SUB'
      Visible = False
    end
    object queryVALOR_SUB: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_SUB'
      Visible = False
    end
    object queryFRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'FRETE'
      Visible = False
    end
    object querySEGURO: TFloatField
      DisplayWidth = 10
      FieldName = 'SEGURO'
      Visible = False
    end
    object queryOUTRAS: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTRAS'
      Visible = False
    end
    object queryIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
    end
    object queryDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object queryTRANSP_NOME: TStringField
      DisplayWidth = 60
      FieldName = 'TRANSP_NOME'
      Visible = False
      Size = 60
    end
    object queryTRANSP_FRETE: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_FRETE'
      Visible = False
    end
    object queryTRANSP_PLACA: TStringField
      DisplayWidth = 10
      FieldName = 'TRANSP_PLACA'
      Visible = False
      Size = 10
    end
    object queryTRANSP_PLACAUF: TStringField
      DisplayWidth = 2
      FieldName = 'TRANSP_PLACAUF'
      Visible = False
      Size = 2
    end
    object queryTRANSP_IE: TStringField
      DisplayWidth = 25
      FieldName = 'TRANSP_IE'
      Visible = False
      Size = 25
    end
    object queryTRANSP_CNPJ: TStringField
      DisplayWidth = 25
      FieldName = 'TRANSP_CNPJ'
      Visible = False
      Size = 25
    end
    object queryTRANSP_ENDERECO: TStringField
      DisplayWidth = 40
      FieldName = 'TRANSP_ENDERECO'
      Visible = False
      Size = 40
    end
    object queryTRANSP_CIDADE: TStringField
      DisplayWidth = 30
      FieldName = 'TRANSP_CIDADE'
      Visible = False
      Size = 30
    end
    object queryTRANSP_UF: TStringField
      DisplayWidth = 2
      FieldName = 'TRANSP_UF'
      Visible = False
      Size = 2
    end
    object queryTRANSP_QTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_QTDE'
      Visible = False
    end
    object queryTRANSP_ESPECIE: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_ESPECIE'
      Visible = False
    end
    object queryTRANSP_MARCA: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_MARCA'
      Visible = False
    end
    object queryTRANSP_NUMERO: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_NUMERO'
      Visible = False
    end
    object queryTRANSP_PESOBRUTO: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_PESOBRUTO'
      Visible = False
    end
    object queryTRANSP_PESOLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_PESOLIQUIDO'
      Visible = False
    end
    object queryOBS1: TStringField
      DisplayWidth = 60
      FieldName = 'OBS1'
      Visible = False
      Size = 60
    end
    object queryOBS2: TStringField
      DisplayWidth = 60
      FieldName = 'OBS2'
      Visible = False
      Size = 60
    end
    object queryOBS3: TStringField
      DisplayWidth = 60
      FieldName = 'OBS3'
      Visible = False
      Size = 60
    end
    object queryOBS4: TStringField
      DisplayWidth = 60
      FieldName = 'OBS4'
      Visible = False
      Size = 60
    end
    object queryOBS5: TStringField
      DisplayWidth = 60
      FieldName = 'OBS5'
      Visible = False
      Size = 60
    end
    object queryOBS6: TStringField
      DisplayWidth = 60
      FieldName = 'OBS6'
      Visible = False
      Size = 60
    end
    object queryOBS7: TStringField
      DisplayWidth = 60
      FieldName = 'OBS7'
      Visible = False
      Size = 60
    end
    object querySITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object queryITENS: TIntegerField
      DisplayWidth = 10
      FieldName = 'ITENS'
      Visible = False
    end
    object queryTIPO: TStringField
      DisplayWidth = 30
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object queryCODREMETENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object queryICMS_ISENTO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object queryICMS_OUTRAS: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object queryDESCONTO_INCIDENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'DESCONTO_INCIDENTE'
      Visible = False
    end
    object queryITEM_FRETE_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_FRETE_VALOR'
      Visible = False
    end
    object queryITEM_FRETE_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_FRETE_BASE'
      Visible = False
    end
    object queryITEM_FRETE_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Visible = False
    end
    object queryITEM_FRETE_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_FRETE_ICMS'
      Visible = False
    end
    object queryITEM_SEGURO_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SEGURO_VALOR'
      Visible = False
    end
    object queryITEM_SEGURO_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SEGURO_BASE'
      Visible = False
    end
    object queryITEM_SEGURO_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Visible = False
    end
    object queryITEM_SEGURO_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SEGURO_ICMS'
      Visible = False
    end
    object queryITEM_PIS_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_PIS_VALOR'
      Visible = False
    end
    object queryITEM_PIS_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_PIS_BASE'
      Visible = False
    end
    object queryITEM_PIS_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Visible = False
    end
    object queryITEM_PIS_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_PIS_ICMS'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Visible = False
    end
    object queryITEM_COMPLEMENTO_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Visible = False
    end
    object queryITEM_SERVICO_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SERVICO_VALOR'
      Visible = False
    end
    object queryITEM_SERVICO_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SERVICO_BASE'
      Visible = False
    end
    object queryITEM_SERVICO_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Visible = False
    end
    object queryITEM_SERVICO_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_SERVICO_ICMS'
      Visible = False
    end
    object queryITEM_OUTRAS_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_OUTRAS_VALOR'
      Visible = False
    end
    object queryITEM_OUTRAS_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_OUTRAS_BASE'
      Visible = False
    end
    object queryITEM_OUTRAS_ALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Visible = False
    end
    object queryITEM_OUTRAS_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_OUTRAS_ICMS'
      Visible = False
    end
    object queryITEM_ESPECIAL_TOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Visible = False
    end
    object queryITEM_ESPECIAL_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object queryBASEICMS_PRODUTOS: TIntegerField
      DisplayWidth = 10
      FieldName = 'BASEICMS_PRODUTOS'
      Visible = False
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 560
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
