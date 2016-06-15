object frmpcodibge: Tfrmpcodibge
  Left = 257
  Top = 266
  Width = 676
  Height = 253
  BorderIcons = []
  Caption = 'Consulta C'#243'digo IBGE na Internet'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btninserir: TBitBtn
    Left = 501
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 14
    OnClick = btninserirClick
  end
  object btncancelar: TBitBtn
    Left = 581
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 15
    OnClick = btncancelarClick
  end
  object edicep: TMaskEdit
    Left = 8
    Top = 20
    Width = 104
    Height = 21
    EditMask = '00000\-999;1;_'
    MaxLength = 9
    TabOrder = 0
    Text = '     -   '
  end
  object btnconsultacep: TBitBtn
    Left = 120
    Top = 18
    Width = 81
    Height = 25
    Caption = 'Consulta CEP'
    TabOrder = 1
    OnClick = btnconsultacepClick
  end
  object memores: TMemo
    Left = 721
    Top = 360
    Width = 216
    Height = 73
    Lines.Strings = (
      'memores')
    TabOrder = 2
    Visible = False
  end
  object edicepresp: TEdit
    Left = 985
    Top = 408
    Width = 65
    Height = 21
    TabOrder = 3
    Text = 'edicepresp'
    Visible = False
  end
  object ediuf: TEdit
    Left = 208
    Top = 20
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    Text = 'EDIUF'
  end
  object edicidade: TEdit
    Left = 272
    Top = 20
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    Text = 'EDICIDADE'
  end
  object edibairro: TEdit
    Left = 8
    Top = 52
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'EDIBAIRRO'
  end
  object editipolog: TEdit
    Left = 208
    Top = 52
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    Text = 'EDITIPOLOG'
  end
  object edilogradouro: TEdit
    Left = 8
    Top = 84
    Width = 393
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    Text = 'EDILOGRADOURO'
  end
  object ediresultado: TEdit
    Left = 833
    Top = 408
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
    Text = 'EDIRESULTADO'
    Visible = False
  end
  object ediresultadotxt: TEdit
    Left = 832
    Top = 384
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    Text = 'EDIRESULTADOTXT'
    Visible = False
  end
  object ediufibge: TEdit
    Left = 8
    Top = 114
    Width = 73
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 11
    Text = 'EDIUFIBGE'
  end
  object edicidadeibge: TEdit
    Left = 913
    Top = 408
    Width = 65
    Height = 21
    TabOrder = 12
    Text = 'edicidadeibge'
    Visible = False
  end
  object edidigito: TEdit
    Left = 88
    Top = 114
    Width = 313
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 13
    Text = 'EDIDIGITO'
  end
  object Memo1: TMemo
    Left = 408
    Top = 16
    Width = 249
    Height = 137
    Cursor = crArrow
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Instru'#231#227'o Inicial'
      ''
      'Este sistema utiliza base de dados '
      'pr'#243'pria para consulta de cep dos '
      'correios e ibge. Se voc'#234' n'#227'o '
      'conseguir localizar a informa'#231#227'o '
      'desejada, pe'#231'o por gentileza que '
      'fa'#231'a consultas nos seguintes sites:'
      ''
      'www.buscacep.correios.com.br'
      'http://www.ibge.gov.br/home/'
      '     '
      'geociencias/areaterritorial/area.shtm'
      ''
      'e insira as informa'#231#245'es manualmente '
      'no sistema. Para que haja a '
      'atualiza'#231#227'o da base de dados central '
      #233' necess'#225'rios que seja feita a '
      'comunica'#231#227'o do cep n'#227'o localizado '
      'atrav'#233's do endere'#231'o '
      'www.marcosbras.com via op'#231#227'o '
      'contate-nos')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 16
    OnEnter = Memo1Enter
  end
  object XMLDocument1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 56
    Top = 184
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
    Left = 24
    Top = 184
  end
end
