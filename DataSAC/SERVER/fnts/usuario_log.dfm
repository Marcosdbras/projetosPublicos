object frmusuario_log: Tfrmusuario_log
  Left = 195
  Top = 197
  Width = 774
  Height = 482
  Caption = 'Log de Acessos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 766
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 416
    Width = 766
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 13
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label2: TLabel
      Left = 201
      Top = 13
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object DateEdit1: TDateEdit
      Left = 72
      Top = 8
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 216
      Top = 8
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnKeyPress = DateEdit2KeyPress
    end
    object bfiltrar: TAdvGlowButton
      Left = 351
      Top = 5
      Width = 75
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
      TabOrder = 2
      OnClick = bfiltrarClick
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
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 39
    Width = 766
    Height = 377
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'DATA'#9'12'#9'DATA'#9#9
      'HORA'#9'7'#9'HORA'#9#9
      'CODUSUARIO'#9'11'#9'C'#211'DIGO'#9'F'#9'USU'#193'RIO'
      'USUARIO'#9'22'#9'NOME'#9'F'#9'USU'#193'RIO'
      'CODREGISTRO'#9'10'#9'REGISTRO'#9'F'
      'FUNCAO'#9'10'#9'FUNCAO'#9#9
      'TABELA'#9'11'#9'TABELA'#9#9
      'HISTORICO'#9'32'#9'HISTORICO'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DSLOG
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 418
    Width = 766
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bitbtn5: TAdvGlowButton
      Left = 21
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F7 Imprimir'
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
      TabOrder = 0
      OnClick = bitbtn5Click
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
      Left = 656
      Top = 3
      Width = 98
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
      TabOrder = 1
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
  end
  object QRLOG: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'SELECT '
      'C000101.*,'
      'C000003.USUARIO'
      'FROM'
      'C000101,'
      'C000003'
      'WHERE'
      'C000101.CODUSUARIO = C000003.CODIGO')
    Params = <>
    Left = 344
    Top = 160
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 192
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 118
      OnClick = bitbtn5Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = '--'
      ShortCut = 16499
      OnClick = N2Click
    end
  end
  object DSLOG: TDataSource
    DataSet = QRLOG
    Left = 384
    Top = 168
  end
  object FXLOG: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 39770.722671794000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 280
    Datasets = <
      item
        DataSet = FSLOG
        DataSetName = 'FSLOG'
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
        object Memo24: TfrxMemoView
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LOG DE ACESSO DOS USU'#195#129'RIOS')
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
        object Memo27: TfrxMemoView
          Left = 188.976500000000000000
          Top = 18.897650000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
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
        object Line1: TfrxLineView
          Top = 55.913420000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 56.913420000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 56.913420000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hora')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 136.063080000000000000
          Top = 56.913420000000000000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Usu'#195#161'rio')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 37.795300000000000000
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
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 71.811070000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          Left = 306.141930000000000000
          Top = 56.692949999999990000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Registro')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 385.512060000000000000
          Top = 56.692949999999990000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fun'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 461.102660000000000000
          Top = 56.692949999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tabela')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 532.913730000000000000
          Top = 56.692949999999990000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Hist'#195#179'rico')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.338590000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        DataSet = FSLOG
        DataSetName = 'FSLOG'
        RowCount = 0
        object Memo3: TfrxMemoView
          Top = 0.220469999999977500
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = FSLOG
          DataSetName = 'FSLOG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."DATA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 79.370130000000000000
          Top = 0.220469999999977500
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'HORA'
          DataSet = FSLOG
          DataSetName = 'FSLOG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."HORA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 136.063080000000000000
          Top = 0.220470000000006000
          Width = 166.299320000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."CODUSUARIO"]  [FSLOG."USUARIO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 306.141930000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODREGISTRO'
          DataSet = FSLOG
          DataSetName = 'FSLOG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."CODREGISTRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 385.512060000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'FUNCAO'
          DataSet = FSLOG
          DataSetName = 'FSLOG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."FUNCAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 461.102660000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TABELA'
          DataSet = FSLOG
          DataSetName = 'FSLOG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."TABELA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 532.913730000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'HISTORICO'
          DataSet = FSLOG
          DataSetName = 'FSLOG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[FSLOG."HISTORICO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999937000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779529999999937000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779529999999937000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779529999999937000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
      end
    end
  end
  object FSLOG: TfrxDBDataset
    UserName = 'FSLOG'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'HORA=HORA'
      'CODUSUARIO=CODUSUARIO'
      'TABELA=TABELA'
      'CODREGISTRO=CODREGISTRO'
      'FUNCAO=FUNCAO'
      'HISTORICO=HISTORICO'
      'USUARIO=USUARIO')
    DataSet = QRLOG
    BCDToCurrency = False
    Left = 320
    Top = 280
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 352
    Top = 280
  end
end
