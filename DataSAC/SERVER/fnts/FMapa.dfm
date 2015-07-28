object FormMapa: TFormMapa
  Left = 145
  Top = 113
  Width = 800
  Height = 500
  Caption = 'Controle de Rotas 2.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 53
    Align = alTop
    BorderStyle = bsSingle
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 14
      Width = 42
      Height = 19
      Caption = 'Local'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 394
      Top = 16
      Width = 59
      Height = 19
      Caption = 'Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtOrigem: TEdit
      Left = 84
      Top = 13
      Width = 300
      Height = 21
      TabOrder = 0
      Text = 'S'#227'o Paulo, sp'
    end
    object edtDestino: TEdit
      Left = 461
      Top = 17
      Width = 300
      Height = 21
      TabOrder = 1
      Text = 'Rio de Janeiro, rj'
    end
    object Button1: TButton
      Left = 771
      Top = 16
      Width = 104
      Height = 25
      Caption = 'Iniciar Rota'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 53
    Width = 792
    Height = 394
    Align = alClient
    TabOrder = 1
    ControlData = {
      4C000000DB510000B92800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object AdvOfficeStatusBar1: TAdvOfficeStatusBar
    Left = 0
    Top = 447
    Width = 792
    Height = 19
    AnchorHint = False
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'd/M/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Text = 'Controle de Rotas'
        TimeFormat = 'hh:mm:ss'
        Width = 120
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'd/M/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Text = 'v. 2.0'
        TimeFormat = 'hh:mm:ss'
        Width = 60
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'd/M/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        Text = 'solivansoft@hotmail.com'
        TimeFormat = 'hh:mm:ss'
        Width = 200
      end
      item
        AppearanceStyle = psLight
        DateFormat = 'd/M/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 50
      end>
    SimplePanel = False
    URLColor = clBlue
    Styler = AdvOfficeStatusBarOfficeStyler1
    Version = '1.3.0.2'
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    Style = psOffice2007Luna
    BorderColor = 11566422
    PanelAppearanceLight.BorderColor = clNone
    PanelAppearanceLight.BorderColorHot = 10079963
    PanelAppearanceLight.BorderColorDown = 4548219
    PanelAppearanceLight.Color = 16377559
    PanelAppearanceLight.ColorTo = 16309447
    PanelAppearanceLight.ColorHot = 16515071
    PanelAppearanceLight.ColorHotTo = 12644607
    PanelAppearanceLight.ColorDown = 7845111
    PanelAppearanceLight.ColorDownTo = 4561657
    PanelAppearanceLight.ColorMirror = 16109747
    PanelAppearanceLight.ColorMirrorTo = 16244941
    PanelAppearanceLight.ColorMirrorHot = 7067903
    PanelAppearanceLight.ColorMirrorHotTo = 10544892
    PanelAppearanceLight.ColorMirrorDown = 1671928
    PanelAppearanceLight.ColorMirrorDownTo = 241407
    PanelAppearanceLight.TextColor = 6365193
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = 10079963
    PanelAppearanceDark.BorderColorDown = 4548219
    PanelAppearanceDark.Color = 16309445
    PanelAppearanceDark.ColorTo = 16103047
    PanelAppearanceDark.ColorHot = 16515071
    PanelAppearanceDark.ColorHotTo = 12644607
    PanelAppearanceDark.ColorDown = 7845111
    PanelAppearanceDark.ColorDownTo = 4561657
    PanelAppearanceDark.ColorMirror = 15382160
    PanelAppearanceDark.ColorMirrorTo = 12752244
    PanelAppearanceDark.ColorMirrorHot = 7067903
    PanelAppearanceDark.ColorMirrorHotTo = 10544892
    PanelAppearanceDark.ColorMirrorDown = 1671928
    PanelAppearanceDark.ColorMirrorDownTo = 241407
    PanelAppearanceDark.TextColor = 6365193
    PanelAppearanceDark.TextColorHot = 6365193
    PanelAppearanceDark.TextColorDown = 6365193
    PanelAppearanceDark.TextStyle = []
    Left = 384
    Top = 368
  end
end
