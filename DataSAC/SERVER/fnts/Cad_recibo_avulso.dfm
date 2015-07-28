object FrmReciboAvulso: TFrmReciboAvulso
  Left = 297
  Top = 166
  Width = 870
  Height = 640
  Caption = 'FrmReciboAvulso'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QrepRecibo: TQuickRep
    Left = 32
    Top = 15
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ItensRecibo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PrevInitialZoom = qrZoom100
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 313
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        828.145833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape2: TQRShape
        Left = 8
        Top = 131
        Width = 705
        Height = 160
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          423.333333333333300000
          21.166666666666670000
          346.604166666666700000
          1865.312500000000000000)
        Shape = qrsRoundRect
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 8
        Top = 8
        Width = 705
        Height = 124
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          328.083333333333300000
          21.166666666666670000
          21.166666666666670000
          1865.312500000000000000)
        Shape = qrsRoundRect
        VertAdjust = 0
      end
      object QRDBText1: TQRDBText
        Left = 10
        Top = 12
        Width = 701
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          26.458333333333330000
          31.750000000000000000
          1854.729166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'FANTASIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QrEndereco: TQRLabel
        Left = 10
        Top = 52
        Width = 701
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          26.458333333333330000
          137.583333333333300000
          1854.729166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RUA JAQUELINE BASTOS 293 PROXIMO A CASAS FREITAS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 11
        Top = 72
        Width = 699
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          190.500000000000000000
          1849.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 316
        Top = 111
        Width = 183
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333300000
          293.687500000000000000
          484.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qEmitente
        DataField = 'EMAIL'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 533
        Top = 110
        Width = 174
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1410.229166666667000000
          291.041666666666700000
          460.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qEmitente
        DataField = 'HOMEPAGE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 11
        Top = 90
        Width = 699
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          238.125000000000000000
          1849.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qEmitente
        DataField = 'INSC_MUNICIPAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 175
        Top = 111
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          463.020833333333300000
          293.687500000000000000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qEmitente
        DataField = 'FAX'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 48
        Top = 111
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          293.687500000000000000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qEmitente
        DataField = 'TELEFONE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 11
        Top = 34
        Width = 699
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          89.958333333333330000
          1849.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qEmitente
        DataField = 'RAMO_ATIVIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 11
        Top = 135
        Width = 698
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          29.104166666666670000
          357.187500000000000000
          1846.791666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RECIBO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
      object QRLabel3: TQRLabel
        Left = 10
        Top = 167
        Width = 27
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          26.458333333333330000
          441.854166666666700000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
      object QRLabel4: TQRLabel
        Left = 577
        Top = 169
        Width = 31
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1526.645833333333000000
          447.145833333333300000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
      object QRLabel10: TQRLabel
        Left = 12
        Top = 111
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          31.750000000000000000
          293.687500000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fone'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 146
        Top = 111
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          386.291666666666700000
          293.687500000000000000
          66.145833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fax'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 274
        Top = 111
        Width = 37
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          724.958333333333300000
          293.687500000000000000
          97.895833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Email'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 503
        Top = 111
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1330.854166666667000000
          293.687500000000000000
          68.791666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Site'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 17
        Top = 14
        Width = 129
        Height = 79
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          209.020833333333300000
          44.979166666666670000
          37.041666666666670000
          341.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QrImagem: TQRImage
        Left = 20
        Top = 17
        Width = 123
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          190.500000000000000000
          52.916666666666670000
          44.979166666666670000
          325.437500000000000000)
        Picture.Data = {
          0A544A504547496D616765DC1B0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108004C008503012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F9AB
          C5FF001735BF1959E8D0EA5AF6A9AD1D180FB00BABA92EFEC443BB288771C45B
          0155F9428CE580C106A7D0F4FD42F2CE67860B89FC94134BB50BEC4C1F98F1C0
          C83C9F435F67FF00C11F7F605F0978DBE1E6ABF16FE27E9D6977A2DACACBA345
          A9CDE4E9C89010D717B306DA9246ACBE58DEC621E5CFBD490ACBEEBAEFFC16EB
          E13783759B3D2343F0F789F50D034F90DA3DD416D05A4315B47F2C6F6D0BB866
          42AA0AA4821214A8214E40F96CCF8D710B19570393E11D774F49B4F9629F6BD9
          DDF4E876E1F2B87B355B1753914B65D5AEE7E5DE9C6682653B9D037CC18719CD
          6CC1AAF990AA236D081B0141CE4F6FD00AFD40F8B1FB5E7C06F8F5FB2E6B3F15
          AE3C35E1DF10EB3E1D68B4EB2D3B5FB0B67D4D2F04CF2D9DBC8A240EF6AEFBE6
          648E42AF08B9E18ACA83F2CB4C85A394F2CC01E14A824127AFE55ECF0DF1156C
          D2954957C3CA8CA0F95A977B5F4D13D9ADD755631C660E38792509A927AE9D8D
          65B5FB59692472CE4E70493DBA8F4E3F9D53F0B5C9D4750F10CED03DB3DD6BBA
          84CF1BFCAC84DC39208F5CF51EB5FA0BFB15FF00C133BC09FB407ECE1A1F8BB5
          EBBF1AD8EAFAABDC0716D79691DAC8A93BC61A34313C8061369DECA772B10BB7
          631FCFAF07D908B4A2E11E01732B5D6C642847998930C3B1CB107DF35AE5FC45
          84C762EAE170EDB952769696D6F6D3BECCD2A60A74A11A92DA5B1D1464FCCCE0
          65FAED014773D071512B61981DC491819EBCD7D45FF04B9F831E0EF8FDF14FC4
          7E1DF196816DACDAC5A21D46DA46BAB98268248E7862DAA6291015659D8B6E04
          E634C15F9837A8FF00C1503F650D07E08FC05F0C4FE06F0EE8DA4E8963AA491E
          A6C96E6E3519A4923FDC335D48AF318576CCACAD2852D245F2B100AF9D8BE2FC
          350CDA1944E2F9E56D74E5D55D75BDF4B5ADB9D30C0CA541D74F45D0F8318E17
          1D493F87BD448936C036B138E38AF42FD97BE17DDFC63FDA1FC25E1CB5C6FBFD
          4A332BB14263823CCB3380FF00292B146EDB4E7715C60E715FA87FF051BD46EB
          40FD87FC67FD9F7975A735BDB5AC1135AC86268E26BB811E35DB8C2321642A38
          2AC47438AE0E20E32596E3E865F1A7CF2AAD7DAB72DDA8A6F47E7F71AE1B2FF6
          D4DD46EC9796FD4FC83F07F81F5AF883E204D2F42D2F53D735294022D6C2D5EE
          A76EE0F9680B63F0EF4DF889F0D3C43F0BF558F4CF12E85ADF87B5396113ADAE
          A7672DA4CD11254384902B152CAC33D32A7DEBEBEFF8254FEDBD7DE0AF8856BF
          0DFC53AC4D71E1BD688B7D11658DA77B1BE77458A159376520906E5DB8602431
          9010348C7B5FF828DFEC0BAEFC5BFDA8FC35E20F0EDC1963F8857516977ED70F
          0AC7A5CD05AE7CC504AB321B5B791F00336E85C673246B5CD5F8C6785CDDE5D9
          84153838B946776D4ADAF656EB7DF556EA8160154A1ED68BBBD9A3E49F86DFF0
          4FCF8C9F15524FECBF006B912463717D51134A4707A156BA68C383FEC935E39A
          C786E7B6F12CBA634B6325D4774D6A644BA8A5B767572A5966563134648C8915
          8A10770620835FA7BFF052DF8DF69FB227ECB3E1DF855E14BA55BFD6F4E1A431
          93C99278B4C8E1F2A492400AED92724287F2CAB62E482AEA08FCFF00FD943E0B
          27ED19FB467857C2124F2436DAC5EE2E9E29562956DE356967284AB0F30451C9
          B49523763208CD1C3FC498BC6E06AE678C518525CCE364EEE31DE4EEDAB792ED
          B918DC1D2A75234295DC9DAFEBDB63D5341FF82437C566F016AFE20F134BE17F
          0358E896B2DF5C8D5B507B8610468CF2483EC31DCE42AA938CE78E01AF942EE0
          F2DD8FF12FA75E9CD7EFA6B5E3EF08FC58F1AF8B3E165F5D41A85FAE8892EAD6
          42F10492DB5D896278F09279CAEA810B9C2ED5BAB760DFBC18FC43FDA77E0BDF
          FECE3F1AFC47E0DD4A413CBA0DD9892E0AA28B985809219B6AB385F322747D85
          895DFB5B906B8380F8C3119AD5AB431D653494A292B5E2FAEADB7BAF9345E6D9
          74284635296DB3F53F42FF00E0D944D92FC701C120E859C74FF9897A5147FC1B
          263127C6F1DFFE245FFB92A2BF47ABF133C58EC757FF000493D5BC35F1A3FE09
          B5A5784CDCC77B1436FAA683AF59A178A4805C4F70CD193807E7827521D09037
          901832B05CC8BFE0859F07C95DFAF7C46641C301A8D9827DF3F65383FE35F9A9
          6BF08BE2FF00EC95F0C3C21F1474F93C4BE18D23C7968F1DAEA9A55CCF672471
          994B2DB5C32ED65132C11CF1824A4B184652FB1C27A368FF00F057CFDA1FEC50
          DA0F1D2C8906D452DA0E9AD2301DCB983731E4649249EA7D6BF26C4F08E74B19
          88C66418E8AA75272934DB5695DF32D1493B3BABE87BB1CCF0DECE14B1949B92
          496CB6B69D8F5BFDBA7FE097FA97EC9FF0AAFF00C51E19F155EEBDE0D1A9A3EA
          3A7DD85B796C10B98AD25721F65CB069DA22C11194CA0AA6D77D9F367C04F877
          ABFC65F8A1A1F85345C36A3AE5D47669B83F971AB365A49362B3794806F63B4E
          163270715FABBE3CF889E24D0BFE0971AF6B5F15A7874FF14EA1E0DBAB5BF31D
          9C91334F771BDBDB47244AB98E6732C0B280AA8923BF0883E5F97FFE08B3F002
          D24D6B5FF8C5E209EDAC747F09A4B65613DC4EB0C30CCD0EEB99E47F31762456
          EF83E62146170583068B8DF21E31C653C8F1788CC24A7528C9C23256B4E56492
          D37D6DAA5B59862B2DA6F174E14959495DAEDFD7E67D83ADFC76F0EFECADF153
          E10FC1DB79635D3F57B1FB04971731C8D3DAA80B0594AC63408E669D2447200C
          302CDB1793F0B7FC14ABF67EB0F85BF13ECFC53A408ADF4DF1CDD6A520B00557
          EC735BDD98DD511500588A3C047CCC4B997381B457B87ED45F1AFF00656F1E78
          67C67E344BF5BEF886BA5CF75637690EB114D3DDC36DB6D82AED16E0A98E200B
          2853B416CF24FA37ED0BE17D2BF6BDFF008276DE6B9E1DBB7B98626B8F15E9CD
          701E16578A6B869A17555626458DEE2200651A4DA43EC3BEBE6326C54B27C661
          3153A7521ED3DCACEA45C53949B77577D1BEB6D23B6E7A78887D629CE174EDAC
          6CEFB7F5F89F3CFF00C11898BFED2BAF9C91FF0014CCE71D8FFA5DAD7DBBF12C
          F877F6ADD23E287C2B99BECD75A34769693B832C82379ED21BAB7BAF97603B67
          DE3CA121C9B63BB0B205AF88BFE08C0F9FDA57C420F0C3C333607523FD2AD7FF
          00AD4CF84BFB560F82DFF0539F1B6A1AF4B0C5A46B9E20D47C3B7F713B2A2D94
          22ECA4131767444546862DEEF90B1798402D835D9C5796D5C6E7B8A9D06D54A5
          4A138DBBC5A7F7DAF6F3B19E12AA861E1CDB36D3F99E8DFB097C246FD8ABE09F
          C48F8AFE34B34B7D4B4F171A4DADA35C213B6DA631C9189627743E75DA242329
          F29B70C0B2480D7A47ED77E2DBDF197FC12A6E35BD4E7FB46A3ABF87346BCB99
          B6AA0965965B4766DAA02AE5989C0000CF00578F7FC168FF006911F6BD13E196
          9D720AC6ABAAEB222914FCEC48B785B072081BA428C0643C2C2BD1FF0069C936
          7FC11CAD091BB1E13F0FF53FEDD9578F5E8D7C457C16738CD2A622B42CBB4134
          A297AEFE7A33A2338C554A10DA317F7B3F2A9752F2EE430277827B608AFD9AFF
          008275FED25A97ED43FB3358EB9AD00DAE697752E957F3AC4234BB9235465940
          0C7968E48F77405F7E1557007E291BDDD70C7E63CE377BFB57EB2FFC11534DBB
          B0FD906FA5B8B7B8862BDF11DCCD6CF2A155B88FC8B64DE84F0CBBD1D7233F32
          30EA0D7D8F8AB84A32CAA35E6BDE8C959FAEEBE76FC0F2F22A92F6EE29E8D1F9
          BFFB4F7C7ED4FF00691F8D9AE78B35592E55EFE761676D2B897FB3ED431F2ADD
          59554108BC642A963B988DCC49FB4BFE085FF05552C7C5FF0011A4BB0CF231F0
          CDBC11C9F3281E4DCCED22EDC727ECDB487FE1932BF74D7E7C6A3E16D63FE13F
          6F0EBE9BA826BC2FBFB3BFB3BECCFF006BFB4F99E57D9FCA037F9BBFE4D98DDB
          B8C678AFD51FDA9D35EFF827A7FC131F4DF0D6837F2DA7882C20B7B09351B6BF
          5B796D1E69BCCBAB8B6F3024AEA65774511A891166573B446CC35E359C6197D0
          C9304D45D67182ECA1A6BE9B2F357272E4E55E788A9AF2DDFCC8FC21FB1E7C6A
          D03F6E6B9F8B8DAFF825ECF5ABE30EA561F6CB90C74A3B63100096C8B2491C29
          1952C5434912B313939E4BFE0B87FB34FF00C261F0C349F89F61196BEF0B15D3
          3553BC0DD63349FB9932D2003CBB87DBB634677FB592C42C7C7E6EFC4CF8E7E2
          BF8C92249E2EF12EBFE296B71889B57BE96F4C7EE3CD638FC2BF56FF00647FDA
          37C073FEC01E19D0FE28F8FBE1FA4F73A049A5DEE9C3C4965F6B3A7307861864
          860712249F6531A3281E60FE32242C07CF66B9366B926270B9C392A8E0D41C61
          069F259F44DDECB4BDB4D0EAA38BC3E2A13C35B979B5BB7D4E2FFE0D925DB27C
          6FE849FEC2CE3FEE25C515BDFF0006EFE81A5785BE21FED0BA7685E20B7F14E8
          B6B71A1AD8EA90DACB6A2F21CEA5B58C5280E8D8E0A9C8041C33AE1895FB5C6A
          C6A455486CD26BD1AF33E65C5C5B8BE8719FB307FC168BE0878C3E1EA7837C59
          E1FBAF875A45869674C82C6E849AE6993D92C71C0B6ACE91F9AECD1B382B245B
          0A46DB9C960A7A9D1BFE0A05FB1A7C359E7F11786E2F0ADB6B9A3C534B68DA5F
          8226B3BF9A430C80C5048D6D180F22968F2CEA987C332A926BF136CA620A2AB4
          9C0EBD4D6B5A5DB0250E70324823047F5AF8FC47845954AACA746AD58465BC54
          F47F7A6DFCDB3B61C4B88514A518B6BAD8FB77F6FBFF0082A76A7FB645B41E1C
          D0B4EB9F0DF822D6E0CCF04B324975AB48AEE239662A308A136910A9601C962C
          E44653D22FFF00E0A23F0E7C0BFB11C7F073C05A7F8F6F1AE34E96C2E756D405
          A698FBE6769257DA8D71BE366765319DAC62253CC0D8907E79E9D73B8AB0DCC3
          8C827AD74DA25C174438F987539FCC57BD3E08CB16168E0E106A9D2973249EF2
          FE69756FD7FCADCD0CDABFB49546EEE4ACFD3CBB1BFE2FBA99FC13AE18B78962
          D36EA5E992BB6176CFAF001AFABFE087FC14CF5CFD9C3E0FE83E14F02786746B
          686D904DA94FAEDCDCEA4F7D74CAA24922547856DE33B4623556000C92CE5DDB
          E43D72FCDBE817285D764F1F90D90086590EC61CFA8735AB1DD160A18E31D327
          1CF3D715DD9AE4B83CC69AA38C873C534ED7695F5ECD5CAC3E2EA516E54DD99F
          447C0BFDBC6F3F66EF166ABACF84BC07E03B3BAD655217F39350B9FB3C415374
          51B3DD9608CF1F9AD9624B3633B55157CB3E38FC68BBF8DBF14F58F165EE9DA3
          E8F7FACC82E67B5D2ADCC16AAFB54332A9663B9D86F662C4B3BB3139635C3CD7
          3D8306CF638E471CFF003AAD2DC90EDEA7BE71ED9A8A593E128D778A842D524A
          CDEADB4ADA36EFD90E78B9CA2A0DE86EF8EFE246B5F117C5975ADEBDAADE6B1A
          B5F1067BABA94C92CB850AB966E70AA1401C000003000AE8FE267EDBDF147E26
          33C1A978E7C429632DA1B37B0D3EECE99A7B41B36189AD6DFCB84A14CA9529B4
          8E315E677574776013F29C1C1C8EB59D75704B90AAC39E3B0AD6A65985A9C9ED
          29C5F27C374BDDF4D34D96DD8CFEB35237B49ABEFAEE39AE7CC93E6C93D0FA0A
          BDAC78D354D7744D3B4EBFBEBCBFB0D2811656D34CD2456A0B16C46A490A3712
          78EE49AC524160012189EBBB8C71FE7DE9B72CC810E738F6E735D53C3C2A594D
          276EE651AB28FC2ED7279753259999C090F24939279FE7C7FF00AEA19B519190
          02DBBAE327A715034BB70E0E4AE4F239F5E7DFEB556791B03E6C7EA3E9EF5AAA
          48CDCD92CB76371CE5738C119EFDFF003AAF26A27CC20B30C8195030723BF3FE
          78A88DC6D60583657D3009FEBF8D4134C04A72482D925BA1EB5B2A688723F5B3
          FE0D7D90487E389073FF00200FAFFCC4A8AADFF06B63161F1D33D07F60007BFF
          00CC4A8AE2ADF1B3683BC4FC7089D4E482FC727239C9F5E4D5FB16F2C963C0F5
          00F7EFF9E2BA9FD9ABF67CF127ED4DF18347F03F84ED61BBF106BA5C5B4734F1
          DBC7B638DE5762CCC000B1A3B639276E0024807DE7E397FC12D7C41F06BE08EB
          3E3ED3BE22FC27F887A1F85E7B6875A4F09F8845F4FA50B8731452480A28DA65
          DA9807792D90A543B2FD2CACB7D0F32CDEA7CEFA5485A163863CE39E00FF001A
          E8B497693287EF29F4C9C7008AF74FF827B7FC13F6C3F6CCF08FC47F11EB5E3A
          FF008413C3BF0D2C21D4353BBFEC77D52468DE3B8918AC492212A896D2138DCC
          72A02926A2FDA37E03FC25F841E08B0BCF87FF001A07C49D5EE2F96DE6B0FF00
          8456EB48FB35B18A466B8F365665621D624F2FA9F373D1483CD56DB1B413B5CF
          11F1DDC30F0B0196626EED14F3B48FF498BA773F87A574C24CA67AE0E7E5E393
          EDEBD6BD7FE137ECD3E08BFF00D96ED3E2A7C44D6BC4C3C2B73E388BC272E8FE
          1DB3B77D5A7923B65BF5920927758B259154AB0C0412364B0543E83FB517EC89
          F0DBC39FB207873E337C34D4BE205BE89ABEB03437D23C61670A5EACA3ED04CC
          9342162740210008FCC5C960640E8F1AF24D2B9D0B63E5F9FEE92776D6FF0067
          A715034A4E4FDE7231D7DFD6BE84F0F7ECAFE19F889FF04F8D73E29E8FA9CF07
          8C3C0FAF4563AFE9F73AAC52433594ECA905C4502C1E6C6ED2CD1C603CA51841
          70C0960235D0FDA63F67FF00057C03FD877E144B79637117C61F1E5C49E22BC9
          1F52498DA68C5644B78CC08FB638E55682546642E5E39D4BA85312C38D8773E5
          D95DE562700E39209C9E9EDDB1552E499140650D81D063FCF6AFA625F80BE1EB
          2FF825D0F8873E9EA7C5773F10869305FF009AE0FD83EC1BFC9D9BBCB23CE566
          DDB7776CE38AEBBF61AFD9FBC25E15FD917E247ED05E37F0CD8F8E22F04DFDA6
          9DA0E89737B2C36A6F3CFB62F35CC6AB89631F688008D999245F3D1D39460B96
          C36CF8C4BB2330E4139E9839C7F5FF000A6CB01B8605509CB765C76F6FC6BE9B
          FDA57F6C0F879FB46FECFF001D8CFF0008FC39E0DF88FA6EADE6D86A7E12B48B
          4BD31EC5A3C48B72987799F72A855F976E772C8A03C5376DFF000492F811E15F
          13F837E377C4DF12687A2F8B25F855E179AF74ED1B58B5175A7CF7125B5D4BE6
          4B193B5F6ADB32056047EFB70DAE8AC2B952D486CF8AE7B59628D58A30249192
          38C0C77E9F9D53D8647000F99871C1C8C0C76FF3CD7E9CFEC4DFB5F7887FE0A6
          9F163C43F09FE3268B178B7C35E24B1BDBAD264D3B43811BC0D228251E1980CC
          30AA3792B2CBE6B997ECEA58877DDF177EC317967A07ED8DE0BBAD43C0DABFC4
          5B3D3F50334BE1ED2E179EF2EF646EDBE3890132984E26F28E164111462AAC48
          D2CAC4BB9E53A97C37F1068FE15B0D7EEB46D5ADB43D4A596DECF5196D645B5B
          B9A3DDBE38E42023BAED6CA8391B0E71835CB5F48119C9240071C8E315FB99A4
          FC61B8F8C5FB427C4BD27E1E7C78F0D78AF57F10406C57E197C47F095DDBD85A
          F960A4F6C33E449B9163BA12471C2EC63204EB23289ABF0BFC4D6F2D86AB3C13
          24D14D13B46D1C8A55D083C820F20E78C1C7A568926B4FEBF2265A1FAD5FF06B
          0CFE737C76E738FF00847FB63FE8274541FF0006AA3333FC7ACF7FF847CFBFFC
          C528AF2B13FC4674D37EEA3E36FF008227782BC57E30FDB2607F0278C3C3FE10
          F16E91A35E5FE9D1EB3134D69AF32280D60E8AC199240C59CC799238E3925505
          A315F53FEDDFF0BB48F0F7FC13FB5AD53E2DFC20F851F06BE2EC374B6BE1083C
          357B15A9D66137568D74FF0065B57747115B613333CBB59D8810798BBBF29F49
          9DEC0A3C4CC8C06E04120823A568DDEA771748B24B3492B0FEF1C819E4FEB5F4
          3522E4EF7DBFCFFAF23CF552CAC7E8FF00FC10F3E2FF00877E1B7C17F8F961A8
          F8E3C03E09D7BC49A759D9683278AF55B7B3B49AEBC8D41559965CF9B1A3CB19
          7508E30D820EEC1C4FF8289F8BFE2FDFFC02D32CFC77FB41FC21F8ABA0C1AD41
          25A68FE16BDB29AEAD265B79D567C5BDA42C215467424923322704918FCFFB2B
          9903BA6E3FBAC6D3DFAE2B4ADAE247855CBB1247F8D67529272E62E3534B58FD
          01FD9A3F6A8D0FE00FFC1267C432DAF88747B3F8976DF122DEF3C2F6923C33DF
          5B4C62B20F72B03E4F966DA3BC8F7B2953965CE6A97FC140FF006A3F017EDA1F
          057C21E3887C6179A67C4FB2431EB9E0C90EA373A7465996133D949206B7B7DC
          2DE376891B0EAC0B1F3236327C17A95DC92D969B1B3360EAB09FBC7B5BCF8EFF
          00ED1F7FD73B2B70E080589C01D7DF15CF285DBF535E6D91F5D7FC12E7F6ADF0
          CFC0FF001BF8C3C2BE3ED4E6D3FE1CFC49D067D2759B98E2795ADDFCB90452FC
          91BCBF7249E3010633386604271C77FC148BF6AB83F6B0FDAC3C41E23D3E679B
          C3966574BD070CC54D9439549143A2322CADBE6D8CB94331539C64FCFB1CAC43
          2E481C9E0FB818A4963DAAAC4B317C8E4F4E71C56725ADC7CC7D39E3FF00DB23
          C21AFF00FC1323C1DF072C6C35A8BC5FA2F8864D5F51B9960896C66426EF6EC6
          121766DB34230D1A8F95B9200CEB7FC139BF69E171A4EA3F00FC51E13D4BC6FF
          000EBE245FC53DDD9E9315C7F6A6993A342F25EC3F66569A758E3B6123C015B7
          0806303CC593E4179DA3761D768E09249E4E3FA52BDC341F321DACA38238C74A
          561F39F6EFFC144B58F017ECABF072C3E067C3FF000E43245AEAD8F8B759F10E
          B6229BC49E632CFE4D9DDC2D6D1B58CF0A484796BB1D63958151E7CDE67847EC
          5FFB6DEB7FB1AFC41D4EFADB4EB1F117877C496A34CF10F87B512E6CB56B4F31
          4C8AC99D9E688C491A3C89204134994656656F19BB76B82C59D8939F7EF8CD57
          BA72C541258B36324E4FD7EBCD572E9A93CDAE87D837BFF0532F08FC24F00788
          6C3E077C2483E13F88FC536C9A75F788BFE124BAD5EFA1B4058B25B995434123
          3104CAAD93B5491BD2374F973E167C69F11FC0DF895A7F8BBC29AB5D68BE20D2
          A432D9DEC4119E12CACADF2B02ACA54B02AC0AB066041048AE6EE1764D70B92D
          B5C804E33D4D47708229194763B7EB5A722EA439367D94DFF05C6F1CF86751F1
          06AFE1AF86FF00063C27E2AD7E2952E35FD27C34D16A4CD2B799248F234CC266
          32859312865665058357C31AADC35DC86476C97EE4F5E7F9E2AFCF668D2B1393
          8E7AFBE3F95412DB2CB1866CE4EDF6EB5AF2A57B19F3B7B9FACBFF0006A9AED9
          7E3D739E3C3C3FF4E94559FF008358EC52C9BE3C6CCF2DA0039F6FED3FF1A2BC
          6C5FF16477517EE23FFFD9}
        Stretch = True
      end
      object QRShape4: TQRShape
        Left = 8
        Top = 290
        Width = 705
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          21.166666666666670000
          767.291666666666700000
          1865.312500000000000000)
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel5: TQRLabel
        Left = 11
        Top = 292
        Width = 141
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          29.104166666666670000
          772.583333333333300000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'COD- BARRAS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 156
        Top = 292
        Width = 290
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          412.750000000000000000
          772.583333333333300000
          767.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PRODUTO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel7: TQRLabel
        Left = 522
        Top = 292
        Width = 79
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1381.125000000000000000
          772.583333333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'VALOR UNT.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape5: TQRShape
        Left = 149
        Top = 290
        Width = 11
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          394.229166666666700000
          767.291666666666700000
          29.104166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 445
        Top = 290
        Width = 11
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1177.395833333333000000
          767.291666666666700000
          29.104166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 610
        Top = 292
        Width = 79
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1613.958333333333000000
          772.583333333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'VALOR UNT.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 456
        Top = 292
        Width = 53
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1206.500000000000000000
          772.583333333333300000
          140.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QUNT'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape7: TQRShape
        Left = 510
        Top = 290
        Width = 11
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1349.375000000000000000
          767.291666666666700000
          29.104166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 600
        Top = 290
        Width = 11
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1587.500000000000000000
          767.291666666666700000
          29.104166666666670000)
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object qReferente: TQRRichText
        Left = 17
        Top = 203
        Width = 688
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666666700000
          44.979166666666670000
          537.104166666666700000
          1820.333333333333000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRDBText14: TQRDBText
        Left = 42
        Top = 167
        Width = 89
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          111.125000000000000000
          441.854166666666700000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qRecibo
        DataField = 'NUM_RECIBO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
      object QRDBText15: TQRDBText
        Left = 610
        Top = 169
        Width = 89
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1613.958333333333000000
          447.145833333333300000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qRecibo
        DataField = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 372
      Width = 718
      Height = 143
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        378.354166666666700000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QrDataExtenso: TQRLabel
        Left = 372
        Top = 42
        Width = 329
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          984.250000000000000000
          111.125000000000000000
          870.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fortaleza'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel1: TQRLabel
        Left = 372
        Top = 83
        Width = 329
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          984.250000000000000000
          219.604166666666700000
          870.479166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '___________________________________________________________'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 372
        Top = 103
        Width = 329
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          984.250000000000000000
          272.520833333333300000
          870.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Vendedor(a)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 351
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 11
        Top = 2
        Width = 142
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          5.291666666666667000
          375.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ItensRecibo
        DataField = 'PRODUTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText10: TQRDBText
        Left = 158
        Top = 2
        Width = 291
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          418.041666666666700000
          5.291666666666667000
          769.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ItensRecibo
        DataField = 'DECRICAO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 453
        Top = 2
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1198.562500000000000000
          5.291666666666667000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ItensRecibo
        DataField = 'QUANT'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 520
        Top = 2
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1375.833333333333000000
          5.291666666666667000
          211.666666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ItensRecibo
        DataField = 'VALOR'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText13: TQRDBText
        Left = 608
        Top = 2
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1608.666666666667000000
          5.291666666666667000
          214.312500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ItensRecibo
        DataField = 'TOTAL'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
  object qRecibo: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      
        'select recibo.cod_recibo, recibo.num_recibo, recibo.cliente, rec' +
        'ibo.data, recibo.hora, recibo.valor, recibo.referente'
      'from recibo'
      'where recibo.num_recibo =:numrecibo')
    Params = <
      item
        DataType = ftString
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    Left = 248
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    object qReciboCOD_RECIBO: TIntegerField
      FieldName = 'COD_RECIBO'
      Required = True
    end
    object qReciboNUM_RECIBO: TStringField
      FieldName = 'NUM_RECIBO'
      Size = 10
    end
    object qReciboCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 30
    end
    object qReciboDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qReciboHORA: TStringField
      FieldName = 'HORA'
      Size = 10
    end
    object qReciboVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
    end
    object qReciboREFERENTE: TStringField
      FieldName = 'REFERENTE'
      Size = 200
    end
  end
  object qEmitente: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from C999999')
    Params = <>
    Properties.Strings = (
      'SELECT * FROM C999999')
    Left = 208
    Top = 24
    object qEmitenteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qEmitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object qEmitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qEmitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qEmitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qEmitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qEmitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qEmitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object qEmitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qEmitenteIE: TStringField
      FieldName = 'IE'
    end
    object qEmitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qEmitenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qEmitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qEmitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qEmitenteFAX: TStringField
      FieldName = 'FAX'
    end
    object qEmitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qEmitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object qEmitenteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qEmitenteRAMO_ATIVIDADE: TStringField
      FieldName = 'RAMO_ATIVIDADE'
      ReadOnly = True
      Size = 100
    end
  end
  object ItensRecibo: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      
        'select itens_recibo.cod_iten_recibo, itens_recibo.num_recibo, it' +
        'ens_recibo.produto, itens_recibo.quant, itens_recibo.valor, iten' +
        's_recibo.total, c000025.produto As Decricao'
      'from c000025'
      
        '   inner join itens_recibo on (c000025.codbarra = itens_recibo.p' +
        'roduto)'
      'where itens_recibo.num_recibo =:numrecibo')
    Params = <
      item
        DataType = ftString
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    Left = 288
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'numrecibo'
        ParamType = ptInput
      end>
    object ItensReciboCOD_ITEN_RECIBO: TIntegerField
      FieldName = 'COD_ITEN_RECIBO'
      Required = True
    end
    object ItensReciboNUM_RECIBO: TStringField
      FieldName = 'NUM_RECIBO'
      Size = 10
    end
    object ItensReciboPRODUTO: TStringField
      FieldName = 'PRODUTO'
    end
    object ItensReciboQUANT: TIntegerField
      FieldName = 'QUANT'
    end
    object ItensReciboVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
    end
    object ItensReciboTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      currency = True
    end
    object ItensReciboDECRICAO: TStringField
      FieldName = 'DECRICAO'
      Size = 60
    end
  end
end
