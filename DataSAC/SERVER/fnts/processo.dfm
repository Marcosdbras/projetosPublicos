object frmprocesso: Tfrmprocesso
  Left = 286
  Top = 233
  BorderStyle = bsToolWindow
  Caption = 'Processando...Aguarde...'
  ClientHeight = 73
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = -3
    Top = 33
    Width = 537
    Height = 2
  end
  object p: TRzProgressBar
    Left = 8
    Top = 8
    Width = 513
    Height = 17
    BackColor = clBtnFace
    BarColor = 12582847
    BarColorStop = 59904
    BarStyle = bsGradient
    BorderOuter = fsFlat
    BorderWidth = 0
    FlatColor = clGray
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
  object bitbtn1: TAdvGlowButton
    Left = 206
    Top = 43
    Width = 147
    Height = 24
    Caption = 'Cancelar'
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
    TabOrder = 0
    OnClick = bitbtn1Click
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
