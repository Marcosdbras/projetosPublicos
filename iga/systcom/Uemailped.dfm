object frmemailped: Tfrmemailped
  Left = 3
  Top = 63
  Width = 1018
  Height = 611
  BorderIcons = []
  Caption = 'Enviar Email'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 53
    Width = 27
    Height = 13
    Caption = 'e-mail'
  end
  object Label2: TLabel
    Left = 16
    Top = 77
    Width = 38
    Height = 13
    Caption = 'Assunto'
  end
  object Label3: TLabel
    Left = 16
    Top = 24
    Width = 28
    Height = 13
    Caption = 'Nome'
  end
  object lblPgto: TLabel
    Left = 16
    Top = 104
    Width = 25
    Height = 13
    Caption = 'Pgto.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
  object btnenviar: TButton
    Left = 846
    Top = 520
    Width = 75
    Height = 25
    Caption = '&Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnenviarClick
  end
  object btncancelar: TButton
    Left = 926
    Top = 520
    Width = 75
    Height = 25
    Caption = '&Voltar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btncancelarClick
  end
  object ediemail: TEdit
    Left = 88
    Top = 47
    Width = 321
    Height = 21
    TabOrder = 1
    Text = 'ediemail'
  end
  object ediassunto: TEdit
    Left = 88
    Top = 73
    Width = 217
    Height = 21
    TabOrder = 2
    Text = 'ediassunto'
  end
  object edinome: TEdit
    Left = 88
    Top = 21
    Width = 321
    Height = 21
    TabOrder = 0
    Text = 'edinome'
  end
  object mmomsg: TMemo
    Left = 3
    Top = 128
    Width = 998
    Height = 385
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Fixedsys'
    Font.Style = []
    Lines.Strings = (
      'mmomsg')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object cbxtipo: TComboBox
    Left = 88
    Top = 100
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'cbxtipo'
  end
  object btnsalvar: TButton
    Left = 766
    Top = 520
    Width = 75
    Height = 25
    Caption = '&Salvar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnsalvarClick
  end
  object IOHSocket: TIdIOHandlerSocket
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    Left = 592
    Top = 8
  end
  object MSG: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <
      item
      end>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <
      item
      end>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 656
    Top = 8
  end
  object sdgemail: TSaveDialog
    Filter = 'Texto|*.txt'
    Left = 688
    Top = 8
  end
  object socksinfo: TIdSocksInfo
    Left = 792
    Top = 72
  end
  object smtp: TIdSMTP
    SASLMechanisms = <>
    Left = 704
    Top = 64
  end
end
