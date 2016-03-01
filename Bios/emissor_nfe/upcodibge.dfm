object frmpcodibge: Tfrmpcodibge
  Left = 408
  Top = 267
  Width = 497
  Height = 327
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
  object Label1: TLabel
    Left = 10
    Top = 190
    Width = 436
    Height = 13
    Caption = 
      'Este sistema utiliza base de dados pr'#243'prio para consulta de cep ' +
      'dos correios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 206
    Width = 473
    Height = 13
    Caption = 
      'se voc'#234' n'#227'o conseguir localizar o cep desejado, pe'#231'o por gentile' +
      'za que nos envie '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 223
    Width = 452
    Height = 13
    Caption = 
      'o mesmo  para que possamos inseri-lo em nossa base de dados, com' +
      'unique-nos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 240
    Width = 321
    Height = 13
    Caption = 'atrav'#233's do site www.marcosbras.com op'#231#227'o contate-nos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btninserir: TBitBtn
    Left = 328
    Top = 273
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 14
    OnClick = btninserirClick
  end
  object btncancelar: TBitBtn
    Left = 408
    Top = 273
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 15
    OnClick = btncancelarClick
  end
  object edicep: TMaskEdit
    Left = 8
    Top = 64
    Width = 104
    Height = 21
    EditMask = '00000\-999;1;_'
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
  end
  object btnconsultacep: TBitBtn
    Left = 120
    Top = 62
    Width = 81
    Height = 25
    Caption = 'Consulta CEP'
    TabOrder = 1
    OnClick = btnconsultacepClick
  end
  object memores: TMemo
    Left = 593
    Top = 136
    Width = 65
    Height = 73
    Lines.Strings = (
      'memores')
    TabOrder = 2
    Visible = False
  end
  object edicepresp: TEdit
    Left = 521
    Top = 136
    Width = 65
    Height = 21
    TabOrder = 3
    Text = 'edicepresp'
    Visible = False
  end
  object ediuf: TEdit
    Left = 208
    Top = 64
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    Text = 'EDIUF'
  end
  object edicidade: TEdit
    Left = 272
    Top = 64
    Width = 137
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    Text = 'EDICIDADE'
  end
  object edibairro: TEdit
    Left = 8
    Top = 96
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'EDIBAIRRO'
  end
  object editipolog: TEdit
    Left = 208
    Top = 96
    Width = 201
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    Text = 'EDITIPOLOG'
  end
  object edilogradouro: TEdit
    Left = 8
    Top = 128
    Width = 401
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    Text = 'EDILOGRADOURO'
  end
  object ediresultado: TEdit
    Left = 529
    Top = 248
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    Text = 'EDIRESULTADO'
    Visible = False
  end
  object ediresultadotxt: TEdit
    Left = 521
    Top = 216
    Width = 321
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    Text = 'EDIRESULTADOTXT'
    Visible = False
  end
  object ediufibge: TEdit
    Left = 8
    Top = 158
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
    Text = 'EDIUFIBGE'
  end
  object edicidadeibge: TEdit
    Left = 521
    Top = 184
    Width = 65
    Height = 21
    TabOrder = 12
    Text = 'edicidadeibge'
    Visible = False
  end
  object edidigito: TEdit
    Left = 88
    Top = 158
    Width = 321
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 13
    Text = 'EDIDIGITO'
  end
  object XMLDocument1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
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
