object frmcopiaapl4: Tfrmcopiaapl4
  Left = 25
  Top = 114
  Width = 914
  Height = 613
  Caption = 'Copiar para Aplicativos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 906
    Height = 45
    Align = alTop
  end
  object spdconfirma: TSpeedButton
    Left = 864
    Top = 4
    Width = 38
    Height = 33
    Caption = 'Conf.'
    Flat = True
    NumGlyphs = 2
    OnClick = spdconfirmaClick
  end
  object SpeedButton1: TSpeedButton
    Left = 824
    Top = 4
    Width = 38
    Height = 33
    Caption = 'Canc.'
    Flat = True
    NumGlyphs = 2
    OnClick = SpeedButton1Click
  end
  object Bevel2: TBevel
    Left = 0
    Top = 45
    Width = 906
    Height = 106
    Align = alTop
  end
  object Bevel3: TBevel
    Left = 0
    Top = 151
    Width = 906
    Height = 435
    Align = alClient
  end
  object Label3: TLabel
    Left = 8
    Top = 84
    Width = 289
    Height = 37
    Caption = 'Copia informa'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblmensagem2: TLabel
    Left = 256
    Top = 439
    Width = 98
    Height = 23
    Alignment = taCenter
    Caption = 'Aguarde!!! '
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblmensagem: TLabel
    Left = 256
    Top = 528
    Width = 223
    Height = 23
    Alignment = taCenter
    Caption = 'Movimentando Registros.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object antmove: TAnimate
    Left = 256
    Top = 465
    Width = 272
    Height = 60
    CommonAVI = aviCopyFile
    StopFrame = 20
  end
end
