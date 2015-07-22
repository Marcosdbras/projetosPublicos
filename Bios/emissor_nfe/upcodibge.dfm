object frmpcodibge: Tfrmpcodibge
  Left = 405
  Top = 267
  Width = 442
  Height = 279
  BorderIcons = []
  Caption = 'Consulta C'#243'digo IBGE na Internet'
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
  object btninserir: TBitBtn
    Left = 256
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 0
    OnClick = btninserirClick
  end
  object btncancelar: TBitBtn
    Left = 336
    Top = 16
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = btncancelarClick
  end
  object edicep: TMaskEdit
    Left = 8
    Top = 64
    Width = 104
    Height = 21
    EditMask = '00000\-999;1;_'
    MaxLength = 9
    TabOrder = 2
    Text = '     -   '
  end
  object btnconsultacep: TBitBtn
    Left = 120
    Top = 62
    Width = 81
    Height = 25
    Caption = 'Consulta CEP'
    TabOrder = 3
    OnClick = btnconsultacepClick
  end
  object memores: TMemo
    Left = 344
    Top = 256
    Width = 65
    Height = 73
    Lines.Strings = (
      'memores')
    TabOrder = 4
    Visible = False
  end
  object edicepresp: TEdit
    Left = 272
    Top = 256
    Width = 65
    Height = 21
    TabOrder = 5
    Text = 'edicepresp'
    Visible = False
  end
  object ediuf: TEdit
    Left = 208
    Top = 64
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'EDIUF'
  end
  object edicidade: TEdit
    Left = 272
    Top = 64
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    Text = 'EDICIDADE'
  end
  object edibairro: TEdit
    Left = 8
    Top = 96
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    Text = 'EDIBAIRRO'
  end
  object editipolog: TEdit
    Left = 208
    Top = 96
    Width = 201
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    Text = 'EDITIPOLOG'
  end
  object edilogradouro: TEdit
    Left = 8
    Top = 128
    Width = 401
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    Text = 'EDILOGRADOURO'
  end
  object ediresultado: TEdit
    Left = 8
    Top = 160
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
    Text = 'EDIRESULTADO'
  end
  object ediresultadotxt: TEdit
    Left = 88
    Top = 160
    Width = 321
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 12
    Text = 'EDIRESULTADOTXT'
  end
  object ediufibge: TEdit
    Left = 8
    Top = 192
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 13
    Text = 'EDIUFIBGE'
  end
  object edicidadeibge: TEdit
    Left = 272
    Top = 304
    Width = 65
    Height = 21
    TabOrder = 14
    Text = 'edicidadeibge'
    Visible = False
  end
  object edidigito: TEdit
    Left = 88
    Top = 192
    Width = 321
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 15
    Text = 'EDIDIGITO'
  end
  object XMLDocument1: TXMLDocument
    Left = 48
    Top = 16
    DOMVendorDesc = 'MSXML'
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
    Top = 16
  end
end
