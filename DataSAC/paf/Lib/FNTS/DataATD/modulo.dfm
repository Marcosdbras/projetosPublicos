object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 296
  Top = 38
  Height = 476
  Width = 800
  object Conexao: TZConnection
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Port = 0
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
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
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Port = 0
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 24
    Top = 72
  end
  object ConexaoLocal: TZConnection
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Port = 0
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
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
    object qrorcamentoDAV: TStringField
      FieldName = 'DAV'
      Size = 10
    end
    object qrorcamentoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrorcamentoDAV_ANTERIOR: TStringField
      FieldName = 'DAV_ANTERIOR'
      Size = 100
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
    Left = 680
    Top = 296
  end
  object qrecf_item: TZQuery
    SQL.Strings = (
      'select * from c000073')
    Params = <>
    Left = 632
    Top = 360
  end
  object Conexao_produto: TZConnection
    AutoCommit = False
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Port = 0
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-1.5'
    Left = 32
    Top = 240
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    DataSet = qremitente
    BCDToCurrency = False
    Left = 304
    Top = 288
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
    Left = 376
    Top = 288
  end
  object spGen_DAV: TZStoredProc
    Connection = Conexao
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptResult
      end>
    StoredProcName = 'SPCODIGO_DAV'
    Left = 160
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptResult
      end>
  end
  object qrveiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000054')
    Params = <>
    Left = 248
    Top = 120
    object qrveiculoCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrveiculoNOME: TStringField
      DisplayLabel = 'VE'#205'CULO'
      DisplayWidth = 29
      FieldName = 'NOME'
    end
    object qrveiculoPLACA: TStringField
      DisplayWidth = 14
      FieldName = 'PLACA'
      Size = 10
    end
    object qrveiculoANO: TStringField
      FieldName = 'ANO'
      Visible = False
      Size = 10
    end
    object qrveiculoCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Visible = False
      Size = 15
    end
    object qrveiculoUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Visible = False
      Size = 2
    end
    object qrveiculoCOR: TStringField
      FieldName = 'COR'
      Visible = False
    end
    object qrveiculoOBS1: TStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrveiculoOBS2: TStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrveiculoOBS3: TStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrveiculoCIDADE: TStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 30
    end
  end
  object qrcliente_veiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000063')
    Params = <>
    Left = 312
    Top = 120
    object qrcliente_veiculoVEICULO: TStringField
      DisplayLabel = 'Ve'#237'culo'
      DisplayWidth = 30
      FieldName = 'VEICULO'
      Size = 30
    end
    object qrcliente_veiculoANO: TStringField
      DisplayLabel = 'Ano/Modelo'
      DisplayWidth = 10
      FieldName = 'ANO'
      Size = 10
    end
    object qrcliente_veiculoPLACA: TStringField
      DisplayLabel = 'Placa'
      DisplayWidth = 8
      FieldName = 'PLACA'
      Size = 8
    end
    object qrcliente_veiculoUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente_veiculoCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrcliente_veiculoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcliente_veiculoCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcliente_veiculoCOMBUSTIVEL: TStringField
      DisplayWidth = 15
      FieldName = 'COMBUSTIVEL'
      Visible = False
      Size = 15
    end
    object qrcliente_veiculoRENAVAM: TStringField
      DisplayWidth = 30
      FieldName = 'RENAVAM'
      Visible = False
      Size = 30
    end
    object qrcliente_veiculoDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qrcliente_veiculoOBS1: TStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrcliente_veiculoOBS2: TStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrcliente_veiculoOBS3: TStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrcliente_veiculoCOR: TStringField
      FieldName = 'COR'
      Size = 10
    end
    object qrcliente_veiculoCHASSI: TStringField
      FieldName = 'CHASSI'
      Size = 40
    end
  end
  object qrservicos_periodicos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from servicos_periodicos')
    Params = <>
    Left = 464
    Top = 304
    object qrservicos_periodicosSTATUS: TStringField
      DisplayLabel = 'ST'
      DisplayWidth = 2
      FieldName = 'STATUS'
      Size = 1
    end
    object qrservicos_periodicosCODSERVICO: TStringField
      DisplayLabel = 'C'#211'D'
      DisplayWidth = 6
      FieldName = 'CODSERVICO'
      Size = 6
    end
    object qrservicos_periodicosservico: TStringField
      DisplayLabel = 'SERVI'#199'O'
      DisplayWidth = 23
      FieldKind = fkLookup
      FieldName = 'servico'
      LookupDataSet = qrservico
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SERVICO'
      KeyFields = 'CODSERVICO'
      Size = 40
      Lookup = True
    end
    object qrservicos_periodicosMARCA: TStringField
      DisplayWidth = 15
      FieldName = 'MARCA'
      Size = 40
    end
    object qrservicos_periodicosMODELO: TStringField
      DisplayWidth = 17
      FieldName = 'MODELO'
      Size = 40
    end
    object qrservicos_periodicosSERIE: TStringField
      DisplayLabel = 'S'#201'RIE'
      DisplayWidth = 16
      FieldName = 'SERIE'
      Size = 40
    end
    object qrservicos_periodicosULTIMA_MANUTENCAO: TDateTimeField
      DisplayLabel = #218'LTIMA'
      DisplayWidth = 10
      FieldName = 'ULTIMA_MANUTENCAO'
    end
    object qrservicos_periodicosproxima_manutencao: TDateField
      DisplayLabel = 'PROXIMA'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'proxima_manutencao'
      Calculated = True
    end
    object qrservicos_periodicostecnico: TStringField
      DisplayLabel = 'T'#201'CNICO'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODTECNICO'
      Size = 40
      Lookup = True
    end
    object qrservicos_periodicosCODTECNICO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODTECNICO'
      Visible = False
      Size = 6
    end
    object qrservicos_periodicosID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object qrservicos_periodicosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrservicos_periodicosPRIMEIRA_MANUTENCAO: TDateTimeField
      FieldName = 'PRIMEIRA_MANUTENCAO'
      Visible = False
    end
    object qrservicos_periodicosPERIODO: TIntegerField
      FieldName = 'PERIODO'
      Visible = False
    end
    object qrservicos_periodicoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Visible = False
      Size = 40
      Lookup = True
    end
  end
  object qrsetor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000052')
    Params = <>
    Left = 320
    Top = 240
  end
  object qrfornecedor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 512
    Top = 136
    object qrfornecedorCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrfornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Visible = False
      Size = 50
    end
    object qrfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorUF: TStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorCEP: TStringField
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrfornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrfornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrfornecedorFAX: TStringField
      FieldName = 'FAX'
      Visible = False
    end
    object qrfornecedorCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Visible = False
      Size = 40
    end
    object qrfornecedorCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Visible = False
      Size = 40
    end
    object qrfornecedorCELULAR1: TStringField
      FieldName = 'CELULAR1'
      Visible = False
    end
    object qrfornecedorCELULAR2: TStringField
      FieldName = 'CELULAR2'
      Visible = False
    end
    object qrfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Visible = False
      Size = 80
    end
    object qrfornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorIE: TStringField
      FieldName = 'IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorBANCO: TStringField
      FieldName = 'BANCO'
      Visible = False
      Size = 30
    end
    object qrfornecedorAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Visible = False
      Size = 15
    end
    object qrfornecedorCONTA: TStringField
      FieldName = 'CONTA'
      Visible = False
    end
    object qrfornecedorOBS1: TStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS2: TStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfornecedorOBS3: TStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfornecedorDATA: TDateTimeField
      FieldName = 'DATA'
      Visible = False
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
      Visible = False
    end
  end
  object qrmarca: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000019')
    Params = <>
    Left = 616
    Top = 88
  end
  object qrservico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000011')
    Params = <>
    Left = 720
    Top = 16
    object qrservicoSERVICO: TStringField
      DisplayLabel = 'SERVI'#199'O'
      DisplayWidth = 50
      FieldName = 'SERVICO'
      Size = 50
    end
    object qrservicoCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrservicoVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrservicoCODGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
  end
  object qrserial_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 392
    Top = 344
    object qrserial_produtoNUMERONOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 10
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateTimeField
      DisplayLabel = 'DATA'
      DisplayWidth = 10
      FieldName = 'DATACOMPRA'
    end
    object qrserial_produtoSERIAL: TStringField
      DisplayLabel = 'N'#218'MERO DE S'#201'RIE'
      DisplayWidth = 28
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      DisplayLabel = 'PR.CUSTO'
      DisplayWidth = 9
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      DisplayLabel = 'PR.VENDA'
      DisplayWidth = 11
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrserial_produtoCLIENTE: TStringField
      DisplayWidth = 37
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrserial_produtoDATAVENDA: TDateTimeField
      DisplayLabel = 'DATA SA'#205'DA'
      DisplayWidth = 11
      FieldName = 'DATAVENDA'
    end
    object qrserial_produtoCODNOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 9
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrserial_produtoESTOQUE: TFloatField
      DisplayWidth = 7
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrserial_produtoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrserial_produtoSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrserial_produtoCODITEM: TStringField
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODVENDA_ITEM: TStringField
      FieldName = 'CODVENDA_ITEM'
      Visible = False
      Size = 6
    end
    object qrserial_produtoFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrserial_produtoCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 6
    end
  end
  object qrproduto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 24
    Top = 328
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 38
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 4
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = qrmarca
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Size = 40
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 8
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoCODBARRA: TStringField
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      Visible = False
      Size = 13
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrprodutoCODGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrprodutoNOTAFISCAL: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoAPLICACAO: TMemoField
      DisplayWidth = 10
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      DisplayWidth = 50
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      DisplayWidth = 10
      FieldName = 'PESO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoVALIDADE: TStringField
      DisplayWidth = 20
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrprodutoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object qrprodutoUSA_GRADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object qrprodutoCODRECEITA: TStringField
      DisplayWidth = 6
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      DisplayWidth = 80
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrprodutoCST: TStringField
      FieldName = 'CST'
      Visible = False
      Size = 10
    end
    object qrprodutoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object qrprodutoNBM: TStringField
      FieldName = 'NBM'
      Visible = False
    end
    object qrprodutoNCM: TStringField
      FieldName = 'NCM'
      Visible = False
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrprodutoIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrprodutoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Visible = False
    end
    object qrprodutoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
      Visible = False
    end
    object qrprodutoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Visible = False
      Size = 1
    end
    object qrprodutoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
      Visible = False
    end
    object qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
      Visible = False
    end
    object qrprodutoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
      Visible = False
    end
    object qrprodutoULTIMA_ALTERACAO: TDateTimeField
      FieldName = 'ULTIMA_ALTERACAO'
      Visible = False
    end
    object qrprodutoULTIMA_CARGA: TDateTimeField
      FieldName = 'ULTIMA_CARGA'
      Visible = False
    end
    object qrprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
      Visible = False
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
      Visible = False
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
      Visible = False
    end
    object qrprodutoTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qrprodutoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
      Visible = False
    end
    object qrprodutoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Visible = False
    end
  end
  object XCONEXAO: TIBCConnection
    Database = 'C:\DataSAC\Server\bd\BASE.FDB'
    ClientLibrary = 'fbclient.dll'
    Port = '3050'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    Left = 520
    Top = 248
  end
  object qros: TIBCQuery
    Connection = XCONEXAO
    SQL.Strings = (
      'select * from c000051')
    Left = 592
    Top = 288
    object qrosST: TIntegerField
      DisplayLabel = ' SIT.'
      DisplayWidth = 3
      FieldName = 'ST'
    end
    object qrosCODIGO: TStringField
      DisplayLabel = 'No.'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrosDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qroscliente: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 33
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrosTOTAL: TFloatField
      DisplayLabel = 'Total-R$'
      DisplayWidth = 9
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrosCONCLUSAO_DATA: TDateTimeField
      DisplayLabel = 'DT.CONCLU.'
      DisplayWidth = 10
      FieldName = 'CONCLUSAO_DATA'
    end
    object qrosSERIAL: TStringField
      DisplayLabel = 'SERIAL / PLACA'
      DisplayWidth = 21
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrosCUPOMFISCAL: TIntegerField
      DisplayLabel = 'CF'
      DisplayWidth = 3
      FieldName = 'CUPOMFISCAL'
    end
    object qrosveiculo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosterceiro: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'terceiro'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codterceiro'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 7
    end
    object qrosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrosSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Visible = False
      Size = 30
    end
    object qrosMARCA: TStringField
      FieldName = 'MARCA'
      Visible = False
      Size = 30
    end
    object qrosMODELO: TStringField
      FieldName = 'MODELO'
      Visible = False
      Size = 30
    end
    object qrosATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Visible = False
      Size = 10
    end
    object qrosDEFEITO: TBlobField
      FieldName = 'DEFEITO'
      Visible = False
    end
    object qrosOBS: TBlobField
      FieldName = 'OBS'
      Visible = False
    end
    object qrosDETECTADO: TBlobField
      FieldName = 'DETECTADO'
      Visible = False
    end
    object qrosDETECTADO_DATA: TDateTimeField
      FieldName = 'DETECTADO_DATA'
      Visible = False
    end
    object qrosDETECTADO_CODTECNICO: TStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Visible = False
      Size = 6
    end
    object qrosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Visible = False
      Size = 35
    end
    object qrosCONCLUSAO_ENTREGUE: TDateTimeField
      FieldName = 'CONCLUSAO_ENTREGUE'
      Visible = False
    end
    object qrosRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
      Visible = False
      Size = 30
    end
    object qrosSERVICO_SUBTOTAL: TFloatField
      FieldName = 'SERVICO_SUBTOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERVICO_DESCONTO: TFloatField
      FieldName = 'SERVICO_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSERVICO_TOTAL: TFloatField
      FieldName = 'SERVICO_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_SUBTOTAL: TFloatField
      FieldName = 'PRODUTO_SUBTOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_DESCONTO: TFloatField
      FieldName = 'PRODUTO_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosPRODUTO_TOTAL: TFloatField
      FieldName = 'PRODUTO_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Visible = False
      Size = 6
    end
    object qrosKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
      Visible = False
    end
    object qrosKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
      Visible = False
    end
    object qrosDESLOC_COMBUSTIVEL: TFloatField
      FieldName = 'DESLOC_COMBUSTIVEL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosDESLOC_REFEICAO: TFloatField
      FieldName = 'DESLOC_REFEICAO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosDESLOC_HOSPEDAGEM: TFloatField
      FieldName = 'DESLOC_HOSPEDAGEM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosDESLOC_TOTAL: TFloatField
      FieldName = 'DESLOC_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosCODTERCEIRO: TStringField
      FieldName = 'CODTERCEIRO'
      Visible = False
      Size = 6
    end
    object qrosTERCEIRO_CONTATO: TStringField
      FieldName = 'TERCEIRO_CONTATO'
      Visible = False
      Size = 30
    end
    object qrosTERCEIRO_VALOR: TFloatField
      FieldName = 'TERCEIRO_VALOR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_TOTAL: TFloatField
      FieldName = 'TERCEIRO_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
      Visible = False
    end
    object qrosTERCEIRO_COMISSAO: TFloatField
      FieldName = 'TERCEIRO_COMISSAO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrosatendente: TStringField
      FieldKind = fkLookup
      FieldName = 'atendente'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codatendente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosdetectado_tecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'detectado_tecnico'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'DETECTADO_CODTECNICO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosCODSETOR: TStringField
      FieldName = 'CODSETOR'
      Visible = False
      Size = 6
    end
    object qrossetor: TStringField
      FieldKind = fkLookup
      FieldName = 'setor'
      LookupDataSet = qrsetor
      LookupKeyFields = 'codigo'
      LookupResultField = 'setor'
      KeyFields = 'codsetor'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrosCODATENDENTE: TStringField
      FieldName = 'CODATENDENTE'
      Visible = False
      Size = 6
    end
    object qroscliente_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'codcliente'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qroscliente_bairro: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_bairro'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'bairro'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qroscliente_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codcliente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qroscliente_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'codcliente'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qroscliente_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qroscliente_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codcliente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qroscliente_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'codcliente'
      Visible = False
      Size = 12
      Lookup = True
    end
    object qroscliente_telefone: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefone'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'TELEFONE1'
      KeyFields = 'codcliente'
      Visible = False
      Lookup = True
    end
    object qrosCHASSI: TStringField
      FieldName = 'CHASSI'
      Visible = False
      Size = 40
    end
    object qrosCOR: TStringField
      FieldName = 'COR'
      Visible = False
      Size = 10
    end
    object qrosCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Visible = False
      Size = 10
    end
    object qrosCOMBUSTIVEL_NIVEL: TFloatField
      FieldName = 'COMBUSTIVEL_NIVEL'
      Visible = False
    end
    object qrosNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Visible = False
    end
    object qrosCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrosDETECTADO_HORA: TStringField
      FieldName = 'DETECTADO_HORA'
      Visible = False
      Size = 5
    end
    object qrosHORA: TStringField
      FieldName = 'HORA'
      Visible = False
      Size = 5
    end
    object qrosINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
      Visible = False
    end
    object qrosDAV: TStringField
      FieldName = 'DAV'
      Size = 100
    end
  end
end
