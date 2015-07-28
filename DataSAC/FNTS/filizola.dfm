object frmfilizola: Tfrmfilizola
  Left = 374
  Top = 202
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Filizola - Suite de Comandos'
  ClientHeight = 344
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 72
    Top = 75
    Width = 112
    Height = 13
    AutoSize = False
    Caption = 'lblDataBits'
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 297
    Width = 551
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 0
    Width = 551
    Height = 121
    AdaptiveColors = True
    Align = alTop
    BorderStyle = bsNone
    Caption = 'Configura'#231#245'es da Balan'#231'a / Indicador'
    HeaderColor = clHighlight
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 24
    ParentColor = False
    object btnPara: TBitBtn
      Left = 9
      Top = 55
      Width = 200
      Height = 25
      Hint = 'Inicia o teste de leitura da balan'#231'a.'
      Caption = '&Testar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnParaClick
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
    object btnConfigura: TBitBtn
      Left = 9
      Top = 29
      Width = 200
      Height = 25
      Hint = 
        'Inicia a tela de par'#226'metros de comunica'#231#227'o com a balan'#231'a/indicad' +
        'or.'
      Caption = '&Configurar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnConfiguraClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC6C6C68181817C7C7CBBBBBBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8F7F7F7FEFEFE8A8A8ABC
        BCBCB1B1B1686868FEFEFEF6F6F6E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        B2B2B26F6F6F727272F1F1F18E8E8ECACACAC6C6C6707070EFEFEF6767674E4E
        4E909090FFFFFFFFFFFFFFFFFFD3D3D3BBBBBBDDDDDDA5A5A5878787848484C3
        C3C3C1C1C16D6D6D737373A5A5A5D1D1D17F7F7FABABABFFFFFFFFFFFFD5D5D5
        A5A5A5D4D4D4C4C4C4CACACAD0D0D0C8C8C8C6C6C6CBCBCBC4C4C4BCBCBCCACA
        CA6E6E6EB4B4B4FFFFFFFFFFFFFFFFFFD3D3D3C4C4C4C0C0C0C4C4C4C6C6C6A9
        A9A9A6A6A6C0C0C0BDBDBDB4B4B4A9A9A9B0B0B0FFFFFFFFFFFFB4B4B49A9A9A
        A5A5A5CECECEC5C5C5CBCBCBB3B3B3E4E4E4E2E2E2A7A7A7C0C0C0BBBBBBB8B8
        B86D6D6D696969747474BFBFBFE1E1E1D1D1D1C5C5C5CCCCCCB0B0B0E2E2E2FF
        FFFFFFFFFFE2E2E2A7A7A7C1C1C1B6B6B6BFBFBFD1D1D1616161C3C3C3E8E8E8
        D5D5D5C8C8C8CDCDCDA4A4A4DEDEDEFFFFFFFFFFFFE4E4E4ABABABC3C3C3B9B9
        B9C5C5C5DCDCDC6B6B6BD2D2D2CACACAC3C3C3D7D7D7CCCCCCBBBBBB9D9D9DDA
        DADADCDCDCA7A7A7C2C2C2C1C1C1CCCCCC9393939393939B9B9BFFFFFFFFFFFF
        E0E0E0D3D3D3CBCBCBC8C8C8B9B9B99B9B9BA0A0A0C1C1C1C5C5C5C0C0C0B6B6
        B6C1C1C1FFFFFFFFFFFFFFFFFFE5E5E5C3C3C3DBDBDBD3D3D3D8D8D8DADADAD5
        D5D5D3D3D3D8D8D8D1D1D1CACACAC7C7C7797979B9B9B9FFFFFFFFFFFFE8E8E8
        DBDBDBECECECDADADAC4C4C4BDBDBDD5D5D5D3D3D3AFAFAFAFAFAFCACACAE6E6
        E6B6B6B6C7C7C7FFFFFFFFFFFFFFFFFFE2E2E2CDCDCDCECECEF9F9F9C7C7C7DD
        DDDDDCDCDCB8B8B8F7F7F7B3B3B3A7A7A7C6C6C6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF7F7F7FCFCFCFFFFFFCBCBCBE4E4E4E3E3E3B2B2B2FEFEFEFBFBFBF2F2
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEAD4
        D4D4D2D2D2E6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Button1: TButton
      Left = 10
      Top = 81
      Width = 199
      Height = 25
      Caption = 'Envia pre'#231'o/kg a balan'#231'a CS'
      TabOrder = 2
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 217
      Top = 26
      Width = 328
      Height = 81
      Caption = 'Informa'#231#245'es'
      TabOrder = 3
      object Label1: TLabel
        Left = 17
        Top = 17
        Width = 45
        Height = 13
        Caption = 'Modelo:'
      end
      object Label2: TLabel
        Left = 17
        Top = 35
        Width = 70
        Height = 13
        Caption = 'Porta serial:'
      end
      object Label3: TLabel
        Left = 17
        Top = 53
        Width = 60
        Height = 13
        Caption = 'BaudRate:'
      end
      object lblModelo: TLabel
        Tag = 1
        Left = 96
        Top = 17
        Width = 33
        Height = 13
        Caption = '--------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSerial: TLabel
        Tag = 1
        Left = 96
        Top = 36
        Width = 33
        Height = 13
        Caption = '--------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblBaudRate: TLabel
        Tag = 1
        Left = 96
        Top = 54
        Width = 33
        Height = 13
        Caption = '--------'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object btnSair: TBitBtn
    Left = 381
    Top = 309
    Width = 164
    Height = 25
    Hint = 'Sai do sistema'
    Caption = 'Sai&r'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Visible = False
    OnClick = btnSairClick
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
  object HeaderView2: THeaderView
    Left = 0
    Top = 121
    Width = 551
    Height = 176
    AdaptiveColors = False
    Align = alTop
    BorderStyle = bsNone
    Caption = 'Dados lidos da Balan'#231'a / Indicador'
    HeaderColor = clRed
    HeaderFont.Charset = ANSI_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -11
    HeaderFont.Name = 'Verdana'
    HeaderFont.Style = [fsBold]
    HeaderSize = 16
    ParentColor = False
    object Label8: TLabel
      Left = 9
      Top = 26
      Width = 31
      Height = 13
      Caption = 'Bruto'
    end
    object Label9: TLabel
      Left = 138
      Top = 26
      Width = 106
      Height = 13
      Caption = 'C'#243'digo do Produto'
    end
    object Label10: TLabel
      Left = 267
      Top = 26
      Width = 78
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object Label11: TLabel
      Left = 9
      Top = 74
      Width = 26
      Height = 13
      Caption = 'Tara'
    end
    object Label12: TLabel
      Left = 138
      Top = 74
      Width = 59
      Height = 13
      Caption = 'Contagem'
    end
    object Label13: TLabel
      Left = 267
      Top = 74
      Width = 62
      Height = 13
      Caption = 'Valor Total'
    end
    object Label14: TLabel
      Left = 9
      Top = 122
      Width = 40
      Height = 13
      Caption = 'L'#237'quido'
    end
    object Label15: TLabel
      Left = 138
      Top = 122
      Width = 170
      Height = 13
      Caption = 'Status da Balan'#231'a / Indicador'
    end
    object lblStatus: TLabel
      Left = 138
      Top = 137
      Width = 53
      Height = 13
      Caption = 'Parado...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlBruto: TPanel
      Left = 9
      Top = 41
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pnlCodigo: TPanel
      Left = 138
      Top = 41
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object pnlValUnit: TPanel
      Left = 267
      Top = 41
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object pnlTara: TPanel
      Left = 9
      Top = 89
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object pnlCont: TPanel
      Left = 138
      Top = 89
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object pnlValTot: TPanel
      Left = 267
      Top = 89
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object pnlLiquido: TPanel
      Left = 9
      Top = 137
      Width = 115
      Height = 28
      Caption = '--------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
  end
  object bfechar: TAdvGlowButton
    Left = 438
    Top = 308
    Width = 107
    Height = 26
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
    TabOrder = 3
    OnClick = btnSairClick
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
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 105
    Top = 346
  end
end
