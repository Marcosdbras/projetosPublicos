object frmvenda_fechamento: Tfrmvenda_fechamento
  Left = 378
  Top = 133
  BorderStyle = bsToolWindow
  Caption = 'PEDIDO DE VENDA | Fechamento'
  ClientHeight = 429
  ClientWidth = 409
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
  object Bevel1: TBevel
    Left = 0
    Top = 116
    Width = 409
    Height = 3
    Align = alTop
  end
  object Shape6: TShape
    Left = 6
    Top = 259
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Shape1: TShape
    Left = 6
    Top = 139
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Shape2: TShape
    Left = 6
    Top = 163
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Shape3: TShape
    Left = 6
    Top = 187
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Shape4: TShape
    Left = 6
    Top = 211
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Shape5: TShape
    Left = 6
    Top = 235
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Label5: TLabel
    Left = 14
    Top = 144
    Width = 80
    Height = 13
    Caption = 'Dinheiro/Outros:'
    Transparent = True
  end
  object Label6: TLabel
    Left = 14
    Top = 168
    Width = 76
    Height = 13
    Caption = 'Cheque '#224' Vista:'
    Transparent = True
  end
  object Label7: TLabel
    Left = 14
    Top = 192
    Width = 80
    Height = 13
    Caption = 'Cheque '#224' Prazo:'
    Transparent = True
  end
  object Label8: TLabel
    Left = 14
    Top = 216
    Width = 90
    Height = 13
    Caption = 'Cart'#227'o de Cr'#233'dito:'
    Transparent = True
  end
  object Label9: TLabel
    Left = 14
    Top = 240
    Width = 86
    Height = 13
    Caption = 'Cart'#227'o de D'#233'bito:'
    Transparent = True
  end
  object Label10: TLabel
    Left = 14
    Top = 264
    Width = 47
    Height = 13
    Caption = 'Credi'#225'rio:'
    Transparent = True
  end
  object edinheiro: TShape
    Left = 150
    Top = 139
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object echequeav: TShape
    Left = 150
    Top = 163
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object echequeap: TShape
    Left = 150
    Top = 187
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object ecartaocred: TShape
    Left = 150
    Top = 211
    Width = 250
    Height = 29
    Pen.Color = 8623776
  end
  object ecartaodeb: TShape
    Left = 150
    Top = 235
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object ecrediario: TShape
    Left = 150
    Top = 259
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object Shape13: TShape
    Left = 6
    Top = 125
    Width = 145
    Height = 15
    Brush.Color = 16053492
    Pen.Color = 8623776
  end
  object Shape14: TShape
    Left = 150
    Top = 125
    Width = 250
    Height = 15
    Brush.Color = 16053492
    Pen.Color = 8623776
  end
  object Label11: TLabel
    Left = 14
    Top = 127
    Width = 28
    Height = 12
    Caption = 'TIPO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 238
    Top = 127
    Width = 57
    Height = 12
    Caption = 'VALOR-R$'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape7: TShape
    Left = 6
    Top = 283
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Label15: TLabel
    Left = 14
    Top = 288
    Width = 49
    Height = 13
    Caption = 'Conv'#234'nio:'
    Transparent = True
  end
  object econvenio: TShape
    Left = 150
    Top = 283
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object Bevel2: TBevel
    Left = 0
    Top = 396
    Width = 409
    Height = 3
    Align = alBottom
  end
  object Shape8: TShape
    Left = 6
    Top = 307
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Label22: TLabel
    Left = 14
    Top = 312
    Width = 53
    Height = 13
    Caption = 'Financeira:'
    Transparent = True
  end
  object efinanceira: TShape
    Left = 150
    Top = 307
    Width = 250
    Height = 25
    Pen.Color = 8623776
  end
  object lb_credito: TLabel
    Left = 240
    Top = 216
    Width = 25
    Height = 13
    Caption = 'parc:'
    Transparent = True
  end
  object lb_debito: TLabel
    Left = 240
    Top = 240
    Width = 25
    Height = 13
    Caption = 'parc:'
    Transparent = True
  end
  object pconvenio: TFlatPanel
    Left = 424
    Top = 170
    Width = 419
    Height = 175
    Color = clWindow
    Visible = False
    TabOrder = 0
    UseDockManager = True
    object HeaderView3: THeaderView
      Left = 2
      Top = 2
      Width = 415
      Height = 14
      AdaptiveColors = False
      BorderStyle = bsNone
      Color = clRed
      HeaderColor = clGreen
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindow
      HeaderFont.Height = -11
      HeaderFont.Name = 'Verdana'
      HeaderFont.Style = [fsBold]
      HeaderSize = 21
      ParentColor = False
      object Label16: TLabel
        Left = 168
        Top = 1
        Width = 68
        Height = 12
        Caption = '  CONV'#202'NIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
    object FlatPanel7: TFlatPanel
      Left = 0
      Top = 17
      Width = 419
      Height = 158
      ParentColor = True
      TabOrder = 1
      UseDockManager = True
      object Label17: TLabel
        Left = 8
        Top = 16
        Width = 89
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'CLIENTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 8
        Top = 40
        Width = 89
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'RETIRADO POR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object econvenio_codcliente: TEdit
        Left = 104
        Top = 12
        Width = 57
        Height = 21
        TabOrder = 0
        OnEnter = econvenio_codclienteEnter
        OnExit = econvenio_codclienteExit
        OnKeyPress = econvenio_codclienteKeyPress
      end
      object bconvenio_cliente: TBitBtn
        Left = 161
        Top = 11
        Width = 25
        Height = 22
        TabOrder = 1
        OnClick = bconvenio_clienteClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
          9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
          C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
          A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
          E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
          F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
          DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
          F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
          D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
          F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
          DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
          F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
          E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object econvenio_cliente: TEdit
        Left = 187
        Top = 12
        Width = 222
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object convenio_combo: TwwDBComboBox
        Left = 104
        Top = 36
        Width = 305
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        AutoDropDown = True
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'O MESMO')
        ItemIndex = 0
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
        OnExit = convenio_comboExit
      end
      object FlatPanel4: TFlatPanel
        Left = 1
        Top = 64
        Width = 415
        Height = 81
        ParentColor = True
        Enabled = False
        ColorHighLight = clWindow
        ColorShadow = clWindow
        TabOrder = 4
        UseDockManager = True
        object Label19: TLabel
          Left = 31
          Top = 16
          Width = 65
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CONV'#202'NIO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 7
          Top = 40
          Width = 89
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DESCONTO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 167
          Top = 44
          Width = 106
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL L'#205'QUIDO:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object econvenio_codconvenio: TEdit
          Left = 103
          Top = 12
          Width = 57
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object econvenio_convenio: TEdit
          Left = 159
          Top = 12
          Width = 249
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object rconvenio_desconto: TRxCalcEdit
          Left = 103
          Top = 36
          Width = 57
          Height = 21
          AutoSize = False
          DisplayFormat = '###,###,##0.00%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
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
          ButtonWidth = 0
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 2
        end
        object rconvenio_liquido: TRxCalcEdit
          Left = 279
          Top = 36
          Width = 130
          Height = 26
          AutoSize = False
          Color = clRed
          DisplayFormat = '###,###,##0.00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
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
          ButtonWidth = 0
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 3
        end
      end
    end
  end
  object Button1: TButton
    Left = 96
    Top = 488
    Width = 75
    Height = 25
    Caption = 'DUPLICATA'
    TabOrder = 1
    Visible = False
    OnClick = Button1Click
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 116
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label2: TLabel
      Left = 141
      Top = 39
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desconto:'
    end
    object Label3: TLabel
      Left = 141
      Top = 64
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Acr'#233'scimo:'
    end
    object Label4: TLabel
      Left = 141
      Top = 89
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total:'
    end
    object Label1: TLabel
      Left = 134
      Top = 12
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Subtotal:'
    end
    object Bevel3: TBevel
      Left = 56
      Top = 7
      Width = 2
      Height = 104
    end
    object AdvShapeButton1: TAdvShapeButton
      Left = 0
      Top = 24
      Width = 57
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
        870000000473424954080808087C086488000000097048597300000AF000000A
        F00142AC34980000001F74455874536F667477617265004D6163726F6D656469
        612046697265776F726B732038B568D27800000F25494441546881ED9A79749C
        D579879F6F9D7D46FB2ED99664D9B22D1C648C596CD7C6890B842C10B7D90369
        9626A490509A343D598E4FD3254D9BD3A425CBC9760861090D398100AE8B630C
        D8061B3B36B6842DD9962C4BD63AA319CDF6EDDF77FB8792364E108186869373
        F89D33FFDDB9F7F7DCFBDEF7DEF7CE484208FE9025BFDA067E57BD06F06AEB35
        80575BAF01BCDAFA8307505F4EE307EE7BA875DBD45B64CE50E03ECAE4F01004
        FFA7912554DE48885EC2E53AA2E5CA52AC10CB374C05E3F6FA1B2E7DE6A576F3
        B200ECB075C775975D734D6163B118BD31542690ECE0803015A195535E85D562
        B5998BADCEE2226B71294AA46045CC8213B17D2924551E379E6B984ACC54ADAF
        B93C298220E99C72A281E4877DC98BA0100E2411327583AAC9DAC2655B2F6D50
        1FC37CC501D0701F4DEDD4285185A08A4A68B2ABA9F2EA98D027389B1CE2943E
        C04A6D050D913A022DC0920C2459A62066D861FC98A33CC9F515DB505071848D
        2995C928694C4C841CB0D4EC49CE5C97EF6822D5FF522C29DBB76FFFEDAD6EA5
        8A73749F8B9C7F472E48B7541995D42B8DD4886A3CDD231FCA918FCC90D3A631
        E5227E60E2962CAAD56A96C8ED34D14483D5C8D56CA5942E71ECDC117AD54B68
        749BA930AAA8351A906409432AA3A153B2CC557DFD034DEAA1706DF260A5FEF0
        E8C385EEEE65DE0B59935EF03227A1F055D67E6BD1773FF54CF5339D63E1E196
        516DB8F274F41C28504108DDD7A8B492543829A25602D99668D09B891A214E3F
        7B941367062845E0863FBD8195D5ABE94C2EC3C5C5F75D9E98D94D7FF638EFEE
        BC91945685EFBBC8289C4A9D24907DCE8FCE7077F25E6AAD4AD616D7F1A1F15B
        DEFFD66DD7DEF942001784D063F73EF1FAA31587FF66F7819F2DF64479518F79
        B17267FD77210348207BB0717A0D212782E3BA38BE838F47411489490990616E
        6E960EBD9DB6556DDCB5EB3176EFFA29C6669B9353FD5CD6B09E542CC5A69A2D
        D8B6C35D27BEC7FB977F98881AC5F51C5AF26D9CA918A4852690215D9D634778
        27EF9BFA4864A1E0B8208DAE332F0D7657EDB86A57E2BFDAA34E4C6975164169
        BE956EC096B35762E61D66CD2C45B780E55BB88E8767BB841C9D72BE8CD0542A
        AB6B09EB11DEBE690335917AACBCC978668207FB7F44FF581F9EEFB1A56E2B35
        721D77F77F1FCF76F17C0FD5D2505C95C6A0898EE93AB0010B90C48299EE0280
        D407A28FF794579F5F54AC014D6257FC51DA9D46A88255E632F2560EC776F04D
        17C770714A0E66D9C62E39D82507B368922DE6E92B0F30911D235D98A239DE8C
        55B4B14B1656D9E1F193BBD835B813DF0F7853DBF5144B451E3EFD109A08E139
        2E092B0EE180D5D36BE727CF87B0147616025001EEFDCE8F42D164F4AA4013ED
        ABB5B5E21B155FA1BA50C9BED46ED6E4AE6458FA09DEAC8FE5DB880010822010
        F89E00DFC70D5CE6823CC8E0F82EAA24B3B8B296B011A5ABB29BAC39CBB03BC9
        AC57449514F69CDC4DD928F3D615DBB87EF136BEF9F33B581269A7A7F6228425
        F0548F8813990FDD04AC762ECA2E04A06CDFBE1D658F1A7DB6F9C0E10F76DDF4
        6629B0538EE352EF36D2173BC67BD4F7B35FD945FD6C13A54289B269E0DB3EAE
        E5E2592EAEEDE1591EA663A0591A966993B435362FDDC45FDEF00586A60798CC
        8CD210AAE57C6106CB76317D8393E91368B2CA65AD576059163B07FF93358D97
        22749F90AE313936CD71F979B408E863B1D577FFEC9E4BFBF70CAC3CFAF8B1F8
        659BD69EB9600556DCBEAC78E8D1C34F61B375A7FB286F0A6E6084616A4A0DE4
        E219AED5DE8CA8F3E9104B393D37C8586E9420085050117E8010022FF098F427
        897B4966E5808253C2B48BB89E8DA22884149988AB9136B2189A858ACA43471F
        A42654CFD68E6B3874F6103BFA1E61D3864D14FC32B22B83039DCE22BED8F877
        DD348A6E5C78C3F81F4F5F2CAD6ADC28368A0BF6C045E5DE2717BB0D984DB028
        58CCA83FC24AB387FDEE5E3ADDE50C2B43A4A414ABAB2F665DC31544FD18C57C
        01D3B0310D1BD770C91905D2C60CD3B92CF7EDFD299FB9EB331C38F973CE4F67
        787E6C84E95C86AC3D8B6D5AF88EC07302EE3B780FD97296B7745FCFBEA1BDF4
        DBC7892A11144F0117DACC252CCF75810244613474AEBC918DD2052B00B0CAEB
        DEB3AEB89E11FD01AA820A1CCFA55E6AE4B075807729379209A539171FA17AA6
        962AAAB9A26503C7478F3138358422812BCF4F87ADDAE4C33653528E9313C3F3
        9D07C02F8F9B00A2B64C808FACC8A48B05EEDF7F2FB7ACBF8D50B3CEFD871FE2
        F2F51B90850C12348916DA661633A00E421C9440BBE0E0FA1F00CDE468AFBD76
        EAFEF2030D69678A76BF93BC94252805F861975ABB8ED1D430737296483E4AE0
        40535713669DC18833495DB2929668334D7A33557215612984828A2F091C2CD2
        A439639E61706E18632E98CF30C6BC83A35327B8BB7C271BD76EE2911D8FB16F
        E95E52C938F810F1131814611A0841C8571D092910BF9891FF3DC83E80B5E691
        4BF663F1B6C7AC1D6C54DFC001771FEDA28333CE295A68E3A0F1345A38446DB2
        816E6D052DA205DDD539377D8EC9B909A6662799704739E9F661D92E8117A021
        1357132C092FE1C6EAF7D0D37A3185AE027B8C3D3C671EA1E8E6C9890263EE18
        9F6DDA8EB259A6D75BC3B395FB6016AAD50A725A7A3E23558316E8A55FBD3D5C
        7012AF947A76F53A3D6F3BE2F5F14196F12DFBDBBC4DB99E13461F7F5E730BBD
        DA5A34A1733637CCE19943DC6FFF90B9208BAE87A90855501BAFA3516D61A9D2
        8D22A90829C0142653DE1407CA877834B71BD27079ED257CAAF593BC23FA76EE
        2FFC0779B744321DE7E0DE4344B514DFC97D9BE1FC1834805C371F819205C280
        B81FCFBD60080134E8B54F6D74368B234A9F94D3337C5CBD95566D119FC8DC8E
        E9381C2D1EC5761DDA58C4D270275747AE21E46A9886457E324FD12852B40AE4
        FD1C4212F852402C1CA73DBE840D951BA869A9A31829D067F5F3D5D93BD818B9
        8A2BA31BF8897517BB520F1209201F7299F48039581C5E41D6CD2123210CC087
        5AAF666A41009A19BC78A477089FCE7FF6BFC8A5F92B698FB5739DBE954C3ECB
        35F21B313148BB339C283FCF3EFF291CC542D3C2E8F52154540401B3F62C4E19
        28FCE2930106415660696C31B54D0DB477B5B06D4937AB523A37EAB7827F1314
        8BE0CE50308778BAF620234E2B8F58E7A9A162FE4AE14243D038BA30C00A8295
        E32B9F8E0BB9B3341BF084B79F6794FD5C9BB88EB01EE6AC37426BA499E58915
        F4CABD44DD18F16292C0F4F0029F99E234B3768648758C684B142926715E8C73
        B87488C9729AA00C83EE0883A9113EB3EC667A2A7C083218B339068E14F18AA3
        689CA6BE7A8075C2669D3384A7D67198B7CEA75101ED62C999850180CEF092FD
        57A87FF4BEC7D43D5C9E5AC312B98365EE32C6AD09124E8261E52CAAA2F06F85
        6F820F148132E812C4B418B942995831C2AACC4AD6272EE7A6E4FB78B7F24E72
        5A8E426D018B80553521AE6E580AF969027304636604637A9C42DE275E5D4542
        E9C0D7B3C86A910D6E8E53F890020C787D6CD3C08B020C7A03873E5E79DB91BF
        8FFFC3D19DE95DEFFD5CFEF3FA4DB3EFE4CEE03E368536F094B68F4FD4FF0538
        50AD45E9A8EF6489DA49B55B83513298922619489FE448E13007DDC37CD9FBF7
        F95DF8CBFBA402A4E1F887FF9A9ECB15E46C1FE5E9B3E48B3A7AF5326C45C3F3
        46896A591CD7A07836466D721A7468F35B4B2BAA2E1AFA55BFBF51D0B43D1067
        745B0980DBFEE9137D5FE1ABAB2E2A2DC7945D14456582F37C7CD1ADCC7AB364
        9C2C670A439C499FA660964085A41EA531DC44BD524F428EA3F93ABE00473808
        194454608DCFE13E709877DDB09C2B5639D4A66651C3094C16A389518CA24526
        1D3036564383EA73B339C8401EB6ACBEEAD8CF3EB5FB752FBA02BF340F7089DE
        BB178B55C7B5013E1DBE1DE10B1E721FE60B83FF08CA7C81D32AB7725174159A
        AE52368B4CE6A719991862307B667EE3695011072502B20C22D0102246C80CF8
        FAF74EB077698AF69608F5352A15F12C32095C2789F0211E2DA34504670B4014
        96AB5DC77FDDEF8B16F5CB425D8FAF367A3E7ACCEAE38BEE9789E4556E6EBB19
        D557898B18254ACCD8699EF59F259003C25A84444D82AA9A16AF735D4CB9A6AB
        53BAB6B197AE44056101AE5DA2608ED13F3AC0D98E51F63E39C5745A503424C2
        051FD9B7884715C2BA8FA2788840613C9BE0634D5BC470A24AEA523A7FFEB200
        7A63BD077B8A3DEE31B34F230053F3B8A7701F15728AB264D01C6F9EDE18DE70
        AA3DD4716A49A8ED54A3DA3C1AF72BD35D6B276F0FD53B57A338E0E6C80CCF31
        3296C133CE1356CED15B31C0EBD6E4D9BADCE1A1276C9E1B8C22080810048184
        EB85B11D194516689A23AEB55BDEBBA6EB8EA33BF23F9EFC758F2F5CD4FF8AFE
        F65F3F3FF4A5CCBFB42FD3BA581D593DD2A0D63FB3367AC9BECD898D072B1637
        0CB29ED285DF3850437A781CD3D103274B600E71E6E81823A74BC85299AAEA02
        F54D590201C27708A973EC7C42E6D4B9566A531A898886AE818440A0A3CAD2F8
        97BE7EACE5D8023E7FEBBB50835AF78D1FB4DCA96F496CDE99DC52DB4F230B96
        7700B7FDD9671BFFEA236FD49B5B03BC99E7700A43CC4C3A78BEC093EAB04BAB
        A9940EA349D34892C16C2E4A47A3C144DA45D724645941041A8190D13441482F
        7B5FFB5C830ABC8C6795DF419224453EF9AEEEA1375CD9DAB8A9C700EF3C5353
        65C6679284AA9751151F456306A3EC303519C12E18640A3EA727123457870829
        32921CA0483E4268F8416234164A76BEE5CB4FB92F34DECB7B997B096A6F8A78
        8D158EF7F8EEE3DC7377898B97C7E96C0DA8AA28E396CE333A6393CFA5281664
        846713D6533CDD5F40564A54C535F4A88AE729D87E1C848EA6CA7A323AB7E078
        AF38006553FAE18343D2962BEA58DE11E7ECB8C7F06898A816251E094844A384
        3581A20640024198CCDC048EE7938CA8C84451651524812A81E72B2343337FE2
        6DFE7D012C5D9464365D90F73C9DA1AD214E4773888A844F542F13521D34559F
        8FF14045967C544560DA3E25D3A6503249C57412110549C87842DBE57A910F7D
        F4CECF2D18E7AF38404BB2D2CBA40BBEAAC818A6CFF8B4A05CD6A94C8648C542
        44340D5991909010A80401CC95BC1DE7663C3F1A3294482839A948DA0959D29F
        BCE5077B7F23EFFFBF037C67EF48D09D923EAD2782EF23A12281240142260864
        04F3E6254942916078B2B063CF887D0B3037F4FCDC82EF3FBF3700809379716F
        4FA5D4178F888F791E5B84A05540480042206C978C6DBBC7CECEE47EF4B53D43
        0F00A610E225FD1EF0EB7AC5D3E86F0C20D5C9EFBE24DA9C8C6BD5B190A62A92
        5A7CF0E9E1E9817C69E1D4F272FA7FEDBF12AFB25E0378B5F5DF92384393E95E
        D24F0000000049454E44AE426082}
      ParentFont = False
      TabOrder = 7
      Version = '5.0.0.0'
    end
    object rdesconto2: TRxCalcEdit
      Left = 307
      Top = 35
      Width = 95
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnEnter = rdesconto1Enter
      OnExit = rdesconto2Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object racrescimo2: TRxCalcEdit
      Left = 307
      Top = 60
      Width = 95
      Height = 21
      AutoSize = False
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnEnter = rdesconto1Enter
      OnExit = racrescimo2Exit
      OnKeyPress = racrescimo2KeyPress
    end
    object rdesconto1: TRxCalcEdit
      Left = 237
      Top = 35
      Width = 69
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnEnter = rdesconto1Enter
      OnExit = rdesconto1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object racrescimo1: TRxCalcEdit
      Left = 237
      Top = 60
      Width = 69
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '###,###,##0.00%'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
      OnEnter = rdesconto1Enter
      OnExit = racrescimo1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object Panel1: TPanel
      Left = 230
      Top = 9
      Width = 185
      Height = 22
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 4
      object rsubtotal: TRxCalcEdit
        Left = 7
        Top = 1
        Width = 165
        Height = 21
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 233
      Top = 84
      Width = 185
      Height = 23
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 5
      object rtotal: TRxCalcEdit
        Left = 4
        Top = 1
        Width = 165
        Height = 22
        AutoSize = False
        DisplayFormat = '###,###,##0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ButtonWidth = 0
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 0
      end
    end
    object bduplicata: TButton
      Left = 64
      Top = 46
      Width = 75
      Height = 25
      Caption = 'duplicata'
      TabOrder = 6
      Visible = False
      OnClick = bduplicataClick
    end
  end
  object rdinheiro: TRxCalcEdit
    Left = 271
    Top = 142
    Width = 121
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnEnter = rdinheiroEnter
    OnExit = rdinheiroExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rchequeav: TRxCalcEdit
    Left = 271
    Top = 166
    Width = 121
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    ClickKey = 0
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 4
    OnEnter = rchequeavEnter
    OnExit = rchequeavExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rchequeap: TRxCalcEdit
    Left = 271
    Top = 190
    Width = 121
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    ClickKey = 0
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    OnEnter = rchequeapEnter
    OnExit = rchequeapExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcartaocred: TRxCalcEdit
    Left = 312
    Top = 214
    Width = 80
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 8
    OnEnter = rcartaocredEnter
    OnExit = rcartaocredExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcartaodeb: TRxCalcEdit
    Left = 312
    Top = 238
    Width = 80
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 11
    OnEnter = rcartaodebEnter
    OnExit = rcartaodebExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcrediario: TRxCalcEdit
    Left = 271
    Top = 262
    Width = 121
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 12
    OnEnter = rcrediarioEnter
    OnExit = rcrediarioExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rconvenio: TRxCalcEdit
    Left = 271
    Top = 286
    Width = 121
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 13
    OnEnter = rconvenioEnter
    OnExit = rconvenioExit
    OnKeyPress = rconvenioKeyPress
  end
  object Panel4: TPanel
    Left = 0
    Top = 399
    Width = 409
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 14
    object bgravar: TAdvGlowButton
      Left = 6
      Top = 2
      Width = 106
      Height = 24
      Caption = 'F5 | Confirmar'
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
      Left = 296
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
    object bitbtn1: TAdvGlowButton
      Left = 115
      Top = 2
      Width = 89
      Height = 24
      Caption = 'F8 | Obs.'
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
        650041646F626520496D616765526561647971C9653C000002DF4944415478DA
        62FCFFFF3F03250020805840C4FF07DBFFFFF9FC86E1FFFF5F0CFFFFFC66F8FF
        1788FF80D83F81EC9F0C0CBF7F30FCFDF303C8FF0E66F3072D62841900104010
        03FEFE6160D589C0301DE438B04A987220FFFDEA48143500010436E0E787A70C
        9C40D5FFFF7D8788328234FF0333FE33204C60646267F8FFFB3B8A0100010471
        C19F3F0CFF7EBD60F8F3F92403C3BF9F60AF80E97F201AE87430FECEC02612C8
        F0EFF7371403000208EA05A03F19FE801502AD806A42D60CC2DF18BEBF3AC3F0
        965D82E1C3A6B6FF5FDF1C6460FCF1341E2080C006FCF9F216E264149BBF33FC
        031908B5FDD7A7FB0C3F3F723148E8C630F02B1A327CB8AFCE7063D79C2E8000
        021BF0EFEF0F861FB70F33FCF9798781E1EF2F909F18FEFEF8C4C0212F06B6F9
        D7A7470C0C1C860C4262A60CEFEE5E676063FCC5C0CB27C1C0232CC70F104060
        03FE7E7FCBF0E7D353061E83689071C0F078C8F0F9FC4AA0D7BE31FCFEFA8481
        815D0F68AB3BC3CFE72B18D8B818191E5EB8018CCD5F6F7F7CFF620510404CE0
        D005C6C0EF579718DEEF2961F8FBED36D0C4DF0CFF8061F1F3F36386FF2C9A0C
        FCCADE0C3F9ECD6660647DCFC0CAC3CBC0F1EDEECBDF9F9EBB98E6AEBB051040
        4CB0F8E6358B67F8FDE135C38743FD60CDEFDE3E63F8F54F83815FC58FE1C7D3
        E90C4CACBF815E516078B5EF28C3AFCFDF7C8C8A765F00E9050820B0010CC054
        C6C8CCC4C06D940CF4BE00C3A31D7319FE09983388697B33FC7A31878199ED3F
        C3CF4FF20CAF8F9C61607D7D9241ADF8E4195834020410341DFC6078BF630298
        7EF4EA1D038F911FC39FFF620CCF2F4F6610146363F8F14E96E1DDA1C30C2C6F
        CF01C3E7074A3A00082046F4CCB4BACBE57F68E65C869B2B4A189E3D38C6C02E
        A7CFF0E7D5EB67826CCCEEBAE527AEA027778000624217B879E7C59F5F57B730
        28EADB327073AB333C3D73F9CB8FEFBFBCB06906018000C27041989DD0772325
        7116334D4586FFAC3F8F7D7FF53AD1A7E3D23D5CD91920C000C0DB72F08B8F9C
        750000000049454E44AE426082}
      TabOrder = 2
      OnClick = BitBtn1Click
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
  object Panel5: TPanel
    Left = 0
    Top = 335
    Width = 409
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 15
    object Shape15: TShape
      Left = 6
      Top = 4
      Width = 145
      Height = 25
      Brush.Color = 11796479
      Pen.Color = 8623776
    end
    object Shape16: TShape
      Left = 150
      Top = 4
      Width = 251
      Height = 25
      Brush.Color = 11796479
      Pen.Color = 8623776
    end
    object Label13: TLabel
      Left = 14
      Top = 9
      Width = 66
      Height = 13
      Caption = 'SOMAT'#211'RIO:'
      Transparent = True
    end
    object Shape17: TShape
      Left = 6
      Top = 28
      Width = 145
      Height = 25
      Brush.Color = 14811135
      Pen.Color = 8623776
    end
    object Shape18: TShape
      Left = 150
      Top = 28
      Width = 251
      Height = 25
      Brush.Color = 14811135
      Pen.Color = 8623776
    end
    object Label14: TLabel
      Left = 14
      Top = 33
      Width = 61
      Height = 13
      Caption = 'DIFEREN'#199'A:'
      Transparent = True
    end
    object rsoma: TRxCalcEdit
      Left = 271
      Top = 7
      Width = 121
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Color = 11796479
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object rdiferenca: TRxCalcEdit
      Left = 271
      Top = 31
      Width = 121
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      Color = 14811135
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object bgrava_fiscal: TButton
    Left = 200
    Top = 450
    Width = 121
    Height = 25
    Caption = 'Grava Dados Fiscais'
    TabOrder = 16
    Visible = False
  end
  object rfinanceira: TRxCalcEdit
    Left = 271
    Top = 310
    Width = 121
    Height = 21
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 17
    OnEnter = rfinanceiraEnter
    OnExit = rfinanceiraExit
    OnKeyPress = rfinanceiraKeyPress
  end
  object PTEF1: TFlatPanel
    Left = 112
    Top = 211
    Width = 39
    Height = 25
    Caption = 'TEF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Color = 63744
    Visible = False
    TabOrder = 18
    UseDockManager = True
  end
  object ptef2: TFlatPanel
    Left = 112
    Top = 235
    Width = 39
    Height = 25
    Caption = 'TEF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Color = 63744
    Visible = False
    TabOrder = 19
    UseDockManager = True
  end
  object BCH_TECBAN: TButton
    Left = 88
    Top = 275
    Width = 105
    Height = 25
    Caption = 'CHEQUE TECBAN'
    TabOrder = 20
    Visible = False
    OnClick = BCH_TECBANClick
  end
  object BCH_REDECARD: TButton
    Left = 88
    Top = 299
    Width = 105
    Height = 25
    Caption = 'CHEQUE REDECARD'
    TabOrder = 21
    Visible = False
    OnClick = BCH_REDECARDClick
  end
  object bcartao: TButton
    Left = 88
    Top = 323
    Width = 105
    Height = 25
    Caption = 'CARTAO'
    TabOrder = 22
    Visible = False
    OnClick = bcartaoClick
  end
  object bpgto: TButton
    Left = 88
    Top = 347
    Width = 105
    Height = 25
    Caption = 'bpgto'
    TabOrder = 23
    Visible = False
    OnClick = bpgtoClick
  end
  object cb_credito: TComboBox
    Left = 152
    Top = 213
    Width = 86
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    OnKeyPress = cb_creditoKeyPress
  end
  object spin_credito: TRzSpinEdit
    Left = 267
    Top = 213
    Width = 40
    Height = 21
    AllowKeyEdit = True
    Max = 100.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 7
    OnKeyPress = spin_creditoKeyPress
  end
  object cb_debito: TComboBox
    Left = 152
    Top = 237
    Width = 86
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 9
    OnKeyPress = cb_debitoKeyPress
  end
  object spin_debito: TRzSpinEdit
    Left = 267
    Top = 237
    Width = 40
    Height = 21
    AllowKeyEdit = True
    Max = 100.000000000000000000
    Min = 1.000000000000000000
    Value = 1.000000000000000000
    TabOrder = 10
    OnKeyPress = spin_debitoKeyPress
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 8
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 116
      OnClick = Gravar1Click
    end
    object Observaes1: TMenuItem
      Caption = 'Observa'#231#245'es'
      ShortCut = 119
      OnClick = BitBtn1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object query: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 65512
    Top = 80
  end
  object qrcaixa_mov: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 8
    Top = 80
  end
  object IBQuery1: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 40
    Top = 80
  end
  object query1: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 72
    Top = 80
  end
  object Query2: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 104
    Top = 80
  end
  object query3: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 136
    Top = 80
  end
  object qrduplicata: TRxMemoryData
    FieldDefs = <
      item
        Name = 'emitente_fantasia'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_razao'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_slogan'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'emitente_telefone'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'emitente_endereco'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'emitente_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'emitente_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'data_emissao'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'fatura_numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'fatura_valor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duplicata_numero'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'duplicata_valor'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'data_vencimento'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'desconto'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'desconto_ate'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'condicoes_especiais'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'sacado_nome'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'sacado_endereco'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sacado_municipio'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'sacado_uf'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'sacado_cep'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'sacado_praca'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'sacado_cnpj'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'sacado_ie'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'notas_ficais'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'extenso'
        DataType = ftString
        Size = 240
      end>
    Left = 80
    Top = 16
    object qrduplicataemitente_fantasia: TStringField
      FieldName = 'emitente_fantasia'
      Size = 80
    end
    object qrduplicataemitente_razao: TStringField
      FieldName = 'emitente_razao'
      Size = 80
    end
    object qrduplicataemitente_slogan: TStringField
      FieldName = 'emitente_slogan'
      Size = 80
    end
    object qrduplicataemitente_telefone: TStringField
      FieldName = 'emitente_telefone'
      Size = 40
    end
    object qrduplicataemitente_endereco: TStringField
      FieldName = 'emitente_endereco'
      Size = 100
    end
    object qrduplicataemitente_cnpj: TStringField
      FieldName = 'emitente_cnpj'
      Size = 25
    end
    object qrduplicataemitente_ie: TStringField
      FieldName = 'emitente_ie'
      Size = 25
    end
    object qrduplicatadata_emissao: TStringField
      FieldName = 'data_emissao'
      Size = 15
    end
    object qrduplicatafatura_numero: TStringField
      FieldName = 'fatura_numero'
      Size = 30
    end
    object qrduplicatafatura_valor: TStringField
      FieldName = 'fatura_valor'
      Size = 30
    end
    object qrduplicataduplicata_numero: TStringField
      FieldName = 'duplicata_numero'
      Size = 30
    end
    object qrduplicataduplicata_valor: TStringField
      FieldName = 'duplicata_valor'
      Size = 30
    end
    object qrduplicatadata_vencimento: TStringField
      FieldName = 'data_vencimento'
      Size = 30
    end
    object qrduplicatadesconto: TStringField
      FieldName = 'desconto'
      Size = 30
    end
    object qrduplicatadesconto_ate: TStringField
      FieldName = 'desconto_ate'
      Size = 30
    end
    object qrduplicatacondicoes_especiais: TStringField
      FieldName = 'condicoes_especiais'
      Size = 50
    end
    object qrduplicatasacado_nome: TStringField
      FieldName = 'sacado_nome'
      Size = 80
    end
    object qrduplicatasacado_endereco: TStringField
      FieldName = 'sacado_endereco'
      Size = 100
    end
    object qrduplicatasacado_municipio: TStringField
      FieldName = 'sacado_municipio'
      Size = 40
    end
    object qrduplicatasacado_uf: TStringField
      FieldName = 'sacado_uf'
      Size = 2
    end
    object qrduplicatasacado_cep: TStringField
      FieldName = 'sacado_cep'
      Size = 15
    end
    object qrduplicatasacado_praca: TStringField
      FieldName = 'sacado_praca'
      Size = 100
    end
    object qrduplicatasacado_cnpj: TStringField
      FieldName = 'sacado_cnpj'
      Size = 25
    end
    object qrduplicatasacado_ie: TStringField
      FieldName = 'sacado_ie'
      Size = 25
    end
    object qrduplicatanotas_ficais: TStringField
      FieldName = 'notas_ficais'
      Size = 240
    end
    object qrduplicataextenso: TStringField
      FieldName = 'extenso'
      Size = 240
    end
  end
  object fsduplicata: TfrxDBDataset
    UserName = 'fsduplicata'
    CloseDataSource = False
    FieldAliases.Strings = (
      'emitente_fantasia=emitente_fantasia'
      'emitente_razao=emitente_razao'
      'emitente_slogan=emitente_slogan'
      'emitente_telefone=emitente_telefone'
      'emitente_endereco=emitente_endereco'
      'emitente_cnpj=emitente_cnpj'
      'emitente_ie=emitente_ie'
      'data_emissao=data_emissao'
      'fatura_numero=fatura_numero'
      'fatura_valor=fatura_valor'
      'duplicata_numero=duplicata_numero'
      'duplicata_valor=duplicata_valor'
      'data_vencimento=data_vencimento'
      'desconto=desconto'
      'desconto_ate=desconto_ate'
      'condicoes_especiais=condicoes_especiais'
      'sacado_nome=sacado_nome'
      'sacado_endereco=sacado_endereco'
      'sacado_municipio=sacado_municipio'
      'sacado_uf=sacado_uf'
      'sacado_cep=sacado_cep'
      'sacado_praca=sacado_praca'
      'sacado_cnpj=sacado_cnpj'
      'sacado_ie=sacado_ie'
      'notas_ficais=notas_ficais'
      'extenso=extenso')
    DataSet = qrduplicata
    BCDToCurrency = False
    Left = 112
    Top = 16
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
    Left = 144
    Top = 16
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 688
    Top = 275
  end
  object fxduplicata: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39575.642958252300000000
    ReportOptions.LastChange = 39721.694649884300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 168
    Top = 64
    Datasets = <
      item
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 487.559370000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape4: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape17: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape16: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape18: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape2: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape3: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape5: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape6: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape7: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape8: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape9: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape10: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
        end
        object Memo2: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA DA EMISS'#195#402'O:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 51.133890000000000000
          Width = 215.433210000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VIA 1 - EMPRESA')
          ParentFont = False
        end
        object Shape11: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape12: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape13: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Shape14: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape15: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Line3: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PARA USO DA'
            'INSTITUI'#195#8225#195#402'O FINANCEIRA')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FATURA')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Memo24: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line8: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line9: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo26: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AT'#195#8240)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CONDI'#195#8225#195#8226'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'MUNIC'#195#141'PIO:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PRA'#195#8225'A DE PGTO.:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape20: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape21: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
        end
        object Memo45: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich1: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C20417269616C3B7D7D0D
            0A5C766965776B696E64345C7563315C706172645C66693534305C6673313220
            5245434F4E48455C2763374F28454D4F53292041204558415449445C2763334F
            204445535441205C62204455504C4943415441204D455243414E54494C5C6230
            202C204120494D504F52545C2763324E434941204143494D4120515545205041
            474152454928454D4F5329205C276330205C625C69205B66736475706C696361
            74612E22656D6974656E74655F72617A616F225D205C62305C6930204F55205C
            27633020535541204F5244454D204E41205052415C2763374120452056454E43
            494D454E544F204143494D4120494E44494341444F2E5C66315C667331365C70
            61720D0A7D0D0A00}
        end
        object Memo47: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'EM:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line11: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line12: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line13: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          ShowHint = False
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData2: TfrxMasterData
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape22: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape23: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape24: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape25: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape26: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape27: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape28: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape29: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape30: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape31: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape32: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape33: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape34: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo57: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
        end
        object Memo58: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo62: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA DA EMISS'#195#402'O:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 15720447
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VIA 2 - CLIENTE')
          ParentFont = False
        end
        object Shape35: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape36: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape37: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Shape38: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape39: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Line17: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line19: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line20: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PARA USO DA'
            'INSTITUI'#195#8225#195#402'O FINANCEIRA')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FATURA')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape40: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Memo80: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line22: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line23: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo82: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AT'#195#8240)
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CONDI'#195#8225#195#8226'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'MUNIC'#195#141'PIO:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PRA'#195#8225'A DE PGTO.:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape42: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
        end
        object Memo101: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich2: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C20417269616C3B7D7D0D
            0A5C766965776B696E64345C7563315C706172645C66693534305C6673313220
            5245434F4E48455C2763374F28454D4F53292041204558415449445C2763334F
            204445535441205C62204455504C4943415441204D455243414E54494C5C6230
            202C204120494D504F52545C2763324E434941204143494D4120515545205041
            474152454928454D4F5329205C276330205C625C69205B66736475706C696361
            74612E22656D6974656E74655F72617A616F225D205C62305C6930204F55205C
            27633020535541204F5244454D204E41205052415C2763374120452056454E43
            494D454E544F204143494D4120494E44494341444F2E5C66315C667331365C70
            61720D0A7D0D0A00}
        end
        object Memo103: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'EM:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line25: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line26: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo104: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line27: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo105: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line28: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo106: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          ShowHint = False
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData3: TfrxMasterData
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape43: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape44: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape45: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape46: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape47: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape48: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape49: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape50: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape51: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape52: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape53: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape54: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape55: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo113: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture3: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
        end
        object Memo114: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line29: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo118: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA DA EMISS'#195#402'O:')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line30: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo124: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 12910576
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VIA 3 - CONTABILIDADE/FATURAMENTO')
          ParentFont = False
        end
        object Shape56: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape57: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape58: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Shape59: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape60: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Line31: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line32: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line33: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line34: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo125: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PARA USO DA'
            'INSTITUI'#195#8225#195#402'O FINANCEIRA')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FATURA')
          ParentFont = False
        end
        object Memo127: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo128: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo129: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo131: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo132: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape61: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Memo136: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Line35: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line36: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line37: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo138: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AT'#195#8240)
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CONDI'#195#8225#195#8226'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'MUNIC'#195#141'PIO:')
          ParentFont = False
        end
        object Memo144: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PRA'#195#8225'A DE PGTO.:')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape62: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape63: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
        end
        object Memo157: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich3: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C20417269616C3B7D7D0D
            0A5C766965776B696E64345C7563315C706172645C66693534305C6673313220
            5245434F4E48455C2763374F28454D4F53292041204558415449445C2763334F
            204445535441205C62204455504C4943415441204D455243414E54494C5C6230
            202C204120494D504F52545C2763324E434941204143494D4120515545205041
            474152454928454D4F5329205C276330205C625C69205B66736475706C696361
            74612E22656D6974656E74655F72617A616F225D205C62305C6930204F55205C
            27633020535541204F5244454D204E41205052415C2763374120452056454E43
            494D454E544F204143494D4120494E44494341444F2E5C66315C667331365C70
            61720D0A7D0D0A00}
        end
        object Memo159: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'EM:')
          ParentFont = False
        end
        object Line38: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line39: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line40: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo160: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line41: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo161: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line42: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo162: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo163: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          ShowHint = False
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo164: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo166: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo167: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo168: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 8.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData4: TfrxMasterData
        Height = 476.220780000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        DataSet = fsduplicata
        DataSetName = 'fsduplicata'
        RowCount = 0
        object Shape64: TfrxShapeView
          Left = 7.559060000000000000
          Top = 136.063080000000000000
          Width = 166.299320000000000000
          Height = 257.008040000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape65: TfrxShapeView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape66: TfrxShapeView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape67: TfrxShapeView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape68: TfrxShapeView
          Left = 7.559060000000000000
          Width = 529.134200000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape69: TfrxShapeView
          Left = 536.693260000000000000
          Width = 211.653680000000000000
          Height = 90.708720000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape70: TfrxShapeView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 529.134200000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape71: TfrxShapeView
          Left = 173.858380000000000000
          Top = 136.063080000000000000
          Width = 468.661720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape72: TfrxShapeView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 75.590600000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape73: TfrxShapeView
          Left = 173.858380000000000000
          Top = 166.299320000000000000
          Width = 574.488560000000000000
          Height = 181.417440000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape74: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 574.488560000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape75: TfrxShapeView
          Left = 158.740260000000000000
          Top = 393.071120000000000000
          Width = 589.606680000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape76: TfrxShapeView
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 151.181200000000000000
          Height = 86.929190000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo169: TfrxMemoView
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_fantasia'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_fantasia"]')
          ParentFont = False
        end
        object Picture4: TfrxPictureView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 71.811070000000000000
          ShowHint = False
          Center = True
          Picture.Data = {
            07544269746D6170F23E0000424DF23E00000000000036000000280000004900
            0000490000000100180000000000BC3E0000C40E0000C40E0000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFCFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
            FEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFBFFFFFFFEFFF3F8EFCDE3B9A8CF849DC4789CC5749DC6759BC4
            739CC5749CC5749CC4769CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC574
            9CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5
            749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749C
            C5749CC5749CC5749CC5749CC5749CC5749CC5749CC5749DC675B0D292D8E7CB
            FEFDF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFEFDFFFEBEDBA967A82D4294003E90023E91003F92003E91003E91003F9200
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E
            91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E9100
            3E91003E91003E91003E91003E91003E91003E91003E91003E91003E91003E91
            003E91003E91003E91003E91003E91003F92003F92003F91024C950979B44BD9
            E9D1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFEFFFFFFFEA3C9
            814292034691004A97004D98004D99004D98004D97014D97034C96004D98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004E97004296013F8E01509B11C7E1
            B1FFFEFFFFFFFFFFFFFFFFFFFF00FFFFFFFDFDFDFDFFFFB8D7A0439201459600
            4D98004999004B98014B98004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004A97004B98004B98004B98004B98014D980045920154A019DFEDD5
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFEFEEDF4E55CA0234392014999004B98004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004998014D9A004D99004C97
            004B98004A97004B98014A97004998014D98004B98004998014A97004A97004D
            97014B98004D98004896024B98014B98004A97004D98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004998014B98004B98004D98003F900083B958FEFDFFFF
            FFFFFFFFFF00FFFFFFFFFFFEB7D59A4292004B98004A97004B99004A97004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004998014998014D97014997034799004C9900
            4B98014C96004B98004A97004C99024B98014A98004B99004D97014A97004B98
            004A97004A99024999004B98014E99014C98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B99004A97004B98004D9800459502529913E4F0DAFFFFFEFFFF
            FF00FFFFFFFDFFFF8EBF633F93004B99004D97034B98004D97034B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D9A004C97004C99024D98004C96004B98014D98004A
            97004D98004999004A98004B98004B97034C96004A9B004999004C9700479801
            4F98004D99004B98014B98014C99024898004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D98004B98004998014D9701489700429300C3DFAAFFFFFFFFFFFF00FFFF
            FFFEFEFE80B7504093014A97004B98004B98004C96004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004E97004899044C97004B98004B99004B98004D98004798014999
            004C97004B98004F98005097014B98014B98004D97014998014F97014999004D
            98004B98004C97004A97004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C96
            004B98004A99024D97014A9700429102B0D393FFFEFFFFFFFF00FFFFFFFFFFFF
            82B7504192004B98014B99004B98004A97004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98014B98014998014B98004C97004998014D99004C97004B98014F9600
            5095004897004798014E97005094014F97014998014D98004F98004897004B98
            004B98004B98004F98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9A004A9700
            4A96024A97004C9901419100B2D494FFFEFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004C96004E99014C96004998014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A98004798034C96004C99024A97004A9700489700509401449C1A28B47917
            C4BC14C7C419C3AC31AD594A980B4D95004898004B97034999004A98004A9700
            4C99024998014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004999004A97004C99024C
            99014A9700439400B2D396FFFFFEFFFFFF00FFFFFFFFFEFD80B84F3F92004D98
            004A98004D97014B99004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004A97004B9801
            4D98004999004C98004998014F980050940031AE5E0AD0E203DBFF01D9FD00D8
            FF00DBFD00D9FF0FCBCC40A4345394024997004B97034B98004B98014C97004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98014B98004D98004B98014B98
            00429203B4D394FFFFFFFFFFFF00FFFFFFFFFFFF82B7504091004B9801499801
            4D97014C97004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004D98004A97004D990048
            97004D98004E95024E940127B67D01D8FF01D8FF02D5FF05D5FF07D5FF03D3FF
            01D5FE02D9FF07D0EA36A84B5395004A97004D98004B98004B98004B98014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004B98004D97014D97014B98003F9200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004C9700499801
            4D98004D98004B98014D98004B98014D98004C98004B98014998014B98005196
            004A960821BD9400DAFE04D5FF04D5FF04D5FF04D5FD04D4FE04D5FF04D5FF04
            D5FD01D7FF04D3F330B0635295004C96004A97004798014D98004B98004A9700
            4D98004B98014D98004B98004B98014D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004898004E97004B98014B
            98014D98004D99004897004B98004B98004C96004B98004D9500499B131CBEA5
            00D9FD04D6FE05D4FF03D4FE03D4FE04D5FF04D5FF04D5FF04D5FF05D5FF05D6
            FE02D9FF03D6F829B67D4E95004D98004E97004E99014B99004E99014C970049
            99004C98004C99024B98014A98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004D98004B98004A97004B97034A97
            004B98014A97004B98004A97004B9900519502419F230FCBC600DAFE04D5FF03
            D3FF04D5FF05D6FE05D6FE04D3FF04D3FF05D5FF04D6FE04D6FE04D3FF06D3FF
            01D8FF00D9FF21BD944B960C4D95004D97014D98004898004B98004A97004A99
            024C97004D99004D98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004997034D98004B98004B98004F98004C9600
            4A97004C99014B98004F93003DA2390ECFD900D8FF04D5FD04D6FE02D6FE05D6
            FF02D6FF03D7FF05D8FD05D8FD03D7FF03D7FF05D7FF05D5FF04D5FF05D6FE03
            D4FE02D9FF17C2B4479B174F96004B97034B9703499A004D99004A97004B9800
            4998014B98014B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004899004A98004997034B97004A99024B98014B
            99005094013AA74B07D3EC00D8FF03D7FF01D8FF04D2FB08CBF70BC3F30ABEEF
            0DBAEC0DBAEC0BBDEE09C3F306CBF706D1FC04D5FF01D8FF04D6FE05D5FF04D6
            FE00DAFE11CACE429F265195004898004D98004D97014B98014898004999004D
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004F98004A97004A99024D99004D96004E930230B1
            6603D7F600DAFE05D7FF0AC9F60BBCEF0CB4EA0FB4EB0BB8F00DB6F30DB9F50D
            B9F30CB8F20DB9F50DB9F50EBAF40BBDF40AC9F805D3FC05D6FE04D4FF00D7FE
            02DAFE0CCED83CA3305394024998014C96004B99004C96024B99004998014B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014B98014F98004B98014997034D96004F960428B68100D9FD03D7FF
            07CDF709B7EC0EAEE80AB6F20DB7F116A4D31F87AC286C8930566E2F4E652E4E
            652A58701F6F8E1889B412A6DA0CB9F10CBBF307C7F603D8FD04D5FF04D5FF00
            D8FF05D3EC33A9504E94015097004D99004B98014B98004D98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004999
            004999004999004B98014F96004C980B1EBE9A00DCFE03D7FF0AC1F311AEE60B
            B4EE0CB5EE228DB242504F50261A5410034F05004C0001460100440100440002
            4100013D0402351B21284B651894C40DB8EE0CBFF606D2FB05D8FD07D4FF01D9
            FD02D4FC2DB5754E94014898004D97014897004B98014B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            9800499A004D97014B98014898004D98004D97014B98014B98004D9701499900
            499703509500449D181AC2B100DBFE04D5FF09BEEC10AFE908B8F51D9AC04953
            4D6021055E12005611004C0F014B0E004E0F015111065112044F0F0449090441
            010039000037000031090E244761159CCE0EC1F808CFFD01D8FF05D5FF02D6FE
            01D7FF26B6854E95024E97004B98014998014D97014B98004D99004999004A97
            004C97004B98014F98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004D98
            004A96024C9800499801499A004A97004998014D98004D97014B9A004E950042
            9E270FCACE02DAFE05D8FD0BBDEE0DB0EE0BB6E93D77836A2F0F691F03561B01
            5C20026B2A048138068D420A9A4A0DA24E0DA34F0EA04C129B48149442138335
            116D240E4A0B033A01002B0F151B6D900ABCF304D0FF05D7FF04D6FE06D5FF00
            D8FF1CBE9B47990B5094014B99004898004D98004B98004A97004B98014B9800
            4D9A034898004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98014D9800
            4D98004998014A97004D98004998014B99004D97014E93023CA43F0FD0DD00D8
            FF05D6FF0AC2F00EB0EB11ACE3516254772C00692900672C00803E099C5008AB
            5C0DAF5E0DAF5F0CAA5B0AA8580BA6570EA7550EA6530FAA5313A95115A74F19
            A1491A8A39165E160536000220455F0FB0E204D4FE00D6FF04D4FE02D6FE00DA
            FE14C4C4449E274E9500499A004B98014C96004C97004B98004897004A97004E
            9A004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004999004C97004B99004C
            98004D98004C96004B98004E960051920035AD5506D5EE00D6FF05D7FF07CCF8
            0FB2E909B3ED5567567C2E006C31007C3C06A3570BB7620CB2620DB05F0EAE5F
            10AC5D0EAC5D0EAD5B0DAC5A0CA95A0BA7560BA4540DA4500EA44E12A34F15A3
            4D17A34D1F8033134500002139510BBCEF04D9FE04D6FE03D4FE03D5FD02D9FF
            0BCCD6419F285294004A97004C99014998014C97004C99024A97004B98014B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004997034A98004D97
            014798014C97005094012FB06504D5F500D7FE04D5FF01D6FB0EB9EC05B2F646
            7F808137007636008C4A09B0620FB16512AD610EAD610EB0620FAE630DAF610E
            AF600FAD5E0FAD5E0FAE5D0CAC5A0CAA570CA7560BA75410A55110A14E16A14A
            18A24E1A9A411C5C11031D486907D0FB05D8FD03D4FF06D5FF05D5FF00D6FF0B
            D0D83DA53A4E94014C9602499801499A004B98004F98004998014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004A97004B98014B98004B98014C9902509500
            4C990822B98703D7FF00D6FF05D6FE03D7FF06C7F208B5F42C9AB28542097D3E
            019F5709B7690FB6660DB56808B56A08B36909B26808B5670AB4670AB4670BB3
            630EB0620FAE5F0EAB5F0DAC5F10A85C0AA8580BA9550DA1530EA44F119F4C15
            A04B1BA2461B651603186A8D03DBFE06D6FF05D6FE01D4FF05D6FF05D7FF05D3
            EF31B1644E97004D98004E97004999004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004E99014D97014C97004C96004B95014D970F19C1AA00
            DBFF02D6FE05D5FF05D4FF03D6FF0BBEF110AFE76C643C853E00A05A06BA6B04
            B46A04BA6C02B76B01B56E00B56B01B96B00B56A03B56A03B46A04B36707B368
            0CB2650EB0630DAE5F0EAB5F0DAB5C0DAA570CA7550DA95410A54E15A34A189F
            491BA443175A1C14069FC601DFFF04D5FF02D5FF06D4FD04D5FF03D7FF01D9FD
            2AB37B4D93004D97014B98004999004A97004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004897004B98014A9900509401469A121AC4B100DBFE07D5FF03D4
            FE06D4FD02D7FC03D1FB08B7F6408F988C45019A5401BA6D00BA6D00B56E00B9
            7000BB6F00B76F00BB6D02B96F00B96E00B86D00B96E02B86C02B56A03B56905
            B4670AB1640DAF610EB05E10AC5D0EA95A0BA45609A8530FA24E149F4C15A04A
            1C9E350E3F4D5303D5FD05D6FF04D5FF04D6FE05D5FF04D5FF04D5FF04D9FE24
            B7834D95054F96004D97014999004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B
            98004B98004D9800509401429F2C11CAC800D9FD00D7FE06D3FF04D5FF05D5FF
            03D7FF04CBF90FB0E770693E984C00B46C00BA6F01BB7101BB7200BB7200BC73
            00BD7400BD7400BF7400BC7301BC7301BB7200B96F00B86D00B86D01B76A03B7
            6904B4660CB0630DAE5F10AB5E0FAA5B0AA7570AA5510FA54F13A14B15A3491A
            8E331416A1BC00E0FF03D4FE04D5FF05D5FF04D5FF05D5FF02D6FE00DAFE1BC2
            AD479A155293014999004999004C97004D99004B98014B9800419200B2D494FF
            FFFEFFFFFF00FFFFFFFFFFFF80B7503F92004D98004B98004B99004B98004C98
            0050940138AA4D05D0EB00D9FF04D4FF06D5FB05D4FF02D6FE03D4FF03D7FF03
            C5FB2A9FBA8C5206AD6200BD7402BC7301BE7501BF7701BF7800C07A00C17B00
            BE7A00BE7A00C07900BF7800BE7600BC7300BB7200BB7200B96E00B86C02B468
            04B4660CB16310AE5F0EAC5D0EA95A0BA7550DA65211A14C149D4A17A63B0F55
            696A02DEFC02D6FE05D5FF05D5FF04D4FE05D4FF04D5FF03D4FE02DAFE12CACA
            449F244D95004A97004B98004A97004B98014B98003F9200B4D394FFFFFFFFFF
            FF00FFFFFFFFFFFF80B7503F92004B98004B98004B99004C96004D94023BA747
            07D5F100D9FF03D4FF07D4FF02D6FF04D5FF05D5FF07D5FE03D8FD01C5FF448A
            8AA25500B97302BF7500BF7701C17A01C27C01C27C01C27C00C27C00C37D02C3
            7D02C27C01C27C01C17B00C07900BE7600BD7400BA7100B96E00B56C00B66A06
            B4670BB1640EAE5F0EAB5C0BA95A0BA6540CA750129F4B17A345108A4B2F08CC
            EC00D9FF02D5FF04D5FF05D4FF03D4FE03D4FE04D6FE03D4FF00D9FF0ECCD145
            9F1E4E95004C99024A97004B98004C98003F9300B4D394FFFFFFFFFFFF00FFFF
            FFFFFFFF82B7503F92004B98004B98004B98004C9600489C140DCED700D8FB04
            D3FF04D5FF04D5FF05D6FC07D4FF06D4FE04D6FE02D5FF05C1FB61765DB15F00
            C17800C07900C27C00C37D01C47F00C67F00C78000C88200C88101C68201C780
            01C47F00C47F00C37D02C17B00BF7800BD7400BB7200BA7000B66E00B46905B4
            660CAF620CAD5E0DAB5C0DA55809A7520CA34E169F4915A243122DACBB01DFFD
            04D5FF04D5FF04D6FE04D5FF02D6FE07D5FF04D6FE02D3FD01DBFF1CC0A74A96
            024B97004D98004E98024B9703419200B1D396FFFFFFFFFFFF00FFFFFFFFFFFF
            82B7503F92004B98004B98014D98004E960031AE6400DAFC03D5FF02D6FF01D4
            FF05D5FF05D6FE02D6FF03D4FE01D4FF03D6FF0CBEF577703EC27200C37F00C2
            7C01C67F00C88101C78300C88500C98700CA8900CC8800CB8700CB8601CA8500
            C68200C58100C47F00C37D01C07900BE7600BC7202BA7100B56C00B46907B266
            0CB06110AD5D10AA5B0CA8550AA550129F4C18A83E095C817D03DEFF04D5FD04
            D5FF02D5FF05D4FF03D5FD07D5FF07D4FF04D5FF03D4FE01D7FA40A53B4E9502
            4A97004B98004B9800439400B2D694FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F
            92004B98004B98014D98004D95001EBC9701DAFF04D4FE05D6FE04D4FE03D4FE
            0AD5FF01D4FF04D5FF04D5FF01D9FD09B9EE837331CB8D03C38E01C68701C984
            00CA8600CC8801CD8900CE8A01CE8B00D08B00D08B00CD8900CD8900CB8700CA
            8401C88101C47F00C27C00C07900BD7400BB7101B86E00B56B01B4670AB16310
            AE5F0EAB5C0DA7590DA7520EA24E14A7430D79675602D9FF01D7FF04D4FE06D4
            FD07D5FE02D6FF04D4FE04D5FF04D4FE03D4FE00DBFD2CB4724E950049980149
            98014B9801419200B1D392FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97
            004B98014D98004E94011CC0A700D8FF04D4FE05D5FF07D5FE04D5FF04D4FE05
            D6FE03D4FE04D6FE00DAFE08BDEF8D742EC38700BE9002C38E01C69003C68E01
            CB8D00D08E00D38F00D49001D18F00CE8F00D18C00CF8D00CE8A01CC8801CA84
            01C88101C67F00C37D02C07A00BD7402BB7101B96E00B46A04B1650BB0620FAB
            5C0DA9590CA7550EA45310A6460A885D3C0BCFF101D8FF02D6FF05D6FE03D4FF
            04D5FF05D5FF02D6FF04D7FC03D4FE00DAFE26B6854E94014B9801499A004D99
            00419200B2D493FFFFFFFFFFFF00FFFFFFFFFFFF82B7503F92004A97004B9801
            4D98004E940122BD9101D8FF05D5FF03D4FF04D5FF05D6FE02D5FF05D4FF05D4
            FF04D4FE00DAFE07C5F684702FB67102B17E0AB68805BB8C05BB8B03BE8D03C2
            9002C89100CD9200D29400D69400D69300D59201D38F00D18C01CC8800CA8600
            C78100C47F00C17C00BF7701BB7002B96E00B56C00B46808B0620FAC5D0CA95A
            0BA6510BA44C10A4420C8A513212C9E900D8FF04D5FD04D3FF02D7FC04D3FF05
            D5FF03D4FE04D6FE05D5FF00D9FF2BB3714E95005097004C98004D9701409100
            B2D494FFFFFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004E
            970031AE5802D9FF03D4FF04D3FF05D5FF05D5FF05D5FF05D5FF05D5FF04D5FF
            02D9FF01CDFD817D43C36E01B06802A76604AB7209B47F0AB88707BA8806BB8A
            06BC8C04BD8F02C29002C99300CC9301CE9301CE9200CF9000CE8B00CA8401C8
            8004C37D01C07A00BE7201BA6D00B66A00B36605B3630EB16310B1640EB0670C
            B36D0FC1750BB28F2E12D0E701D8FF04D4FE04D4FE02D6FF04D3FF04D6FE03D4
            FE04D4FE03D7FF06D4F740A4344D95004A97004997035099003D9202B6D394FF
            FFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B98004D98004C9700469B
            110FCDD201D9FD02D6FF06D4FD02D6FF02D5FF05D4FF05D4FF04D5FF01D5FE00
            D7FE6B8B62D48401CE8602C17903AD6500A35C04A06107A76F0AAF7B09B48309
            B88705BC8C05BA8B04BC8D03BD8F01C09100C49301C89502C99701CB9901CA95
            05C99306CA9308CA930ACA9308CC950CD09A11D5A013DAAB14DDAF14E1B416F0
            BB0CC8C13410D4F402D6FF01D5FE05D5FF05D5FF06D6FF06D4FE02D6FF02D6FE
            00DDFD1BC1A44E96004B96004C98044B98004B99003F9200B4D592FDFFFFFFFF
            FF00FFFFFFFFFEFF80B7503F92004D98004B98004B98004C97005094003BA842
            08D1EB00D8FF05D6FE04D4FE04D5FF07D5FE04D6FE04D3FF04D5FF01DAFF49A3
            96D47D00CE8F00D29500D69700CF8C01BD7701A662009A57029755069B5F06A4
            6D05AB7909B28008B98808BE8B05C08F05C39004C39402C49602C99A03CA9C01
            CEA104D1A407D4A709D9AA0CDCAE0DDEB10CE2B510E0B512DBAF14DDA40896A8
            4B03D4FE04D5FF04D6FE02D7FC05D4FF02D5FF07D5FE05D4FF00DBFD12C9CD44
            9F204D95004A98044F98004F98004B9800419200B4D394FFFFFEFFFFFF00FFFF
            FFFFFEFF82B7504192004D98004B98004B98004A97004D97034E95003FA5390C
            CDDA00D9FF03D5FD02D5FF04D6FE04D4FE04D6FE03D5FD00D9FF1CC2D3BE850C
            D58E00D49302D59900DD9D02E3A200E2A102D99702C68200AE6A019C5505904D
            028D4C018E50049258069962079F6C04A87304AC7A04B07D03B38001B68600B7
            8700B68501B48204AD7E05A67A059F6B07915D0A8952078D3E0051817501DFFF
            04D6FE01D5FE07D5FF05D5FF06D6FF04D3FF00D9FF16C5B8479D1B5095004997
            034D98004C98004B98014A9700429300B2D396FFFFFEFFFFFF00FFFFFFFFFEFF
            82B7504192004D98004B98004B98004A97004A97004A97004B9500459C1C13C7
            C201DAFF06D7FF05D6FE05D6FF03D4FE07D4FF02D6FF00D5FC929849DE8A02D5
            9300DB9800DF9C01E3A102E6A802E9AD00EEB200EFB303E7AA00DB9904CA8801
            B47000A15E029152028749028245038041047E3F037C3E02783E03773D02793D
            02793D017C3D037D3D078A470A9A4C05A04F0BAD480437ADB200DDFF04D5FB05
            D4FF02D6FF05D5FF02D6FF00DAFE1EBF9F48950B4E95024D97014E97004D9800
            4B98004B98004B9801409301B4D394FFFFFEFFFFFF00FFFFFFFFFEFF82B7503F
            92004D98004B98004B98004A97004999004D98004B97034F9600499B1316C5B8
            02D9FF02D5FF07D4FF04D6FE03D6FB02D5FF01DCFE47B3A0DC8800D89601D99C
            00DF9F00E3A200E6A601EBAD01EDB101EDB101EDB002E9AD00E8AB01E6A502E0
            9F01DB9800D29001CA8702C38001BD7C02B87600B57200B67000B86D00B76C00
            B76904B7680DB3630EB05F0EAE52039660290ECEEC02D9FF04D3FF04D5FF05D5
            FF03D7FF00D9FD26B6814F96044A97004A97004D99004997034897004A97004C
            97004B9801419102B4D394FFFFFFFFFFFF00FFFFFFFFFEFF80B7503F92004B98
            004B98004B98004A97004B98004D97014D98004D99004E970049990A1DBF9C00
            DAFE04D5FF01D5FD07D5FE03D4FF01D7FF04D4F89D9C44E29100DB9B01DB9E00
            E0A200E6A802ECAB02F0B200EEB400ECB002E8A901E5A500E1A001DE9C01D897
            00D39300D08E00CF8C01CD8501C88101C57E00C17800BE7300B96F00B56905B2
            650EAE5F0EAE5D0CB34E0059938102DCFF03D4FE04D6FE04D5FD01D6FF04D7F9
            2CB2704E94014D97014C96004C99014A98004A97004A98004B98004998014998
            01419200B3D595FCFEFEFFFFFF00FFFFFFFFFEFF80B7503F92004B98004B9800
            4B98004A97004D97034B98004999004B98014B98014D95005196002BB37302D7
            FC02D5FF05D5FF04D6FE04D5FF00DAFE30C4C4D79205DF9801E09D00E1A100E6
            A601EAAC00E8AF00EBAF01E9AB00E7A901E3A400DF9E00DD9B00D89700D29100
            CF8D00CB8A00CB8300C57E00C17B00BC7600BB7101B66E00B36903B2650EAE5F
            0EB2560395642C12CDE900D9FD02D7FC06D2FF01D8FF09D2E537A94F5193004D
            97014C97004B98014E97004997034B98004B98014B98004D98004D9800419200
            B4D394FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004D98004B98004B98004B98004B98004D98004C97004E97002EAF6403D7F6
            00D9FD04D5FF04D4FE04D5FF00DAFF7CAF6BE99300DF9D02E09F01E3A400E7A9
            01E8AA00E9AA02E7A901E6A700E2A100DF9E00DD9904D69300D19100D18C01CC
            8800C98300C47E02C07A00BD7702BF7100BA6C01B46A04B2650FB05D08B15601
            3CAAA602DDFF05D5FF04D6FE00D8FF0CD0DC3FA23A4E94014B98004897005098
            004798034C96004B98014B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004D98004C97004C970050940131AA5509D3EA00
            D7FE03D6FF04D5FB00D7FE0FD3F1A7A442EB9700DE9D00E29F04E2A100E2A501
            E7A401E3A400E1A002E19E01DB9B00D89601D59201D19000CD8A00CB8700C483
            00C47C00BE7900BF7500B96F00B66D01B06A05B4610BB7550157988800DBFF02
            D6FE04D6FE00DAFE0FCCCF44A1284E94014A98004B98014C98004D98004A9700
            4C98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004D98004D98004B980051930041A2340FCACE00DA
            FC05D5FF07D5FF00D8FF18D2E4ABA43DEA9500DE9D00E19F00E0A000E09D00DF
            9E00DD9E00D99C00D99900D59403D29001D18D00CA8900CC8401C78001C17D02
            BF7800BA7400B77000B56C04B86109BB5B0160957A01DBFF01D8FF04D5FF00D8
            FF19C3B0479C1C4E95024B98004B98014D98004B98004A97004B98014999004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004A97004C98044F9201469D1D13CBCB00DBFD
            04D5FD02D5FF01D8FF0BD2F394AA51E99301E19800DB9C00DE9B02DC9C01DA9A
            00DA9601D69300D39201D08E00D08A01CB8601C78100C47E02BE7B00BE7600BC
            7202BA6C01BF6100BA63075A9D8200DCFE02D6FE04D5FF00DAFF22BE9B4D9507
            5095004D97014998014C98004B99004B97034C96004C9A004A97004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B9800499A00499A00519500449B1C15C6B500D8FF04
            D5FF04D6FE00D6FF06D6FA66B887D39715E79100DF9600DA9601D79401D49400
            D29100D08E00CA8C00CA8801CB8300C58100C27C00BE7900BF7200C16B01C464
            00977B3434B5B800D9FD02D5FF01D8FF00D8FF23BA8C4D95054E95004A9A0149
            99005098004D98004A97004C96004D98004B99004D98004B98014B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D98004A97004B98014B98004B95014B970A25B99102D9FF04D8
            FB05D6FE02D6FF00D9FF23CDD97CAF71C1961DDD8D00DE8B00D78D00D38B01CF
            8900CD8600CD8502C98000C47D00CB7700C77100C16F009C7E2D53A8920DD2EE
            01DCFD03D7FF02D6FF06D6F42CB2694F93004D98004B97034B98014B98004798
            034A97004B98014A9B004B99004C97004C9A004B98014B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B99004B97034B98004A98004B98004C97005094002AB57800D8FF03D7FF
            04D5FF04D6FE00D6FF00D9FF14D1E64EBBA190A354B99225C98905CE8400CF7F
            02CA7D00C87B00BD7D0DA3852E6F9D6F34BABA07D4F400DCFF03D7FF06D6FF00
            D8FF08D4EB39A7475393004D97014898004B98004D98004D98004D97014D9900
            4999004A97004D98004B98004C97004B98014B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004D98004B98
            004D98004898004D98004A97004D99004E95034E96002DB27304D8FA01D9FD02
            D5FF04D5FF04D5FD03D7FF00D9FF05D6FC13D0E924C8D43AC0BA43BDAD3DBDB1
            31C1C21BC9DA0BCFF100DAFE00DCFE04D5FF04D5FF04D5FF02DAFE0AD1E13DA5
            404D95004899004B97034B98004B9A004C96024998014B98014B98004A97004B
            98004B98014B98014B98014B98014B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B980051950236AA4B07D1E200D9FD04D5
            FF03D4FE04D3FF04D5FF00D7FE00D7FE01D7FF00D9FF00DBFD02DAFE02D9FF00
            D8FF02D6FE02D5FF04D5FF04D5FF04D7FC01D8FF12C9C5409F2C4F98004D9800
            4D98004B98004B98004B98004B98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98014B98004B98004B9801419200B2D494FF
            FFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004D98004F93003FA3330CCDD701D9FD05D4FF
            04D6FE03D4FE04D5FD05D6FE04D6FE04D5FB05D5FF02D6FE04D5FF05D5FF05D6
            FE04D5FF04D5FF05D5FF00D8FF1AC2AB489A114E95004D98004D98004D98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFF
            FF00FFFFFFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004999004D9701509302469D250DCCCF00DAFE03D5FD05
            D6FF04D5FF03D4FF04D5FF05D4FF05D5FF04D5FF07D5FF04D5FF02D6FF02D6FF
            05D6FF00D8FF20BF9F4A97064D94014D98004D98004D98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFF
            FFFFFEFF82B7503F92004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004D97014A9700489B004E9500499C1B1AC1AE00D9FF04D6FE04D5
            FF04D5FF04D5FD04D5FF05D5FF05D5FF02D7FC04D4FE04D5FF04D6FE00D8FC25
            B9894F96044B98004999004B99004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98014B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF
            82B7503F92004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004D97014899024C98004999004D94014C970523BA9200D7FF04D6FE05D6FE
            04D4FE04D6FE05D4FF05D5FF00D5FF04D5FF02D6FE04D5EF31AE5F4C96024C96
            004998014C98004B98014B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9801
            4B98004B98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F
            92004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004C97
            004D99004B98014A97004B98004D98004F950227B88100D9FF01D7FF03D7FF02
            D6FE03D5FD05D6FE04D5FF01D8FF06D5EB37A84E5393004A97004B99004A9700
            4B97034C98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98014B98004B
            98004B9801419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004998014B9801
            4D99004B98004D98004B98014A97004E96002FB26908D3E800D9FF02D6FE02D8
            FF00D7FE00D9FF0ECDD63CA63B4D93004B98014B98014B98004C98004A97004E
            98024B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98014B98004B98004B98
            01419200B2D494FFFFFFFFFFFF00FFFFFFFFFEFF82B7503F92004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D98004B98004B
            98014B98004D97014F98004D98005094003FA02726B78318C5B713C6BD18C2AF
            2EB069469B154F95024B98014D99004A97004C98004B98014999004A97004D98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98014B98004B98004B9801419200
            B2D494FFFFFFFFFFFF00FFFFFFFFFFFF80B6523D93004B98014D98004B98004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D97014D95004E95024E98044E98044E95024D95004D
            97014B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004798014D98004A98004B98013F9300B5D495FF
            FFFFFFFFFF00FFFFFFFDFFFF84B84D4293004996004B98014C99014B99004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004C96004A97004A97004C96004D98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004D98004B98014D97014A9700429102B0D296FDFFFFFFFF
            FF00FFFFFFFFFEFF8DBF614190014D97014D9800499600499A004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004A97004A97004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004899004C99014C96004C99024B9900419200C1DCAAFFFFFFFFFFFF00FFFF
            FFFFFEFFB7D59A3F93004D98004898004E99014D97034B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B
            98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            014A97004997034C96004995014D9B12E6F0D9FFFFFFFFFFFF00FFFFFFFFFFFF
            EDF4E559A11F4293004999004C97004B98004B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B9801
            4B98004B98004B98004B98004B98014B98014B98014B98014B98014B98014B98
            014B98014B98014B98014B98014B98014B98014B98014B98014B98014B98014B
            98014B98014B98014B98014B98014B98014B98014B98014B98014B98014A9700
            4D99004B980140910084BA56FDFFFEFFFEFFFFFFFF00FFFFFFFDFFFFFFFFFFB1
            D3934090014396004999004B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98014D97014D98004B
            98004B98004D98004D97014B98014B98004B98004B98004B98004B98004B9800
            4B98004B98004B98004B98004B98004B98004B98004B98004B98004B98004B98
            004B98004B98004B98004B98004B98004B98004B98004B98004D98004B99003E
            94004F9C12DAEACBFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFDFFFDFFFCA0CA
            7D4392014592014A97004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B98004B98004B98004B98
            004B98004B98004B98004D98004D98004D98004D98004D98004D98004D98004D
            98004D98004D98004D98004D98004D98004D98004D98004D98004D98004D9800
            4D98004D98004D98004D98004D98004D98004B98004B96003E9002529B15C3E0
            AFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFEFEFEFDFFFFC1DCAA
            61A5284293004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            9200419200419200419200419200419200419200419200419200419200419200
            4192004192004192004192004192004192004192004192004192004192004192
            0041920041920041920041920041920041920041920041920041920041920041
            92004192004192004192004192003E900144940179B347DFEDD1FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEFEFEEEF6EBBC
            D9A29AC7718EBD618FBF5F8DC05F8DC05F8EC0628DC05F8FBF5F8DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF
            618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618D
            BF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF618DBF61
            8DBF618DBF618DBF618DBF618DBF618DBF618FBE618FBE618FBE618FBE618FBE
            618FBE618FBE618FBE61A0C77BCAE1B5F7FEF7FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFEFFFFFFFBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
          Stretched = False
          HightQuality = False
        end
        object Memo170: TfrxMemoView
          Left = 158.740260000000000000
          Top = 26.456710000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_razao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_razao"]')
          ParentFont = False
        end
        object Memo171: TfrxMemoView
          Left = 158.740260000000000000
          Top = 41.574830000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_slogan'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_slogan"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          Left = 158.740260000000000000
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'emitente_telefone'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_telefone"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          Left = 7.559060000000000000
          Top = 75.590600000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."emitente_endereco"]')
          ParentFont = False
        end
        object Line43: TfrxLineView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo174: TfrxMemoView
          Left = 544.252320000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 544.252320000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          Left = 585.827150000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_cnpj"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'emitente_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."emitente_ie"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 544.252320000000000000
          Top = 71.811070000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA DA EMISS'#195#402'O:')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Left = 638.740570000000000000
          Top = 69.031540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_emissao'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."data_emissao"]')
          ParentFont = False
        end
        object Line44: TfrxLineView
          Left = 536.693260000000000000
          Top = 64.252010000000000000
          Width = 211.653680000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo180: TfrxMemoView
          Left = 537.693260000000000000
          Top = 50.133890000000000000
          Width = 210.141732280000000000
          Height = 13.606299210000000000
          ShowHint = False
          Color = 13434879
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VIA 4 - CONTABILIDADE/RECEBIMENTO')
          ParentFont = False
        end
        object Shape77: TfrxShapeView
          Left = 536.693260000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape78: TfrxShapeView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape79: TfrxShapeView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Shape80: TfrxShapeView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Shape81: TfrxShapeView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Color = clBlack
        end
        object Line45: TfrxLineView
          Left = 139.842610000000000000
          Top = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line46: TfrxLineView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line47: TfrxLineView
          Left = 404.409710000000000000
          Top = 109.606370000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line48: TfrxLineView
          Left = 536.693260000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo181: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 102.047310000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PARA USO DA'
            'INSTITUI'#195#8225#195#402'O FINANCEIRA')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 7.559060000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FATURA')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 272.126160000000000000
          Top = 90.708720000000000000
          Width = 264.567100000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DUPLICATA')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo185: TfrxMemoView
          Left = 139.842610000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo186: TfrxMemoView
          Left = 272.126160000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#353'MERO DE ORDEM')
          ParentFont = False
        end
        object Memo187: TfrxMemoView
          Left = 404.409710000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo188: TfrxMemoView
          Left = 536.693260000000000000
          Top = 98.267780000000000000
          Width = 105.826840000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo189: TfrxMemoView
          Left = 7.559060000000000000
          Top = 138.842610000000000000
          Width = 151.181200000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N O T A S    F I S C A I S')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 7.559060000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo191: TfrxMemoView
          Left = 45.354360000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Shape82: TfrxShapeView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
        end
        object Memo192: TfrxMemoView
          Left = 90.708720000000000000
          Top = 151.181200000000000000
          Width = 37.795300000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Left = 128.504020000000000000
          Top = 151.181200000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Valor-R$')
          ParentFont = False
        end
        object Line49: TfrxLineView
          Left = 45.354360000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Line50: TfrxLineView
          Left = 90.708720000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line51: TfrxLineView
          Left = 128.504020000000000000
          Top = 158.740260000000000000
          Height = 234.330860000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo194: TfrxMemoView
          Left = 177.637910000000000000
          Top = 138.842610000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DESCONTO DE ')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Left = 502.677490000000000000
          Top = 138.842610000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AT'#195#8240)
          ParentFont = False
        end
        object Memo196: TfrxMemoView
          Left = 177.637910000000000000
          Top = 152.181200000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CONDI'#195#8225#195#8226'ES ESPECIAIS')
          ParentFont = False
        end
        object Memo197: TfrxMemoView
          Left = 181.417440000000000000
          Top = 185.196970000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'NOME DO SACADO:')
          ParentFont = False
        end
        object Memo198: TfrxMemoView
          Left = 181.417440000000000000
          Top = 211.653680000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo199: TfrxMemoView
          Left = 181.417440000000000000
          Top = 238.110390000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'MUNIC'#195#141'PIO:')
          ParentFont = False
        end
        object Memo200: TfrxMemoView
          Left = 181.417440000000000000
          Top = 264.567100000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'PRA'#195#8225'A DE PGTO.:')
          ParentFont = False
        end
        object Memo201: TfrxMemoView
          Left = 532.913730000000000000
          Top = 238.110390000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ESTADO:')
          ParentFont = False
        end
        object Memo202: TfrxMemoView
          Left = 627.401980000000000000
          Top = 238.110390000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo203: TfrxMemoView
          Left = 181.417440000000000000
          Top = 291.023810000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo204: TfrxMemoView
          Left = 181.417440000000000000
          Top = 313.700990000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'RG/INSC.ESTADUAL:')
          ParentFont = False
        end
        object Memo205: TfrxMemoView
          Left = 275.905690000000000000
          Top = 183.196970000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_nome'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsduplicata."sacado_nome"]')
          ParentFont = False
        end
        object Memo206: TfrxMemoView
          Left = 275.905690000000000000
          Top = 209.653680000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_endereco'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_endereco"]')
          ParentFont = False
        end
        object Memo207: TfrxMemoView
          Left = 275.905690000000000000
          Top = 236.110390000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_municipio'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_municipio"]')
          ParentFont = False
        end
        object Memo208: TfrxMemoView
          Left = 275.905690000000000000
          Top = 262.567100000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_praca'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_praca"]')
          ParentFont = False
        end
        object Memo209: TfrxMemoView
          Left = 275.905690000000000000
          Top = 289.023810000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cnpj'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cnpj"]')
          ParentFont = False
        end
        object Memo210: TfrxMemoView
          Left = 275.905690000000000000
          Top = 311.700990000000000000
          Width = 468.661720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_ie'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_ie"]')
          ParentFont = False
        end
        object Memo211: TfrxMemoView
          Left = 582.047620000000000000
          Top = 234.330860000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_uf'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_uf"]')
          ParentFont = False
        end
        object Memo212: TfrxMemoView
          Left = 661.417750000000000000
          Top = 234.330860000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'sacado_cep'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."sacado_cep"]')
          ParentFont = False
        end
        object Shape83: TfrxShapeView
          Left = 173.858380000000000000
          Top = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
          Curve = 1
          Shape = skRoundRectangle
        end
        object Shape84: TfrxShapeView
          Left = 192.756030000000000000
          Top = 347.716760000000000000
          Width = 60.472480000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = clBlack
        end
        object Memo213: TfrxMemoView
          Left = 173.858380000000000000
          Top = 355.275820000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR POR'
            'EXTENSO')
          ParentFont = False
        end
        object Memo214: TfrxMemoView
          Left = 260.787570000000000000
          Top = 351.496290000000000000
          Width = 476.220780000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'extenso'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."extenso"]')
          ParentFont = False
        end
        object Rich4: TfrxRichView
          Left = 162.519790000000000000
          Top = 400.630180000000000000
          Width = 585.827150000000000000
          Height = 37.795300000000000000
          ShowHint = False
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
            666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C66636861
            727365743020417269616C3B7D7B5C66315C666E696C20417269616C3B7D7D0D
            0A5C766965776B696E64345C7563315C706172645C66693534305C6673313220
            5245434F4E48455C2763374F28454D4F53292041204558415449445C2763334F
            204445535441205C62204455504C4943415441204D455243414E54494C5C6230
            202C204120494D504F52545C2763324E434941204143494D4120515545205041
            474152454928454D4F5329205C276330205C625C69205B66736475706C696361
            74612E22656D6974656E74655F72617A616F225D205C62305C6930204F55205C
            27633020535541204F5244454D204E41205052415C2763374120452056454E43
            494D454E544F204143494D4120494E44494341444F2E5C66315C667331365C70
            61720D0A7D0D0A00}
        end
        object Memo215: TfrxMemoView
          Left = 166.299320000000000000
          Top = 449.764070000000000000
          Width = 22.677180000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'EM:')
          ParentFont = False
        end
        object Line52: TfrxLineView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line53: TfrxLineView
          Left = 230.551330000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line54: TfrxLineView
          Left = 283.464750000000000000
          Top = 461.102660000000000000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo216: TfrxMemoView
          Left = 192.756030000000000000
          Top = 461.102660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Line55: TfrxLineView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo217: TfrxMemoView
          Left = 415.748300000000000000
          Top = 461.102660000000000000
          Width = 328.819110000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO SACADO')
          ParentFont = False
        end
        object Line56: TfrxLineView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo218: TfrxMemoView
          Left = 12.118120000000000000
          Top = 461.102660000000000000
          Width = 139.842610000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURA DO EMITENTE')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          Left = 10.338590000000000000
          Top = 166.299320000000000000
          Width = 162.519790000000000000
          Height = 222.992270000000000000
          ShowHint = False
          DataField = 'notas_ficais'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsduplicata."notas_ficais"]')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          Left = 15.118120000000000000
          Top = 117.165430000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_numero"]')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fatura_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."fatura_valor"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Left = 275.905690000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_numero'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_numero"]')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'duplicata_valor'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."duplicata_valor"]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          Left = 536.693260000000000000
          Top = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'data_vencimento'
          DataSet = fsduplicata
          DataSetName = 'fsduplicata'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsduplicata."data_vencimento"]')
          ParentFont = False
        end
      end
    end
  end
end
