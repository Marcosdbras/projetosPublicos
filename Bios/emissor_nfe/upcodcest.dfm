object frmpcodcest: Tfrmpcodcest
  Left = 300
  Top = 185
  Width = 417
  Height = 247
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
    Top = 46
    Width = 28
    Height = 13
    Caption = 'NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 227
    Top = 46
    Width = 121
    Height = 13
    Caption = 'C'#243'digo Especificador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 11
    Top = 94
    Width = 58
    Height = 13
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 10
    Top = 196
    Width = 48
    Height = 13
    Caption = 'Resultado'
    Visible = False
  end
  object Label5: TLabel
    Left = 8
    Top = 2
    Width = 124
    Height = 13
    Caption = 'Tabela de Segmentos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btninserir: TBitBtn
    Left = 246
    Top = 191
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 8
    OnClick = btninserirClick
  end
  object btncancelar: TBitBtn
    Left = 326
    Top = 191
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 9
    OnClick = btncancelarClick
  end
  object edincm: TMaskEdit
    Left = 8
    Top = 64
    Width = 108
    Height = 21
    TabOrder = 1
    Text = 'ediNCM'
  end
  object btnconsultacep: TBitBtn
    Left = 120
    Top = 62
    Width = 97
    Height = 25
    Caption = 'Consulta NCM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnconsultacepClick
  end
  object memores: TMemo
    Left = 721
    Top = 360
    Width = 216
    Height = 73
    Lines.Strings = (
      'memores')
    TabOrder = 3
    Visible = False
  end
  object edincmresp: TEdit
    Left = 985
    Top = 408
    Width = 65
    Height = 21
    TabOrder = 4
    Text = 'edincmresp'
    Visible = False
  end
  object edicest: TEdit
    Left = 224
    Top = 64
    Width = 177
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    Text = 'EDICEST'
  end
  object ediresultado: TEdit
    Left = 72
    Top = 194
    Width = 65
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 6
    Text = 'EDIRESULTADO'
    Visible = False
  end
  object ediresultadotxt: TEdit
    Left = 832
    Top = 384
    Width = 217
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 7
    Text = 'EDIRESULTADOTXT'
    Visible = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 112
    Width = 393
    Height = 75
    Cursor = crArrow
    Color = clBtnHighlight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 10
    OnEnter = Memo1Enter
  end
  object cbxsegmento: TDBLookupComboBox
    Left = 10
    Top = 18
    Width = 390
    Height = 21
    TabOrder = 0
  end
  object XMLDocument1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 160
    Top = 123
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
    Left = 88
    Top = 123
  end
  object sql_cest: TZQuery
    Connection = frmdados.zconexao
    ReadOnly = True
    SQL.Strings = (
      'select * from cest')
    Params = <>
    Left = 424
    Top = 24
  end
  object dts_cest: TDataSource
    DataSet = cds_cest
    Left = 425
    Top = 75
  end
  object dsp_cest: TDataSetProvider
    DataSet = sql_cest
    UpdateMode = upWhereKeyOnly
    Left = 424
    Top = 124
  end
  object cds_cest: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftLargeint
      end
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'ncm'
        DataType = ftWideString
        Size = 8
      end
      item
        Name = 'descricao'
        DataType = ftWideString
        Size = 512
      end
      item
        Name = 'csegmento'
        DataType = ftInteger
      end
      item
        Name = 'codesp'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 7
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'nome'
        Fields = 'nome'
      end
      item
        Name = 'sigla'
        Fields = 'sigla'
      end>
    Params = <>
    ProviderName = 'dsp_cest'
    ReadOnly = True
    StoreDefs = True
    Left = 427
    Top = 181
  end
end
