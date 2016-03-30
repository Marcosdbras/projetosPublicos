object frmpcodcest: Tfrmpcodcest
  Left = 362
  Top = 274
  Width = 417
  Height = 288
  BorderIcons = []
  Caption = 'Pesquisa C'#243'digo Especificador da Substitui'#231#227'o Tribut'#225'ria'
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
  object Label1: TLabel
    Left = 11
    Top = 2
    Width = 24
    Height = 13
    Caption = 'NCM'
  end
  object Label2: TLabel
    Left = 211
    Top = 2
    Width = 100
    Height = 13
    Caption = 'C'#243'digo Especificador'
  end
  object Label3: TLabel
    Left = 11
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label4: TLabel
    Left = 10
    Top = 186
    Width = 48
    Height = 13
    Caption = 'Resultado'
    Visible = False
  end
  object btninserir: TBitBtn
    Left = 246
    Top = 181
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 7
    OnClick = btninserirClick
  end
  object btncancelar: TBitBtn
    Left = 326
    Top = 181
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 8
    OnClick = btncancelarClick
  end
  object edincm: TMaskEdit
    Left = 8
    Top = 20
    Width = 104
    Height = 21
    TabOrder = 0
    Text = 'ediNCM'
  end
  object btnconsultacep: TBitBtn
    Left = 120
    Top = 18
    Width = 81
    Height = 25
    Caption = 'Consulta NCM'
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
  object edincmresp: TEdit
    Left = 985
    Top = 408
    Width = 65
    Height = 21
    TabOrder = 3
    Text = 'edincmresp'
    Visible = False
  end
  object edicest: TEdit
    Left = 208
    Top = 20
    Width = 193
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
    Text = 'EDICEST'
  end
  object ediresultado: TEdit
    Left = 72
    Top = 184
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    Text = 'EDIRESULTADO'
    Visible = False
  end
  object ediresultadotxt: TEdit
    Left = 832
    Top = 384
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'EDIRESULTADOTXT'
    Visible = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 64
    Width = 393
    Height = 113
    Cursor = crArrow
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 9
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
    Top = 219
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
    Top = 219
  end
end
