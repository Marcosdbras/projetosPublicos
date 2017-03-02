object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 180
  Height = 606
  Width = 800
  object Conexao: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 24
    Top = 16
  end
  object qrMestre: TZQuery
    Connection = ConexaoMestre
    AfterPost = qrMestreAfterPost
    SQL.Strings = (
      'select * from c000000')
    Params = <>
    Left = 88
    Top = 16
  end
  object qrUsuario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000003')
    Params = <>
    Left = 152
    Top = 16
  end
  object qrconfig: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 208
    Top = 16
  end
  object qrrelatorio: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from L000003')
    Params = <>
    Left = 272
    Top = 16
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
  object ConexaoMestre: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 24
    Top = 72
  end
  object ConexaoLocal: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 24
    Top = 128
  end
  object qremitente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c999999')
    Params = <>
    Left = 336
    Top = 16
  end
  object qrcliente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 400
    Top = 16
  end
  object qrfunci: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 456
    Top = 16
  end
  object qrcondpgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000015')
    Params = <>
    Left = 528
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
  object qrcaixa_operador: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000045')
    Params = <>
    Left = 616
    Top = 8
    object qrcaixa_operadorCODIGO: TStringField
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcaixa_operadornome: TStringField
      DisplayLabel = 'NOME'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'nome'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codfuncionario'
      Size = 30
      Lookup = True
    end
    object qrcaixa_operadorCODFUNCIONARIO: TStringField
      FieldName = 'CODFUNCIONARIO'
      Visible = False
      Size = 6
    end
    object qrcaixa_operadorSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcaixa_operadorDATA: TDateTimeField
      FieldName = 'DATA'
      Visible = False
    end
    object qrcaixa_operadorSALDO: TFloatField
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcaixa_operadorSENHA: TStringField
      FieldName = 'SENHA'
      Visible = False
      Size = 30
    end
    object qrcaixa_operadorSITUACAO_ATUAL: TStringField
      FieldName = 'SITUACAO_ATUAL'
      Size = 100
    end
  end
  object qrcaixa_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000044')
    Params = <>
    Left = 104
    Top = 72
  end
  object qrvenda: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 176
    Top = 72
  end
  object qrproduto_mov: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 240
    Top = 72
  end
  object qrcontasreceber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 320
    Top = 72
  end
  object qrorcamento: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000074')
    Params = <>
    Left = 184
    Top = 184
    object qrorcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrorcamentoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoOBS: TStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qrorcamentoMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrorcamentoMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrorcamentoMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrorcamentoMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrorcamentoMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrorcamentoMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamentoCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qrorcamentoNUMERO_CUPOM_FISCAL: TStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrorcamentoRETIRADO: TStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qrorcamentoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrorcamentoMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000075')
    Params = <>
    Left = 184
    Top = 240
  end
  object qrorcamento_receber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000076')
    Params = <>
    Left = 328
    Top = 184
  end
  object qrecf_comando: TZQuery
    SQL.Strings = (
      'select * from c000072')
    Params = <>
    Left = 608
    Top = 440
  end
  object qrecf_item: TZQuery
    SQL.Strings = (
      'select * from c000073')
    Params = <>
    Left = 560
    Top = 504
  end
  object Conexao_produto: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 32
    Top = 240
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    DataSet = qremitente
    BCDToCurrency = False
    Left = 328
    Top = 344
  end
  object fxrelatorio: TfrxDBDataset
    UserName = 'fxrelatorio'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TEXTO_GRANDE=TEXTO_GRANDE'
      'LINHA1=LINHA1'
      'LINHA2=LINHA2'
      'LINHA3=LINHA3'
      'LINHA4=LINHA4'
      'LINHA5=LINHA5'
      'LINHA6=LINHA6'
      'LINHA7=LINHA7'
      'LINHA8=LINHA8'
      'LINHA9=LINHA9'
      'LINHA10=LINHA10'
      'VALOR1=VALOR1'
      'VALOR2=VALOR2'
      'VALOR3=VALOR3'
      'VALOR4=VALOR4'
      'VALOR5=VALOR5'
      'VALOR6=VALOR6'
      'VALOR7=VALOR7'
      'VALOR8=VALOR8'
      'VALOR9=VALOR9'
      'VALOR10=VALOR10'
      'VALOR11=VALOR11'
      'VALOR12=VALOR12'
      'VALOR13=VALOR13'
      'VALOR14=VALOR14'
      'VALOR15=VALOR15'
      'VALOR16=VALOR16'
      'VALOR17=VALOR17'
      'VALOR18=VALOR18'
      'VALOR19=VALOR19'
      'VALOR20=VALOR20'
      'VALOR21=VALOR21'
      'VALOR22=VALOR22'
      'VALOR23=VALOR23'
      'VALOR24=VALOR24'
      'VALOR25=VALOR25'
      'VALOR26=VALOR26'
      'VALOR27=VALOR27'
      'VALOR28=VALOR28'
      'VALOR29=VALOR29'
      'VALOR30=VALOR30'
      'VALOR31=VALOR31'
      'VALOR32=VALOR32'
      'VALOR33=VALOR33'
      'VALOR34=VALOR34'
      'VALOR35=VALOR35')
    DataSet = qrrelatorio
    BCDToCurrency = False
    Left = 400
    Top = 344
  end
end
