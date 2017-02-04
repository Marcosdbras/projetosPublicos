object frmbalanca: Tfrmbalanca
  Left = 360
  Top = 193
  BorderStyle = bsToolWindow
  Caption = 'PRODUTOS | Exportar para Balan'#231'a'
  ClientHeight = 398
  ClientWidth = 403
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 41
    Width = 403
    Height = 3
    Align = alTop
  end
  object barra: TRzProgressBar
    Left = 0
    Top = 346
    Width = 403
    Height = 15
    Align = alBottom
    BackColor = clBtnFace
    BarColor = 12582847
    BarColorStop = 59904
    BarStyle = bsGradient
    BorderOuter = fsStatus
    BorderWidth = 0
    FlatColor = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = 12582847
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    InteriorOffset = 0
    ParentFont = False
    PartsComplete = 0
    Percent = 0
    ShowPercent = False
    ThemeAware = False
    TotalParts = 100
  end
  object Bevel2: TBevel
    Left = 0
    Top = 361
    Width = 403
    Height = 3
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 403
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 38
      Height = 13
      Caption = 'Modelo:'
    end
    object combobalanca: TwwDBComboBox
      Left = 64
      Top = 9
      Width = 329
      Height = 21
      ShowButton = True
      Style = csDropDownList
      MapList = False
      AllowClearKey = False
      DataField = 'BALANCA_MODELO'
      DataSource = dsconfig
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'FILIZOLA'
        'TOLEDO'
        'URANO')
      ItemIndex = 0
      Sorted = False
      TabOrder = 0
      UnboundDataType = wwDefault
    end
  end
  object MEMO1: TRichEdit
    Left = 0
    Top = 44
    Width = 403
    Height = 302
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Lucida Console'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 364
    Width = 403
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bitbtn1: TAdvGlowButton
      Left = 80
      Top = 4
      Width = 117
      Height = 24
      Caption = 'F2 | Iniciar'
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
        650041646F626520496D616765526561647971C9653C000002D04944415478DA
        62FCFFFF3F03250020805890396FCF3B2EFAFFEF7F2CC8D0FFFFFE3130FC03D2
        7F216C3086B1FFFE7B24E37E4E1EA4072080500C006A8EE6578C06D10C0C7F41
        0AFF22F09FBF0CDFDE9C66F8F1F1F617986610000820B8016FCE3A34B3F1AA32
        31002DFEFD763DC3FFDF7F18FEFDFECDF0FFD76F06569120861F1FAE8334FF05
        6AE645B61420809810B6FF2BE310D067F8FBED06D8B6FFBF2198552480E1D797
        270CDF3FDC66F8F7F79F3A7A18000410D880D7A7EC4258B9E4D81818D918FE7E
        BD0A36E0DFDF3F0CCC3C4640577C05DA7E8BE1EFCF4FDE725E17EEA21B001040
        4C50DB17009D0FD4F81588FF40FDFC8781895D8EE1FBFB9B201794CA795FD886
        2D16000288F1E5716B7366369113BC329E0CBFDE6C62F807F4F37FA0DFFFFDF8
        C1C0261EC8F0F6F6D2FFC050FF35E11337FBD73FBF188AB9BEFD640607F0BF8F
        AA3177C40102880518359BD878D58002BF1958F8DC81F41FB017188011F1FFCF
        3F0641F930C6FF7F7EB3FFBCB49541464493A1FEE939F63AEE7FDF987FFFB502
        B90020805880CE67FFF2ECE04FA43806D3BDEFF9D8FFFFFBC5F0EBDF1F865F40
        03A58454193425CC193EFFF8CA50F0E404C78F3FBF5E1E021A0010408CD852E2
        C3CD7A07BA3F72D9BB6AC733FCFDFF0F982480810A74D28B8F4F1804B9C5188E
        DFDBC370F6D1C17F404384000288055BC0005D610F94046B7EF8F636C36FA02B
        FEFCFBCDF01BE8CD4F3F3F3318C8DA327CF9FD8DE9E4FD236F010208C380071B
        74CE73F0AA30FC78738BE10F303CC4F9E4809AFF820D7BFEF11183108F04C3B9
        C747198EDE3DF2FAD71F0637800042F10250330FC37FA6CFA0702879F38DE1FB
        AF5FFF7F01C301E41A65116D460B253786338F8E31ECBDB5EB0550B3F3B3B6FF
        D700028805CDE9278109E81590565E9B71EF0BB29C4E0BD35746264EAE03B7F6
        3EFDF50FACF926481C208018C0390F8AEFAC503747E62363C55A86AF72D5CCFF
        452B191491C501020C009141C1D4ABC409BB0000000049454E44AE426082}
      TabOrder = 0
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
    object bitbtn2: TAdvGlowButton
      Left = 205
      Top = 4
      Width = 116
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
      OnClick = BitBtn2Click
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
  object dsconfig: TDataSource
    DataSet = frmmodulo.qrconfig
    Left = 256
    Top = 24
  end
  object URANO_PRODUTO: TwwTable
    DatabaseName = 'urf32'
    TableName = 'PRODUTOS.dbf'
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 232
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 144
    Top = 88
    object Iniciar1: TMenuItem
      Caption = 'Iniciar'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = BitBtn2Click
    end
  end
end
