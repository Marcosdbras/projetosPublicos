object frmemailmark: Tfrmemailmark
  Left = 103
  Top = 57
  Width = 913
  Height = 631
  BorderIcons = []
  Caption = 'Enviar Email Marketing'
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
  object pnlcentral: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 597
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 6
      Top = 34
      Width = 38
      Height = 13
      Caption = 'Assunto'
    end
    object Label3: TLabel
      Left = 6
      Top = 9
      Width = 28
      Height = 13
      Caption = 'Nome'
    end
    object lblnnf: TLabel
      Left = 864
      Top = 16
      Width = 25
      Height = 13
      Caption = 'lblnnf'
      Visible = False
    end
    object lblnped: TLabel
      Left = 864
      Top = 32
      Width = 34
      Height = 13
      Caption = 'lblnped'
      Visible = False
    end
    object spdconfirma: TSpeedButton
      Left = 851
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdconfirmaClick
    end
    object btnenviar: TButton
      Left = 822
      Top = 528
      Width = 75
      Height = 25
      Caption = '&Enviar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnenviarClick
    end
    object ediassunto: TEdit
      Left = 126
      Top = 30
      Width = 371
      Height = 21
      TabOrder = 1
      Text = 'ediassunto'
    end
    object edinome: TEdit
      Left = 126
      Top = 6
      Width = 371
      Height = 21
      TabOrder = 2
      Text = 'edinome'
    end
    object mmomsg: TMemo
      Left = 3
      Top = 152
      Width = 894
      Height = 369
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Fixedsys'
      Font.Style = []
      Lines.Strings = (
        'mmomsg')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object btnsalvar: TButton
      Left = 742
      Top = 528
      Width = 75
      Height = 25
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = False
      OnClick = btnsalvarClick
    end
    object lbldest: TButton
      Left = 4
      Top = 56
      Width = 115
      Height = 89
      Caption = '&Destinat'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = lbldestClick
    end
    object lbxdest: TListBox
      Left = 126
      Top = 56
      Width = 371
      Height = 89
      ItemHeight = 13
      TabOrder = 6
    end
  end
  object SMTP: TIdSMTP
    IOHandler = IOHSocket
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 8
    Top = 568
  end
  object IOHSocket: TIdIOHandlerSocket
    SocksInfo = SocksInfo
    Left = 40
    Top = 568
  end
  object SocksInfo: TIdSocksInfo
    Authentication = saUsernamePassword
    Left = 72
    Top = 568
  end
  object MSG: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <
      item
      end>
    Encoding = meMIME
    Recipients = <
      item
      end>
    ReplyTo = <>
    Left = 104
    Top = 568
  end
  object sdgemail: TSaveDialog
    Filter = 'Texto|*.txt'
    Left = 136
    Top = 568
  end
  object DlgAbrir: TOpenDialog
    Filter = 'texto|*.txt'
    Left = 576
    Top = 104
  end
  object Timer1: TTimer
    Interval = 5000
    Left = 584
    Top = 80
  end
end
