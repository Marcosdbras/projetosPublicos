object frmlista_cheque2: Tfrmlista_cheque2
  Left = 430
  Top = 23
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CHEQUE | Relat'#243'rios'
  ClientHeight = 271
  ClientWidth = 453
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 60
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 8
    Top = 40
    Width = 424
    Height = 2
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 45
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 40
    Height = 13
    Caption = 'Banco:'
  end
  object Label5: TLabel
    Left = 16
    Top = 120
    Width = 54
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object Label9: TLabel
    Left = 16
    Top = 168
    Width = 48
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label10: TLabel
    Left = 94
    Top = 192
    Width = 36
    Height = 13
    Caption = 'In'#237'cio:'
  end
  object Label11: TLabel
    Left = 262
    Top = 192
    Width = 25
    Height = 13
    Caption = 'Fim:'
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 227
    Width = 453
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 8
    Top = 152
    Width = 440
    Height = 2
  end
  object combo_relatorio: TComboBox
    Left = 113
    Top = 11
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'RELA'#199#195'O SINT'#201'TICA'
    Items.Strings = (
      'RELA'#199#195'O SINT'#201'TICA'
      'RELA'#199#195'O AGRUPADA POR CLIENTE')
  end
  object combo_cliente: TComboBox
    Left = 113
    Top = 51
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'TODOS'
    OnChange = combo_clienteChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_banco: TComboBox
    Left = 113
    Top = 83
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'TODOS'
    OnChange = combo_bancoChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_situacao: TComboBox
    Left = 113
    Top = 115
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'TODOS'
    OnChange = combo_clienteChange
    Items.Strings = (
      'TODOS'
      'ATIVO'
      'BAIXADO'
      'DEPOSITADO - 1'#170' VEZ'
      'DEPOSITADO - 2'#170' VEZ'
      'DESCONTADO'
      'DEVOLVIDO - 1'#170' VEZ'
      'DEVOLVIDO - 2'#170' VEZ'
      'REPASSADO'
      'SUSTADO'
      'OUTROS')
  end
  object combo_periodo: TComboBox
    Left = 94
    Top = 163
    Width = 346
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'DATA DE VENCIMENTO'
    OnChange = combo_clienteChange
    Items.Strings = (
      'DATA DE VENCIMENTO'
      'DATA DA EMISSAO'
      'DATA DA BAIXA')
  end
  object DateEdit1: TDateEdit
    Left = 134
    Top = 188
    Width = 103
    Height = 21
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
    TabOrder = 5
    Text = '01/01/0001'
    OnKeyPress = DateEdit1KeyPress
  end
  object DateEdit2: TDateEdit
    Left = 293
    Top = 188
    Width = 104
    Height = 21
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
    TabOrder = 6
    Text = '31/12/2099'
    OnKeyPress = DateEdit2KeyPress
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 230
    Width = 453
    Height = 41
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 7
    UseDockManager = True
    object bcancelar: TBitBtn
      Left = 320
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = bcancelarClick
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
    object bimprimir: TBitBtn
      Left = 16
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = bimprimirClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFC79561C99764C99664C99664C99664C99663C89663C89663C99764C794
        61FFFFFFFFFFFFFFFFFFA1A1A1797979575757C69460F8F6F5F8F0EBF8F0EAF7
        EFE8F6ECE5F3E9E0F1E7DDF9F7F5C693602323234A4A4A9595956A6A6AA6A6A6
        B4B4B4808080AEABA9C4BFBCC4BFBCC4BFBCC4BFBCC4BFBCC4BFBCACA9A72B2B
        2BB4B4B49A9A9A2222226F6F6FB4B4B4B4B4B49494948080808080807878786D
        6D6D6060605151514242424141416D6D6DB4B4B4B4B4B4242424747474BABABA
        BABABA8C8C8CD3D3D3B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8D2D2D28282
        82BABABABABABA292929797979D6D6D6D6D6D6969696D7D7D7BEBEBEBEBEBEBE
        BEBEBEBEBEBEBEBEBEBEBED6D6D68D8D8DD6D6D6D6D6D63E3E3E7D7D7DF8F8F8
        F8F8F8AAAAAADEDEDECACACACACACACACACACACACACACACACACACADEDEDEA2A2
        A2F8F8F8F8F8F8606060838383FBFBFBFBFBFBCACACAF1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1C5C5C5FBFBFBFBFBFB707070969696D1D1D1
        E7E7E77C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
        7CE7E7E7C3C3C36C6C6CDDDDDD999999CBCBCBC68A4DF8F3ECFDE7D7FDE7D6FC
        E4D2FBE3D0F9DFC6F8DCC2F9F3ECC68449C2C2C2737373CDCDCDFFFFFFCECECE
        868686C4884BF8F3EEFDE6D6FCE6D4FBE5D1FAE0CBF7DBC1F5D9BCF9F3EEC382
        47606060BCBCBCFFFFFFFFFFFFFFFFFFFBFBFBC58B4EF8F3EFFBE5D2FCE6D2FA
        E2CCF9DFC7F4D5BAF2D3B4F7F3EFC38449F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC78C50F8F4F0FBE2CEFBE3CEF9E0C9F8DCC3F3E8DEF6F1EBF4EEE8C27F
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78C51F8F4F0FBE2CCFAE2CCF8
        DFC7F7DBC1FCFAF7FBE5CCE1B583D5A783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC4874CF6F1EBF7F3EDF7F2ECF7F2ECF7F1EBF1E5D6E1B17CDA9468FDFB
        FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CEB8D6A97CC78B4FC78B4EC9
        9054CA8F54C4884CDCAF8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn1: TBitBtn
      Left = 168
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Editar...'
      TabOrder = 1
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
  object fxcheque: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39181.615094942100000000
    ReportOptions.LastChange = 39276.622212453700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo30OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if copy(memo30.text,1,5) <> '#39'ATIVO'#39' then'
      '  begin'
      
        '    memo30.font.color := clred;                                 ' +
        '                               '
      '  end;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 296
    Top = 56
    Datasets = <
      item
        DataSet = fscheque
        DataSetName = 'fscheque'
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
        Height = 61.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.795300000000000000
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
        object LEMPRESA: TfrxMemoView
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
        object Memo1: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA1'
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
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
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
            'Com'#195#169'rcio Plus! 7')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582870000000000000
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
          Memo.UTF8 = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 30.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
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
        object Memo23: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 306.141930000000000000
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.362202280000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        DataSet = fscheque
        DataSetName = 'fscheque'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 415.748300000000000000
          Top = 0.220470000000034400
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'AGENCIA'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."AGENCIA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 0.220470000000034400
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."NUMERO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.220470000000034400
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'VALOR'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fscheque."VALOR"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 343.937230000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'banco'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."banco"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 0.244082280000043300
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'VENCIMENTO'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 476.220780000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CONTA'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."CONTA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 139.504020000000000000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'TITULAR'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."TITULAR"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 676.197280000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo30OnAfterData'
          ShowHint = False
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."SIT"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 73.031540000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'EMISSAO'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."EMISSAO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 381.732530000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000079000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779529999999852000
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
          Top = 3.779530000000079000
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
          Top = 3.779530000000079000
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
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 298.582870000000000000
        Width = 740.409927000000000000
        object Memo20: TfrxMemoView
          Left = 476.220780000000000000
          Top = 3.779530000000022000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL GERAL:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 604.724800000000000000
          Top = 3.779530000000022000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fscheque."VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 52.913420000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        Condition = 'fscheque."NOME"'
        OutlineText = 'fscheque."NOME"'
        object Memo10: TfrxMemoView
          Left = 415.748300000000000000
          Top = 26.677179999999990000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AGENCIA')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 532.913730000000000000
          Top = 26.677179999999990000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 608.504330000000000000
          Top = 26.677179999999990000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'VALOR-R$')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 347.716760000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'BANCO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.700792280000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 476.220780000000000000
          Top = 26.456709999999990000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CONTA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 143.283550000000000000
          Top = 26.456709999999990000
          Width = 192.756030000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TITULAR')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 676.197280000000000000
          Top = 26.456709999999990000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SITUA'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 76.811070000000000000
          Top = 26.456709999999990000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'EMISS'#195#402'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 41.574829999999990000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 22.677179999999990000
          Width = 740.787880000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
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
            'CLIENTE:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779529999999994000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fscheque."CODCLIENTE"] - [fscheque."NOME"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 370.393940000000000000
          Top = 3.779529999999994000
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
            'TELEFONES:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779529999999994000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fscheque."TELEFONE1"] / [fscheque."TELEFONE2"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 740.409927000000000000
        object Memo36: TfrxMemoView
          Left = 476.220780000000000000
          Top = 2.000000000000000000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DO CLIENTE:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 608.504330000000000000
          Top = 2.000000000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fscheque."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
      end
    end
  end
  object fscheque: TfrxDBDataset
    UserName = 'fscheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'EMISSAO=EMISSAO'
      'VENCIMENTO=VENCIMENTO'
      'DATA_DEPOSITO1=DATA_DEPOSITO1'
      'DATA_DEPOSITO2=DATA_DEPOSITO2'
      'DATA_DEVOLUCAO1=DATA_DEVOLUCAO1'
      'DATA_DEVOLUCAO2=DATA_DEVOLUCAO2'
      'SITUACAO=SITUACAO'
      'CODCLIENTE=CODCLIENTE'
      'TITULAR=TITULAR'
      'CODBANCO=CODBANCO'
      'AGENCIA=AGENCIA'
      'CONTA=CONTA'
      'DATA_CONTA=DATA_CONTA'
      'NUMERO=NUMERO'
      'VALOR=VALOR'
      'DESCONTO=DESCONTO'
      'LIQUIDO=LIQUIDO'
      'CODVENDA=CODVENDA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CODCONTAS_PAGAR=CODCONTAS_PAGAR'
      'DESTINO=DESTINO'
      'DATA_BAIXA=DATA_BAIXA'
      'CODCONTA_CORRENTE=CODCONTA_CORRENTE'
      'CODCONTA=CODCONTA'
      'NOME=NOME'
      'SIT=SIT'
      'banco=banco'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2')
    DataSet = qrcheque
    BCDToCurrency = False
    Left = 296
    Top = 88
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 296
    Top = 124
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrcheque: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODCLIENTE'
    OnCalcFields = qrchequeCalcFields
    SQL.Strings = (
      
        'select ch.*, cli.nome, cli.telefone1, cli.telefone2 from c000040' +
        ' ch, c000007 cli where ch.codcliente = cli.codigo')
    Params = <>
    MasterFields = 'CODIGO'
    IndexFieldNames = 'CODCLIENTE Asc'
    Left = 296
    Top = 16
    object qrchequeCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrchequeEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object qrchequeVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrchequeDATA_DEPOSITO1: TDateTimeField
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrchequeDATA_DEPOSITO2: TDateTimeField
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrchequeDATA_DEVOLUCAO1: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrchequeDATA_DEVOLUCAO2: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object qrchequeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrchequeCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrchequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 80
    end
    object qrchequeCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Size = 6
    end
    object qrchequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qrchequeCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrchequeDATA_CONTA: TDateTimeField
      FieldName = 'DATA_CONTA'
    end
    object qrchequeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object qrchequeVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrchequeDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrchequeLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object qrchequeCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrchequeOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrchequeOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrchequeCODCONTAS_PAGAR: TStringField
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object qrchequeDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrchequeDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
    end
    object qrchequeCODCONTA_CORRENTE: TStringField
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object qrchequeCODCONTA: TStringField
      FieldName = 'CODCONTA'
    end
    object qrchequeNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrchequeSIT: TStringField
      FieldKind = fkCalculated
      FieldName = 'SIT'
      Size = 30
      Calculated = True
    end
    object qrchequebanco: TStringField
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Lookup = True
    end
    object qrchequeTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrchequeTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
  end
end
