object frmretrans_sat: Tfrmretrans_sat
  Left = 148
  Top = 151
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'RETRANSMISS'#195'O S@T'
  ClientHeight = 351
  ClientWidth = 591
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
  object Panel1: TPanel
    Left = 0
    Top = 319
    Width = 591
    Height = 32
    Align = alBottom
    TabOrder = 0
    object btncancelar: TButton
      Left = 423
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = btncancelarClick
    end
    object btnlancar: TButton
      Left = 502
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Lan'#231'ar'
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 41
    Align = alTop
    Caption = 'CUPONS - RETRANSMITIR S@T'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 591
    Height = 278
    Align = alClient
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 44
      Height = 13
      Caption = 'PEDIDO:'
    end
    object Label3: TLabel
      Left = 267
      Top = 5
      Width = 99
      Height = 13
      Caption = 'ITENS DA COMPRA'
    end
    object Label4: TLabel
      Left = 266
      Top = 160
      Width = 127
      Height = 13
      Caption = 'FORMA DE PAGAMENTO'
    end
    object Label1: TLabel
      Left = 8
      Top = 31
      Width = 72
      Height = 13
      Caption = 'DATA INICIAL:'
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 65
      Height = 13
      Caption = 'DATA FINAL:'
    end
    object dbgpedido: TDBGrid
      Left = 8
      Top = 80
      Width = 241
      Height = 177
      DataSource = dtsCupom
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'TOTAL'
          Visible = True
        end>
    end
    object dbgitens: TDBGrid
      Left = 264
      Top = 24
      Width = 313
      Height = 131
      DataSource = dtsitens
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'DESCRI'#199#195'O'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDE'
          Title.Caption = 'QTDE.'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNIDADE'
          Title.Caption = 'UND.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'TOTAL'
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 264
      Top = 176
      Width = 313
      Height = 81
      DataSource = dtsforma
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FORMA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 95
          Visible = True
        end>
    end
    object edtdata1: TNxDatePicker
      Left = 88
      Top = 28
      Width = 89
      Height = 21
      TabOrder = 3
      Text = '21/09/2016'
      HideFocus = False
      Date = 42634.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object edtdata2: TNxDatePicker
      Left = 88
      Top = 53
      Width = 89
      Height = 21
      TabOrder = 4
      Text = '21/09/2016'
      HideFocus = False
      Date = 42634.000000000000000000
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object NxNumberEdit1: TNxNumberEdit
      Left = 88
      Top = 4
      Width = 86
      Height = 21
      TabOrder = 5
      Text = '0'
      Precision = 0
    end
    object btnfiltrar: TNxButton
      Left = 179
      Top = 6
      Width = 70
      Height = 35
      Caption = 'Filtrar'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000047
        000000490000004C00000051010001550100005B0100015F0100035B0500035C
        05000061000002660400006A000006660C00056A0800056E0C00037304000374
        0600007F0000077E0700076F110007701100097516000E7A1A0000453900004C
        3D00004844000051410000445D0000485A00018802000D8219000C871F000B8C
        1A001386220015A533001EB2350020A7370020C13A001AB641002CD34A0032DC
        6400004BC000004DC200004DC4000151C6000452CB000355CC000558D000075C
        D400085CDD000B64D7000C65D400116ED700075CE0000C64E3000D68E200116C
        E500116CE9001573E6001676E5001B7DE7001676E9001F81FF002489E9002083
        FE002184FF00268BFF00288FF8002D96FF00319AFF0000BDFF003EABFF0042B2
        FF0007E9E7000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000002F000000000000000000000000002D342D2B00004A470000
        00000000002B3D462B000000004A4700002B2B2B2D3C442B0000000000000000
        2F303E49483C2B00000000000000001C3643354045412B000000000000000E1F
        1D3E48343A3F2B000000000000051529251A394130382B000000000000092722
        2813183741302B00000000000009271F0E1E0C19322B00000000000000092321
        0C09130A1B0000000000000000150E110C0A0505004A47000000000017240903
        0303030000004A470000000D2611030000000000000000000000050509030000
        0000000000000000000015030000000000000000000000000000}
      TabOrder = 6
      Transparent = True
      OnClick = btnfiltrarClick
    end
    object btnlimpar: TNxButton
      Left = 179
      Top = 43
      Width = 70
      Height = 35
      Caption = 'Limpar'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000010000FF00FF000C58
        A6000054AE00065CB700055DB8001362B3000A66C400156AC0001978DA00006A
        E700006EE700006EE8000070E7000A76E6000071E8000572E8000576E9000876
        E9000D7FEB00107CE9001F84E6001182ED001487EE001B81E9001F84EB00188A
        EE002283E6002183EB002084EB00218FEF00288DED002691EF002992EF002C91
        EE002293F1002694F1002897F2002E9AF2003199F100339EF30032A0F40034A1
        F400578CC4007098C100609DDA00629EDC0076A0CB0079A3CD007DA8D4004094
        ED004F9CEF00509FF10041ABF70042AEF7004BADF5004FAEF60050B0F70054B4
        F8006DB2F70073B2F30075B3F30077B4F30079B6F40077B8F50079B8F5007EB9
        F5005BC0FD0060C4FE0075C6FA0098B2CB008ABBEC0080BAF3008AC0F7008DC2
        F7008FCDFB0090C2F4009FCBF60093C5F80090CBFA009ACBF8009ECEF80097D2
        FB0099D4FB00A0D1F900A4D4FA00ABD4F900B2D6FA00B2DAFA00B7E4FD00BAE6
        FF00E6E2DF00C5DBF200C7DDF400DAE3EC00CFE5FB00D1E6FA00D3E8FC00D4E9
        FC00D7ECFD00D8ECFC00D2F1FF00F2EFED00E2ECF400EAF2F900EDF5FD00EEF8
        FE00FAF7F300F0F7FE00F8F7F800F3FAFF00FAFBF800FAFCFF00FEFEFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000001
        010101010100000000000000000606082C302F2A0502010000000000060D4B6C
        665C5C5D5A2B0301000000060D56703B1B10101B3B6A4504010000064D703110
        0A100A100B33702E0100141A703B10684C100D5E5E0A416507011441681E0D61
        704C5E704C0A18682C01144F612216226170704C100B105E4601145361252226
        6170704C100B115E4B01144F69362963705561704C0A1B683A0114367051346D
        572221615E0A4770180100145870443429241916103270480600001442647053
        3826221E3E70560D06000000144359706961616870480D060000000000141439
        4A5353411406060000000000000000141A1A1414140000000000}
      TabOrder = 7
      Transparent = True
      OnClick = btnlimparClick
    end
  end
  object dtsCupom: TDataSource
    DataSet = sqlCupom
    Left = 152
    Top = 210
  end
  object dtsitens: TDataSource
    DataSet = sqlItens
    Left = 320
    Top = 90
  end
  object sqlItens: TIBCQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      
        'Select est.nome, item.valor_total, item.qtde, item.cod_cupom, it' +
        'em.unidade From cupom_item item left join estoque est on item.co' +
        'd_produto = est.codigo;')
    Left = 360
    Top = 114
    object sqlItensNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object sqlItensVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
      ReadOnly = True
    end
    object sqlItensQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object sqlItensCOD_CUPOM: TStringField
      FieldName = 'COD_CUPOM'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object sqlItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ReadOnly = True
      Required = True
      Size = 5
    end
  end
  object sqlCupom: TIBCQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from cupom')
    AfterScroll = sqlCupomAfterScroll
    Left = 112
    Top = 178
    object sqlCupomCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 50
    end
    object sqlCupomNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 12
    end
    object sqlCupomCCF: TStringField
      FieldName = 'CCF'
      Required = True
      Size = 12
    end
    object sqlCupomECF: TStringField
      FieldName = 'ECF'
      Required = True
      Size = 30
    end
    object sqlCupomDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object sqlCupomHORA: TTimeField
      FieldName = 'HORA'
      Required = True
    end
    object sqlCupomQTDE_ITEM: TIntegerField
      FieldName = 'QTDE_ITEM'
      Required = True
    end
    object sqlCupomVALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
    end
    object sqlCupomVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object sqlCupomVALOR_ACRESCIMO: TFloatField
      FieldName = 'VALOR_ACRESCIMO'
    end
    object sqlCupomVALOR_TOTAL: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object sqlCupomVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object sqlCupomVALOR_TROCO: TFloatField
      FieldName = 'VALOR_TROCO'
    end
    object sqlCupomCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object sqlCupomCANCELADO: TIntegerField
      FieldName = 'CANCELADO'
      Required = True
    end
    object sqlCupomCPF_CONSUMIDOR: TStringField
      FieldName = 'CPF_CONSUMIDOR'
      Size = 18
    end
    object sqlCupomNOME_CONSUMIDOR: TStringField
      FieldName = 'NOME_CONSUMIDOR'
      Size = 40
    end
    object sqlCupomCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object sqlCupomEX: TIntegerField
      FieldName = 'EX'
      Required = True
    end
    object sqlCupomCOD_CAIXA: TIntegerField
      FieldName = 'COD_CAIXA'
      Required = True
    end
    object sqlCupomECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object sqlCupomCODIGO_COMANDA: TStringField
      FieldName = 'CODIGO_COMANDA'
      Size = 15
    end
  end
  object dtsforma: TDataSource
    DataSet = sqlforma
    Left = 328
    Top = 233
  end
  object sqlforma: TIBCQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from cupom_forma')
    Left = 368
    Top = 250
    object sqlformaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 50
    end
    object sqlformaCOD_CUPOM: TStringField
      FieldName = 'COD_CUPOM'
      Required = True
      Size = 50
    end
    object sqlformaFORMA: TStringField
      FieldName = 'FORMA'
      Required = True
      Size = 30
    end
    object sqlformaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlformaPRESTACAO: TIntegerField
      FieldName = 'PRESTACAO'
      Required = True
    end
    object sqlformaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 30
    end
    object sqlformaEX: TIntegerField
      FieldName = 'EX'
      Required = True
    end
    object sqlformaIDFORMA: TIntegerField
      FieldName = 'IDFORMA'
    end
    object sqlformaCODFORMA: TStringField
      FieldName = 'CODFORMA'
      Size = 90
    end
  end
end
