object frmcopiaapl3: Tfrmcopiaapl3
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
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    OnClick = spdconfirmaClick
  end
  object SpeedButton1: TSpeedButton
    Left = 824
    Top = 4
    Width = 38
    Height = 33
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      555555555555555555555555555555555555555555FF55555555555559055555
      55555555577FF5555555555599905555555555557777F5555555555599905555
      555555557777FF5555555559999905555555555777777F555555559999990555
      5555557777777FF5555557990599905555555777757777F55555790555599055
      55557775555777FF5555555555599905555555555557777F5555555555559905
      555555555555777FF5555555555559905555555555555777FF55555555555579
      05555555555555777FF5555555555557905555555555555777FF555555555555
      5990555555555555577755555555555555555555555555555555}
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
    Top = 56
    Width = 463
    Height = 37
    Caption = 'Move informa'#231#245'es Aplicativos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 172
    Width = 773
    Height = 37
    Caption = 'Aten'#231#227'o!!! Essa opera'#231#227'o Poder'#225' Excluir os dados'
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
  object Label1: TLabel
    Left = 8
    Top = 236
    Width = 742
    Height = 37
    Caption = 'Copia dados de Aplicativos para SYSTCOM 2009'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
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
