object frmApDados: TfrmApDados
  Left = 15
  Top = 11
  Width = 818
  Height = 610
  BorderIcons = []
  Caption = 'Apaga Dados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 151
    Width = 810
    Height = 425
    Align = alClient
  end
  object Bevel2: TBevel
    Left = 0
    Top = 45
    Width = 810
    Height = 106
    Align = alTop
  end
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 810
    Height = 45
    Align = alTop
  end
  object Label1: TLabel
    Left = 8
    Top = 109
    Width = 25
    Height = 22
    Caption = 'De'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 109
    Width = 26
    Height = 22
    Caption = 'at'#233
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 634
    Height = 37
    Caption = 'Move informa'#231#245'es para arquivo liquidado'
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
  object Label5: TLabel
    Left = 8
    Top = 240
    Width = 678
    Height = 37
    Caption = ' do SYSTCOM e move-los para este sistema.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
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
  object spdconfirma: TSpeedButton
    Left = 765
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
    OnClick = spdconfirmaClick
  end
  object SpeedButton1: TSpeedButton
    Left = 725
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
    OnClick = SpeedButton1Click
  end
  object Label6: TLabel
    Left = 8
    Top = 360
    Width = 321
    Height = 13
    Caption = 
      'Somente ativar fun'#231#227'o abaixo para processos envolvidos em testes' +
      '.'
  end
  object Label7: TLabel
    Left = 8
    Top = 288
    Width = 342
    Height = 13
    Caption = 
      'Somente ativar fun'#231#227'o abaixo para processos de transfer'#234'ncia de ' +
      'dados'
  end
  object dtpdatai: TDateTimePicker
    Left = 56
    Top = 108
    Width = 161
    Height = 30
    Date = 39647.643559745370000000
    Time = 39647.643559745370000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object dtpdataf: TDateTimePicker
    Left = 296
    Top = 108
    Width = 153
    Height = 30
    Date = 39647.643731724540000000
    Time = 39647.643731724540000000
    DateMode = dmUpDown
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object antmove: TAnimate
    Left = 256
    Top = 465
    Width = 272
    Height = 60
    CommonAVI = aviCopyFile
    StopFrame = 20
  end
  object ckbapaga: TCheckBox
    Left = 8
    Top = 304
    Width = 697
    Height = 49
    Caption = 'Apaga Dados Durante a Realiza'#231#227'o da C'#243'pia?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object ckbzera: TCheckBox
    Left = 8
    Top = 376
    Width = 433
    Height = 49
    Caption = 'Limpar Tabelas Antes de Copiar?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
end
