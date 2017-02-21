object frmloc_conhecimento: Tfrmloc_conhecimento
  Left = 84
  Top = 80
  Width = 674
  Height = 396
  Caption = 'Localizar Conhecimento de Transportes'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 60
    Width = 666
    Height = 3
    Align = alTop
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 63
    Width = 666
    Height = 306
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'10'#9'C'#211'DIGO'
      'DATA'#9'12'#9'DATA'
      'remetente'#9'39'#9'REMETENTE'
      'destinatario'#9'41'#9'DESTINAT'#193'RIO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsconhecimento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnKeyPress = DBGRID1KeyPress
    PaintOptions.AlternatingRowColor = 15987699
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 60
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 6
      Top = 1
      Width = 211
      Height = 55
      Caption = 'Localizar por'
      TabOrder = 0
      object RadioButton1: TRadioButton
        Left = 8
        Top = 13
        Width = 73
        Height = 17
        Caption = 'N'#250'mero'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 8
        Top = 29
        Width = 81
        Height = 17
        Caption = 'Remetente'
        TabOrder = 1
      end
      object RadioButton3: TRadioButton
        Left = 104
        Top = 13
        Width = 97
        Height = 17
        Caption = 'Destinat'#225'rio'
        TabOrder = 2
      end
      object RadioButton4: TRadioButton
        Left = 104
        Top = 29
        Width = 97
        Height = 17
        Caption = 'Data'
        TabOrder = 3
      end
    end
    object GroupBox2: TGroupBox
      Left = 224
      Top = 1
      Width = 433
      Height = 54
      Caption = 'Informe os dados da pesquisa:'
      TabOrder = 1
      object Edit1: TEdit
        Left = 16
        Top = 20
        Width = 401
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyDown = Edit1KeyDown
        OnKeyPress = Edit1KeyPress
      end
    end
  end
  object dsconhecimento: TDataSource
    DataSet = qrconhecimento
    Left = 216
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 168
    object CadastrarNovoFornecedor1: TMenuItem
      Caption = 'Cadastrar Novo Fornecedor'
      ShortCut = 113
    end
  end
  object qrconhecimento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000068')
    Params = <>
    Left = 528
    Top = 296
    object qrconhecimentoCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconhecimentoDATA: TDateTimeField
      DisplayWidth = 12
      FieldName = 'DATA'
    end
    object qrconhecimentoremetente: TStringField
      DisplayLabel = 'REMETENTE'
      DisplayWidth = 39
      FieldKind = fkLookup
      FieldName = 'remetente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codremetente'
      Size = 60
      Lookup = True
    end
    object qrconhecimentodestinatario: TStringField
      DisplayLabel = 'DESTINAT'#193'RIO'
      DisplayWidth = 41
      FieldKind = fkLookup
      FieldName = 'destinatario'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'CODDESTINATARIO'
      Size = 60
      Lookup = True
    end
    object qrconhecimentoNUMERO: TStringField
      FieldName = 'NUMERO'
      Visible = False
      Size = 6
    end
    object qrconhecimentoCFOP: TStringField
      FieldName = 'CFOP'
      Visible = False
      Size = 10
    end
    object qrconhecimentoCODREMETENTE: TStringField
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object qrconhecimentoCODDESTINATARIO: TStringField
      FieldName = 'CODDESTINATARIO'
      Visible = False
      Size = 6
    end
    object qrconhecimentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrconhecimentoTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 10
    end
    object qrconhecimentoCONSIG_NOME: TStringField
      FieldName = 'CONSIG_NOME'
      Visible = False
      Size = 60
    end
    object qrconhecimentoCONSIG_ENDERECO: TStringField
      FieldName = 'CONSIG_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrconhecimentoCONSIG_CIDADE: TStringField
      FieldName = 'CONSIG_CIDADE'
      Visible = False
      Size = 30
    end
    object qrconhecimentoCONSIG_UF: TStringField
      FieldName = 'CONSIG_UF'
      Visible = False
      Size = 2
    end
    object qrconhecimentoCONSIG_TIPO: TStringField
      FieldName = 'CONSIG_TIPO'
      Visible = False
      Size = 10
    end
    object qrconhecimentoCONSIG_CALCULADO: TStringField
      FieldName = 'CONSIG_CALCULADO'
      Visible = False
      Size = 30
    end
    object qrconhecimentoREDE_NOME: TStringField
      FieldName = 'REDE_NOME'
      Visible = False
      Size = 60
    end
    object qrconhecimentoREDE_ENDERECO: TStringField
      FieldName = 'REDE_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrconhecimentoREDE_CIDADE: TStringField
      FieldName = 'REDE_CIDADE'
      Visible = False
      Size = 30
    end
    object qrconhecimentoREDE_UF: TStringField
      FieldName = 'REDE_UF'
      Visible = False
      Size = 2
    end
    object qrconhecimentoREDE_TIPO: TStringField
      FieldName = 'REDE_TIPO'
      Visible = False
      Size = 10
    end
    object qrconhecimentoREDE_CNPJ: TStringField
      FieldName = 'REDE_CNPJ'
      Visible = False
      Size = 25
    end
    object qrconhecimentoCARGA_NATUREZA: TStringField
      FieldName = 'CARGA_NATUREZA'
      Visible = False
      Size = 30
    end
    object qrconhecimentoCARGA_NF: TStringField
      FieldName = 'CARGA_NF'
      Visible = False
      Size = 6
    end
    object qrconhecimentoCARGA_VALOR: TFloatField
      FieldName = 'CARGA_VALOR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoCARGA_QTDE: TFloatField
      FieldName = 'CARGA_QTDE'
      Visible = False
      DisplayFormat = '###,###,###,##0.000'
    end
    object qrconhecimentoCARGA_VOL_QTDE: TFloatField
      FieldName = 'CARGA_VOL_QTDE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrconhecimentoCARGA_MARCA1: TStringField
      FieldName = 'CARGA_MARCA1'
      Visible = False
      Size = 30
    end
    object qrconhecimentoCARGA_MARCA2: TStringField
      FieldName = 'CARGA_MARCA2'
      Visible = False
      Size = 30
    end
    object qrconhecimentoFRETE_PESO: TFloatField
      FieldName = 'FRETE_PESO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrconhecimentoFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_ADICIONAL: TFloatField
      FieldName = 'FRETE_ADICIONAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_SEGURO: TFloatField
      FieldName = 'FRETE_SEGURO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_DESPACHO: TFloatField
      FieldName = 'FRETE_DESPACHO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_OUTROS: TFloatField
      FieldName = 'FRETE_OUTROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_TOTAL: TFloatField
      FieldName = 'FRETE_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_TARIFA: TFloatField
      FieldName = 'FRETE_TARIFA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_BASE: TFloatField
      FieldName = 'FRETE_BASE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_ALIQUOTA: TIntegerField
      FieldName = 'FRETE_ALIQUOTA'
      Visible = False
    end
    object qrconhecimentoFRETE_ICMS: TFloatField
      FieldName = 'FRETE_ICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoFRETE_PRONT: TStringField
      FieldName = 'FRETE_PRONT'
      Visible = False
      Size = 30
    end
    object qrconhecimentoFRETE_APOLICE: TStringField
      FieldName = 'FRETE_APOLICE'
      Visible = False
      Size = 30
    end
    object qrconhecimentoFRETE_CIA: TStringField
      FieldName = 'FRETE_CIA'
      Visible = False
      Size = 40
    end
    object qrconhecimentoCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Visible = False
      Size = 6
    end
    object qrconhecimentoCODTRANSPORTADOR: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Visible = False
      Size = 6
    end
    object qrconhecimentoOBS: TBlobField
      FieldName = 'OBS'
      Visible = False
    end
    object qrconhecimentoCARGA_VOL_ESPECIE: TStringField
      FieldName = 'CARGA_VOL_ESPECIE'
      Visible = False
      Size = 25
    end
    object qrconhecimentoCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 6
    end
    object qrconhecimentoLOCAL: TStringField
      FieldName = 'LOCAL'
      Visible = False
      Size = 40
    end
    object qrconhecimentoFRETE_CARREGAR: TStringField
      FieldName = 'FRETE_CARREGAR'
      Visible = False
      Size = 60
    end
    object qrconhecimentoFRETE_DESCARREGAR: TStringField
      FieldName = 'FRETE_DESCARREGAR'
      Visible = False
      Size = 60
    end
    object qrconhecimentoMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Visible = False
      Size = 50
    end
    object qrconhecimentoVEICULO_LOCAL: TStringField
      FieldName = 'VEICULO_LOCAL'
      Visible = False
      Size = 30
    end
    object qrconhecimentoVEICULO_UF: TStringField
      FieldName = 'VEICULO_UF'
      Visible = False
      Size = 2
    end
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 432
    Top = 304
  end
  object dsquery1: TDataSource
    DataSet = query1
    Left = 280
    Top = 144
  end
  object PopupMenu2: TPopupMenu
    Left = 176
    Top = 168
    object MenuItem1: TMenuItem
      Caption = 'Cadastrar Novo Fornecedor'
      ShortCut = 113
    end
  end
end
