object frmprevenda_fechamento: Tfrmprevenda_fechamento
  Left = 458
  Top = 235
  Width = 317
  Height = 464
  Caption = 'PR'#201'-VENDA | Fechamento'
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
  object Shape8: TShape
    Left = 6
    Top = 307
    Width = 145
    Height = 25
    Pen.Color = 8623776
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
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object echequeav: TShape
    Left = 150
    Top = 163
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object echequeap: TShape
    Left = 150
    Top = 187
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object ecartaocred: TShape
    Left = 150
    Top = 211
    Width = 145
    Height = 29
    Pen.Color = 8623776
  end
  object ecartaodeb: TShape
    Left = 150
    Top = 235
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object ecrediario: TShape
    Left = 150
    Top = 259
    Width = 145
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
    Width = 145
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
    Left = 198
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
    Width = 145
    Height = 25
    Pen.Color = 8623776
  end
  object Bevel2: TBevel
    Left = 0
    Top = 395
    Width = 301
    Height = 3
    Align = alBottom
  end
  object Bevel1: TBevel
    Left = 0
    Top = 116
    Width = 301
    Height = 3
    Align = alTop
  end
  object efinanceira: TShape
    Left = 150
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
  object pconvenio: TFlatPanel
    Left = 387
    Top = 410
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
  object rdinheiro: TRxCalcEdit
    Left = 167
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
    TabOrder = 1
    OnEnter = rdinheiroEnter
    OnExit = rdinheiroExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rchequeav: TRxCalcEdit
    Left = 167
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
    TabOrder = 2
    OnEnter = rchequeavEnter
    OnExit = rchequeavExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rchequeap: TRxCalcEdit
    Left = 167
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
    TabOrder = 3
    OnEnter = rchequeapEnter
    OnExit = rchequeapExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcartaocred: TRxCalcEdit
    Left = 167
    Top = 214
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
    TabOrder = 4
    OnEnter = rcartaocredEnter
    OnExit = rcartaocredExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcartaodeb: TRxCalcEdit
    Left = 167
    Top = 238
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
    TabOrder = 5
    OnEnter = rcartaodebEnter
    OnExit = rcartaodebExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rcrediario: TRxCalcEdit
    Left = 167
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
    TabOrder = 6
    OnEnter = rcrediarioEnter
    OnExit = rcrediarioExit
    OnKeyPress = rdesconto1KeyPress
  end
  object rconvenio: TRxCalcEdit
    Left = 167
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
    TabOrder = 7
    OnEnter = rconvenioEnter
    OnExit = rconvenioExit
    OnKeyPress = rconvenioKeyPress
  end
  object Panel4: TPanel
    Left = 0
    Top = 398
    Width = 301
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 9
    object bgravar: TAdvGlowButton
      Left = 54
      Top = 2
      Width = 91
      Height = 24
      Caption = 'Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
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
    object bcancelar: TAdvGlowButton
      Left = 152
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
  object Panel5: TPanel
    Left = 0
    Top = 334
    Width = 301
    Height = 61
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 10
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
      Width = 145
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
      Width = 145
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
      Left = 167
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
      Left = 167
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 116
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 11
    object Label2: TLabel
      Left = 28
      Top = 39
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desconto:'
    end
    object Label3: TLabel
      Left = 28
      Top = 64
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Acr'#233'scimo:'
    end
    object Label4: TLabel
      Left = 28
      Top = 89
      Width = 90
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total:'
    end
    object Label1: TLabel
      Left = 21
      Top = 12
      Width = 96
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Subtotal:'
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
      Version = '1.0.0.1'
    end
    object Bevel3: TBevel
      Left = 56
      Top = 7
      Width = 2
      Height = 104
    end
    object rdesconto2: TRxCalcEdit
      Left = 194
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
      TabOrder = 2
      OnEnter = rdesconto1Enter
      OnExit = rdesconto2Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object racrescimo2: TRxCalcEdit
      Left = 194
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
      TabOrder = 4
      OnEnter = rdesconto1Enter
      OnExit = racrescimo2Exit
      OnKeyPress = racrescimo2KeyPress
    end
    object rdesconto1: TRxCalcEdit
      Left = 124
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
      TabOrder = 1
      OnEnter = rdesconto1Enter
      OnExit = rdesconto1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object racrescimo1: TRxCalcEdit
      Left = 124
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
      TabOrder = 3
      OnEnter = rdesconto1Enter
      OnExit = racrescimo1Exit
      OnKeyPress = rdesconto1KeyPress
    end
    object Panel1: TPanel
      Left = 117
      Top = 9
      Width = 185
      Height = 22
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 0
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
      Left = 120
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
  end
  object rfinanceira: TRxCalcEdit
    Left = 167
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
    TabOrder = 8
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
    TabOrder = 12
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
    TabOrder = 13
    UseDockManager = True
  end
  object BCH_TECBAN: TButton
    Left = 88
    Top = 275
    Width = 105
    Height = 25
    Caption = 'CHEQUE TECBAN'
    TabOrder = 14
    Visible = False
    OnClick = BCH_TECBANClick
  end
  object BCH_REDECARD: TButton
    Left = 88
    Top = 299
    Width = 105
    Height = 25
    Caption = 'CHEQUE REDECARD'
    TabOrder = 15
    Visible = False
    OnClick = BCH_REDECARDClick
  end
  object bcartao: TButton
    Left = 88
    Top = 323
    Width = 105
    Height = 25
    Caption = 'CARTAO'
    TabOrder = 16
    Visible = False
    OnClick = bcartaoClick
  end
  object bpgto: TButton
    Left = 88
    Top = 347
    Width = 105
    Height = 25
    Caption = 'bpgto'
    TabOrder = 17
    Visible = False
    OnClick = bpgtoClick
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 84
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
    end
  end
  object QUERY1: TZQuery
    Params = <>
    Left = 491
    Top = 603
  end
  object query2: TZQuery
    Params = <>
    Left = 587
    Top = 603
  end
  object query3: TZQuery
    Params = <>
    Left = 683
    Top = 603
  end
  object qrduplicata: TRxMemoryData
    Active = True
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
    Left = 160
    Top = 157
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
  object qrcliente: TZQuery
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 688
    Top = 275
  end
  object ibquery1: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    Left = 192
    Top = 160
  end
  object qrvenda: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000048')
    Left = 200
    Top = 216
  end
  object qrCaixa_mov: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000044')
    Left = 200
    Top = 240
  end
  object qrcontasreceber: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000049')
    Left = 200
    Top = 272
  end
  object qrproduto: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 200
    Top = 304
  end
  object qrproduto_mov: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 200
    Top = 336
  end
end
