object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 334
  Top = 183
  Height = 562
  Width = 798
  object Conexao: TZConnection
    Protocol = 'firebird-1.5'
    Database = 'C:\SISCOM\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 32
    Top = 24
  end
  object qrItem: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from SC00001')
    Params = <>
    Left = 80
    Top = 16
    object qrItemITEM: TStringField
      DisplayWidth = 4
      FieldName = 'ITEM'
      Size = 3
    end
    object qrItemPRODUTO: TStringField
      DisplayWidth = 24
      FieldName = 'PRODUTO'
      Size = 30
    end
    object qrItemQTDE: TFloatField
      DisplayWidth = 8
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrItemUNITARIO: TFloatField
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItemTOTAL: TFloatField
      DisplayWidth = 9
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrItemECF_SERIAL: TStringField
      DisplayWidth = 30
      FieldName = 'ECF_SERIAL'
      Visible = False
      Size = 30
    end
    object qrItemCUPOM: TStringField
      DisplayWidth = 10
      FieldName = 'CUPOM'
      Visible = False
      Size = 10
    end
    object qrItemCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrItemUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Visible = False
      Size = 5
    end
    object qrItemCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrItemSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Visible = False
    end
    object qrItemALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrItemCST: TStringField
      FieldName = 'CST'
      Visible = False
      Size = 3
    end
  end
  object qrproduto: TZQuery
    Connection = ConexaoProduto
    AfterPost = qrprodutoAfterPost
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 136
    Top = 16
  end
  object qrcodbarra: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000055')
    Params = <>
    Left = 192
    Top = 16
  end
  object qrconfig: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from Sc00000')
    Params = <>
    Left = 248
    Top = 16
    object qrconfigONLINE_OFFLINE: TStringField
      FieldName = 'ONLINE_OFFLINE'
      Size = 10
    end
    object qrconfigCAIXA_ATUAL: TStringField
      FieldName = 'CAIXA_ATUAL'
      Size = 10
    end
    object qrconfigECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
    end
    object qrconfigECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Size = 10
    end
    object qrconfigCOD_CAIXA_ATUAL: TStringField
      FieldName = 'COD_CAIXA_ATUAL'
      Size = 6
    end
    object qrconfigUTILIZA_CONTAS_RECEBER: TStringField
      FieldName = 'UTILIZA_CONTAS_RECEBER'
      Size = 11
    end
    object qrconfigUTILIZA_LANCAMENTO_CAIXA: TStringField
      FieldName = 'UTILIZA_LANCAMENTO_CAIXA'
      Size = 11
    end
    object qrconfigUTILIZA_BAIXA_ESTOQUE: TStringField
      FieldName = 'UTILIZA_BAIXA_ESTOQUE'
      Size = 11
    end
    object qrconfigUTILIZA_HISTORICO_VENDA: TStringField
      FieldName = 'UTILIZA_HISTORICO_VENDA'
      Size = 11
    end
    object qrconfigBALANCAPDV_MODELO: TStringField
      FieldName = 'BALANCAPDV_MODELO'
    end
    object qrconfigBALCANCAPVD_PORTA: TStringField
      FieldName = 'BALCANCAPVD_PORTA'
      Size = 5
    end
    object qrconfigIMPRESSORACHEQUE_MODELO: TStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
    end
    object qrconfigIMPRESSORACHEQUE_PORTA: TStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 5
    end
    object qrconfigIMPRESSORA_GENERICA: TStringField
      FieldName = 'IMPRESSORA_GENERICA'
      Size = 100
    end
    object qrconfigIMPRESSORA_GENERICA_SUBIR_PAPEL: TIntegerField
      FieldName = 'IMPRESSORA_GENERICA_SUBIR_PAPEL'
    end
    object qrconfigIMPRESSORA_GENERICA_VIAS: TIntegerField
      FieldName = 'IMPRESSORA_GENERICA_VIAS'
    end
    object qrconfigCODIGO_BALANCA: TIntegerField
      FieldName = 'CODIGO_BALANCA'
    end
    object qrconfigECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrconfigECF_SERIAL: TStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrconfigULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
    end
    object qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField
      FieldName = 'IMPRIME_CUPOM_VINCULADO'
    end
    object qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField
      FieldName = 'IMPRIME_PRODUTOS_VINCULADOS'
    end
    object qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField
      FieldName = 'IMPRIME_COMPROVANTE_DEBITO'
    end
    object qrconfigESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrconfigLIBERA_CANCELAMENTOS: TIntegerField
      FieldName = 'LIBERA_CANCELAMENTOS'
    end
  end
  object qrvenda_contasreceber: TZQuery
    Connection = ConexaoLocal
    BeforeInsert = qrvenda_contasreceberBeforeInsert
    BeforeEdit = qrvenda_contasreceberBeforeEdit
    AfterPost = qrvenda_contasreceberAfterPost
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 344
    Top = 16
    object qrvenda_contasreceberPRESTACAO: TIntegerField
      DisplayLabel = 'N'#186
      DisplayWidth = 3
      FieldName = 'PRESTACAO'
    end
    object qrvenda_contasreceberVENCIMENTO: TDateTimeField
      DisplayWidth = 14
      FieldName = 'VENCIMENTO'
    end
    object qrvenda_contasreceberTIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
    end
    object qrvenda_contasreceberDOCUMENTO: TStringField
      DisplayWidth = 14
      FieldName = 'DOCUMENTO'
    end
    object qrvenda_contasreceberVALOR: TFloatField
      DisplayWidth = 13
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrcontasreceber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 312
    Top = 312
  end
  object qrcondpgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000015')
    Params = <>
    Left = 544
    Top = 16
    object qrcondpgtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcondpgtoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrcondpgtoPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
    end
  end
  object qrcondpgto_parcela: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000016')
    Params = <>
    Left = 632
    Top = 16
    object qrcondpgto_parcelaNUMERO: TIntegerField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      DisplayFormat = '00'
    end
    object qrcondpgto_parcelaDIAS: TIntegerField
      DisplayLabel = 'QTDE. DE DIAS'
      DisplayWidth = 14
      FieldName = 'DIAS'
    end
    object qrcondpgto_parcelaPERCENTUAL: TFloatField
      DisplayWidth = 13
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,##0.00%'
    end
    object qrcondpgto_parcelaJUROS: TFloatField
      DisplayWidth = 12
      FieldName = 'JUROS'
      DisplayFormat = '###,##0.00%'
    end
    object qrcondpgto_parcelaCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcondpgto_parcelaCODCONDPGTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODCONDPGTO'
      Visible = False
      Size = 6
    end
  end
  object qrproduto_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 232
    Top = 312
  end
  object qrvenda: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 392
    Top = 312
    object qrvendaCODIGO: TStringField
      DisplayLabel = 'CUPOM'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendacliente: TStringField
      DisplayLabel = 'NOME DO CLIENTE'
      DisplayWidth = 44
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 40
      Lookup = True
    end
    object qrvendaDATA: TDateTimeField
      DisplayWidth = 11
      FieldName = 'DATA'
    end
    object qrvendaTOTAL: TFloatField
      DisplayWidth = 12
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaSUBTOTAL: TFloatField
      DisplayWidth = 9
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object qrvendaDESCONTO: TFloatField
      DisplayWidth = 7
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrvendaACRESCIMO: TFloatField
      DisplayWidth = 9
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrvendaCODCAIXA: TStringField
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrvendaCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrvendaCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrvendaOBS: TStringField
      DisplayWidth = 50
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Visible = False
      Size = 10
    end
  end
  object qrMestre: TZQuery
    Connection = ConexaoMestre
    AfterPost = qrMestreAfterPost
    SQL.Strings = (
      'select * from c000000')
    Params = <>
    Left = 136
    Top = 72
  end
  object qrcaixa_operador: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000045')
    Params = <>
    Left = 208
    Top = 72
    object qrcaixa_operadorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadorCODFUNCIONARIO: TStringField
      FieldName = 'CODFUNCIONARIO'
      Size = 6
    end
    object qrcaixa_operadorSENHA: TStringField
      FieldName = 'SENHA'
      Size = 6
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcaixa_operadorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrcaixa_operadorSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object qrcaixa_operadornome: TStringField
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'CODFUNCIONARIO'
      Lookup = True
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 50
    end
  end
  object qrcaixa_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000044')
    Params = <>
    Left = 288
    Top = 72
  end
  object qrcliente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 352
    Top = 72
  end
  object qrUsuario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000003')
    Params = <>
    Left = 416
    Top = 72
  end
  object ConexaoMestre: TZConnection
    Protocol = 'firebird-1.5'
    Database = 'C:\SISCOM\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 32
    Top = 72
  end
  object qrconfig_complus: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 504
    Top = 72
  end
  object qrfunci: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 584
    Top = 72
  end
  object ConexaoLocal: TZConnection
    Protocol = 'firebird-1.5'
    Database = 'C:\SISCOM\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 32
    Top = 128
  end
  object qremitente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c999999')
    Params = <>
    Left = 648
    Top = 72
  end
  object ConexaoProduto: TZConnection
    Protocol = 'firebird-1.5'
    Database = 'C:\SISCOM\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 32
    Top = 184
  end
  object qrsintegra_r60: TZQuery
    Connection = Conexao_servidor
    SQL.Strings = (
      'select * from sintegra_reg60')
    Params = <>
    Left = 136
    Top = 135
    object qrsintegra_r60ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrsintegra_r60MOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrsintegra_r60CODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrsintegra_r60OBS1: TStringField
      FieldName = 'OBS1'
      Size = 40
    end
    object qrsintegra_r60CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrsintegra_r60IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrsintegra_r60UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrsintegra_r60CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrsintegra_r60CNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrsintegra_r60IE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrsintegra_r60UF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      Size = 2
    end
    object qrsintegra_r60CFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrsintegra_r60COD_SINTEGRA_R60: TStringField
      FieldName = 'COD_SINTEGRA_R60'
      Size = 10
    end
    object qrsintegra_r60DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrsintegra_r60NRO_SERIE_EQP: TStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qrsintegra_r60NRO_ORDEM_EQP: TIntegerField
      FieldName = 'NRO_ORDEM_EQP'
    end
    object qrsintegra_r60MODELO_DOC: TStringField
      FieldName = 'MODELO_DOC'
      Size = 2
    end
    object qrsintegra_r60NRO_CONTADOR_INICIO: TIntegerField
      FieldName = 'NRO_CONTADOR_INICIO'
    end
    object qrsintegra_r60NRO_CONTADOR_FIM: TIntegerField
      FieldName = 'NRO_CONTADOR_FIM'
    end
    object qrsintegra_r60NRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
    end
    object qrsintegra_r60NRO_DOC_FISCAL: TIntegerField
      FieldName = 'NRO_DOC_FISCAL'
    end
    object qrsintegra_r60NRO_ITENS: TIntegerField
      FieldName = 'NRO_ITENS'
    end
    object qrsintegra_r60CONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
    end
    object qrsintegra_r60VALOR_VENDA_BRUTA: TFloatField
      FieldName = 'VALOR_VENDA_BRUTA'
    end
    object qrsintegra_r60VALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
    end
    object qrsintegra_r60BRANCOS: TStringField
      FieldName = 'BRANCOS'
      Size = 37
    end
    object qrsintegra_r60DATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qrsintegra_r60MODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrsintegra_r60DATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
    end
    object qrsintegra_r60DATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object qrsintegra_r60CANCELAMENTO: TFloatField
      FieldName = 'CANCELAMENTO'
    end
    object qrsintegra_r60DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrsintegra_r60ISSQN: TFloatField
      FieldName = 'ISSQN'
    end
    object qrsintegra_r60SUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
    object qrsintegra_r60ISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qrsintegra_r60NAO_INCIDENCIA: TFloatField
      FieldName = 'NAO_INCIDENCIA'
    end
    object qrsintegra_r60ACRESCIMO_IOF: TFloatField
      FieldName = 'ACRESCIMO_IOF'
    end
    object qrsintegra_r60ALIQUOTA01: TFloatField
      FieldName = 'ALIQUOTA01'
    end
    object qrsintegra_r60ALIQUOTA02: TFloatField
      FieldName = 'ALIQUOTA02'
    end
    object qrsintegra_r60ALIQUOTA03: TFloatField
      FieldName = 'ALIQUOTA03'
    end
    object qrsintegra_r60ALIQUOTA04: TFloatField
      FieldName = 'ALIQUOTA04'
    end
    object qrsintegra_r60ALIQUOTA05: TFloatField
      FieldName = 'ALIQUOTA05'
    end
    object qrsintegra_r60BASE01: TFloatField
      FieldName = 'BASE01'
    end
    object qrsintegra_r60BASE02: TFloatField
      FieldName = 'BASE02'
    end
    object qrsintegra_r60BASE03: TFloatField
      FieldName = 'BASE03'
    end
    object qrsintegra_r60BASE04: TFloatField
      FieldName = 'BASE04'
    end
    object qrsintegra_r60BASE05: TFloatField
      FieldName = 'BASE05'
    end
    object qrsintegra_r60VALOR_TPARCIAL01: TFloatField
      FieldName = 'VALOR_TPARCIAL01'
    end
    object qrsintegra_r60VALOR_TPARCIAL02: TFloatField
      FieldName = 'VALOR_TPARCIAL02'
    end
    object qrsintegra_r60VALOR_TPARCIAL03: TFloatField
      FieldName = 'VALOR_TPARCIAL03'
    end
    object qrsintegra_r60VALOR_TPARCIAL04: TFloatField
      FieldName = 'VALOR_TPARCIAL04'
    end
    object qrsintegra_r60VALOR_TPARCIAL05: TFloatField
      FieldName = 'VALOR_TPARCIAL05'
    end
    object qrsintegra_r60BRANCOS_60A01: TStringField
      FieldName = 'BRANCOS_60A01'
    end
    object qrsintegra_r60BRANCOS_60A02: TStringField
      FieldName = 'BRANCOS_60A02'
    end
    object qrsintegra_r60BRANCOS_60A03: TStringField
      FieldName = 'BRANCOS_60A03'
    end
    object qrsintegra_r60BRANCOS_60A04: TStringField
      FieldName = 'BRANCOS_60A04'
    end
    object qrsintegra_r60BRANCOS_60A05: TStringField
      FieldName = 'BRANCOS_60A05'
    end
    object qrsintegra_r60TOTAL_INICIO_DIA: TFloatField
      FieldName = 'TOTAL_INICIO_DIA'
    end
    object qrsintegra_r60TOTAL_FINAL_DIA: TFloatField
      FieldName = 'TOTAL_FINAL_DIA'
    end
    object qrsintegra_r60TOTAL_DIA: TFloatField
      FieldName = 'TOTAL_DIA'
    end
    object qrsintegra_r60OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 60
    end
    object qrsintegra_r60VALOR_VENDA_LIQUIDA: TFloatField
      FieldName = 'VALOR_VENDA_LIQUIDA'
    end
  end
  object qrconfig_server: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 272
    Top = 216
    object qrconfig_serverCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfig_serverULTIMO_BACKUP: TDateTimeField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrconfig_serverPAPEL_PAREDE: TStringField
      FieldName = 'PAPEL_PAREDE'
      Size = 150
    end
    object qrconfig_serverAVISO_CONTAS_PAGAR: TIntegerField
      FieldName = 'AVISO_CONTAS_PAGAR'
    end
    object qrconfig_serverAVISO_CHEQUE: TIntegerField
      FieldName = 'AVISO_CHEQUE'
    end
    object qrconfig_serverESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrconfig_serverCASAS_DECIMAIS_QTDE: TIntegerField
      FieldName = 'CASAS_DECIMAIS_QTDE'
    end
    object qrconfig_serverCASAS_DECIMAIS_VALOR: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR'
    end
    object qrconfig_serverVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrconfig_serverVENDA_CADASTRO_CARTAO: TIntegerField
      FieldName = 'VENDA_CADASTRO_CARTAO'
    end
    object qrconfig_serverVENDA_TIPONOTA: TIntegerField
      FieldName = 'VENDA_TIPONOTA'
    end
    object qrconfig_serverVENDA_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'VENDA_QTDE_VIAS_NOTA'
    end
    object qrconfig_serverVENDA_PORTA_IMPRESSORA: TStringField
      FieldName = 'VENDA_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfig_serverVENDA_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'VENDA_TIPO_IMPRESSORA'
    end
    object qrconfig_serverVENDA_LIMITE_CLIENTE: TIntegerField
      FieldName = 'VENDA_LIMITE_CLIENTE'
    end
    object qrconfig_serverOS_TIPONOTA: TIntegerField
      FieldName = 'OS_TIPONOTA'
    end
    object qrconfig_serverOS_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'OS_QTDE_VIAS_NOTA'
    end
    object qrconfig_serverOS_PORTA_IMPRESSORA: TStringField
      FieldName = 'OS_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfig_serverOS_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'OS_TIPO_IMPRESSORA'
    end
    object qrconfig_serverORCAMENTO_TIPONOTA: TIntegerField
      FieldName = 'ORCAMENTO_TIPONOTA'
    end
    object qrconfig_serverORCAMENTO_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'ORCAMENTO_QTDE_VIAS_NOTA'
    end
    object qrconfig_serverORCAMENTO_PORTA_IMPRESSORA: TStringField
      FieldName = 'ORCAMENTO_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfig_serverORCAMENTO_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'ORCAMENTO_TIPO_IMPRESSORA'
    end
    object qrconfig_serverCONTASRECEBER_CARENCIA: TIntegerField
      FieldName = 'CONTASRECEBER_CARENCIA'
    end
    object qrconfig_serverCONTASRECEBER_TAXAJUROS: TFloatField
      FieldName = 'CONTASRECEBER_TAXAJUROS'
    end
    object qrconfig_serverCONTASRECEBER_MULTA: TFloatField
      FieldName = 'CONTASRECEBER_MULTA'
    end
    object qrconfig_serverCONTASRECEBER_DESCONTO_PERCENT: TFloatField
      FieldName = 'CONTASRECEBER_DESCONTO_PERCENT'
    end
    object qrconfig_serverCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField
      FieldName = 'CONTASRECEBER_DESCONTO_PERMITIR'
    end
    object qrconfig_serverECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrconfig_serverECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrconfig_serverECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrconfig_serverECF_TIPO: TStringField
      FieldName = 'ECF_TIPO'
    end
    object qrconfig_serverBALANCAPDV_MODELO: TStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrconfig_serverBALANCAPDV_PORTA: TStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrconfig_serverIMPRESSORACHEQUE_MODELO: TStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrconfig_serverIMPRESSORACHEQUE_PORTA: TStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrconfig_serverBALANCA_MODELO: TStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrconfig_serverIMPRESSORABARRAS_MODELO: TStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrconfig_serverBALANCA_CAMINHO: TStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrconfig_serverCADASTRO_PRODUTO: TStringField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qrconfig_serverRAMO_ATIVIDADE: TIntegerField
      FieldName = 'RAMO_ATIVIDADE'
    end
    object qrconfig_serverEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrconfig_serverBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrconfig_serverCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfig_serverBOLETO_FORMAPGTO: TStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrconfig_serverPLANO_VENDA_AV: TStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrconfig_serverPLANO_VENDA_AP: TStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrconfig_serverPLANO_OS_AV: TStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrconfig_serverPLANO_OS_AP: TStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrconfig_serverPLANO_OUTRAS_ENTRADAS: TStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrconfig_serverPLANO_OUTRAS_SAIDAS: TStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrconfig_serverPLANO_RECEBTO_CREDIARIO: TStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
    end
    object qrconfig_serverNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrconfig_serverNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
    end
    object qrconfig_serverNF_LINHA_TRANSPORTE: TIntegerField
      FieldName = 'NF_LINHA_TRANSPORTE'
    end
    object qrconfig_serverNF_SALTO_PAGINA: TIntegerField
      FieldName = 'NF_SALTO_PAGINA'
    end
    object qrconfig_serverNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
    end
    object qrconfig_serverNF_IMPRESSORA: TStringField
      FieldName = 'NF_IMPRESSORA'
      Size = 100
    end
    object qrconfig_serverVENDA_FECHAMENTO_CAIXA: TIntegerField
      FieldName = 'VENDA_FECHAMENTO_CAIXA'
    end
    object qrconfig_serverDESCONTO_AVISTA: TFloatField
      FieldName = 'DESCONTO_AVISTA'
    end
    object qrconfig_serverDESCONTO_PRODUTO: TFloatField
      FieldName = 'DESCONTO_PRODUTO'
    end
    object qrconfig_serverDESCONTO_TOTALNOTA: TFloatField
      FieldName = 'DESCONTO_TOTALNOTA'
    end
    object qrconfig_serverTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
    end
    object qrconfig_serverVENDA_ALTERAR_PRECO: TIntegerField
      FieldName = 'VENDA_ALTERAR_PRECO'
    end
  end
  object qrlancamento_conta: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000042')
    Params = <>
    Left = 544
    Top = 144
    object qrlancamento_contaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrlancamento_contaCODCONTACORRENTE: TStringField
      FieldName = 'CODCONTACORRENTE'
      Size = 6
    end
    object qrlancamento_contaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrlancamento_contaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 50
    end
    object qrlancamento_contaCODCONTA: TStringField
      FieldName = 'CODCONTA'
      Size = 6
    end
    object qrlancamento_contaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrlancamento_contaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrlancamento_contaDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 15
    end
  end
  object qrplano: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 632
    Top = 144
    object qrplanoCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrplanoCONTA: TStringField
      DisplayWidth = 37
      FieldName = 'CONTA'
      Size = 40
    end
    object qrplanoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrplanoENTRADA: TFloatField
      FieldName = 'ENTRADA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrplanoSAIDA: TFloatField
      FieldName = 'SAIDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrplanoSALDO: TFloatField
      FieldName = 'SALDO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrplanoFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrplanoCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Visible = False
      Size = 8
    end
    object qrplanoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Size = 6
    end
    object qrplanogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupKeyFields = 'codigo'
      LookupResultField = 'CONTA'
      KeyFields = 'codgrupo'
      Size = 40
      Lookup = True
    end
    object qrplanoNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object qrregiao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000005')
    Params = <>
    Left = 456
    Top = 208
    object qrregiaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrregiaoREGIAO: TStringField
      FieldName = 'REGIAO'
      Size = 30
    end
  end
  object qrrelatorio: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from L000003')
    Params = <>
    Left = 524
    Top = 200
    object qrrelatorioLINHA1: TStringField
      FieldName = 'LINHA1'
      Size = 100
    end
    object qrrelatorioLINHA2: TStringField
      FieldName = 'LINHA2'
      Size = 100
    end
    object qrrelatorioLINHA3: TStringField
      FieldName = 'LINHA3'
      Size = 100
    end
    object qrrelatorioLINHA4: TStringField
      FieldName = 'LINHA4'
      Size = 100
    end
    object qrrelatorioLINHA5: TStringField
      FieldName = 'LINHA5'
      Size = 100
    end
    object qrrelatorioLINHA6: TStringField
      FieldName = 'LINHA6'
      Size = 100
    end
    object qrrelatorioLINHA7: TStringField
      FieldName = 'LINHA7'
      Size = 100
    end
    object qrrelatorioLINHA8: TStringField
      FieldName = 'LINHA8'
      Size = 100
    end
    object qrrelatorioLINHA9: TStringField
      FieldName = 'LINHA9'
      Size = 100
    end
    object qrrelatorioLINHA10: TStringField
      FieldName = 'LINHA10'
      Size = 100
    end
    object qrrelatorioVALOR1: TFloatField
      FieldName = 'VALOR1'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR2: TFloatField
      FieldName = 'VALOR2'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR3: TFloatField
      FieldName = 'VALOR3'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR4: TFloatField
      FieldName = 'VALOR4'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR5: TFloatField
      FieldName = 'VALOR5'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR6: TFloatField
      FieldName = 'VALOR6'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR7: TFloatField
      FieldName = 'VALOR7'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR8: TFloatField
      FieldName = 'VALOR8'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR9: TFloatField
      FieldName = 'VALOR9'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR10: TFloatField
      FieldName = 'VALOR10'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR11: TFloatField
      FieldName = 'VALOR11'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR12: TFloatField
      FieldName = 'VALOR12'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR13: TFloatField
      FieldName = 'VALOR13'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR14: TFloatField
      FieldName = 'VALOR14'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR15: TFloatField
      FieldName = 'VALOR15'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR16: TFloatField
      FieldName = 'VALOR16'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR17: TFloatField
      FieldName = 'VALOR17'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR18: TFloatField
      FieldName = 'VALOR18'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR19: TFloatField
      FieldName = 'VALOR19'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR20: TFloatField
      FieldName = 'VALOR20'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR21: TFloatField
      FieldName = 'VALOR21'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR22: TFloatField
      FieldName = 'VALOR22'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR23: TFloatField
      FieldName = 'VALOR23'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR24: TFloatField
      FieldName = 'VALOR24'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrelatorioVALOR25: TFloatField
      FieldName = 'VALOR25'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    DataSet = qrrelatorio
    BCDToCurrency = False
    Left = 6
    Top = 416
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    DataSet = qremitente
    BCDToCurrency = False
    Left = 70
    Top = 416
  end
  object fxPDF: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 134
    Top = 416
  end
  object fxHTML: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Left = 590
    Top = 416
  end
  object fxExcel: TfrxXLSExport
    FileName = 'C:\Documents and Settings\ELENO\Desktop\F000001.xls'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 542
    Top = 416
  end
  object fxWord: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ExportEMF = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 494
    Top = 416
  end
  object fxBMP: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 446
    Top = 416
  end
  object fxJPEG: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 390
    Top = 416
  end
  object fxTIF: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 342
    Top = 416
  end
  object fxGIF: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 294
    Top = 416
  end
  object fxTXT: TfrxSimpleTextExport
    FileName = 'C:\Documents and Settings\ELENO\Desktop\F000001.txt'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 246
    Top = 416
  end
  object fxEmail: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    Left = 190
    Top = 416
  end
  object qrconvenio: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000071')
    Params = <>
    Left = 584
    Top = 200
    object qrconvenioCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconvenioNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrconvenioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrconvenioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrconvenioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrconvenioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrconvenioCEP: TStringField
      FieldName = 'CEP'
      Size = 15
    end
    object qrconvenioTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrconvenioTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrconvenioCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object qrconvenioCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 50
    end
    object qrconvenioDIA_PGTO: TStringField
      FieldName = 'DIA_PGTO'
      Size = 5
    end
    object qrconvenioCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 30
    end
    object qrconvenioIE: TStringField
      FieldName = 'IE'
      Size = 30
    end
    object qrconvenioDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrconvenioFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrconvenioEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrconvenioDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrconvenioDIA_FECHAMENTO: TIntegerField
      FieldName = 'DIA_FECHAMENTO'
    end
    object qrconvenioDIA_PAGAMENTO: TIntegerField
      FieldName = 'DIA_PAGAMENTO'
    end
    object qrconvenioLIMITE: TFloatField
      FieldName = 'LIMITE'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrbanco: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000013')
    Params = <>
    Left = 640
    Top = 200
    object qrbancoNUMERO: TStringField
      FieldName = 'NUMERO'
      Required = True
      Size = 6
    end
    object qrbancoBANCO: TStringField
      FieldName = 'BANCO'
      Size = 50
    end
    object qrbancoLOGO: TBlobField
      FieldName = 'LOGO'
    end
  end
  object qrcheque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000040')
    Params = <>
    Left = 448
    Top = 144
    object qrchequeCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrchequeEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object qrchequeVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrchequeDATA_DEPOSITO1: TDateTimeField
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrchequeDATA_DEPOSITO2: TDateTimeField
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrchequeDATA_DEVOLUCAO1: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrchequeDATA_DEVOLUCAO2: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object qrchequeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrchequeCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrchequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 80
    end
    object qrchequeCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Size = 6
    end
    object qrchequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qrchequeCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrchequeDATA_CONTA: TDateTimeField
      FieldName = 'DATA_CONTA'
    end
    object qrchequeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object qrchequeVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrchequeCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrchequeOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrchequeOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrchequeCODCONTAS_PAGAR: TStringField
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object qrchequeDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrchequeDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
    end
    object qrchequecliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrchequeBANCO: TStringField
      FieldKind = fkLookup
      FieldName = 'BANCO'
      LookupDataSet = qrbanco
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'BANCO'
      KeyFields = 'CODBANCO'
      Size = 30
      Lookup = True
    end
    object qrchequeCODCONTA_CORRENTE: TStringField
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object qrchequeCODCONTA: TStringField
      FieldName = 'CODCONTA'
    end
  end
  object qrcontacorrente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000041')
    Params = <>
    Left = 696
    Top = 144
    object qrcontacorrenteTITULAR: TStringField
      DisplayWidth = 25
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'BANCO'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteCONTA: TStringField
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrenteAGENCIA: TStringField
      DisplayLabel = 'AG'#202'NCIA'
      DisplayWidth = 5
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontacorrenteCODBANCO: TStringField
      DisplayWidth = 3
      FieldName = 'CODBANCO'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcontacorrenteNOME_AGENCIA: TStringField
      DisplayWidth = 30
      FieldName = 'NOME_AGENCIA'
      Visible = False
      Size = 30
    end
  end
  object qrfiscal_ecf: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000081')
    Params = <>
    Left = 224
    Top = 136
    object qrfiscal_ecfCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfiscal_ecfSERIE_EMPRESA: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 7
      FieldName = 'SERIE_EMPRESA'
      Size = 3
    end
    object qrfiscal_ecfEQUIPAMENTO: TStringField
      DisplayWidth = 27
      FieldName = 'EQUIPAMENTO'
      Required = True
      Size = 40
    end
    object qrfiscal_ecfSERIE_EQUIPAMENTO: TStringField
      DisplayLabel = 'N'#186' S'#201'RIE'
      DisplayWidth = 20
      FieldName = 'SERIE_EQUIPAMENTO'
    end
    object qrfiscal_ecfALIQUOTA_ISS: TFloatField
      DisplayLabel = 'ALIQ.ISS %'
      DisplayWidth = 9
      FieldName = 'ALIQUOTA_ISS'
    end
    object qrfiscal_ecfDATA_INICIO: TDateTimeField
      DisplayLabel = 'IN'#205'CIO OPERAC.'
      DisplayWidth = 14
      FieldName = 'DATA_INICIO'
    end
    object qrfiscal_ecfTIPO_ECF: TStringField
      DisplayLabel = 'TIPO'
      DisplayWidth = 4
      FieldName = 'TIPO_ECF'
      Size = 10
    end
  end
  object qrFilial: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 128
    Top = 184
    object qrFilialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrFilialFILIAL: TStringField
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrFilialNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object qrFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object qrFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object qrFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object qrFilialTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 25
    end
    object qrFilialCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrFilialIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrFilialSEQNF: TIntegerField
      FieldName = 'SEQNF'
    end
    object qrFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qrFilialOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrFilialOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrFilialCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 1
    end
    object qrFilialSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 1
    end
    object qrFilialEMPRESA_ESTADUAL: TStringField
      FieldName = 'EMPRESA_ESTADUAL'
      Size = 1
    end
    object qrFilialOPTANTE_SIMPLES: TStringField
      FieldName = 'OPTANTE_SIMPLES'
      Size = 1
    end
    object qrFilialOPTANTE_SUPER_SIMPLES: TStringField
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Size = 1
    end
    object qrFilialECF: TStringField
      FieldName = 'ECF'
      Size = 1
    end
    object qrFilialTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrFilialIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrFilialISS: TFloatField
      FieldName = 'ISS'
    end
    object qrFilialNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrFilialRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qrFilialCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qrFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
  end
  object Conexao_servidor: TZConnection
    Protocol = 'firebird-1.5'
    Database = 'C:\SISCOM\SERVER\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 648
    Top = 472
  end
  object qrservidor: TZQuery
    Connection = Conexao_servidor
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 736
    Top = 472
  end
  object time_gp: TTimer
    Enabled = False
    OnTimer = time_gpTimer
    Left = 712
    Top = 272
  end
end
