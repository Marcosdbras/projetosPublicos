object frmconvenio_pgto: Tfrmconvenio_pgto
  Left = 456
  Top = 277
  Width = 313
  Height = 292
  Caption = 'CONV'#202'NIO | Recebimento'
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
    Top = 124
    Width = 305
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object ViewSplit3: TViewSplit
    Left = 0
    Top = 218
    Width = 305
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object ViewSplit2: TViewSplit
    Left = 0
    Top = 167
    Width = 305
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 124
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label1: TLabel
      Left = 23
      Top = 6
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'L'#205'QUIDO:'
    end
    object Label2: TLabel
      Left = 23
      Top = 32
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DESCONTO:'
    end
    object Label3: TLabel
      Left = 23
      Top = 80
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'JUROS:'
    end
    object Label4: TLabel
      Left = 23
      Top = 106
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TOTAL:'
    end
    object Label15: TLabel
      Left = 23
      Top = 56
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DIAS A MAIS:'
    end
    object Label16: TLabel
      Left = 179
      Top = 31
      Width = 13
      Height = 16
      Caption = '%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object rdesconto2: TRxCalcEdit
      Left = 194
      Top = 28
      Width = 95
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnEnter = rdesconto1Enter
      OnExit = rdesconto2Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object rjuros: TRxCalcEdit
      Left = 192
      Top = 76
      Width = 98
      Height = 21
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
      TabOrder = 3
      OnEnter = rjurosEnter
      OnExit = rjurosExit
      OnKeyPress = rjurosKeyPress
    end
    object rdesconto1: TRxCalcEdit
      Left = 124
      Top = 28
      Width = 53
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnEnter = rdesconto1Enter
      OnExit = rdesconto1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object Panel1: TPanel
      Left = 109
      Top = 3
      Width = 185
      Height = 22
      BevelOuter = bvNone
      Color = clWindow
      Enabled = False
      TabOrder = 4
      object rliquido: TRxCalcEdit
        Left = 15
        Top = 1
        Width = 165
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 120
      Top = 99
      Width = 185
      Height = 23
      BevelOuter = bvNone
      Color = clWindow
      Enabled = False
      TabOrder = 5
      object rtotal: TRxCalcEdit
        Left = 4
        Top = 1
        Width = 165
        Height = 21
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
    object rdias: TRxCalcEdit
      Left = 124
      Top = 52
      Width = 166
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnEnter = rdesconto1Enter
      OnExit = rdiasExit
      OnKeyPress = rdiasKeyPress
    end
    object BitBtn2: TBitBtn
      Left = 124
      Top = 73
      Width = 67
      Height = 25
      Caption = 'Zerar'
      TabOrder = 6
      OnClick = BitBtn2Click
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
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
        A25B2D9C552B954F278E4923DBD0C3FFFFFF8653306B3A256437266136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
        D1975CFFFFFFEEE8E1B06C39AC6737A86232A25B2D9B5429CDA687FFFFFFA477
        53753E236D3B25663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DAE69
        35A66031BC8353FFFFFFCAAB9082431D783F226F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
        FFFFFFFFFFFFFFE6C29BB6733CAF6B39AB6633E4D9CBF6F4F295522983441C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EB7743CB16D39BF
        804AFEFEFDD1AB8A8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
        B37CC58544E6BE94E2BB92E0B993EEEAE4FFFFFFBC8960904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCB8C48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D8B69898512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803FC68647
        C38343BE7D42B97840B5723EAB67339F582D9B5429985128EBE0DE8F4539FFFF
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
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 127
    Width = 305
    Height = 40
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alTop
    TabOrder = 1
    UseDockManager = True
    object Label10: TLabel
      Left = 8
      Top = 13
      Width = 92
      Height = 13
      Caption = 'Para cr'#233'dito no:'
    end
    object ecaixa: TShape
      Left = 117
      Top = 2
      Width = 69
      Height = 18
      Brush.Color = clWindow
      Pen.Color = clRed
      Visible = False
    end
    object ebanco: TShape
      Left = 117
      Top = 19
      Width = 69
      Height = 18
      Brush.Color = clWindow
      Pen.Color = clRed
      Visible = False
    end
    object rcaixa: TRadioButton
      Left = 120
      Top = 4
      Width = 61
      Height = 15
      Caption = 'Caixa'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rcaixaClick
      OnEnter = rcaixaEnter
      OnExit = rcaixaExit
      OnKeyPress = rcaixaKeyPress
    end
    object rbanco: TRadioButton
      Left = 120
      Top = 21
      Width = 61
      Height = 15
      Caption = 'Banco'
      TabOrder = 1
      OnClick = rbancoClick
      OnEnter = rbancoEnter
      OnExit = rbancoExit
      OnKeyPress = rbancoKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 208
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Recibo'
      TabOrder = 2
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 221
    Width = 305
    Height = 44
    Align = alBottom
    TabOrder = 2
    object bgravar: TBitBtn
      Left = 33
      Top = 11
      Width = 113
      Height = 25
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = bgravarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0EEE08FBF913A8C3E24
        79282476283A843E8FB991E0EBE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB5D9B6308E34419F5186C9999AD2AA9AD1AA82C6953C964B307B33B4D0
        B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5DBBA248E296CBD82A7DAB486CB9765
        BB7C63B97B85CA97A4D8B365B67C237126B4D0B6FFFFFFFFFFFFFFFFFFE1F2E4
        32A04371C186A7DAB15FBB765BB97258B76F58B46E57B46E5AB673A4D8B268B7
        7E307F34E0ECE1FFFFFFFFFFFF8FD29F4BAF63A9DCB363C0785EBD7074C484D3
        EBD889CC9855B56B57B46D5BB673A5D9B3409A4D8EBB90FFFFFFFFFFFF3EB45C
        90D19E8CD39963C27378C886F1F9F3FEFEFEFCFDFC85CA9556B66C5AB87184CB
        9686C6993A8A3EFFFFFFFFFFFF26AF48A5DBAE6FC97E72C97FEFF8F0FEFEFEEA
        F6ECFEFEFEFAFCFB87CC955AB87066BD7C9FD6AE227E25FFFFFFFFFFFF2DB650
        A6DCB071CB7F65C672AFE0B6D1EDD562C06FB7E2BEFEFEFEFAFCFB8BCF9868C0
        7DA0D6AD228325FFFFFFFFFFFF4AC46B94D6A090D69A68C87563C56E60C36D60
        C26E60C16EB8E3BFFEFEFEE2F3E58AD0988ACD9C3B983FFFFFFFFFFFFF9ADEAC
        56BE6FAEE0B66CCB7967C77164C66F62C46D61C36D62C370B5E2BD6EC67DABDE
        B447A85D8EC793FFFFFFFFFFFFE4F7E948C4657ECD8FADE0B46CCB7969C97567
        C77167C77367C7746AC878ABDEB375C38832A042E1F1E3FFFFFFFFFFFFFFFFFF
        BFECCA3CC25B7ECD8FAEE0B691D79C76CD8276CD8291D79CADE0B477C78A26A0
        3AB5DFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0ECCB49C76858C17395D6A2A4
        DBADA4DBAD94D5A04FB86934B254B6E3C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE5F7E99EE2B054CA713ABF5B36BD5948C26A97DBAAE1F5E7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object bcancelar: TBitBtn
      Left = 161
      Top = 11
      Width = 113
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
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
  end
  object FlatPanel3: TFlatPanel
    Left = 0
    Top = 170
    Width = 305
    Height = 40
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alTop
    TabOrder = 3
    UseDockManager = True
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 127
      Height = 13
      Caption = 'Forma de Pagamento:'
    end
    object comboforma: TComboBox
      Left = 144
      Top = 12
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'DINHEIRO'
      OnKeyPress = comboformaKeyPress
      Items.Strings = (
        'DINHEIRO'
        'CHEQUE A VISTA'
        'CHEQUE A PRAZO'
        'CARTAO'
        'DEPOSITO')
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 68
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ZerarJuros1: TMenuItem
      Caption = 'Zerar Juros'
      ShortCut = 118
      OnClick = BitBtn2Click
    end
  end
  object qrcontasreceber_pgto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 48
    Top = 72
  end
end
