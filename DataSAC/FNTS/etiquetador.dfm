object frmetiquetador: Tfrmetiquetador
  Left = 79
  Top = 58
  Width = 602
  Height = 499
  Caption = 'Etiquetador'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 425
    Width = 594
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 594
    Height = 425
    ControlType.Strings = (
      'CODPRODUTO;CustomEdit;COMBOCODIGO;F'
      'PRODUTO;CustomEdit;COMBOPRODUTO;F'
      'VALOR;CustomEdit;RVALOR;F')
    Selected.Strings = (
      'CODPRODUTO'#9'10'#9'C'#211'DIGO'#9#9
      'PRODUTO'#9'33'#9'PRODUTO'#9#9
      'UNIDADE'#9'4'#9'UNID.'#9#9
      'QTDE'#9'6'#9'QTDE.'#9#9
      'VALOR'#9'10'#9'PRE'#199'O'#9#9
      'TAMANHO'#9'5'#9'TAM.'#9#9
      'TEXTO'#9'5'#9'PREST.'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = dsetiq
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    PaintOptions.AlternatingRowColor = 14540253
  end
  object bgerar: TBitBtn
    Left = 8
    Top = 433
    Width = 89
    Height = 25
    Caption = 'Gerar...'
    TabOrder = 1
    OnClick = bgerarClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFF27A8DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF29ACDE27A9DC25A6DBFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF2BAFDF2DAEDF2BABDE25A6DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2BAFDF4FBCE74CBAE626
      A7DC24A4DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF2BAFDF84D3F255BDE72EAADE24A4DBFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2DB2E070CCEE83
      D2F27ECEF14AB6E424A5DB22A2DAFFFFFFFFFFFFFFFFFFFFFFFF38C2E736C0E6
      35BDE533BBE431B8E32FB6E286D7F32FB6EB4ABCEC80CEF151B9E62CA8DD23A2
      DAFFFFFFFFFFFFFFFFFF3AC4E875DAF293E6F891E3F78DE0F68ADCF58ADBF588
      D7F484D3F27FCFF17CCCF07AC9EF48B4E323A3DA209ED8FFFFFF3BC7E94FCDEC
      98E9F94AD5F345CFF140CAF038C2EE89D9F42EB4E12CB1E02BAEDF29ACDE27A9
      DC25A6DB23A3DAFFFFFFFFFFFF3BC7E980E1F58EE6F843D2F33FCDF139C7EF8C
      DCF558C6EA2EB4E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DC9EA
      5BD4EF99EAF947D6F442D0F23DCBF06ED5F37FD7F34AC0E72FB4E1FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DCAEA93E9F972E1F745D4F341CEF23C
      C9F08ADCF570D0EF3DBBE42FB5E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      3FCCEB64D9F19AEBFA48D8F444D3F33FCEF13AC8F08CDCF562CBED31B8E3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FCCEB9AEDFA99EBF997E8F994
      E5F891E2F78EDFF68BDBF556C7EB31B8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF40CEEC3FCCEB3ECBEA3CC9E93BC7E93AC4E838C2E736C0E635BDE533BB
      E431B8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object bexcluir: TBitBtn
    Left = 104
    Top = 433
    Width = 89
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = bexcluirClick
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
  object bfechar: TBitBtn
    Left = 376
    Top = 433
    Width = 123
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = bfecharClick
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
      DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
      E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
      61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
      7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
      354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
      9E00589900559500538F005089004D8100487900477400466E00476E003C6100
      3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
      FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
      9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
      00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
      BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
      FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
      ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
      74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
      6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
      E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
      5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
      7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
      BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
      FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
      EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
      ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
      D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
      C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
      B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
      5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
      FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
      71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
      004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
      79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
      00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
      EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
      DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
      6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
      00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
      6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object pimprimir: THeaderView
    Left = 88
    Top = 161
    Width = 425
    Height = 148
    AdaptiveColors = True
    BorderStyle = bsNone
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 181
    ParentColor = False
    Visible = False
    object HeaderView2: THeaderView
      Left = 3
      Top = 1
      Width = 419
      Height = 144
      AdaptiveColors = True
      BorderStyle = bsNone
      Caption = 'Formato da Etiqueta'
      HeaderColor = clHighlight
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindow
      HeaderFont.Height = -11
      HeaderFont.Name = 'Verdana'
      HeaderFont.Style = [fsBold]
      HeaderSize = 24
      ParentColor = False
      object Label8: TLabel
        Left = 8
        Top = 44
        Width = 29
        Height = 13
        Caption = 'Tipo:'
      end
      object Label9: TLabel
        Left = 8
        Top = 68
        Width = 75
        Height = 13
        Caption = 'Impressora: '
      end
      object ComboBox1: TComboBox
        Left = 48
        Top = 40
        Width = 361
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = ComboBox1Change
        OnEnter = ComboBox1Enter
        OnExit = ComboBox1Exit
        OnKeyPress = ComboBox1KeyPress
        Items.Strings = (
          '1 - Bobina | 11,10 cm x 3,40 cm | 01 Fileira'
          '2 - Bobina | 3,6 cm x 2,1 cm | 03 Fileiras'
          '3 - Etiqueta Comum'
          '4 - Form.Cont'#237'nuo | 2,10 cm x 1,50 cm | 05 Fileiras'
          '5 - Bobina | 3,6 cm x 2,1 cm | 03 Fileiras c/ Localiza'#231#227'o'
          '6 - Bobina | 5,0 cm x 7,5 cm | 02 Fileiras Confec'#231#245'es'
          '7 - Bobina | 5,0 cm x 7,5 cm | 02 Fileiras s/ Picote Confec'#231#245'es'
          '8 - Bobina | 3,6 cm x 2,1 cm | 03 Fileiras Sapato '
          '')
      end
      object ComboBox2: TComboBox
        Left = 88
        Top = 64
        Width = 321
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Text = 'ARGOX - OS 214'
        OnEnter = ComboBox2Enter
        OnExit = ComboBox2Exit
        OnKeyPress = ComboBox1KeyPress
        Items.Strings = (
          'ARGOX - OS 214'
          'TINTA/MATRICIAL/LASER')
      end
      object BitBtn8: TBitBtn
        Left = 72
        Top = 104
        Width = 91
        Height = 25
        Caption = 'Imprimir'
        TabOrder = 2
        OnClick = BitBtn8Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00C89561FDCA9865FFCA9765FFCA9765FFCA9765FFCA9764FFC997
          64FFC99764FFCA9865FFC89461FDFFFFFF00FFFFFF00FFFFFF00636363995D5D
          5DD2585858FFC79561FFF9F7F6FFF9F1ECFFF9F1EBFFF8F0E9FFF7EDE6FFF4EA
          E1FFF2E8DEFFFAF8F6FFC79461FF242424FF232323D12323237A6A6A6AFDA7A7
          A7FFB5B5B5FF818181FFAFACAAFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0BDFFC5C0
          BDFFC5C0BDFFADAAA8FF2C2C2CFFB5B5B5FF9B9B9BFF232323FF707070FFB5B5
          B5FFB5B5B5FF959595FF818181FF818181FF797979FF6E6E6EFF616161FF5252
          52FF434343FF424242FF6E6E6EFFB5B5B5FFB5B5B5FF252525FF757575FFBBBB
          BBFFBBBBBBFF8D8D8DFFD4D4D4FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFD3D3D3FF838383FFBBBBBBFFBBBBBBFF2A2A2AFF7A7A7AFFD7D7
          D7FFD7D7D7FF979797FFD8D8D8FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
          BFFFBFBFBFFFD7D7D7FF8E8E8EFFD7D7D7FFD7D7D7FF3F3F3FFF7E7E7EFFF9F9
          F9FFF9F9F9FFABABABFFDFDFDFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFDFDFDFFFA3A3A3FFF9F9F9FFF9F9F9FF616161FF818181F9FCFC
          FCFFFCFCFCFFCBCBCBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF2F2F2FFF2F2F2FFC6C6C6FFFCFCFCFFFCFCFCFF707070FE818181D2D2D2
          D2FFE8E8E8FF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D7DFF7D7D
          7DFF7D7D7DFF7D7D7DFF7D7D7DFFE8E8E8FFC4C4C4FF565656DC818181459A9A
          9AFFCCCCCCFFC78B4EFFF9F4EDFFFEE8D8FFFEE8D7FFFDE5D3FFFCE4D1FFFAE0
          C7FFF9DDC3FFFAF4EDFFC7854AFFC3C3C3FF747474FF47474745FFFFFF008181
          8163818181F3C5894CFFF9F4EFFFFEE7D7FFFDE7D5FFFCE6D2FFFBE1CCFFF8DC
          C2FFF6DABDFFFAF4EFFFC48348FF595959F353535363FFFFFF00FFFFFF00FFFF
          FF0081818109C5894BF9F9F4F0FFFCE6D3FFFDE7D3FFFBE3CDFFFAE0C8FFF5D6
          BBFFF3D4B5FFF8F4F0FFC38246F960606009FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C6894BF7F9F5F1FFFCE3CFFFFCE4CFFFFAE1CAFFF9DDC4FFF4E9
          DFFFF7F2ECFFF5EFE9FFC27E45FBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C6894CF6F9F5F1FFFCE3CDFFFBE3CDFFF9E0C8FFF8DCC2FFFDFB
          F8FFFCE6CDFFE2B684FFBF7942A6FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C48649FAF7F2ECFFF8F4EEFFF8F3EDFFF8F3EDFFF8F2ECFFF2E6
          D7FFE2B27DFFDA9163F6B46B3E07FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00C17D4460C88B4DBBC88C4FFEC88C4FFFC88D4FF7C98C4FF7C589
          4CFEC4763B94FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      end
      object BitBtn9: TBitBtn
        Left = 264
        Top = 104
        Width = 89
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BitBtn9Click
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
      object BitBtn1: TBitBtn
        Left = 168
        Top = 104
        Width = 91
        Height = 25
        Caption = 'Editar'
        TabOrder = 4
        OnClick = BitBtn1Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF1742592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C6F890C8F840
          84C8266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F3F3F3C5C5C54288A9DFF1FE5399D71979BD4897C43D83BCA7B5C2F4F4F4FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5A8A8A8CDCDCD9BB9CD79B5D48FB6D054
          C8E35ADEF477CFEC4A96D688939DE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF
          DDDDDDF2F2F2DADADA95B7C874B8D5C1F5FC62DEF65CE1F778D2EF4796D98892
          9CFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2EFEFEFDDDDDDD3D3D3D1D1D198BDCE76
          CAE6C6F6FC5DDBF459E0F67AD3F04694D7D6E7F7FFFFFFFFFFFFFFFFFFB4B4B4
          F1F1F1E1E1E1D7D7D7D4D4D4DBDBDBA3CBD878D2EDC6F6FC5EDBF45AE1F679D5
          F150A1E1DCE9F5FFFFFFFFFFFFB6B6B6F2F2F2E6E6E6DCDCDCD8D8D8DFDFDFDA
          DADA96BFCC7BD3EDC3F5FC6BDCF56CC9EC62A2D668A2D4E5EFF7FFFFFFB7B7B7
          F3F3F3E9E9E9E0E0E0DCDCDCE2E2E2DDDDDDC8C8C888B9C87FD3ECB1E2F88ABF
          E6ADD2F5C3DFFB6AA1D3FFFFFFB9B9B9F4F4F4EDEDEDE5E5E5E1E1E1E5E5E5E0
          E0E0CCCCCCC1C1C188BDCD76BDE6B3D1EFE4F2FEABD1EE5895CBFFFFFFBABABA
          F5F5F5EAEAEADDDDDDD5D5D5D4D4D4D0D0D0C2C2C2BBBBBBBFBFBFAAD3E257A4
          D784B0DA459CCFB0D8EEFFFFFFBCBCBCF6F6F6E6E6E6EEEEEEF5F5F5FAFAFAF9
          F9F9EFEFEFDDDDDDC2C2C2E5E5E5ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE
          F7F7F7FDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAE9E9E9ADAD
          ADFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE0E0E0FDFDFDFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFAFAFACECECEC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
          C6C6C6CFCFCFE7E7E7F2F2F2FCFCFCFBFBFBECECECDFDFDFC1C1C1C0C0C0F6F6
          F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7
          B7B7C2C2C2CCCCCCE9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
      end
    end
  end
  object COMBOPRODUTO: TwwDBLookupCombo
    Left = 144
    Top = 56
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    DataField = 'produto'
    DataSource = dsetiq
    LookupTable = frmmodulo.qrproduto
    LookupField = 'PRODUTO'
    TabOrder = 5
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = COMBOPRODUTOExit
  end
  object COMBOCODIGO: TwwDBLookupComboDlg
    Left = 16
    Top = 56
    Width = 121
    Height = 21
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    DataField = 'CODPRODUTO'
    DataSource = dsetiq
    LookupTable = frmmodulo.qrproduto
    LookupField = 'codigo'
    TabOrder = 6
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnExit = COMBOCODIGOExit
  end
  object BitBtn2: TBitBtn
    Left = 200
    Top = 433
    Width = 169
    Height = 25
    Caption = 'Importar NF Entrada'
    TabOrder = 7
    OnClick = BitBtn2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFF1742592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFDAB69FCFA185C0835E2C648193C6F890C8F840
      84C82264A5927162A76E4DA66D4CA56E4DA87556BA8F75FFFFFFFFFFFFC7906A
      FEFEFEFEFEFE4288A9DFF1FE5399D71979BD4897C4488EC6DBE9F6FEFEFEFEFE
      FEFEFEFEAB7759FFFFFFFFFFFFC18158FEFEFEAE662B74655679B5D48FB6D054
      C8E35ADEF477CFEC4F9AD9D6D8DCEFE4DDFEFEFEA66F4EFFFFFFFFFFFFC38559
      FEFEFEAE662BCC9E737C6D5775B9D6C1F5FC62DEF65CE1F778D2EF4897DBD8D9
      DCFEFEFEA7704EFFFFFFFFFFFFC4855AFEFEFEAE662BCC9F74AC632AB0D5E676
      CAE6C6F6FC5DDBF459E0F67AD3F04A98DBD5E7F6AB714FFFFFFFFFFFFFC68759
      FEFEFEB36D32CFA47DB16B2DFEFEFEB4D5DC78D2EDC6F6FC5EDBF45AE1F679D5
      F150A1E19C7967FFFFFFFFFFFFC7895AFEFEFEB6753FD0A582B57237FEFEFEEF
      E4DDBADEE87CD3EDC3F5FC6BDCF56CC9EC62A2D66397C8E5EFF7FFFFFFC98B5B
      FEFEFEBB7E53B97C4BB97B49FEFEFEEFE4DDEFE4DDAAD4DE80D4EDB1E2F88ABF
      E6ADD2F5C3DFFB6AA1D3FFFFFFCA8D5DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEB0E5F476BDE6B3D1EFE4F2FEABD1EE5895CBFFFFFFCC9160
      FEFEFEECC39AECC39AECC39AECC39AECC39AECC39AECC39AECC39AAFBCB057A4
      D784B0DA459CCFB0D8EEFFFFFFCF9767FEFEFEECC39BF3D9C0F3D9C0F3DAC1F3
      DAC1F3DAC1F3DAC1F3DAC1F3DAC1ECC39AFEFEFEC08358FFFFFFFFFFFFD5A377
      FEFEFEECC39BECC39BECC39BECC39AECC39AECC39AECC39AECC39AECC39AECC3
      9AFEFEFEC78E64FFFFFFFFFFFFE1BD9DFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED5A988FFFFFFFFFFFFE9CFB8
      E3C1A4D7A87ECD925ECC925FCC915ECB8F5ECC9160CC9262CA9060CD9468D4A7
      83D7AD8AD6AB8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object Pimport: THeaderView
    Left = 129
    Top = 347
    Width = 369
    Height = 72
    AdaptiveColors = True
    BorderStyle = bsNone
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 181
    ParentColor = False
    Visible = False
    object HeaderView3: THeaderView
      Left = 3
      Top = 1
      Width = 363
      Height = 68
      AdaptiveColors = True
      BorderStyle = bsNone
      Caption = 'Aguarde... Importando Produtos...'
      HeaderColor = clHighlight
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindow
      HeaderFont.Height = -11
      HeaderFont.Name = 'Verdana'
      HeaderFont.Style = [fsBold]
      HeaderSize = 24
      ParentColor = False
      object bar: TProgressBar
        Left = 16
        Top = 37
        Width = 337
        Height = 17
        TabOrder = 0
      end
    end
  end
  object RVALOR: TwwDBEdit
    Left = 328
    Top = 56
    Width = 121
    Height = 21
    DataField = 'VALOR'
    DataSource = dsetiq
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object dsetiq: TwwDataSource
    DataSet = qretiq
    Left = 107
    Top = 382
  end
  object qretiq: TZQuery
    Connection = frmmodulo.ConexaoLocal
    SQL.Strings = (
      'SELECT * FROM CL00005')
    Params = <>
    Left = 139
    Top = 381
    object qretiqCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 10
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qretiqPRODUTO: TStringField
      DisplayWidth = 33
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qretiqUNIDADE: TStringField
      DisplayLabel = 'UNID.'
      DisplayWidth = 4
      FieldKind = fkLookup
      FieldName = 'UNIDADE'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'UNIDADE'
      KeyFields = 'CODPRODUTO'
      Size = 4
      Lookup = True
    end
    object qretiqQTDE: TIntegerField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 6
      FieldName = 'QTDE'
    end
    object qretiqVALOR: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qretiqTAMANHO: TStringField
      DisplayLabel = 'TAM.'
      DisplayWidth = 5
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qretiqTEXTO: TStringField
      DisplayLabel = 'PREST.'
      DisplayWidth = 5
      FieldName = 'TEXTO'
      Size = 25
    end
    object qretiqlocalizacao: TStringField
      FieldKind = fkLookup
      FieldName = 'localizacao'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'LOCALICAZAO'
      KeyFields = 'codproduto'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qretiqfornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'fornecedor'
      KeyFields = 'codproduto'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qretiqmarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'marca'
      KeyFields = 'codproduto'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qretiqcomplemento: TStringField
      FieldKind = fkLookup
      FieldName = 'complemento'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'AUTO_COMPLEMENTO'
      KeyFields = 'codproduto'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qretiqauto_aplicacao: TStringField
      FieldKind = fkLookup
      FieldName = 'auto_aplicacao'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'AUTO_APLICACAO'
      KeyFields = 'codproduto'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qretiqcodbarra: TStringField
      FieldKind = fkLookup
      FieldName = 'codbarra'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'CODBARRA'
      KeyFields = 'codproduto'
      Visible = False
      Size = 13
      Lookup = True
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 384
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object frxDesigner1: TfrxDesigner
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
    Restrictions = []
    RTLLanguage = False
    Left = 288
    Top = 180
  end
  object fxproduto: TfrxReport
    Version = '4.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.459351666700000000
    ReportOptions.LastChange = 39212.456627963000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 288
    Top = 144
    Datasets = <
      item
        DataSet = fsproduto
        DataSetName = 'fsproduto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 4.700000000000000000
      RightMargin = 4.700000000000000000
      TopMargin = 12.000000000000000000
      ColumnWidth = 98.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 96.000000000000000000
        Top = 18.897650000000000000
        Width = 758.173718000000100000
        Columns = 2
        ColumnWidth = 374.173228346457000000
        ColumnGap = 11.338582677165400000
        DataSet = fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          DataField = 'PRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'CODIGO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."CODIGO"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          DataField = 'FORNECEDOR'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."FORNECEDOR"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 45.354360000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          DataField = 'MARCA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."MARCA"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 253.228510000000000000
          Top = 60.472480000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'PRECO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'R$ ###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsproduto."PRECO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 124.724490000000000000
          Top = 15.118120000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          DataField = 'CODBARRA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."CODBARRA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          DataField = 'LOCALIZACAO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."LOCALIZACAO"]')
          ParentFont = False
        end
      end
    end
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'LOCALIZACAO=LOCALIZACAO'
      'COMPLEMENTO=COMPLEMENTO'
      'APLICACAO=APLICACAO'
      'RESTRITO=RESTRITO'
      'PRECOCUSTO=PRECOCUSTO'
      'FORNECEDOR=FORNECEDOR'
      'MARCA=MARCA'
      'ESTOQUE=ESTOQUE'
      'PRECO=PRECO')
    DataSet = QRPRODUTO
    Left = 176
    Top = 96
  end
  object QRPRODUTO: TZQuery
    Connection = frmmodulo.ConexaoLocal
    OnCalcFields = QRPRODUTOCalcFields
    SQL.Strings = (
      'SELECT * FROM CL00007')
    Params = <>
    Left = 251
    Top = 381
    object QRPRODUTOCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QRPRODUTOCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object QRPRODUTOPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object QRPRODUTOUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object QRPRODUTOLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object QRPRODUTOCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object QRPRODUTOAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 50
    end
    object QRPRODUTORESTRITO: TStringField
      DisplayWidth = 20
      FieldKind = fkCalculated
      FieldName = 'RESTRITO'
      Visible = False
      Calculated = True
    end
    object QRPRODUTOPRECOCUSTO: TFloatField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'PRECOCUSTO'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRECOCUSTO'
      KeyFields = 'CODIGO'
      Visible = False
      Lookup = True
    end
    object QRPRODUTOFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object QRPRODUTOMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object QRPRODUTOESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object QRPRODUTOPRECO: TFloatField
      FieldName = 'PRECO'
    end
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 176
    Top = 384
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 496
    Top = 112
    object qrproduto_movDATA: TDateTimeField
      DisplayWidth = 13
      FieldName = 'DATA'
    end
    object qrproduto_movCODNOTA: TStringField
      DisplayLabel = 'COD.NOTA'
      DisplayWidth = 11
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrproduto_movNUMERONOTA: TStringField
      DisplayLabel = 'N.FISCAL'
      DisplayWidth = 9
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto_movMOV: TStringField
      DisplayLabel = 'MOVIMENTO'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Calculated = True
    end
    object qrproduto_movUNITARIO: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 13
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movTOTAL: TFloatField
      DisplayWidth = 15
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrproduto_movICMS: TFloatField
      DisplayLabel = '%ICMS'
      DisplayWidth = 8
      FieldName = 'ICMS'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object qrproduto_movIPI: TFloatField
      DisplayLabel = '%IPI'
      DisplayWidth = 7
      FieldName = 'IPI'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object qrproduto_movCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrproduto_movDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrproduto_movACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrproduto_movCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrproduto_movCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrproduto_movCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrproduto_movSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrproduto_movUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto_movQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrproduto_movproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 60
      Lookup = True
    end
    object qrproduto_movprecovenda: TFloatField
      FieldKind = fkLookup
      FieldName = 'precovenda'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'precovenda'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
  end
  object Query1: TQuery
    Left = 504
    Top = 456
  end
  object qrgrade: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 536
    Top = 176
  end
end
