object frmsintegra_menu: Tfrmsintegra_menu
  Left = 253
  Top = 166
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'SINTEGRA'
  ClientHeight = 483
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 0
    Width = 710
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object RzGroupBox1: TRzGroupBox
    Left = 8
    Top = 185
    Width = 697
    Height = 64
    Caption = 'Dados do Informante'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Transparent = True
    object Label5: TLabel
      Left = 10
      Top = 17
      Width = 52
      Height = 13
      Caption = '&Munic'#237'pio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 266
      Top = 17
      Width = 38
      Height = 13
      Caption = '&Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 313
      Top = 17
      Width = 20
      Height = 13
      Caption = 'Fax'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 443
      Top = 17
      Width = 65
      Height = 13
      Caption = '&Data Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 572
      Top = 15
      Width = 57
      Height = 13
      Caption = 'Data &Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object edmunicipio: TRzDBEdit
      Left = 8
      Top = 31
      Width = 249
      Height = 21
      DataSource = qremitente
      DataField = 'CIDADE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit7: TRzDBEdit
      Left = 312
      Top = 30
      Width = 121
      Height = 21
      DataSource = qremitente
      DataField = 'FAX'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      MaxLength = 13
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBDateTimeEdit1: TRzDBDateTimeEdit
      Left = 440
      Top = 31
      Width = 122
      Height = 21
      DataSource = qremitente
      DataField = 'DATAHORA_INICIAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 3
      OnKeyPress = edmunicipioKeyPress
      EditType = etDate
    end
    object RzDBDateTimeEdit2: TRzDBDateTimeEdit
      Left = 568
      Top = 30
      Width = 122
      Height = 21
      DataSource = qremitente
      DataField = 'DATAHORA_FINAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edmunicipioKeyPress
      EditType = etDate
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 264
      Top = 31
      Width = 42
      Height = 21
      DataField = 'UF'
      DataSource = qremitente
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ItemHeight = 13
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edmunicipioKeyPress
      Items.Strings = (
        'SP'
        'RJ'
        'ES'
        'MG'
        'BA'
        'SE'
        'PE'
        'AL'
        'PB'
        'RN'
        'CE'
        'PI'
        'MA'
        'PA'
        'AM'
        'AP'
        'RR'
        'AC'
        'DF'
        'TO'
        'MT'
        'MS'
        'RO'
        'PR'
        'SC'
        'RS')
      Values.Strings = (
        'SP'
        'RJ'
        'ES'
        'MG'
        'BA'
        'SE'
        'PE'
        'AL'
        'PB'
        'RN'
        'CE'
        'PI'
        'MA'
        'PA'
        'AM'
        'AP'
        'RR'
        'AC'
        'DF'
        'TO'
        'MT'
        'MS'
        'RO'
        'PR'
        'SC'
        'RS')
    end
  end
  object RzGroupBox2: TRzGroupBox
    Left = 8
    Top = 257
    Width = 697
    Height = 112
    Caption = 'Dados Complementares do Informante'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Transparent = True
    object Label15: TLabel
      Left = 10
      Top = 16
      Width = 53
      Height = 13
      Caption = '&Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 386
      Top = 16
      Width = 45
      Height = 13
      Caption = 'N'#250'me&ro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 458
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Comp&lemento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 10
      Top = 56
      Width = 35
      Height = 13
      Caption = 'Bair&ro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 185
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Ce&p'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 282
      Top = 56
      Width = 45
      Height = 13
      Caption = 'Contat&o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 561
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Tele&fone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object RzDBEdit4: TRzDBEdit
      Left = 8
      Top = 30
      Width = 369
      Height = 24
      DataSource = qremitente
      DataField = 'ENDERECO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit10: TRzDBEdit
      Left = 384
      Top = 30
      Width = 65
      Height = 24
      DataSource = qremitente
      DataField = 'NUMERO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit11: TRzDBEdit
      Left = 456
      Top = 30
      Width = 233
      Height = 24
      DataSource = qremitente
      DataField = 'COMPLEMENTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit12: TRzDBEdit
      Left = 8
      Top = 70
      Width = 169
      Height = 24
      DataSource = qremitente
      DataField = 'BAIRRO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 3
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit13: TRzDBEdit
      Left = 183
      Top = 70
      Width = 93
      Height = 24
      DataSource = qremitente
      DataField = 'CEP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit14: TRzDBEdit
      Left = 280
      Top = 70
      Width = 273
      Height = 24
      DataSource = qremitente
      DataField = 'RESPONSAVEL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit15: TRzDBEdit
      Left = 559
      Top = 70
      Width = 130
      Height = 24
      DataSource = qremitente
      DataField = 'TELEFONE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      MaxLength = 13
      ParentFont = False
      TabOrder = 6
      OnKeyPress = edmunicipioKeyPress
    end
  end
  object RzGroupBox3: TRzGroupBox
    Left = 8
    Top = 369
    Width = 697
    Height = 64
    Caption = 'Dados do Invent'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Transparent = True
    object Label23: TLabel
      Left = 10
      Top = 16
      Width = 108
      Height = 13
      Caption = 'Data do In&vent'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 137
      Top = 16
      Width = 80
      Height = 13
      Caption = 'Esto&que Fisico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 304
      Top = 16
      Width = 97
      Height = 13
      Caption = 'Valor do E&stoque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object RzDBDateTimeEdit3: TRzDBDateTimeEdit
      Left = 7
      Top = 30
      Width = 122
      Height = 24
      DataSource = qremitente
      DataField = 'DATA_INVENTARIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edmunicipioKeyPress
      EditType = etDate
    end
    object RzDBEdit16: TRzDBEdit
      Left = 135
      Top = 30
      Width = 162
      Height = 24
      DataSource = qremitente
      DataField = 'ESTOQUE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edmunicipioKeyPress
    end
    object RzDBEdit17: TRzDBEdit
      Left = 303
      Top = 30
      Width = 162
      Height = 24
      DataSource = qremitente
      DataField = 'VALOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      FrameHotTrack = True
      FrameHotStyle = fsFlat
      FrameVisible = True
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edmunicipioKeyPress
    end
  end
  object btretorna: TBitBtn
    Left = 624
    Top = 440
    Width = 81
    Height = 28
    Caption = '&Sair'
    TabOrder = 6
    OnClick = btretornaClick
    OnKeyPress = edmunicipioKeyPress
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
  object btgerar: TBitBtn
    Left = 8
    Top = 440
    Width = 94
    Height = 28
    Caption = 'Ge&rar'
    TabOrder = 4
    OnClick = btgerarClick
    OnKeyPress = edmunicipioKeyPress
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      7B411F7F4B286F3C256537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F27B3825CF0EDEAFFFFFFF7F5F4BCA48F6537266136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232A6602EEAE5DEF8F6F5A36C43CFBC
      A8FFFFFF9F7C5E663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
      35A66031A25C2D975129BA8F6EFFFFFFC1A7916F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BB6733CE3CAADECE7E0D8AF8DE7E0D8FFFFFFAC82607B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EE6D2B9FFFFFFDF
      C6A9DFCDB9C4966F904B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241E6C096FFFFFFDEB58ED5A77DD0A37CA66637904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542DFAC75FFFFFFFFFFFFFFFFFFFFFFFF
      BC835398512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EC07F40
      C38343BE7D42B97840B5723EA862309F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object btcancelar: TBitBtn
    Left = 104
    Top = 440
    Width = 94
    Height = 28
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = btcancelarClick
    OnKeyPress = edmunicipioKeyPress
    Glyph.Data = {
      DA050000424DDA05000000000000360000002800000019000000130000000100
      180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
      DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
      E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
      441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
      5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
      6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
      723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
      7940207944227240246537266035275E35275E3527613626EBDFDD8F4539FFFF
      FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
      A25B2D9C552B954F2797552ADBD0C3FCFCFCFCFCFCCCBEAD6B3D246136255E35
      26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
      D1975CFFFFFFEEE8E1B06C39AC6737A86232A25B2DDAC4ABFFFFFFB58965C3A4
      89FFFFFFAB8C71663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
      ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
      35F1EDE9FEFDFD9C582BAB764FFFFFFFC5AF9B6F3C236A3A25693925EBDFDD8F
      4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
      FFFFFFFFFFFFFFE6C29BBA783FFFFFFFFFFFFFDEC8B0E3D9CEFFFFFFAD825F7B
      4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
      3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EFAF9F7FAF8F7D6
      A67BDDC7AEC2946D904B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
      FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
      B37CC38241E7D1B7FFFFFFC68950D2A176D9BDA0AF7343904B228A471E86451C
      ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542CA8C4AECE2D6FFFFFFFFFFFFE5D9CB
      A5602F98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
      8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
      BA783DC38448BC7C44AB6634A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
      FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
      C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
      2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
      CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
      3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
      EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
      DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
      4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
      398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
      45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
  end
  object RzGroupBox5: TRzGroupBox
    Left = 8
    Top = 1
    Width = 697
    Height = 184
    Caption = 'Informante'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Transparent = True
    object cxGrid2: TcxGrid
      Left = 1
      Top = 17
      Width = 695
      Height = 166
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        OnKeyPress = cxGridDBTableView1KeyPress
        DataController.DataSource = dsempresa
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'VALOR_MERCADORIAS'
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'VALOR_CONTABIL'
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'vl_total'
          end
          item
            Format = '0.00'
            Kind = skSum
            FieldName = 'subtotal'
          end>
        DataController.Summary.SummaryGroups = <>
        NavigatorButtons.ConfirmDelete = False
        OptionsCustomize.ColumnGrouping = False
        OptionsSelection.CellSelect = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        object cxGridDBTableView1CODIGO: TcxGridDBColumn
          Caption = 'C'#211'DIGO'
          DataBinding.FieldName = 'CODIGO'
          Options.Filtering = False
          Width = 58
        end
        object cxGridDBTableView1EMPRESA: TcxGridDBColumn
          Caption = 'RAZ'#195'O SOCIAL'
          DataBinding.FieldName = 'FILIAL'
          Options.Filtering = False
          Width = 355
        end
        object cxGridDBTableView1CNPJ: TcxGridDBColumn
          DataBinding.FieldName = 'CNPJ'
          Options.Filtering = False
          Width = 149
        end
        object cxGridDBTableView1IE: TcxGridDBColumn
          DataBinding.FieldName = 'IE'
          Options.Filtering = False
          Width = 131
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object qremitente: TDataSource
    DataSet = frmmodulo.qremitente
    OnDataChange = qremitenteDataChange
    Left = 600
    Top = 184
  end
  object dsempresa: TwwDataSource
    DataSet = frmmodulo.qrFilial
    Left = 640
    Top = 184
  end
end
