object frmboleto: Tfrmboleto
  Left = 192
  Top = 202
  BorderStyle = bsToolWindow
  Caption = 'BOLETO BANC'#193'RIO | Impress'#227'o'
  ClientHeight = 407
  ClientWidth = 700
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 265
    Height = 33
  end
  object Shape2: TShape
    Left = 264
    Top = 0
    Width = 65
    Height = 33
  end
  object Shape3: TShape
    Left = 328
    Top = 0
    Width = 372
    Height = 33
  end
  object Shape4: TShape
    Left = 0
    Top = 32
    Width = 529
    Height = 33
  end
  object Label2: TLabel
    Left = 5
    Top = 3
    Width = 32
    Height = 10
    Caption = 'BANCO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PVENCIMENTO: TShape
    Left = 528
    Top = 32
    Width = 172
    Height = 33
    Brush.Color = 14542071
  end
  object Label1: TLabel
    Left = 533
    Top = 35
    Width = 60
    Height = 10
    Caption = 'VENCIMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 336
    Top = 8
    Width = 344
    Height = 16
    Caption = '00000.00000 00000.000000 00000.000000 0 000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object PCEDENTE: TShape
    Left = 0
    Top = 64
    Width = 529
    Height = 33
  end
  object PAGENCIA: TShape
    Left = 528
    Top = 64
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label4: TLabel
    Left = 533
    Top = 67
    Width = 132
    Height = 10
    Caption = 'AG'#202'NCIA / C'#211'DIGO CEDENTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PNOSSO: TShape
    Left = 528
    Top = 96
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label5: TLabel
    Left = 533
    Top = 99
    Width = 76
    Height = 10
    Caption = 'NOSSO N'#218'MERO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PDATA: TShape
    Left = 0
    Top = 96
    Width = 121
    Height = 33
  end
  object Label6: TLabel
    Left = 5
    Top = 45
    Width = 336
    Height = 16
    Caption = 'QUALQUER AG'#202'NCIA BANC'#193'RIA AT'#201' O VENCIMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 5
    Top = 35
    Width = 32
    Height = 10
    Caption = 'BANCO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape10: TShape
    Left = 0
    Top = 128
    Width = 121
    Height = 33
  end
  object PVALOR: TShape
    Left = 528
    Top = 128
    Width = 172
    Height = 33
    Brush.Color = 14542071
  end
  object Label8: TLabel
    Left = 533
    Top = 131
    Width = 127
    Height = 10
    Caption = '(=) VALOR DO DOCUMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PDESCONTO: TShape
    Left = 528
    Top = 160
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label9: TLabel
    Left = 533
    Top = 163
    Width = 136
    Height = 10
    Caption = '(-) DESCONTO / ABATIMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PDEDUCOES: TShape
    Left = 528
    Top = 192
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label10: TLabel
    Left = 533
    Top = 195
    Width = 105
    Height = 10
    Caption = '(-) OUTRAS DEDU'#199#213'ES'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PMORA: TShape
    Left = 528
    Top = 224
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label11: TLabel
    Left = 533
    Top = 227
    Width = 88
    Height = 10
    Caption = '(+) MORA / MULTA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PACRESCIMOS: TShape
    Left = 528
    Top = 256
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label12: TLabel
    Left = 533
    Top = 259
    Width = 119
    Height = 10
    Caption = '(+) OUTROS ACR'#201'SCIMOS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PCOBRADO: TShape
    Left = 528
    Top = 288
    Width = 172
    Height = 33
    Brush.Color = clWindow
  end
  object Label13: TLabel
    Left = 533
    Top = 291
    Width = 96
    Height = 10
    Caption = '(=) VALOR COBRADO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object POBS: TShape
    Left = 0
    Top = 160
    Width = 529
    Height = 161
  end
  object Label14: TLabel
    Left = 5
    Top = 67
    Width = 40
    Height = 10
    Caption = 'CEDENTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 5
    Top = 99
    Width = 103
    Height = 10
    Caption = 'DATA DO DOCUMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PDOCUMENTO: TShape
    Left = 120
    Top = 96
    Width = 145
    Height = 33
  end
  object Label16: TLabel
    Left = 125
    Top = 99
    Width = 119
    Height = 10
    Caption = 'N'#218'MERO DO DOCUMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PESP: TShape
    Left = 264
    Top = 96
    Width = 73
    Height = 33
  end
  object Label17: TLabel
    Left = 269
    Top = 99
    Width = 58
    Height = 10
    Caption = 'ESP.DOCUM.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PACEITE: TShape
    Left = 336
    Top = 96
    Width = 73
    Height = 33
  end
  object Label18: TLabel
    Left = 341
    Top = 99
    Width = 31
    Height = 10
    Caption = 'ACEITE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape21: TShape
    Left = 408
    Top = 96
    Width = 121
    Height = 33
  end
  object Label19: TLabel
    Left = 413
    Top = 99
    Width = 107
    Height = 10
    Caption = 'DATA PROCESSAMENTO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 424
    Top = 112
    Width = 80
    Height = 16
    Caption = '00/00/0000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label21: TLabel
    Left = 5
    Top = 131
    Width = 72
    Height = 10
    Caption = 'USO DO BANCO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape22: TShape
    Left = 120
    Top = 128
    Width = 57
    Height = 33
  end
  object Label22: TLabel
    Left = 125
    Top = 131
    Width = 44
    Height = 10
    Caption = 'CARTEIRA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 136
    Top = 144
    Width = 24
    Height = 16
    Caption = '000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object PESPECIE: TShape
    Left = 176
    Top = 128
    Width = 129
    Height = 33
  end
  object Label24: TLabel
    Left = 181
    Top = 131
    Width = 37
    Height = 10
    Caption = 'ESP'#201'CIE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object PQTDE: TShape
    Left = 304
    Top = 128
    Width = 105
    Height = 33
  end
  object Label25: TLabel
    Left = 309
    Top = 131
    Width = 61
    Height = 10
    Caption = 'QUANTIDADE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object ptotal: TShape
    Left = 408
    Top = 128
    Width = 121
    Height = 33
  end
  object Label26: TLabel
    Left = 413
    Top = 131
    Width = 30
    Height = 10
    Caption = 'VALOR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label27: TLabel
    Left = 402
    Top = 139
    Width = 12
    Height = 10
    Caption = ' X '
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object PSACADO: TShape
    Left = 0
    Top = 320
    Width = 700
    Height = 54
  end
  object Label28: TLabel
    Left = 5
    Top = 323
    Width = 38
    Height = 10
    Caption = 'SACADO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LBANCO: TLabel
    Left = 5
    Top = 13
    Width = 252
    Height = 16
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LNBANCO: TLabel
    Left = 269
    Top = 5
    Width = 52
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object LAGENCIA: TLabel
    Left = 536
    Top = 77
    Width = 153
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 536
    Top = 112
    Width = 160
    Height = 16
    Caption = '00000000000000000000'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel4: TBevel
    Left = 0
    Top = 374
    Width = 700
    Height = 3
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 377
    Width = 700
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 23
    object bimpresso: TButton
      Left = 8
      Top = 8
      Width = 17
      Height = 25
      Caption = 'Pre-Impresso'
      TabOrder = 0
      Visible = False
      OnClick = bimpressoClick
    end
    object bcobrebem: TBitBtn
      Left = 32
      Top = 8
      Width = 17
      Height = 25
      Caption = 'cobrebem'
      TabOrder = 1
      Visible = False
      OnClick = bcobrebemClick
    end
    object bfechar: TAdvGlowButton
      Left = 584
      Top = 2
      Width = 108
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
      TabOrder = 2
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
    object bimprimir: TAdvGlowButton
      Left = 227
      Top = 2
      Width = 120
      Height = 24
      Caption = 'F2 | Imprimir'
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
      TabOrder = 3
      OnClick = bimprimirClick
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
    object blimpar: TAdvGlowButton
      Left = 352
      Top = 2
      Width = 120
      Height = 24
      Caption = 'F4 | Limpar Dados'
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
        650041646F626520496D616765526561647971C9653C000002E04944415478DA
        62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
        F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
        FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
        DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
        FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
        FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
        7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
        1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
        FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
        D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
        F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
        010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
        370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
        E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
        AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
        0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
        161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
        918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
        3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
        BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
        48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
        A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
        90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
        B7520000000049454E44AE426082}
      TabOrder = 4
      OnClick = blimparClick
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
  object COMBOCONTA: TwwDBLookupCombo
    Left = 4
    Top = 76
    Width = 523
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    BorderStyle = bsNone
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'DESCRICAO'#9'35'#9'CEDENTE'#9'F'
      'banco'#9'20'#9'BANCO'#9'F'
      'agencia'#9'10'#9'AG'#202'NCIA'#9'F'#9
      'CODCONTA'#9'15'#9'CONTA'#9'F'#9)
    LookupTable = frmmodulo.qrconfig_cobrebem
    LookupField = 'DESCRICAO'
    Options = [loColLines, loRowLines, loTitles]
    ParentFont = False
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnEnter = COMBOCONTAEnter
    OnExit = COMBOCONTAExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EVENCIMENTO: TDateEdit
    Left = 592
    Top = 43
    Width = 106
    Height = 20
    BorderStyle = bsNone
    Color = 14542071
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
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
    ParentFont = False
    TabOrder = 0
    OnEnter = EVENCIMENTOEnter
    OnExit = EVENCIMENTOExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EDATA_DOC: TDateEdit
    Left = 7
    Top = 110
    Width = 106
    Height = 18
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
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
    ButtonWidth = 0
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 2
    OnEnter = EDATA_DOCEnter
    OnExit = EDATA_DOCExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object ENUMERO_DOC: TEdit
    Left = 125
    Top = 110
    Width = 134
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnEnter = ENUMERO_DOCEnter
    OnExit = ENUMERO_DOCExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EESPECIE_DOC: TEdit
    Left = 269
    Top = 110
    Width = 60
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnEnter = EESPECIE_DOCEnter
    OnExit = EESPECIE_DOCExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EACEITE: TEdit
    Left = 341
    Top = 110
    Width = 60
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnEnter = EACEITEEnter
    OnExit = EACEITEExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EESPECIE: TEdit
    Left = 181
    Top = 142
    Width = 116
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnEnter = EESPECIEEnter
    OnExit = EESPECIEExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EQTDE: TEdit
    Left = 309
    Top = 142
    Width = 84
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnEnter = EQTDEEnter
    OnExit = EQTDEExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EVALOR: TEdit
    Left = 421
    Top = 142
    Width = 100
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnEnter = EVALOREnter
    OnExit = EVALORExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object RVALOR_DOC: TRxCalcEdit
    Left = 576
    Top = 142
    Width = 121
    Height = 18
    AutoSize = False
    BorderStyle = bsNone
    Color = 14542071
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
    OnEnter = RVALOR_DOCEnter
    OnExit = RVALOR_DOCExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object RDESCONTO: TRxCalcEdit
    Left = 576
    Top = 174
    Width = 121
    Height = 18
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 10
    OnEnter = RDESCONTOEnter
    OnExit = RDESCONTOExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object ROUTRAS: TRxCalcEdit
    Left = 576
    Top = 206
    Width = 121
    Height = 18
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 11
    OnEnter = ROUTRASEnter
    OnExit = ROUTRASExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object RMORA: TRxCalcEdit
    Left = 576
    Top = 238
    Width = 121
    Height = 18
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 12
    OnEnter = RMORAEnter
    OnExit = RMORAExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object ROUTROS: TRxCalcEdit
    Left = 576
    Top = 270
    Width = 121
    Height = 18
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 13
    OnEnter = ROUTROSEnter
    OnExit = ROUTROSExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object RVALOR_COBRADO: TRxCalcEdit
    Left = 576
    Top = 302
    Width = 121
    Height = 18
    AutoSize = False
    BorderStyle = bsNone
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 14
    OnEnter = RVALOR_COBRADOEnter
    OnExit = RVALOR_COBRADOExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object Edit7: TEdit
    Left = 8
    Top = 168
    Width = 513
    Height = 21
    BorderStyle = bsNone
    TabOrder = 15
    OnEnter = Edit7Enter
    OnExit = Edit7Exit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object Edit8: TEdit
    Left = 8
    Top = 192
    Width = 513
    Height = 21
    BorderStyle = bsNone
    TabOrder = 16
    OnEnter = Edit7Enter
    OnExit = Edit7Exit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object Edit9: TEdit
    Left = 8
    Top = 216
    Width = 513
    Height = 21
    BorderStyle = bsNone
    TabOrder = 17
    OnEnter = Edit7Enter
    OnExit = Edit7Exit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object Edit10: TEdit
    Left = 8
    Top = 240
    Width = 513
    Height = 21
    BorderStyle = bsNone
    TabOrder = 18
    OnEnter = Edit7Enter
    OnExit = Edit7Exit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object Edit11: TEdit
    Left = 8
    Top = 264
    Width = 513
    Height = 21
    BorderStyle = bsNone
    TabOrder = 19
    OnEnter = Edit7Enter
    OnExit = Edit7Exit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object Edit12: TEdit
    Left = 8
    Top = 288
    Width = 513
    Height = 21
    BorderStyle = bsNone
    TabOrder = 20
    OnEnter = Edit7Enter
    OnExit = Edit7Exit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object COMBOCLIENTE: TwwDBLookupCombo
    Left = 4
    Top = 332
    Width = 685
    Height = 19
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    BorderStyle = bsNone
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'NOME'#9'40'#9'NOME'#9'F'
      'CODIGO'#9'6'#9'C'#211'DIGO'#9#9
      'CPF'#9'18'#9'CPF/CNPJ'#9#9
      'ENDERECO'#9'20'#9'ENDERE'#199'O'#9'F')
    LookupTable = frmmodulo.qrcliente
    LookupField = 'NOME'
    ParentFont = False
    TabOrder = 21
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnEnter = COMBOCLIENTEEnter
    OnExit = COMBOCLIENTEExit
    OnKeyPress = EVENCIMENTOKeyPress
  end
  object EDIT13: TEdit
    Left = 5
    Top = 352
    Width = 684
    Height = 17
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnEnter = EDIT13Enter
    OnExit = EDIT13Exit
    OnKeyPress = EDIT13KeyPress
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 224
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 113
    end
    object Limpar1: TMenuItem
      Caption = 'Limpar'
      ShortCut = 115
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object DataSource1: TDataSource
    Left = 440
    Top = 216
  end
  object qrboleto_campo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000066')
    Params = <>
    Left = 264
    Top = 208
  end
end
