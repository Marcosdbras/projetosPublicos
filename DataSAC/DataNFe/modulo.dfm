object frmmodulo: Tfrmmodulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 359
  Top = 75
  Height = 570
  Width = 994
  object Conexao: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DATASAC\SERVER\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 16
    Top = 2
  end
  object qrLog: TZQuery
    Connection = Conexao
    BeforePost = qrLogBeforePost
    SQL.Strings = (
      'select * from c000002')
    Params = <>
    Left = 64
    Top = 2
  end
  object qrUsuario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000003')
    Params = <>
    Left = 152
    Top = 2
  end
  object qrconfig: TZQuery
    Connection = ConexaoLocal
    SQL.Strings = (
      'select * from c000001')
    Params = <>
    Left = 208
    Top = 2
    object qrconfigCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconfigULTIMO_BACKUP: TDateTimeField
      FieldName = 'ULTIMO_BACKUP'
    end
    object qrconfigPAPEL_PAREDE: TStringField
      FieldName = 'PAPEL_PAREDE'
      Size = 150
    end
    object qrconfigAVISO_CONTAS_PAGAR: TIntegerField
      FieldName = 'AVISO_CONTAS_PAGAR'
    end
    object qrconfigAVISO_CHEQUE: TIntegerField
      FieldName = 'AVISO_CHEQUE'
    end
    object qrconfigESTOQUE_NEGATIVO: TIntegerField
      FieldName = 'ESTOQUE_NEGATIVO'
    end
    object qrconfigCASAS_DECIMAIS_QTDE: TIntegerField
      FieldName = 'CASAS_DECIMAIS_QTDE'
    end
    object qrconfigCASAS_DECIMAIS_VALOR: TIntegerField
      FieldName = 'CASAS_DECIMAIS_VALOR'
    end
    object qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField
      FieldName = 'VENDA_CADASTRO_CHEQUE'
    end
    object qrconfigVENDA_CADASTRO_CARTAO: TIntegerField
      FieldName = 'VENDA_CADASTRO_CARTAO'
    end
    object qrconfigVENDA_TIPONOTA: TIntegerField
      FieldName = 'VENDA_TIPONOTA'
    end
    object qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'VENDA_QTDE_VIAS_NOTA'
    end
    object qrconfigVENDA_PORTA_IMPRESSORA: TStringField
      FieldName = 'VENDA_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'VENDA_TIPO_IMPRESSORA'
    end
    object qrconfigVENDA_LIMITE_CLIENTE: TIntegerField
      FieldName = 'VENDA_LIMITE_CLIENTE'
    end
    object qrconfigOS_TIPONOTA: TIntegerField
      FieldName = 'OS_TIPONOTA'
    end
    object qrconfigOS_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'OS_QTDE_VIAS_NOTA'
    end
    object qrconfigOS_PORTA_IMPRESSORA: TStringField
      FieldName = 'OS_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigOS_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'OS_TIPO_IMPRESSORA'
    end
    object qrconfigORCAMENTO_TIPONOTA: TIntegerField
      FieldName = 'ORCAMENTO_TIPONOTA'
    end
    object qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField
      FieldName = 'ORCAMENTO_QTDE_VIAS_NOTA'
    end
    object qrconfigORCAMENTO_PORTA_IMPRESSORA: TStringField
      FieldName = 'ORCAMENTO_PORTA_IMPRESSORA'
      Size = 100
    end
    object qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField
      FieldName = 'ORCAMENTO_TIPO_IMPRESSORA'
    end
    object qrconfigCONTASRECEBER_CARENCIA: TIntegerField
      FieldName = 'CONTASRECEBER_CARENCIA'
    end
    object qrconfigCONTASRECEBER_TAXAJUROS: TFloatField
      FieldName = 'CONTASRECEBER_TAXAJUROS'
    end
    object qrconfigCONTASRECEBER_MULTA: TFloatField
      FieldName = 'CONTASRECEBER_MULTA'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField
      FieldName = 'CONTASRECEBER_DESCONTO_PERCENT'
    end
    object qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField
      FieldName = 'CONTASRECEBER_DESCONTO_PERMITIR'
    end
    object qrconfigECF_MODELO: TStringField
      FieldName = 'ECF_MODELO'
      Size = 30
    end
    object qrconfigECF_PORTA: TStringField
      FieldName = 'ECF_PORTA'
      Size = 50
    end
    object qrconfigECF_TEF: TIntegerField
      FieldName = 'ECF_TEF'
    end
    object qrconfigECF_TIPO: TStringField
      FieldName = 'ECF_TIPO'
    end
    object qrconfigBALANCAPDV_MODELO: TStringField
      FieldName = 'BALANCAPDV_MODELO'
      Size = 50
    end
    object qrconfigBALANCAPDV_PORTA: TStringField
      FieldName = 'BALANCAPDV_PORTA'
      Size = 10
    end
    object qrconfigIMPRESSORACHEQUE_MODELO: TStringField
      FieldName = 'IMPRESSORACHEQUE_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORACHEQUE_PORTA: TStringField
      FieldName = 'IMPRESSORACHEQUE_PORTA'
      Size = 10
    end
    object qrconfigBALANCA_MODELO: TStringField
      FieldName = 'BALANCA_MODELO'
      Size = 50
    end
    object qrconfigIMPRESSORABARRAS_MODELO: TStringField
      FieldName = 'IMPRESSORABARRAS_MODELO'
      Size = 50
    end
    object qrconfigBALANCA_CAMINHO: TStringField
      FieldName = 'BALANCA_CAMINHO'
      Size = 100
    end
    object qrconfigCADASTRO_PRODUTO: TStringField
      FieldName = 'CADASTRO_PRODUTO'
    end
    object qrconfigRAMO_ATIVIDADE: TIntegerField
      FieldName = 'RAMO_ATIVIDADE'
    end
    object qrconfigBOLETO_FORMAPGTO: TStringField
      FieldName = 'BOLETO_FORMAPGTO'
      Size = 30
    end
    object qrconfigEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrconfigBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrconfigPLANO_VENDA_AV: TStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 6
    end
    object qrconfigPLANO_VENDA_AP: TStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 6
    end
    object qrconfigPLANO_OS_AV: TStringField
      FieldName = 'PLANO_OS_AV'
      Size = 6
    end
    object qrconfigPLANO_OS_AP: TStringField
      FieldName = 'PLANO_OS_AP'
      Size = 6
    end
    object qrconfigPLANO_OUTRAS_ENTRADAS: TStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 6
    end
    object qrconfigPLANO_RECEBTO_CREDIARIO: TStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 6
    end
    object qrconfigPLANO_OUTRAS_SAIDAS: TStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 6
    end
    object qrconfigPLANO_CONTA1: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA1'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA2: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA2'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA3: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA3'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OS_AV'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA4: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA4'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OS_AP'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA5: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA5'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_RECEBTO_CREDIARIO'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA6: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA6'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA7: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA7'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA8: TStringField
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA8'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CLASSIFICACAO'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 10
      Lookup = True
    end
    object qrconfigPLANO_CONTA10: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA10'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_VENDA_AV'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA20: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA20'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_VENDA_AP'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA30: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA30'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OS_AV'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA40: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA40'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OS_AP'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA50: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA50'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA60: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA60'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA70: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA70'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
      Lookup = True
    end
    object qrconfigPLANO_CONTA80: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'PLANO_CONTA80'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'PLANO_DUPLICATA_NFE'
      Size = 30
      Lookup = True
    end
    object qrconfigNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrconfigNF_LINHA_TRANSPORTE: TIntegerField
      FieldName = 'NF_LINHA_TRANSPORTE'
    end
    object qrconfigNF_SALTO_PAGINA: TIntegerField
      FieldName = 'NF_SALTO_PAGINA'
    end
    object qrconfigNF_TIPO: TIntegerField
      FieldName = 'NF_TIPO'
    end
    object qrconfigNF_IMPRESSORA: TStringField
      FieldName = 'NF_IMPRESSORA'
      Size = 100
    end
    object qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField
      FieldName = 'VENDA_FECHAMENTO_CAIXA'
    end
    object qrconfigCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfigNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
    end
    object qrconfigDESCONTO_AVISTA: TFloatField
      FieldName = 'DESCONTO_AVISTA'
    end
    object qrconfigDESCONTO_PRODUTO: TFloatField
      FieldName = 'DESCONTO_PRODUTO'
    end
    object qrconfigDESCONTO_TOTALNOTA: TFloatField
      FieldName = 'DESCONTO_TOTALNOTA'
    end
    object qrconfigTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
    end
    object qrconfigVENDA_ALTERAR_PRECO: TIntegerField
      FieldName = 'VENDA_ALTERAR_PRECO'
    end
    object qrconfigNF_LINHA_SUBTOTAL: TIntegerField
      FieldName = 'NF_LINHA_SUBTOTAL'
    end
    object qrconfigNF_LINHA_TOTAL: TIntegerField
      FieldName = 'NF_LINHA_TOTAL'
    end
    object qrconfigECF_CAIXA: TStringField
      FieldName = 'ECF_CAIXA'
      Size = 3
    end
    object qrconfigECF_SERIAL: TStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrconfigFARMACIA_ENVIO: TStringField
      FieldName = 'FARMACIA_ENVIO'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA: TStringField
      FieldName = 'FARMACIA_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_ENVIO_RESPOSTA: TStringField
      FieldName = 'FARMACIA_ENVIO_RESPOSTA'
      Size = 60
    end
    object qrconfigFARMACIA_LOGIN: TStringField
      FieldName = 'FARMACIA_LOGIN'
    end
    object qrconfigFARMACIA_SENHA: TStringField
      FieldName = 'FARMACIA_SENHA'
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
    object qrconfigIMPRIME_DUPLICATA: TIntegerField
      FieldName = 'IMPRIME_DUPLICATA'
    end
    object qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTASRECEBER_BLOQUEIO'
    end
    object qrconfigRECIBO_TIPONOTA: TIntegerField
      FieldName = 'RECIBO_TIPONOTA'
    end
    object qrconfigBALANCA_PROGRAMA: TStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
    end
    object qrconfigNR_CONTROLE_ECF: TStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrconfigTIPO_DUPLICATA: TStringField
      FieldName = 'TIPO_DUPLICATA'
    end
    object qrconfigCONCILIA_VENDA: TIntegerField
      FieldName = 'CONCILIA_VENDA'
    end
    object qrconfigCONTROLA_ENTREGA: TIntegerField
      FieldName = 'CONTROLA_ENTREGA'
    end
    object qrconfigENTREGA_IMPRESSAO: TIntegerField
      FieldName = 'ENTREGA_IMPRESSAO'
    end
    object qrconfigENTREGA_VIAS: TIntegerField
      FieldName = 'ENTREGA_VIAS'
    end
    object qrconfigNF_GERAR_RECEBER: TIntegerField
      FieldName = 'NF_GERAR_RECEBER'
    end
    object qrconfigNF_GERAR_DUPLICATA: TIntegerField
      FieldName = 'NF_GERAR_DUPLICATA'
    end
    object qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField
      FieldName = 'CUPOM_IMPRIMIR_CODIGO'
    end
    object qrconfigCLIENTE_PEDE_CPF: TIntegerField
      FieldName = 'CLIENTE_PEDE_CPF'
    end
    object qrconfigVERIFICA_COD_BARRA: TIntegerField
      FieldName = 'VERIFICA_COD_BARRA'
    end
    object qrconfigVERIFICA_NOME_PRODUTO: TIntegerField
      FieldName = 'VERIFICA_NOME_PRODUTO'
    end
    object qrconfigALTERAR_UNITARIO: TIntegerField
      FieldName = 'ALTERAR_UNITARIO'
    end
    object qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField
      FieldName = 'BAIXAR_ESTOQUE_NOTA_SAIDA'
    end
    object qrconfigETIQUETA_07: TIntegerField
      FieldName = 'ETIQUETA_07'
    end
    object qrconfigETIQUETA_07_1: TIntegerField
      FieldName = 'ETIQUETA_07_1'
    end
    object qrconfigETIQUETA_07_2: TIntegerField
      FieldName = 'ETIQUETA_07_2'
    end
    object qrconfigEMAIL_SERVIDOR_SMTP: TStringField
      FieldName = 'EMAIL_SERVIDOR_SMTP'
      Size = 100
    end
    object qrconfigEMAIL_PORTA: TStringField
      FieldName = 'EMAIL_PORTA'
      Size = 10
    end
    object qrconfigEMAIL_USUARIO: TStringField
      FieldName = 'EMAIL_USUARIO'
      Size = 100
    end
    object qrconfigEMAIL_SENHA: TStringField
      FieldName = 'EMAIL_SENHA'
    end
    object qrconfigEMAIL_ASSUNTO: TStringField
      FieldName = 'EMAIL_ASSUNTO'
      Size = 100
    end
    object qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField
      FieldName = 'EMAIL_EXIGE_CONEXAO'
    end
    object qrconfigEMAIL_MENSAGEM: TBlobField
      FieldName = 'EMAIL_MENSAGEM'
    end
    object qrconfigPLANO_DUPLICATA_NFE: TStringField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Size = 30
    end
    object qrconfigINVENTARIO_AUTOMATICO: TIntegerField
      FieldName = 'INVENTARIO_AUTOMATICO'
    end
    object qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrconfigIND_CLIE_ENTRADA: TStringField
      FieldName = 'IND_CLIE_ENTRADA'
      Size = 6
    end
    object qrconfigIND_CFOP_ENTRADA: TStringField
      FieldName = 'IND_CFOP_ENTRADA'
      Size = 5
    end
    object qrconfigIND_CLIE_SAIDA: TStringField
      FieldName = 'IND_CLIE_SAIDA'
      Size = 6
    end
    object qrconfigIND_CFOP_SAIDA: TStringField
      FieldName = 'IND_CFOP_SAIDA'
      Size = 5
    end
    object qrconfigIND_CLIE_PERDA: TStringField
      FieldName = 'IND_CLIE_PERDA'
      Size = 6
    end
    object qrconfigIND_CFOP_PERDA: TStringField
      FieldName = 'IND_CFOP_PERDA'
      Size = 5
    end
    object qrconfigIND_CLIE_ENTRADA_DESC: TStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_ENTRADA_DESC: TStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_SAIDA_DESC: TStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_SAIDA_DESC: TStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 30
    end
    object qrconfigIND_CLIE_PERDA_DESC: TStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 30
    end
    object qrconfigIND_CFOP_PERDA_DESC: TStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 30
    end
    object qrconfigVISUALIZA_MENSAGEM: TIntegerField
      FieldName = 'VISUALIZA_MENSAGEM'
    end
    object qrconfigUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
  end
  object qrFilial: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000004')
    Params = <>
    Left = 264
    Top = 2
    object qrFilialCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrFilialFILIAL: TStringField
      DisplayLabel = 'Nome da Empresa'
      DisplayWidth = 37
      FieldName = 'FILIAL'
      Size = 50
    end
    object qrFilialNOTAFISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'NOTAFISCAL'
      Visible = False
    end
    object qrFilialENDERECO: TStringField
      DisplayWidth = 60
      FieldName = 'ENDERECO'
      Visible = False
      Size = 60
    end
    object qrFilialCIDADE: TStringField
      DisplayWidth = 30
      FieldName = 'CIDADE'
      Visible = False
      Size = 30
    end
    object qrFilialUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrFilialCEP: TStringField
      DisplayWidth = 9
      FieldName = 'CEP'
      Visible = False
      Size = 9
    end
    object qrFilialTELEFONE: TStringField
      DisplayWidth = 25
      FieldName = 'TELEFONE'
      Visible = False
      Size = 25
    end
    object qrFilialCNPJ: TStringField
      DisplayWidth = 25
      FieldName = 'CNPJ'
      Visible = False
      Size = 25
    end
    object qrFilialIE: TStringField
      DisplayWidth = 14
      FieldName = 'IE'
      Visible = False
      Size = 14
    end
    object qrFilialSEQNF: TIntegerField
      DisplayWidth = 10
      FieldName = 'SEQNF'
      Visible = False
    end
    object qrFilialFAX: TStringField
      DisplayWidth = 25
      FieldName = 'FAX'
      Visible = False
      Size = 25
    end
    object qrFilialOBS1: TStringField
      DisplayWidth = 100
      FieldName = 'OBS1'
      Visible = False
      Size = 100
    end
    object qrFilialOBS2: TStringField
      DisplayWidth = 100
      FieldName = 'OBS2'
      Visible = False
      Size = 100
    end
    object qrFilialCONTRIBUINTE_IPI: TStringField
      DisplayWidth = 16
      FieldName = 'CONTRIBUINTE_IPI'
      Visible = False
      Size = 1
    end
    object qrFilialSUBSTITUTO_TRIBUTARIO: TStringField
      DisplayWidth = 22
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Visible = False
      Size = 1
    end
    object qrFilialEMPRESA_ESTADUAL: TStringField
      DisplayWidth = 17
      FieldName = 'EMPRESA_ESTADUAL'
      Visible = False
      Size = 1
    end
    object qrFilialOPTANTE_SIMPLES: TStringField
      DisplayWidth = 15
      FieldName = 'OPTANTE_SIMPLES'
      Visible = False
      Size = 1
    end
    object qrFilialOPTANTE_SUPER_SIMPLES: TStringField
      DisplayWidth = 22
      FieldName = 'OPTANTE_SUPER_SIMPLES'
      Visible = False
      Size = 1
    end
    object qrFilialECF: TStringField
      DisplayWidth = 3
      FieldName = 'ECF'
      Visible = False
      Size = 1
    end
    object qrFilialTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrFilialIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
    end
    object qrFilialISS: TFloatField
      DisplayWidth = 10
      FieldName = 'ISS'
      Visible = False
    end
    object qrFilialNUMERO: TStringField
      DisplayWidth = 10
      FieldName = 'NUMERO'
      Visible = False
      Size = 10
    end
    object qrFilialRESPONSAVEL: TStringField
      DisplayWidth = 50
      FieldName = 'RESPONSAVEL'
      Visible = False
      Size = 50
    end
    object qrFilialCOMPLEMENTO: TStringField
      DisplayWidth = 50
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrFilialBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrFilialCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object qrFilialCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFilialPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrFilialCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrFilialDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qrFilialCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrFilialATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 40
    end
    object qrFilialINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qrFilialINDUSTRIA: TStringField
      FieldName = 'INDUSTRIA'
      Size = 1
    end
    object qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrFilialCONTADOR_NOME: TStringField
      FieldName = 'CONTADOR_NOME'
      Size = 60
    end
    object qrFilialCONTADOR_CPF: TStringField
      FieldName = 'CONTADOR_CPF'
    end
    object qrFilialCONTADOR_CRC: TStringField
      FieldName = 'CONTADOR_CRC'
      Size = 15
    end
    object qrFilialCONTADOR_CNPJ: TStringField
      FieldName = 'CONTADOR_CNPJ'
      Size = 25
    end
    object qrFilialCONTADOR_CEP: TStringField
      FieldName = 'CONTADOR_CEP'
      Size = 10
    end
    object qrFilialCONTADOR_ENDERECO: TStringField
      FieldName = 'CONTADOR_ENDERECO'
      Size = 60
    end
    object qrFilialCONTADOR_NUMERO: TStringField
      FieldName = 'CONTADOR_NUMERO'
      Size = 5
    end
    object qrFilialCONTADOR_COMPLEMENTO: TStringField
      FieldName = 'CONTADOR_COMPLEMENTO'
      Size = 60
    end
    object qrFilialCONTADOR_BAIRRO: TStringField
      FieldName = 'CONTADOR_BAIRRO'
      Size = 60
    end
    object qrFilialCONTADOR_FONE: TStringField
      FieldName = 'CONTADOR_FONE'
      Size = 15
    end
    object qrFilialCONTADOR_FAX: TStringField
      FieldName = 'CONTADOR_FAX'
      Size = 15
    end
    object qrFilialCONTADOR_EMAIL: TStringField
      FieldName = 'CONTADOR_EMAIL'
      Size = 60
    end
    object qrFilialIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
    object qrFilialCRT: TStringField
      FieldName = 'CRT'
      Size = 1
    end
    object qrFilialCONTADOR_CIDADE: TStringField
      FieldName = 'CONTADOR_CIDADE'
      Size = 30
    end
    object qrFilialCONTADOR_COD_MUNICIPIO: TStringField
      FieldName = 'CONTADOR_COD_MUNICIPIO'
      Size = 30
    end
    object qrFilialCONTADOR_UF: TStringField
      FieldName = 'CONTADOR_UF'
      Size = 2
    end
    object qrFilialPERMITE_CREDITO: TIntegerField
      FieldName = 'PERMITE_CREDITO'
    end
  end
  object qrcliente: TZQuery
    Connection = Conexao
    BeforePost = qrclienteBeforePost
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 312
    Top = 2
    object qrclienteNOME: TStringField
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteCPF: TStringField
      DisplayLabel = 'CPF/CNPJ'
      DisplayWidth = 18
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteENDERECO: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      DisplayWidth = 20
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteAPELIDO: TStringField
      DisplayWidth = 50
      FieldName = 'APELIDO'
      Visible = False
      Size = 50
    end
    object qrclienteBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrclienteCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrclienteCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TStringField
      DisplayWidth = 80
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 80
    end
    object qrclienteMORADIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MORADIA'
      Visible = False
    end
    object qrclienteTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrclienteSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrclienteTELEFONE1: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE1'
      Visible = False
      Transliterate = False
    end
    object qrclienteTELEFONE2: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrclienteTELEFONE3: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE3'
      Visible = False
    end
    object qrclienteCELULAR: TStringField
      DisplayWidth = 20
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrclienteEMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrclienteRG: TStringField
      DisplayWidth = 25
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrclienteFILIACAO: TStringField
      DisplayWidth = 80
      FieldName = 'FILIACAO'
      Visible = False
      Size = 80
    end
    object qrclienteESTADOCIVIL: TStringField
      DisplayWidth = 15
      FieldName = 'ESTADOCIVIL'
      Visible = False
      Size = 15
    end
    object qrclienteCONJUGE: TStringField
      DisplayWidth = 60
      FieldName = 'CONJUGE'
      Visible = False
      Size = 60
    end
    object qrclientePROFISSAO: TStringField
      DisplayWidth = 30
      FieldName = 'PROFISSAO'
      Visible = False
      Size = 30
    end
    object qrclienteEMPRESA: TStringField
      DisplayWidth = 40
      FieldName = 'EMPRESA'
      Visible = False
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      DisplayWidth = 10
      FieldName = 'RENDA'
      Visible = False
    end
    object qrclienteLIMITE: TFloatField
      DisplayWidth = 10
      FieldName = 'LIMITE'
      Visible = False
    end
    object qrclienteREF1: TStringField
      DisplayWidth = 50
      FieldName = 'REF1'
      Visible = False
      Size = 50
    end
    object qrclienteREF2: TStringField
      DisplayWidth = 50
      FieldName = 'REF2'
      Visible = False
      Size = 50
    end
    object qrclienteCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrclienteOBS1: TStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrclienteOBS2: TStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrclienteOBS3: TStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrclienteOBS4: TStringField
      DisplayWidth = 80
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrclienteOBS5: TStringField
      DisplayWidth = 80
      FieldName = 'OBS5'
      Visible = False
      Size = 80
    end
    object qrclienteOBS6: TStringField
      DisplayWidth = 80
      FieldName = 'OBS6'
      Visible = False
      Size = 80
    end
    object qrclienteNASCIMENTO: TStringField
      DisplayWidth = 10
      FieldName = 'NASCIMENTO'
      Visible = False
      Size = 10
    end
    object qrclienteCODREGIAO: TStringField
      DisplayWidth = 6
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrclienteregiao: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'regiao'
      LookupDataSet = qrregiao
      LookupKeyFields = 'codigo'
      LookupResultField = 'regiao'
      KeyFields = 'codregiao'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclientevendedor: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrclienteCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Visible = False
      Size = 6
    end
    object qrclienteconvenio: TStringField
      FieldKind = fkLookup
      FieldName = 'convenio'
      LookupDataSet = qrconvenio
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codconvenio'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrclienteCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 6
    end
    object qrclienteUSUARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'USUARIO'
      LookupDataSet = qrUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'USUARIO'
      KeyFields = 'CODUSUARIO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclienteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrclienteSEXO: TStringField
      FieldName = 'SEXO'
      Visible = False
      Size = 1
    end
    object qrclienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
      Visible = False
    end
    object qrclientePREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
      Visible = False
    end
    object qrclienteTAMANHO_CALCA: TStringField
      FieldName = 'TAMANHO_CALCA'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_BLUSA: TStringField
      FieldName = 'TAMANHO_BLUSA'
      Visible = False
      Size = 5
    end
    object qrclienteTAMANHO_SAPATO: TStringField
      FieldName = 'TAMANHO_SAPATO'
      Visible = False
      Size = 5
    end
    object qrclienteRG_ORGAO: TStringField
      FieldName = 'RG_ORGAO'
      Visible = False
      Size = 5
    end
    object qrclienteRG_ESTADO: TStringField
      FieldName = 'RG_ESTADO'
      Visible = False
      Size = 2
    end
    object qrclienteRG_EMISSAO: TDateTimeField
      FieldName = 'RG_EMISSAO'
      Visible = False
    end
    object qrclienteCNAE: TStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrclienteIBGE: TStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrclienteRESP1_NOME: TStringField
      FieldName = 'RESP1_NOME'
      Visible = False
      Size = 80
    end
    object qrclienteRESP1_CPF: TStringField
      FieldName = 'RESP1_CPF'
      Visible = False
      Size = 25
    end
    object qrclienteRESP1_RG: TStringField
      FieldName = 'RESP1_RG'
      Visible = False
      Size = 25
    end
    object qrclienteRESP1_PROFISSAO: TStringField
      FieldName = 'RESP1_PROFISSAO'
      Visible = False
      Size = 50
    end
    object qrclienteRESP1_ESTADO_CIVIL: TStringField
      FieldName = 'RESP1_ESTADO_CIVIL'
      Visible = False
      Size = 30
    end
    object qrclienteRESP1_ENDERECO: TStringField
      FieldName = 'RESP1_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteRESP1_BAIRRO: TStringField
      FieldName = 'RESP1_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrclienteRESP1_CIDADE: TStringField
      FieldName = 'RESP1_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteRESP1_UF: TStringField
      FieldName = 'RESP1_UF'
      Visible = False
      Size = 2
    end
    object qrclienteRESP1_CEP: TStringField
      FieldName = 'RESP1_CEP'
      Visible = False
      Size = 15
    end
    object qrclienteRESP2_NOME: TStringField
      FieldName = 'RESP2_NOME'
      Visible = False
      Size = 80
    end
    object qrclienteRESP2_CPF: TStringField
      FieldName = 'RESP2_CPF'
      Visible = False
      Size = 25
    end
    object qrclienteRESP2_RG: TStringField
      FieldName = 'RESP2_RG'
      Visible = False
      Size = 25
    end
    object qrclienteRESP2_PROFISSAO: TStringField
      FieldName = 'RESP2_PROFISSAO'
      Visible = False
      Size = 50
    end
    object qrclienteRESP2_ESTADO_CIVIL: TStringField
      FieldName = 'RESP2_ESTADO_CIVIL'
      Visible = False
      Size = 30
    end
    object qrclienteRESP2_ENDERECO: TStringField
      FieldName = 'RESP2_ENDERECO'
      Visible = False
      Size = 80
    end
    object qrclienteRESP2_BAIRRO: TStringField
      FieldName = 'RESP2_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrclienteRESP2_CIDADE: TStringField
      FieldName = 'RESP2_CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteRESP2_UF: TStringField
      FieldName = 'RESP2_UF'
      Visible = False
      Size = 2
    end
    object qrclienteRESP2_CEP: TStringField
      FieldName = 'RESP2_CEP'
      Visible = False
      Size = 15
    end
    object qrclienteFOTO: TStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrclienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
  end
  object qrregiao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000005')
    Params = <>
    Left = 368
    Top = 2
  end
  object qrfunci: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 416
    Top = 2
    object qrfunciCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfunciNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 54
      FieldName = 'NOME'
      Size = 80
    end
    object qrfunciENDERECO: TStringField
      DisplayWidth = 80
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrfunciBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrfunciCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrfunciUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrfunciCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrfunciTELEFONE: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE'
      Visible = False
    end
    object qrfunciCELULAR: TStringField
      DisplayWidth = 20
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrfunciEMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrfunciCPF: TStringField
      DisplayWidth = 15
      FieldName = 'CPF'
      Visible = False
      Size = 15
    end
    object qrfunciRG: TStringField
      DisplayWidth = 25
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrfunciCTPS: TStringField
      DisplayWidth = 25
      FieldName = 'CTPS'
      Visible = False
      Size = 25
    end
    object qrfunciFUNCAO: TStringField
      DisplayWidth = 30
      FieldName = 'FUNCAO'
      Visible = False
      Size = 30
    end
    object qrfunciDATA_ADMISSAO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ADMISSAO'
      Visible = False
    end
    object qrfunciDATA_DEMISSAO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_DEMISSAO'
      Visible = False
    end
    object qrfunciSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrfunciSALARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALARIO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrfunciCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
      DisplayFormat = '###,###,##0.00%'
    end
    object qrfunciOBS1: TStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrfunciOBS2: TStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrfunciOBS3: TStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrfunciNASCIMENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'NASCIMENTO'
      Visible = False
    end
    object qrfunciF_CAIXA: TIntegerField
      FieldName = 'F_CAIXA'
      Visible = False
    end
    object qrfunciF_VENDEDOR: TIntegerField
      FieldName = 'F_VENDEDOR'
      Visible = False
    end
    object qrfunciF_TECNICO: TIntegerField
      FieldName = 'F_TECNICO'
      Visible = False
    end
    object qrfunciNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
  end
  object qrfornecedor: TZQuery
    Connection = Conexao
    BeforePost = qrfornecedorBeforePost
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 472
    Top = 2
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
    object qrfornecedorREP_NOME: TStringField
      FieldName = 'REP_NOME'
      Visible = False
      Size = 80
    end
    object qrfornecedorREP_TELEFONE: TStringField
      FieldName = 'REP_TELEFONE'
      Visible = False
    end
    object qrfornecedorREP_ENDERECO: TStringField
      FieldName = 'REP_ENDERECO'
      Visible = False
      Size = 60
    end
    object qrfornecedorREP_BAIRRO: TStringField
      FieldName = 'REP_BAIRRO'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_COMPLEMENTO: TStringField
      FieldName = 'REP_COMPLEMENTO'
      Visible = False
      Size = 50
    end
    object qrfornecedorREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Visible = False
      Size = 40
    end
    object qrfornecedorREP_UF: TStringField
      FieldName = 'REP_UF'
      Visible = False
      Size = 2
    end
    object qrfornecedorREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Visible = False
      EditMask = '00000\-999;1;_'
      Size = 15
    end
    object qrfornecedorREP_TELEFONE1: TStringField
      FieldName = 'REP_TELEFONE1'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE2: TStringField
      FieldName = 'REP_TELEFONE2'
      Visible = False
    end
    object qrfornecedorREP_TELEFONE3: TStringField
      FieldName = 'REP_TELEFONE3'
      Visible = False
    end
    object qrfornecedorREP_FAX: TStringField
      FieldName = 'REP_FAX'
      Visible = False
    end
    object qrfornecedorREP_CNPJ: TStringField
      FieldName = 'REP_CNPJ'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_IE: TStringField
      FieldName = 'REP_IE'
      Visible = False
      Size = 25
    end
    object qrfornecedorREP_HOME_PAGE: TStringField
      FieldName = 'REP_HOME_PAGE'
      Visible = False
      Size = 100
    end
    object qrfornecedorREP_EMAIL: TStringField
      FieldName = 'REP_EMAIL'
      Visible = False
      Size = 100
    end
    object qrfornecedorIM: TStringField
      FieldName = 'IM'
      Visible = False
      Size = 25
    end
    object qrfornecedorCNAE: TStringField
      FieldName = 'CNAE'
      Visible = False
      Size = 10
    end
    object qrfornecedorCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Visible = False
      Size = 10
    end
    object qrfornecedorIBGE: TStringField
      FieldName = 'IBGE'
      Visible = False
      Size = 5
    end
    object qrfornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
  end
  object qrtransportador: TZQuery
    Connection = Conexao
    SortedFields = 'nome'
    SQL.Strings = (
      'select * from c000010')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 544
    Top = 2
    object qrtransportadorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtransportadorNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrtransportadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrtransportadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrtransportadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrtransportadorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrtransportadorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrtransportadorCPF: TStringField
      FieldName = 'CPF'
      Size = 25
    end
    object qrtransportadorRG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrtransportadorTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object qrtransportadorCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrtransportadorPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrtransportadorUFPLACA: TStringField
      FieldName = 'UFPLACA'
      Size = 2
    end
    object qrtransportadorOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrtransportadorOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrtransportadorOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrtransportadorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrtransportadorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrtransportadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrtransportadorCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qrtransportadorIBGE: TStringField
      FieldName = 'IBGE'
      Size = 5
    end
    object qrtransportadorANTT: TStringField
      FieldName = 'ANTT'
      Size = 10
    end
  end
  object qrgrupo_servico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000012')
    Params = <>
    Left = 624
    Top = 2
  end
  object qrservico: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000011')
    Params = <>
    Left = 704
    Top = 2
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
    object qrservicoGRUPO: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'GRUPO'
      LookupDataSet = qrgrupo_servico
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrservicoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
  end
  object qrbanco: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000013')
    Params = <>
    Left = 768
    Top = 2
  end
  object qrformapgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000014')
    Params = <>
    Left = 824
    Top = 2
    object qrformapgtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrformapgtoFORMAPGTO: TStringField
      FieldName = 'FORMAPGTO'
      Size = 25
    end
  end
  object qrcondpgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000015')
    Params = <>
    Left = 888
    Top = 2
    object qrcondpgtoCONDPGTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 31
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrcondpgtoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcondpgtoPARCELAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'PARCELAS'
      Visible = False
    end
  end
  object qrcondpgto_parcela: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000016')
    Params = <>
    Left = 8
    Top = 50
    object qrcondpgto_parcelaNUMERO: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'NUMERO'
      DisplayFormat = '00'
    end
    object qrcondpgto_parcelaDIAS: TIntegerField
      DisplayLabel = 'Quantidade de Dias'
      DisplayWidth = 15
      FieldName = 'DIAS'
    end
    object qrcondpgto_parcelaPERCENTUAL: TFloatField
      DisplayLabel = 'Percentual'
      DisplayWidth = 14
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,##0.00%'
    end
    object qrcondpgto_parcelaJUROS: TFloatField
      DisplayLabel = 'Juros'
      DisplayWidth = 15
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
  object qrgrupo: TZQuery
    Connection = Conexao
    BeforePost = qrgrupoBeforePost
    SQL.Strings = (
      'select * from c000017')
    Params = <>
    Left = 104
    Top = 50
  end
  object qrsubgrupo: TZQuery
    Connection = Conexao
    BeforePost = qrsubgrupoBeforePost
    SQL.Strings = (
      'select * from c000018')
    Params = <>
    Left = 152
    Top = 50
  end
  object qrmarca: TZQuery
    Connection = Conexao
    BeforePost = qrmarcaBeforePost
    SQL.Strings = (
      'select * from c000019')
    Params = <>
    Left = 208
    Top = 50
  end
  object qrgrade_subgrupo: TZQuery
    Connection = Conexao
    BeforePost = qrgrade_subgrupoBeforePost
    SQL.Strings = (
      'select * from c000020')
    Params = <>
    Left = 280
    Top = 50
  end
  object qremitente: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c999999')
    Params = <>
    Left = 680
    Top = 106
    object qremitenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qremitenteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qremitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object qremitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qremitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qremitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qremitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qremitenteCEP: TStringField
      FieldName = 'CEP'
      EditMask = '##.###-###'
      Size = 10
    end
    object qremitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '(##)####-####'
    end
    object qremitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##'
      Size = 25
    end
    object qremitenteIE: TStringField
      FieldName = 'IE'
    end
    object qremitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qremitenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qremitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qremitenteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object qremitenteFAX: TStringField
      FieldName = 'FAX'
      EditMask = '(##)####-####'
    end
    object qremitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qremitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object qremitenteCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object qremitenteDATAHORA_INICIAL: TDateTimeField
      FieldName = 'DATAHORA_INICIAL'
    end
    object qremitenteDATAHORA_FINAL: TDateTimeField
      FieldName = 'DATAHORA_FINAL'
    end
    object qremitenteDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qremitenteVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qremitenteCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 4
    end
    object qremitenteSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 4
    end
    object qremitenteDIA_VENCIMENTO_CHAVE: TStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object qremitenteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object qremitenteDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object qremitenteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object qremitenteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
  end
  object qraliquota: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000023')
    Params = <>
    Left = 136
    Top = 474
  end
  object qrproduto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 8
    Top = 474
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 45
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 13
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
      DisplayWidth = 24
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
      DisplayWidth = 9
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
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
    object qrprodutogrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = qrgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'grupo'
      KeyFields = 'CODGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrprodutosubgrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = qrsubgrupo
      LookupKeyFields = 'codigo'
      LookupResultField = 'subgrupo'
      KeyFields = 'codsubgrupo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrprodutoreceita: TStringField
      DisplayWidth = 100
      FieldKind = fkLookup
      FieldName = 'receita'
      LookupDataSet = qrreceita
      LookupKeyFields = 'codigo'
      LookupResultField = 'receita'
      KeyFields = 'codreceita'
      Visible = False
      Size = 100
      Lookup = True
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
    object qrprodutoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoINCIDENCIA_PISCOFINS: TStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Visible = False
      Size = 30
    end
    object qrprodutoPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Visible = False
      Size = 1
    end
    object qrprodutoIAT: TStringField
      FieldName = 'IAT'
      Visible = False
      Size = 1
    end
    object qrprodutoIPPT: TStringField
      FieldName = 'IPPT'
      Visible = False
      Size = 1
    end
    object qrprodutoSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      ReadOnly = True
      Visible = False
      Size = 1
    end
    object qrprodutoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
    end
  end
  object qrpreco: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000026')
    Params = <>
    Left = 72
    Top = 474
    object qrprecoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprecoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprecoCUSTO_COMPRA: TFloatField
      FieldName = 'CUSTO_COMPRA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoVALOR_ULTIMA_COMPRA: TFloatField
      FieldName = 'VALOR_ULTIMA_COMPRA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoFRETE_IPI_OUTRAS: TFloatField
      FieldName = 'FRETE_IPI_OUTRAS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoICMS_ENTRADA: TFloatField
      FieldName = 'ICMS_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoICMS_SAIDA: TFloatField
      FieldName = 'ICMS_SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCUSTO_OPERACIONAL: TFloatField
      FieldName = 'CUSTO_OPERACIONAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoOUTROS_IMPOSTOS: TFloatField
      FieldName = 'OUTROS_IMPOSTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoLUCRO: TFloatField
      FieldName = 'LUCRO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoICMS_ENTRADA_P: TFloatField
      FieldName = 'ICMS_ENTRADA_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoICMS_SAIDA_P: TFloatField
      FieldName = 'ICMS_SAIDA_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCUSTO_OPERACIONAL_P: TFloatField
      FieldName = 'CUSTO_OPERACIONAL_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoOUTROS_IMPOSTOS_P: TFloatField
      FieldName = 'OUTROS_IMPOSTOS_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCOMISSAO_P: TFloatField
      FieldName = 'COMISSAO_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoLUCRO_P: TFloatField
      FieldName = 'LUCRO_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoTOTAL_CUSTO_P: TFloatField
      FieldName = 'TOTAL_CUSTO_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoPRECO_AUTOMATICO: TIntegerField
      FieldName = 'PRECO_AUTOMATICO'
    end
    object qrprecoDATA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_ALTERACAO'
    end
    object qrprecoALTERA_AUTOMATICO: TIntegerField
      FieldName = 'ALTERA_AUTOMATICO'
    end
    object qrprecoNOVO_PRECO_VENDA: TFloatField
      FieldName = 'NOVO_PRECO_VENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoSEGURO: TFloatField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoIPI_P: TFloatField
      FieldName = 'IPI_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoIPI: TFloatField
      FieldName = 'IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoPIS_P: TFloatField
      FieldName = 'PIS_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoPIS: TFloatField
      FieldName = 'PIS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCOFINS_P: TFloatField
      FieldName = 'COFINS_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCOFINS: TFloatField
      FieldName = 'COFINS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCONTRIBUICAO_SOCIAL: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoNOVO_PRECO_CUSTO: TFloatField
      FieldName = 'NOVO_PRECO_CUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoPIS_ENTRADA_P: TFloatField
      FieldName = 'PIS_ENTRADA_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoPIS_ENTRADA: TFloatField
      FieldName = 'PIS_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCOFINS_ENTRADA: TFloatField
      FieldName = 'COFINS_ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprecoCOFINS_ENTRADA_P: TFloatField
      FieldName = 'COFINS_ENTRADA_P'
      DisplayFormat = '###,###,##0.00%'
    end
    object qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField
      FieldName = 'CONTRIBUICAO_SOCIAL_ENTRADA_P'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrgrade_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000021')
    Params = <>
    Left = 216
    Top = 474
    object qrgrade_produtoNUMERACAO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 10
      FieldName = 'NUMERACAO'
      Size = 10
    end
    object qrgrade_produtoCODBARRA: TStringField
      DisplayLabel = 'C'#211'D.BARRAS'
      DisplayWidth = 25
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrgrade_produtoESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
    end
    object qrgrade_produtoCOR: TStringField
      DisplayWidth = 15
      FieldName = 'COR'
      Visible = False
      Size = 15
    end
    object qrgrade_produtoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrgrade_produtoCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
  end
  object qrserial_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    Left = 304
    Top = 474
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
  object qrreceita: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000024')
    Params = <>
    Left = 376
    Top = 474
  end
  object qrcomposicao_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000027')
    Params = <>
    Left = 464
    Top = 474
  end
  object qrinfnutricional_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000028')
    Params = <>
    Left = 584
    Top = 474
  end
  object qrCFOP: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000030')
    Params = <>
    Left = 480
    Top = 50
    object qrCFOPCFOP: TStringField
      DisplayWidth = 7
      FieldName = 'CFOP'
      Required = True
      Size = 5
    end
    object qrCFOPNATUREZA: TStringField
      DisplayLabel = 'NATUREZA DA OPERA'#199#195'O'
      DisplayWidth = 57
      FieldName = 'NATUREZA'
      Size = 50
    end
    object qrCFOPTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object qrCFOPICMS: TFloatField
      FieldName = 'ICMS'
      Visible = False
    end
    object qrCFOPISS: TFloatField
      FieldName = 'ISS'
      Visible = False
    end
    object qrCFOPOBS1: TStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrCFOPOBS2: TStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrCFOPOBS3: TStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrCFOPOBS4: TStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrCFOPFILTRO: TIntegerField
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrCFOPVALOR1: TFloatField
      FieldName = 'VALOR1'
      Visible = False
    end
    object qrCFOPVALOR2: TFloatField
      FieldName = 'VALOR2'
      Visible = False
    end
    object qrCFOPVALOR3: TFloatField
      FieldName = 'VALOR3'
      Visible = False
    end
    object qrCFOPVALOR4: TFloatField
      FieldName = 'VALOR4'
      Visible = False
    end
    object qrCFOPVALOR5: TFloatField
      FieldName = 'VALOR5'
      Visible = False
    end
    object qrCFOPVALOR6: TFloatField
      FieldName = 'VALOR6'
      Visible = False
    end
    object qrCFOPVALOR7: TFloatField
      FieldName = 'VALOR7'
      Visible = False
    end
    object qrCFOPVALOR8: TFloatField
      FieldName = 'VALOR8'
      Visible = False
    end
    object qrCFOPVALOR9: TFloatField
      FieldName = 'VALOR9'
      Visible = False
    end
    object qrCFOPVALOR10: TFloatField
      FieldName = 'VALOR10'
      Visible = False
    end
    object qrCFOPST: TStringField
      FieldName = 'ST'
      Visible = False
      Size = 11
    end
    object qrCFOPCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
    end
    object qrCFOPREDUCAO_ICMS: TFloatField
      FieldName = 'REDUCAO_ICMS'
      Visible = False
    end
    object qrCFOPMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
      Visible = False
    end
    object qrCFOPSIMPLIFICADO: TStringField
      FieldName = 'SIMPLIFICADO'
      Size = 50
    end
  end
  object qrentrada_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 688
    Top = 474
    object qrentrada_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrentrada_produtoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrentrada_produtoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrentrada_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrentrada_produtoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrentrada_produtoVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoSEGURO: TFloatField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrentrada_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrentrada_produtonatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'cfop'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 50
      Lookup = True
    end
    object qrentrada_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrentrada_produtoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qrentrada_produtoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrentrada_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrentrada_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrentrada_produtoMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrentrada_produtoSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrentrada_produtoVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrentrada_produtoALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrentrada_produtoSITUACAO_A: TStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
  end
  object qrproduto_mov: TZQuery
    Connection = Conexao
    BeforePost = qrproduto_movBeforePost
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 776
    Top = 474
    object qrproduto_movDATA: TDateTimeField
      DisplayWidth = 13
      FieldName = 'DATA'
    end
    object qrproduto_movNUMERONOTA: TStringField
      DisplayLabel = 'N.FISCAL'
      DisplayWidth = 9
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto_movUNITARIO: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 13
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movTOTAL: TFloatField
      DisplayWidth = 15
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movUNIDADE: TStringField
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto_movQTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrproduto_movCUPOM_NUMERO: TStringField
      DisplayWidth = 10
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrproduto_movCUPOM_MODELO: TStringField
      DisplayWidth = 5
      FieldName = 'CUPOM_MODELO'
      Size = 5
    end
    object qrproduto_movCUPOM_ITEM: TStringField
      DisplayWidth = 5
      FieldName = 'CUPOM_ITEM'
      Size = 5
    end
    object qrproduto_movALIQUOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCST: TStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto_movCODNOTA: TStringField
      DisplayLabel = 'COD.NOTA'
      DisplayWidth = 15
      FieldName = 'CODNOTA'
      Visible = False
      Size = 15
    end
    object qrproduto_movMOV: TStringField
      DisplayLabel = 'MOVIMENTO'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Visible = False
      Calculated = True
    end
    object qrproduto_movCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrproduto_movICMS: TFloatField
      DisplayLabel = '%ICMS'
      DisplayWidth = 8
      FieldName = 'ICMS'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object qrproduto_movIPI: TFloatField
      DisplayLabel = '%IPI'
      DisplayWidth = 7
      FieldName = 'IPI'
      Visible = False
      DisplayFormat = '###,##0.00%'
    end
    object qrproduto_movCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrproduto_movDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrproduto_movACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrproduto_movCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrproduto_movCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrproduto_movSERIAL: TStringField
      DisplayWidth = 25
      FieldName = 'SERIAL'
      Visible = False
      Size = 25
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrproduto_movVALOR_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrproduto_movSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrproduto_movECF_SERIE: TStringField
      DisplayWidth = 20
      FieldName = 'ECF_SERIE'
      Visible = False
    end
    object qrproduto_movECF_CAIXA: TStringField
      DisplayWidth = 10
      FieldName = 'ECF_CAIXA'
      Visible = False
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TStringField
      DisplayWidth = 5
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrproduto_movLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Size = 10
    end
    object qrproduto_movMOVIMENTO_ESTOQUE: TFloatField
      FieldName = 'MOVIMENTO_ESTOQUE'
    end
    object qrproduto_movCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrproduto_movLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object qrproduto_movVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrproduto_movCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrproduto_movLOJA: TStringField
      FieldName = 'LOJA'
      Size = 6
    end
    object qrproduto_movTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrproduto_movCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrproduto_movPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrproduto_movCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrproduto_movMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
    end
    object qrproduto_movCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object qrproduto_movCODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
    object qrproduto_movORIGEM: TStringField
      FieldName = 'ORIGEM'
      Size = 40
    end
    object qrproduto_movDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 40
    end
  end
  object qragenda: TZQuery
    Connection = Conexao
    BeforePost = qragendaBeforePost
    SQL.Strings = (
      'select * from c000034')
    Params = <>
    Left = 424
    Top = 50
    object qragendaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qragendaTIPO: TStringField
      FieldName = 'TIPO'
    end
    object qragendaCODTIPO: TStringField
      FieldName = 'CODTIPO'
      Size = 6
    end
    object qragendaNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qragendaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 25
    end
    object qragendaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 25
    end
    object qragendaTELEFONE3: TStringField
      FieldName = 'TELEFONE3'
      Size = 25
    end
    object qragendaCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 25
    end
    object qragendaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qragendaFAX: TStringField
      FieldName = 'FAX'
      Size = 25
    end
    object qragendaHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qragendaTIPOI: TIntegerField
      FieldName = 'TIPOI'
    end
  end
  object qrplano: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 536
    Top = 50
    object qrplanoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrplanoCONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 44
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
      Visible = False
      Size = 6
    end
    object qrplanogrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = qrplano2
      LookupKeyFields = 'codigo'
      LookupResultField = 'CONTA'
      KeyFields = 'codgrupo'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrplanoNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Visible = False
    end
  end
  object qrsaida_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 856
    Top = 474
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA'
    end
    object StringField4: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField2: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField3: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField5: TFloatField
      FieldName = 'BASE_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField6: TFloatField
      FieldName = 'ICMS_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField7: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField8: TFloatField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField9: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField10: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField1: TIntegerField
      FieldName = 'ITENS'
    end
    object FloatField11: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'cfop'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 50
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
  end
  object qrpedido_produto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000037')
    Params = <>
    Left = 952
    Top = 474
    object StringField12: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qrpedido_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_produtoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrpedido_produtoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrpedido_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrpedido_produtoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrpedido_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrpedido_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrpedido_produtoPREVISAO: TDateTimeField
      FieldName = 'PREVISAO'
    end
    object qrpedido_produtoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 50
    end
    object qrpedido_produtoOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrpedido_produtoOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrpedido_produtoOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrpedido_produtoOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
  end
  object qrcheque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000040')
    Params = <>
    Left = 608
    Top = 50
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
    Left = 680
    Top = 58
    object qrcontacorrenteCONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteTITULAR: TStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 31
      FieldName = 'TITULAR'
      Size = 30
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
  object qrlancamento_conta: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000042')
    Params = <>
    Left = 776
    Top = 50
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
  object qrcaixa_operador: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000045')
    Params = <>
    Left = 872
    Top = 50
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
    Left = 8
    Top = 106
    object qrcaixa_movCODOPERADOR: TStringField
      DisplayLabel = 'CAIXA'
      DisplayWidth = 6
      FieldName = 'CODOPERADOR'
      Size = 6
    end
    object qrcaixa_movDESCRICAO_MOVIMENTO: TStringField
      DisplayLabel = 'MOVIMENTO'
      DisplayWidth = 21
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_MOVIMENTO'
      Calculated = True
    end
    object qrcaixa_movHISTORICO: TStringField
      DisplayLabel = 'HIST'#211'RICO'
      DisplayWidth = 45
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcaixa_movVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcaixa_movENTRADA: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTRADA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcaixa_movSAIDA: TFloatField
      DisplayLabel = 'SA'#205'DA'
      DisplayWidth = 9
      FieldName = 'SAIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcaixa_movCODCAIXA: TStringField
      DisplayLabel = 'CX.'
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcaixa_movCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
    object qrcaixa_movDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qrcaixa_movCODCONTA: TStringField
      DisplayWidth = 6
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcaixa_movMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcaixa_movCONTA: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CONTA'
      LookupDataSet = qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'CODCONTA'
      Visible = False
      Size = 40
      Lookup = True
    end
  end
  object ConexaoLocal: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DATASAC\SERVER\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 16
    Top = 234
  end
  object qrvenda: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 952
    Top = 50
    object qrvendaSITUACAO: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldName = 'SITUACAO'
    end
    object qrvendaCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TStringField
      DisplayLabel = 'CUPOM'
      DisplayWidth = 7
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrvendaDATA: TDateTimeField
      DisplayWidth = 12
      FieldName = 'DATA'
    end
    object qrvendacliente: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 49
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrvendaTOTAL: TFloatField
      DisplayWidth = 11
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendavendedor: TStringField
      DisplayLabel = 'VENDEDOR'
      DisplayWidth = 16
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object qrvendaCODCAIXA: TStringField
      DisplayLabel = 'CAIXA'
      DisplayWidth = 10
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      DisplayLabel = 'CF'
      DisplayWidth = 3
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrvendaCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrvendaCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrvendaOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaRETIRADO: TStringField
      FieldName = 'RETIRADO'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
      Visible = False
    end
    object qrvendaP5: TFloatField
      DisplayWidth = 10
      FieldName = 'P5'
      Visible = False
    end
    object qrvendaP3: TFloatField
      DisplayWidth = 10
      FieldName = 'P3'
      Visible = False
    end
    object qrvendaCODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Visible = False
      Size = 6
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
      Visible = False
    end
    object qrvendaCOD_FINANCEIRA: TStringField
      FieldName = 'COD_FINANCEIRA'
      Visible = False
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LACTO: TStringField
      FieldName = 'COD_FINANCEIRA_LACTO'
      Visible = False
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LANCTO: TStringField
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Visible = False
      Size = 10
    end
  end
  object qrcontasreceber: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 960
    Top = 2
    object qrcontasreceberCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 12
    end
    object qrcontasreceberCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 10
    end
    object qrcontasreceberCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrcontasreceberDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateTimeField
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateTimeField
      FieldName = 'DATA_PAGAMENTO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      FieldName = 'VALOR_ORIGINAL'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      FieldName = 'VALOR_PAGO'
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      FieldName = 'VALOR_JUROS'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      FieldName = 'VALOR_ATUAL'
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
    end
    object qrcontasreceberDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TStringField
      FieldName = 'TIPO'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcontasreceberFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrcontasreceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberP5: TFloatField
      FieldName = 'P5'
    end
    object qrcontasreceberP3: TFloatField
      FieldName = 'P3'
    end
    object qrcontasreceberNUMERO_CUPOM: TStringField
      FieldName = 'NUMERO_CUPOM'
      Size = 6
    end
  end
  object qrcontasreceber_pgto: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 1032
    Top = 50
  end
  object qros: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000051')
    Params = <>
    Left = 184
    Top = 106
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
  end
  object qrsetor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000052')
    Params = <>
    Left = 72
    Top = 106
  end
  object qrveiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000054')
    Params = <>
    Left = 232
    Top = 106
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
  object relatorio: TRvProject
    Engine = rel_system
    ProjectFile = 'C:\SisCom\rel\relatorio.rav'
    Left = 992
    Top = 746
  end
  object rel_system: TRvSystem
    TitleSetup = 'Relat'#243'rio'
    TitleStatus = '"Status" do Relat'#243'rio'
    TitlePreview = 'Visualiza'#231#227'o de Relat'#243'rio'
    SystemFiler.StatusFormat = 'Gerando arquivo... P'#225'gina %p'
    SystemPreview.FormState = wsMaximized
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Imprimindo P'#225'gina %p'
    SystemPrinter.Title = 'Impress'#227'o de Relat'#243'rio'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 1048
    Top = 746
  end
  object rvemitente: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qremitente
    Left = 1112
    Top = 746
  end
  object rvOS: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qros
    Left = 1160
    Top = 746
  end
  object qrorcamento: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000056')
    Params = <>
    Left = 120
    Top = 106
    object qrorcamentoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrorcamentoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamentoCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamentoSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentoOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrorcamentoOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrorcamentoOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrorcamentoOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrorcamentocliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrorcamentovendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Size = 50
      Lookup = True
    end
  end
  object qrrelatorio: TZQuery
    Connection = ConexaoLocal
    AfterPost = qrrelatorioAfterPost
    SQL.Strings = (
      'select * from L000003')
    Params = <>
    Left = 16
    Top = 290
  end
  object dsrelatorio: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qrrelatorio
    Left = 1208
    Top = 746
  end
  object qrnotafiscal: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 88
    Top = 157
    object qrnotafiscalCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrnotafiscalNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrnotafiscalCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrnotafiscalDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnotafiscalCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrnotafiscalVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalFRETE: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalSEGURO: TFloatField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrnotafiscalDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalCODTRANSPORTADOR: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object qrnotafiscalFRETE_CONTA: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object qrnotafiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qrnotafiscalPLACA_UF: TStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object qrnotafiscalVOL_QTDE: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object qrnotafiscalVOL_ESPECIE: TStringField
      FieldName = 'VOL_ESPECIE'
    end
    object qrnotafiscalVOL_MARCA: TStringField
      FieldName = 'VOL_MARCA'
    end
    object qrnotafiscalVOL_NUMERO: TStringField
      FieldName = 'VOL_NUMERO'
    end
    object qrnotafiscalPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '###,###,##0.000'
    end
    object qrnotafiscalPESO_BRUTO: TFloatField
      FieldName = 'PESO_BRUTO'
      DisplayFormat = '###,###,##0.000'
    end
    object qrnotafiscalSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrnotafiscalMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object qrnotafiscalFATURAMENTO_DATA1: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object qrnotafiscalFATURAMENTO_DATA2: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object qrnotafiscalFATURAMENTO_DATA3: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object qrnotafiscalFATURAMENTO_DATA4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object qrnotafiscalFATURAMENTO_NUMERO1: TStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO2: TStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO3: TStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_NUMERO4: TStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object qrnotafiscalFATURAMENTO_VALOR1: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalFATURAMENTO_VALOR2: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalFATURAMENTO_VALOR3: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalFATURAMENTO_VALOR4: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
      DisplayFormat = '###,###,##0.00'
    end
    object qrnotafiscalCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object qrnotafiscalfilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Size = 30
      Lookup = True
    end
    object qrnotafiscalcliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object qrnotafiscalnatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 30
      Lookup = True
    end
    object qrnotafiscalOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrnotafiscalOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrnotafiscalOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotafiscalINF1: TStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrnotafiscalINF2: TStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrnotafiscalINF3: TStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrnotafiscalINF4: TStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrnotafiscalINF5: TStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrnotafiscalTRANSPORTADOR: TStringField
      FieldKind = fkLookup
      FieldName = 'TRANSPORTADOR'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODTRANSPORTADOR'
      Size = 50
      Lookup = True
    end
    object qrnotafiscalDATA_SAIDA: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object qrnotafiscalHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object qrnotafiscalSITUACAO_A: TStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object qrnotafiscalMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotafiscalSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object qrnotafiscalVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object qrnotafiscalALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnotafiscaltransp_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_endereco'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'ENDERECO'
      KeyFields = 'codtransportador'
      Size = 50
      Lookup = True
    end
    object qrnotafiscaltransp_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cidade'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codtransportador'
      Size = 30
      Lookup = True
    end
    object qrnotafiscaltransp_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_uf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'UF'
      KeyFields = 'codtransportador'
      Size = 2
      Lookup = True
    end
    object qrnotafiscaltransp_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object qrnotafiscaltransp_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object qrnotafiscalSIT: TStringField
      FieldName = 'SIT'
      Size = 1
    end
    object qrnotafiscalESPECIE: TStringField
      FieldKind = fkLookup
      FieldName = 'ESPECIE'
      LookupDataSet = qrfiscal_modelo
      LookupKeyFields = 'SINTEGRA'
      LookupResultField = 'SIGLA'
      KeyFields = 'MODELO_NF'
      Size = 10
      Lookup = True
    end
    object qrnotafiscalCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrnotafiscalMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrnotafiscalendereco: TStringField
      FieldKind = fkLookup
      FieldName = 'endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrnotafiscalcpf: TStringField
      FieldKind = fkLookup
      FieldName = 'cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODCLIENTE'
      Size = 14
      Lookup = True
    end
    object qrnotafiscalrg: TStringField
      FieldKind = fkLookup
      FieldName = 'rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'CODCLIENTE'
      Lookup = True
    end
    object qrnotafiscalBAIXA_ESTOQUE: TStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object qrnotafiscalTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotafiscalOS_COD1: TStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object qrnotafiscalOS_COD2: TStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object qrnotafiscalOS_COD3: TStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object qrnotafiscalOS_COD4: TStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object qrnotafiscalOS_COD5: TStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object qrnotafiscalOS_COD6: TStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object qrnotafiscalOS_SERV1: TStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object qrnotafiscalOS_SERV2: TStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object qrnotafiscalOS_SERV3: TStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object qrnotafiscalOS_SERV4: TStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object qrnotafiscalOS_SERV5: TStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object qrnotafiscalOS_SERV6: TStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object qrnotafiscalOS_COMP1: TStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object qrnotafiscalOS_COMP2: TStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object qrnotafiscalOS_COMP3: TStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object qrnotafiscalOS_COMP4: TStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object qrnotafiscalOS_COMP5: TStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object qrnotafiscalOS_COMP6: TStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object qrnotafiscalOS_QTDE1: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object qrnotafiscalOS_QTDE2: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object qrnotafiscalOS_QTDE3: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object qrnotafiscalOS_QTDE4: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object qrnotafiscalOS_QTDE5: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object qrnotafiscalOS_QTDE6: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object qrnotafiscalOS_UNIT1: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object qrnotafiscalOS_UNIT2: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object qrnotafiscalOS_UNIT3: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object qrnotafiscalOS_UNIT4: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object qrnotafiscalOS_UNIT5: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object qrnotafiscalOS_UNIT6: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object qrnotafiscalOS_TOTAL1: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object qrnotafiscalOS_TOTAL2: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object qrnotafiscalOS_TOTAL3: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object qrnotafiscalOS_TOTAL4: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object qrnotafiscalOS_TOTAL5: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object qrnotafiscalOS_TOTAL6: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object qrnotafiscalOS_ISS: TFloatField
      FieldName = 'OS_ISS'
    end
    object qrnotafiscalOS_TOTAL_GERAL: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object qrnotafiscalOS_TOTAL_ISS: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
  end
  object qrcliente_veiculo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000063')
    Params = <>
    Left = 304
    Top = 106
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
  object qrconfig_cobrebem: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000064')
    Params = <>
    Left = 400
    Top = 106
    object qrconfig_cobrebemDESCRICAO: TStringField
      DisplayLabel = 'CEDENTE'
      DisplayWidth = 35
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qrconfig_cobrebembanco: TStringField
      DisplayLabel = 'BANCO'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'banco'
      KeyFields = 'codconta'
      Size = 30
      Lookup = True
    end
    object qrconfig_cobrebemagencia: TStringField
      DisplayLabel = 'AG'#202'NCIA'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'agencia'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'agencia'
      KeyFields = 'codconta'
      Size = 10
      Lookup = True
    end
    object qrconfig_cobrebemCODCONTA: TStringField
      DisplayLabel = 'CONTA'
      DisplayWidth = 15
      FieldName = 'CODCONTA'
      Size = 15
    end
    object qrconfig_cobrebemCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrconfig_cobrebemCODIGO_CEDENTE: TStringField
      DisplayWidth = 20
      FieldName = 'CODIGO_CEDENTE'
      Visible = False
    end
    object qrconfig_cobrebemARQUIVO_CONFIGURACAO: TStringField
      DisplayWidth = 100
      FieldName = 'ARQUIVO_CONFIGURACAO'
      Visible = False
      Size = 100
    end
    object qrconfig_cobrebemARQUIVO_LOGOMARCA: TStringField
      DisplayWidth = 100
      FieldName = 'ARQUIVO_LOGOMARCA'
      Visible = False
      Size = 100
    end
    object qrconfig_cobrebemTIPO_BOLETO: TStringField
      DisplayWidth = 50
      FieldName = 'TIPO_BOLETO'
      Visible = False
      Size = 50
    end
    object qrconfig_cobrebemNOSSONUMERO_INICIO: TStringField
      DisplayWidth = 10
      FieldName = 'NOSSONUMERO_INICIO'
      Visible = False
      Size = 10
    end
    object qrconfig_cobrebemNOSSONUMERO_FIM: TStringField
      DisplayWidth = 10
      FieldName = 'NOSSONUMERO_FIM'
      Visible = False
      Size = 10
    end
    object qrconfig_cobrebemNOSSONUMERO_PROXIMO: TStringField
      DisplayWidth = 10
      FieldName = 'NOSSONUMERO_PROXIMO'
      Visible = False
      Size = 10
    end
    object qrconfig_cobrebemVARIACAO_MODALIDADE: TStringField
      DisplayWidth = 10
      FieldName = 'VARIACAO_MODALIDADE'
      Visible = False
      Size = 10
    end
    object qrconfig_cobrebemMARGEM_SUPERIOR: TStringField
      DisplayWidth = 10
      FieldName = 'MARGEM_SUPERIOR'
      Visible = False
      Size = 10
    end
    object qrconfig_cobrebemREMESSA_UTILIZA: TIntegerField
      DisplayWidth = 10
      FieldName = 'REMESSA_UTILIZA'
      Visible = False
    end
    object qrconfig_cobrebemRETORNO_UTILIZA: TIntegerField
      DisplayWidth = 10
      FieldName = 'RETORNO_UTILIZA'
      Visible = False
    end
    object qrconfig_cobrebemREMESSA_LOCAL: TStringField
      DisplayWidth = 100
      FieldName = 'REMESSA_LOCAL'
      Visible = False
      Size = 100
    end
    object qrconfig_cobrebemRETORNO_LOCAL: TStringField
      DisplayWidth = 100
      FieldName = 'RETORNO_LOCAL'
      Visible = False
      Size = 100
    end
    object qrconfig_cobrebemINSTRUCOES_1: TStringField
      DisplayWidth = 80
      FieldName = 'INSTRUCOES_1'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemINSTRUCOES_2: TStringField
      DisplayWidth = 80
      FieldName = 'INSTRUCOES_2'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemINSTRUCOES_3: TStringField
      DisplayWidth = 80
      FieldName = 'INSTRUCOES_3'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_1: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_1'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_2: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_2'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_3: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_3'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_4: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_4'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_5: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_5'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_6: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_6'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_7: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_7'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_8: TStringField
      DisplayWidth = 80
      FieldName = 'DEMONSTRATIVO_8'
      Visible = False
      Size = 80
    end
    object qrconfig_cobrebemDEMONSTRATIVO_TIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'DEMONSTRATIVO_TIPO'
      Visible = False
    end
    object qrconfig_cobrebemcodigo_banco: TStringField
      DisplayWidth = 5
      FieldKind = fkLookup
      FieldName = 'codigo_banco'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'CODBANCO'
      KeyFields = 'codconta'
      Visible = False
      Size = 5
      Lookup = True
    end
    object qrconfig_cobrebemtitular: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'titular'
      LookupDataSet = qrcontacorrente
      LookupKeyFields = 'conta'
      LookupResultField = 'TITULAR'
      KeyFields = 'codconta'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconfig_cobrebemLIN_VENCIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_VENCIMENTO'
      Visible = False
    end
    object qrconfig_cobrebemCOL_VENCIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_VENCIMENTO'
      Visible = False
    end
    object qrconfig_cobrebemLIN_DATADOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_DATADOC'
      Visible = False
    end
    object qrconfig_cobrebemCOL_DATADOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_DATADOC'
      Visible = False
    end
    object qrconfig_cobrebemLIN_NUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_NUMERO'
      Visible = False
    end
    object qrconfig_cobrebemCOL_NUMERO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_NUMERO'
      Visible = False
    end
    object qrconfig_cobrebemLIN_ESPDOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_ESPDOC'
      Visible = False
    end
    object qrconfig_cobrebemCOL_ESPDOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_ESPDOC'
      Visible = False
    end
    object qrconfig_cobrebemLIN_ACEITE: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_ACEITE'
      Visible = False
    end
    object qrconfig_cobrebemCOL_ACEITE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_ACEITE'
      Visible = False
    end
    object qrconfig_cobrebemLIN_ESP: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_ESP'
      Visible = False
    end
    object qrconfig_cobrebemCOL_ESP: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_ESP'
      Visible = False
    end
    object qrconfig_cobrebemLIN_QTDE: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_QTDE'
      Visible = False
    end
    object qrconfig_cobrebemCOL_QTDE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_QTDE'
      Visible = False
    end
    object qrconfig_cobrebemLIN_VALOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_VALOR'
      Visible = False
    end
    object qrconfig_cobrebemCOL_VALOR: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_VALOR'
      Visible = False
    end
    object qrconfig_cobrebemLIN_VALORDOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_VALORDOC'
      Visible = False
    end
    object qrconfig_cobrebemCOL_VALORDOC: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_VALORDOC'
      Visible = False
    end
    object qrconfig_cobrebemLIN_DESCONTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_DESCONTO'
      Visible = False
    end
    object qrconfig_cobrebemCOL_DESCONTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_DESCONTO'
      Visible = False
    end
    object qrconfig_cobrebemLIN_OUTRAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_OUTRAS'
      Visible = False
    end
    object qrconfig_cobrebemCOL_OUTRAS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_OUTRAS'
      Visible = False
    end
    object qrconfig_cobrebemLIN_MORA: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_MORA'
      Visible = False
    end
    object qrconfig_cobrebemCOL_MORA: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_MORA'
      Visible = False
    end
    object qrconfig_cobrebemLIN_OUTROS: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_OUTROS'
      Visible = False
    end
    object qrconfig_cobrebemCOL_OUTROS: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_OUTROS'
      Visible = False
    end
    object qrconfig_cobrebemLIN_COBRADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_COBRADO'
      Visible = False
    end
    object qrconfig_cobrebemCOL_COBRADO: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_COBRADO'
      Visible = False
    end
    object qrconfig_cobrebemLIN_CEDENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_CEDENTE'
      Visible = False
    end
    object qrconfig_cobrebemCOL_CEDENTE: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_CEDENTE'
      Visible = False
    end
    object qrconfig_cobrebemLIN_CEDENTEENDER: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_CEDENTEENDER'
      Visible = False
    end
    object qrconfig_cobrebemCOL_CEDENTEENDER: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_CEDENTEENDER'
      Visible = False
    end
    object qrconfig_cobrebemCOL_INSTRUCOES: TIntegerField
      DisplayWidth = 10
      FieldName = 'COL_INSTRUCOES'
      Visible = False
    end
    object qrconfig_cobrebemLIN_INST1: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_INST1'
      Visible = False
    end
    object qrconfig_cobrebemLIN_INST2: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_INST2'
      Visible = False
    end
    object qrconfig_cobrebemLIN_INST3: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_INST3'
      Visible = False
    end
    object qrconfig_cobrebemLIN_INST4: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_INST4'
      Visible = False
    end
    object qrconfig_cobrebemLIN_INST5: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_INST5'
      Visible = False
    end
    object qrconfig_cobrebemLIN_INST6: TIntegerField
      DisplayWidth = 10
      FieldName = 'LIN_INST6'
      Visible = False
    end
    object qrconfig_cobrebemTIPO: TStringField
      DisplayWidth = 1
      FieldName = 'TIPO'
      Visible = False
      Size = 1
    end
    object qrconfig_cobrebemREMESSA_SEQUENCIA: TIntegerField
      FieldName = 'REMESSA_SEQUENCIA'
    end
    object qrconfig_cobrebemREMESSA_LAYOUT: TStringField
      FieldName = 'REMESSA_LAYOUT'
    end
    object qrconfig_cobrebemRETORNO_LAYOUT: TStringField
      FieldName = 'RETORNO_LAYOUT'
    end
    object qrconfig_cobrebemENTRE_LINHAS: TIntegerField
      FieldName = 'ENTRE_LINHAS'
    end
    object qrconfig_cobrebemACERTO_ENTRE_LINHAS: TIntegerField
      FieldName = 'ACERTO_ENTRE_LINHAS'
    end
  end
  object qrboleto_impressao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000065')
    Params = <>
    Left = 496
    Top = 106
  end
  object qrconhecimento: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000068')
    Params = <>
    Left = 1016
    Top = 114
    object qrconhecimentoCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconhecimentoDATA: TDateTimeField
      DisplayWidth = 11
      FieldName = 'DATA'
    end
    object qrconhecimentoremetente: TStringField
      DisplayLabel = 'REMETENTE'
      DisplayWidth = 32
      FieldKind = fkLookup
      FieldName = 'remetente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codremetente'
      Size = 60
      Lookup = True
    end
    object qrconhecimentodestinatario: TStringField
      DisplayLabel = 'DESTINAT'#193'RIO'
      DisplayWidth = 37
      FieldKind = fkLookup
      FieldName = 'destinatario'
      LookupDataSet = qrcliente
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
    object qrconhecimentonatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconhecimentotransportador: TStringField
      FieldKind = fkLookup
      FieldName = 'transportador'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codtransportador'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrconhecimentoveiculo: TStringField
      FieldKind = fkLookup
      FieldName = 'veiculo'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrconhecimentoCODFILIAL: TStringField
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 6
    end
    object qrconhecimentofilial: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Visible = False
      Size = 40
      Lookup = True
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
    object qrconhecimentodest_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'CODDESTINATARIO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object qrconhecimentodest_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODDESTINATARIO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconhecimentodest_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'CODDESTINATARIO'
      Visible = False
      Size = 15
      Lookup = True
    end
    object qrconhecimentodest_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'CODDESTINATARIO'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qrconhecimentodest_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'CODDESTINATARIO'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentodest_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'dest_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'CODDESTINATARIO'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentorem_endereco: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'endereco'
      KeyFields = 'codremetente'
      Visible = False
      Size = 60
      Lookup = True
    end
    object qrconhecimentorem_cidade: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_cidade'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codremetente'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrconhecimentorem_cep: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_cep'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'cep'
      KeyFields = 'codremetente'
      Visible = False
      Size = 15
      Lookup = True
    end
    object qrconhecimentorem_uf: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_uf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'uf'
      KeyFields = 'codremetente'
      Visible = False
      Size = 2
      Lookup = True
    end
    object qrconhecimentorem_cnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_cnpj'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codremetente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentorem_ie: TStringField
      FieldKind = fkLookup
      FieldName = 'rem_ie'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codremetente'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentoveiculo_placa: TStringField
      FieldKind = fkLookup
      FieldName = 'veiculo_placa'
      LookupDataSet = qrveiculo
      LookupKeyFields = 'codigo'
      LookupResultField = 'PLACA'
      KeyFields = 'codveiculo'
      Visible = False
      Size = 15
      Lookup = True
    end
    object qrconhecimentotransp_rg: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentotransp_cpf: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Visible = False
      Size = 25
      Lookup = True
    end
    object qrconhecimentoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 10
    end
    object qrconhecimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object qrconhecimentoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object qrconhecimentoMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 10
    end
    object qrconhecimentoESPECIE_NF: TStringField
      FieldName = 'ESPECIE_NF'
      Size = 10
    end
    object qrconhecimentoSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Size = 10
    end
    object qrconhecimentoDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
    end
    object qrconhecimentoVALOR_CONHECIMENTO: TFloatField
      FieldName = 'VALOR_CONHECIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoINF1: TStringField
      FieldName = 'INF1'
      Size = 80
    end
    object qrconhecimentoINF2: TStringField
      FieldName = 'INF2'
      Size = 80
    end
    object qrconhecimentoINF3: TStringField
      FieldName = 'INF3'
      Size = 80
    end
    object qrconhecimentoINF4: TStringField
      FieldName = 'INF4'
      Size = 80
    end
    object qrconhecimentoINF5: TStringField
      FieldName = 'INF5'
      Size = 80
    end
    object qrconhecimentoCARGA_NATUREZA2: TStringField
      FieldName = 'CARGA_NATUREZA2'
      Size = 30
    end
    object qrconhecimentoCARGA_NF2: TStringField
      FieldName = 'CARGA_NF2'
      Size = 6
    end
    object qrconhecimentoCARGA_VALOR2: TFloatField
      FieldName = 'CARGA_VALOR2'
      DisplayFormat = '###,###,##0.00'
    end
    object qrconhecimentoCARGA_QTDE2: TFloatField
      FieldName = 'CARGA_QTDE2'
    end
    object qrconhecimentoCARGA_VOL_QTDE2: TFloatField
      FieldName = 'CARGA_VOL_QTDE2'
    end
    object qrconhecimentoCARGA_VOL_ESPECIE2: TStringField
      FieldName = 'CARGA_VOL_ESPECIE2'
      Size = 25
    end
    object qrconhecimentoMODELO_NF2: TStringField
      FieldName = 'MODELO_NF2'
      Size = 10
    end
    object qrconhecimentoESPECIE_NF2: TStringField
      FieldName = 'ESPECIE_NF2'
      Size = 10
    end
    object qrconhecimentoSERIE_NF2: TStringField
      FieldName = 'SERIE_NF2'
      Size = 10
    end
    object qrconhecimentoDATA_NF2: TDateTimeField
      FieldName = 'DATA_NF2'
    end
    object qrconhecimentoVALOR_CONHECIMENTO2: TFloatField
      FieldName = 'VALOR_CONHECIMENTO2'
      DisplayFormat = '###,###,##0.00'
    end
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
    Left = 1208
    Top = 146
  end
  object fxemitente: TfrxDBDataset
    UserName = 'fxemitente'
    CloseDataSource = False
    DataSet = qremitente
    BCDToCurrency = False
    Left = 1208
    Top = 194
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
    Left = 1208
    Top = 242
  end
  object fxHTML: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Left = 1208
    Top = 674
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
    Left = 1208
    Top = 626
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
    Left = 1208
    Top = 578
  end
  object fxBMP: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 1208
    Top = 530
  end
  object fxJPEG: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 1208
    Top = 482
  end
  object fxTIF: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 1208
    Top = 434
  end
  object fxGIF: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 1208
    Top = 386
  end
  object fxTXT: TfrxSimpleTextExport
    FileName = 'C:\Documents and Settings\ELENO\Desktop\F000001.txt'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 1208
    Top = 338
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
    Left = 1208
    Top = 290
  end
  object qrplano2: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 952
    Top = 106
  end
  object qrguard: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000043'
      '')
    Params = <>
    Left = 816
    Top = 98
    object qrguardCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrguardSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 100
    end
  end
  object qrconvenio: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000071')
    Params = <>
    Left = 616
    Top = 106
    object qrconvenioCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrconvenioNOME: TStringField
      DisplayLabel = 'Nome do Conv'#234'nio'
      DisplayWidth = 55
      FieldName = 'NOME'
      Size = 80
    end
    object qrconvenioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Visible = False
      Size = 80
    end
    object qrconvenioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrconvenioCIDADE: TStringField
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrconvenioUF: TStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrconvenioCEP: TStringField
      FieldName = 'CEP'
      Visible = False
      Size = 15
    end
    object qrconvenioTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrconvenioTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrconvenioCONTATO: TStringField
      FieldName = 'CONTATO'
      Visible = False
      Size = 50
    end
    object qrconvenioCELULAR: TStringField
      FieldName = 'CELULAR'
      Visible = False
      Size = 50
    end
    object qrconvenioDIA_PGTO: TStringField
      FieldName = 'DIA_PGTO'
      Visible = False
      Size = 5
    end
    object qrconvenioCNPJ: TStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 30
    end
    object qrconvenioIE: TStringField
      FieldName = 'IE'
      Visible = False
      Size = 30
    end
    object qrconvenioDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrconvenioFAX: TStringField
      FieldName = 'FAX'
      Visible = False
      Size = 25
    end
    object qrconvenioEMAIL: TStringField
      FieldName = 'EMAIL'
      Visible = False
      Size = 80
    end
    object qrconvenioDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrconvenioDIA_FECHAMENTO: TIntegerField
      FieldName = 'DIA_FECHAMENTO'
      Visible = False
    end
    object qrconvenioDIA_PAGAMENTO: TIntegerField
      FieldName = 'DIA_PAGAMENTO'
      Visible = False
    end
    object qrconvenioLIMITE: TFloatField
      FieldName = 'LIMITE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrusuario_funcao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000067')
    Params = <>
    Left = 872
    Top = 98
    object qrusuario_funcaoFUNCAO: TStringField
      DisplayLabel = 'FUN'#199#195'O'
      DisplayWidth = 30
      FieldName = 'FUNCAO'
      Size = 30
    end
    object qrusuario_funcaoACESSO: TStringField
      DisplayWidth = 20
      FieldName = 'ACESSO'
      Size = 10
    end
    object qrusuario_funcaoCODUSUARIO: TStringField
      DisplayWidth = 6
      FieldName = 'CODUSUARIO'
      Visible = False
      Size = 6
    end
  end
  object qrecf_item: TZQuery
    Connection = conexao_ecfserver
    SQL.Strings = (
      'select * from c000073')
    Params = <>
    Left = 88
    Top = 226
  end
  object qrecf_comando: TZQuery
    Connection = conexao_ecfserver
    SQL.Strings = (
      'select * from c000072')
    Params = <>
    Left = 744
    Top = 106
  end
  object conexao_ecfserver: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DATASAC\SERVER\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 216
    Top = 394
  end
  object qrfiscal_cst: TZQuery
    Connection = Conexao
    BeforePost = qrfiscal_cstBeforePost
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000083')
    Params = <>
    Left = 88
    Top = 578
  end
  object qrfiscal_modelo: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000082')
    Params = <>
    Left = 168
    Top = 578
    object qrfiscal_modeloSINTEGRA: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrfiscal_modeloSIGLA: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 11
      FieldName = 'SIGLA'
      Size = 5
    end
    object qrfiscal_modeloMODELO: TStringField
      DisplayLabel = 'Modelo'
      DisplayWidth = 70
      FieldName = 'MODELO'
      Size = 100
    end
    object qrfiscal_modeloTIPO_REGISTRO: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 7
      FieldName = 'TIPO_REGISTRO'
      Size = 10
    end
    object qrfiscal_modeloCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Visible = False
      Size = 6
    end
  end
  object qrfiscal_ecf: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000081')
    Params = <>
    Left = 240
    Top = 578
    object qrfiscal_ecfCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfiscal_ecfSERIE_EMPRESA: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'SERIE_EMPRESA'
      Size = 3
    end
    object qrfiscal_ecfEQUIPAMENTO: TStringField
      DisplayLabel = 'Equipamento'
      DisplayWidth = 29
      FieldName = 'EQUIPAMENTO'
      Required = True
      Size = 40
    end
    object qrfiscal_ecfSERIE_EQUIPAMENTO: TStringField
      DisplayLabel = 'N'#186' de S'#233'rie'
      DisplayWidth = 29
      FieldName = 'SERIE_EQUIPAMENTO'
    end
    object qrfiscal_ecfALIQUOTA_ISS: TFloatField
      DisplayLabel = 'Aliq. ISS %'
      DisplayWidth = 9
      FieldName = 'ALIQUOTA_ISS'
    end
    object qrfiscal_ecfDATA_INICIO: TDateTimeField
      DisplayLabel = 'In'#237'cio Opera'#231#245'es'
      DisplayWidth = 16
      FieldName = 'DATA_INICIO'
    end
    object qrfiscal_ecfTIPO_ECF: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 5
      FieldName = 'TIPO_ECF'
      Size = 10
    end
  end
  object qrfiscal_classe: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084')
    Params = <>
    Left = 328
    Top = 578
    object qrfiscal_classeCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfiscal_classeCLASSE: TStringField
      FieldName = 'CLASSE'
      Size = 100
    end
  end
  object qrfiscal_classe_pis: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084a')
    Params = <>
    Left = 416
    Top = 578
    object qrfiscal_classe_pisCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_pisCODCLASSE: TStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_pisALIQUOTA_PIS: TFloatField
      FieldName = 'ALIQUOTA_PIS'
      DisplayFormat = '###0.0000'
    end
    object qrfiscal_classe_pisVALIDADE_PIS: TDateTimeField
      FieldName = 'VALIDADE_PIS'
    end
  end
  object qrfiscal_classe_cofins: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084b')
    Params = <>
    Left = 528
    Top = 578
    object qrfiscal_classe_cofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_cofinsCODCLASSE: TStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_cofinsALIQUOTA_COFINS: TFloatField
      FieldName = 'ALIQUOTA_COFINS'
      DisplayFormat = '###0.0000'
    end
    object qrfiscal_classe_cofinsVALIDADE_COFINS: TDateTimeField
      FieldName = 'VALIDADE_COFINS'
    end
  end
  object qrfiscal_classe_csll: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084c')
    Params = <>
    Left = 640
    Top = 578
    object qrfiscal_classe_csllCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_csllCODCLASSE: TStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_csllALIQUOTA_CSLL: TFloatField
      FieldName = 'ALIQUOTA_CSLL'
      DisplayFormat = '####0.0000'
    end
    object qrfiscal_classe_csllVALIDADE_CSLL: TDateTimeField
      FieldName = 'VALIDADE_CSLL'
    end
  end
  object qrfiscal_classe_irrf: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from c000084d')
    Params = <>
    Left = 736
    Top = 578
    object qrfiscal_classe_irrfCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrfiscal_classe_irrfCODCLASSE: TStringField
      FieldName = 'CODCLASSE'
      Size = 6
    end
    object qrfiscal_classe_irrfALIQUOTA_IRRF: TFloatField
      FieldName = 'ALIQUOTA_IRRF'
      DisplayFormat = '###0.0000'
    end
    object qrfiscal_classe_irrfVALIDADE_IRRF: TDateTimeField
      FieldName = 'VALIDADE_IRRF'
    end
  end
  object qrnota: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000086')
    Params = <>
    Left = 65528
    Top = 578
    object qrnotaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Required = True
      Size = 6
    end
    object qrnotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrnotaSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      Size = 2
    end
    object qrnotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 3
    end
    object qrnotaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotaCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
    end
    object qrnotaCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrnotaIE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Size = 18
    end
    object qrnotaUF_IE_CLIENTE: TStringField
      FieldName = 'UF_IE_CLIENTE'
      Size = 2
    end
    object qrnotaTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qrnotaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qrnotaDATA: TDateTimeField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object qrnotaDATA_ESCRITURACAO: TDateTimeField
      FieldName = 'DATA_ESCRITURACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object qrnotaCODIGO_CONTABIL: TIntegerField
      FieldName = 'CODIGO_CONTABIL'
    end
    object qrnotaDESDOBRAMENTO: TStringField
      FieldName = 'DESDOBRAMENTO'
      Size = 1
    end
    object qrnotaVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      DisplayFormat = '0.00'
    end
    object qrnotaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      DisplayFormat = '0.00'
    end
    object qrnotaCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrnotaCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Size = 1
    end
    object qrnotaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrnotaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrnotaCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 6
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_ICMS_CREDITADO: TFloatField
      FieldName = 'VALOR_ICMS_CREDITADO'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_ICMS_ISENTAS: TFloatField
      FieldName = 'VALOR_ICMS_ISENTAS'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_ICMS_OUTRAS: TFloatField
      FieldName = 'VALOR_ICMS_OUTRAS'
      DisplayFormat = '0.00'
    end
    object qrnotaALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
      DisplayFormat = '0.00'
    end
    object qrnotaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_IPI_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_IPI_CREDITADO50: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO50'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_IPI_ISENTAS: TFloatField
      FieldName = 'VALOR_IPI_ISENTAS'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_IPI_OUTRAS: TFloatField
      FieldName = 'VALOR_IPI_OUTRAS'
      DisplayFormat = '0.00'
    end
    object qrnotaBASE_SUBSTITUICAO: TFloatField
      FieldName = 'BASE_SUBSTITUICAO'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_SUBSTITUICAO: TFloatField
      FieldName = 'VALOR_SUBSTITUICAO'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_DESPESAS: TFloatField
      FieldName = 'VALOR_DESPESAS'
      DisplayFormat = '0.00'
    end
    object qrnotaALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      DisplayFormat = '0.00'
    end
    object qrnotaVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
      DisplayFormat = '0.00'
    end
    object qrnotaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotaCONTABIL: TIntegerField
      FieldName = 'CONTABIL'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '0.00'
    end
    object qrnotaCODIGO_MINICIPIO: TIntegerField
      FieldName = 'CODIGO_MINICIPIO'
    end
    object qrnotaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrnotaINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 18
    end
    object qrnotaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrnotaCODIGO_PISCONFINS: TStringField
      FieldName = 'CODIGO_PISCONFINS'
      Size = 6
    end
    object qrnotaNOTA_CANCELADA: TStringField
      FieldName = 'NOTA_CANCELADA'
      Size = 1
    end
    object qrnotaSINTEGRA: TStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrnotaCODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
      Required = True
      DisplayFormat = '000000'
    end
    object qrnotaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      DisplayFormat = '000000'
    end
    object qrnotaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      DisplayFormat = '000000'
    end
    object qrnotaOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
    end
    object qrnotaTURBO: TIntegerField
      FieldName = 'TURBO'
    end
    object qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_NAO_CREDITADO'
    end
    object qrnotaCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 4
    end
    object qrnotaS_TRIB: TStringField
      FieldName = 'S_TRIB'
      Size = 3
    end
    object qrnotaTRANSPORTE_NOME: TStringField
      FieldName = 'TRANSPORTE_NOME'
      Size = 40
    end
    object qrnotaTRANSPORTE_PLACA: TStringField
      FieldName = 'TRANSPORTE_PLACA'
      Size = 10
    end
    object qrnotaTRANSPORTE_UF: TStringField
      FieldName = 'TRANSPORTE_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_CNPJCPF: TStringField
      FieldName = 'TRANSPORTE_CNPJCPF'
      Size = 18
    end
    object qrnotaTRANSPORTE_ENDERECO: TStringField
      FieldName = 'TRANSPORTE_ENDERECO'
      Size = 50
    end
    object qrnotaTRANSPORTE_CIDADE: TStringField
      FieldName = 'TRANSPORTE_CIDADE'
      Size = 30
    end
    object qrnotaTRANSPORTE_MUNICIPIO_UF: TStringField
      FieldName = 'TRANSPORTE_MUNICIPIO_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_MARCA: TStringField
      FieldName = 'TRANSPORTE_MARCA'
      Size = 10
    end
    object qrnotaTRANSPORTE_ESPECIE: TStringField
      FieldName = 'TRANSPORTE_ESPECIE'
    end
    object qrnotaTRANSPORTE_NUMERO: TStringField
      FieldName = 'TRANSPORTE_NUMERO'
    end
    object qrnotaTRANSPORTE_IE: TStringField
      FieldName = 'TRANSPORTE_IE'
    end
    object qrnotaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object qrnotaTRANSPORTE_QUANTIDADE: TFloatField
      FieldName = 'TRANSPORTE_QUANTIDADE'
    end
    object qrnotaTRANSPORTE_PESO_BRUTO: TFloatField
      FieldName = 'TRANSPORTE_PESO_BRUTO'
    end
    object qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField
      FieldName = 'TRANSPORTE_PESO_LIQUIDO'
    end
    object qrnotaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
    end
  end
  object qritem: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000085')
    Params = <>
    Left = 32
    Top = 586
    object qritemmodelo_nf: TStringField
      DisplayWidth = 2
      FieldName = 'modelo_nf'
      Size = 2
    end
    object qritemdatahora_ini: TDateField
      DisplayWidth = 10
      FieldName = 'datahora_ini'
    end
    object qritemnotafiscal: TStringField
      DisplayWidth = 6
      FieldName = 'notafiscal'
      Size = 6
    end
    object qritemcd_produto: TStringField
      DisplayWidth = 6
      FieldName = 'cd_produto'
      Size = 6
    end
    object qritemquantidade: TFloatField
      DisplayWidth = 10
      FieldName = 'quantidade'
      DisplayFormat = '0.000'
    end
    object qritemproduto: TStringField
      DisplayWidth = 40
      FieldName = 'produto'
      Size = 40
    end
    object qritemsubtotal: TFloatField
      DisplayWidth = 10
      FieldName = 'subtotal'
      DisplayFormat = '0.00'
    end
    object qritemvalor_venda_bruta: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_venda_bruta'
      DisplayFormat = '0.00'
    end
    object qritemvalor_total_geral: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_total_geral'
      DisplayFormat = '0.00'
    end
    object qritemDATA_EMISSAO: TStringField
      DisplayWidth = 6
      FieldName = 'DATA_EMISSAO'
      Required = True
      Visible = False
      EditMask = '!99/99/0000;1;_'
      Size = 6
    end
    object qritemtotal: TFloatField
      DisplayWidth = 10
      FieldName = 'total'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritembase_calculo: TFloatField
      DisplayWidth = 10
      FieldName = 'base_calculo'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritembase_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'base_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemvalor_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemmovimento: TIntegerField
      DisplayWidth = 10
      FieldName = 'movimento'
      Visible = False
    end
    object qritemcod_pedidos: TStringField
      DisplayWidth = 10
      FieldName = 'cod_pedidos'
      Visible = False
      Size = 10
    end
    object qritemnum_item: TStringField
      DisplayWidth = 5
      FieldName = 'num_item'
      Visible = False
      Size = 5
    end
    object qritemcl_fis: TStringField
      DisplayWidth = 1
      FieldName = 'cl_fis'
      Visible = False
      Size = 1
    end
    object qritemapr_und: TStringField
      DisplayWidth = 2
      FieldName = 'apr_und'
      Visible = False
      Size = 2
    end
    object qritemaliquota_ipi: TFloatField
      DisplayWidth = 10
      FieldName = 'aliquota_ipi'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemaliquota_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'aliquota_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemreducao_base_icms: TFloatField
      DisplayWidth = 10
      FieldName = 'reducao_base_icms'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritembase_icms_subst: TFloatField
      DisplayWidth = 10
      FieldName = 'base_icms_subst'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemdatahora: TDateTimeField
      DisplayWidth = 18
      FieldName = 'datahora'
      Visible = False
    end
    object qritemvalor_desconto: TFloatField
      DisplayWidth = 10
      FieldName = 'valor_desconto'
      Visible = False
      DisplayFormat = '0.00'
    end
    object qritemTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qritembase_ipi: TFloatField
      FieldName = 'base_ipi'
      DisplayFormat = '0.00'
    end
    object qritemvalor_ipi: TFloatField
      FieldName = 'valor_ipi'
      DisplayFormat = '0.00'
    end
    object qritemcfop: TStringField
      FieldName = 'cfop'
      Size = 4
    end
    object qritemoutras_ipi: TFloatField
      FieldName = 'outras_ipi'
      DisplayFormat = '0.00'
    end
    object qritemisentas_ipi: TFloatField
      FieldName = 'isentas_ipi'
      DisplayFormat = '0.00'
    end
    object qritemoutras_icms: TFloatField
      FieldName = 'outras_icms'
      DisplayFormat = '0.00'
    end
    object qritemisentas_icms: TFloatField
      FieldName = 'isentas_icms'
      DisplayFormat = '0.00'
    end
    object qritemipi_nao_creditado: TFloatField
      FieldName = 'ipi_nao_creditado'
      DisplayFormat = '0.00'
    end
    object qritemfrete: TFloatField
      FieldName = 'frete'
      DisplayFormat = '0.00'
    end
    object qritemseguro: TFloatField
      FieldName = 'seguro'
      DisplayFormat = '0.00'
    end
    object qritemoutras_despesas: TFloatField
      FieldName = 'outras_despesas'
      DisplayFormat = '0.00'
    end
    object qritems_trib: TStringField
      FieldName = 's_trib'
      Size = 3
    end
    object qritemTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qritemnro_serie_eqp: TStringField
      FieldName = 'nro_serie_eqp'
    end
    object qritemnro_ordem_eqp: TStringField
      FieldName = 'nro_ordem_eqp'
      Size = 2
    end
    object qritemmodelo_doc: TStringField
      FieldName = 'modelo_doc'
      Size = 50
    end
    object qritemnro_contador_inicio: TStringField
      FieldName = 'nro_contador_inicio'
      Size = 10
    end
    object qritemnro_contador_fim: TStringField
      FieldName = 'nro_contador_fim'
      Size = 5
    end
    object qritemnro_contador_z: TStringField
      FieldName = 'nro_contador_z'
      Size = 10
    end
    object qritemcontador_reinicio: TStringField
      FieldName = 'contador_reinicio'
      Size = 5
    end
    object qritembrancos: TStringField
      FieldName = 'brancos'
      Size = 10
    end
    object qritemdatahora_recebimento: TDateField
      FieldName = 'datahora_recebimento'
    end
    object qritemdatahora_fim: TDateField
      FieldName = 'datahora_fim'
    end
    object qritemdatahora_emissao: TDateField
      FieldName = 'datahora_emissao'
    end
    object qritemCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 15
    end
    object qritemFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
  end
  object qrsintegra_r60: TZQuery
    Connection = Conexao
    AfterPost = qrfiscal_cstAfterPost
    AfterDelete = qrfiscal_cstAfterDelete
    SQL.Strings = (
      'select * from sintegra_reg60')
    Params = <>
    Left = 176
    Top = 290
    object qrsintegra_r60DATA_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
    end
    object qrsintegra_r60NRO_CONTADOR_INICIO: TIntegerField
      DisplayLabel = 'COO Inicial'
      DisplayWidth = 11
      FieldName = 'NRO_CONTADOR_INICIO'
    end
    object qrsintegra_r60NRO_CONTADOR_FIM: TIntegerField
      DisplayLabel = 'COO Final'
      DisplayWidth = 11
      FieldName = 'NRO_CONTADOR_FIM'
    end
    object qrsintegra_r60VALOR_VENDA_BRUTA: TFloatField
      DisplayLabel = 'Venda Bruta'
      DisplayWidth = 11
      FieldName = 'VALOR_VENDA_BRUTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60CANCELAMENTO: TFloatField
      DisplayLabel = 'Cancelamen.'
      DisplayWidth = 11
      FieldName = 'CANCELAMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60DESCONTO: TFloatField
      DisplayLabel = 'Descontos'
      DisplayWidth = 11
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60ISSQN: TFloatField
      DisplayLabel = 'Servi'#231'os'
      DisplayWidth = 10
      FieldName = 'ISSQN'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60VALOR_VENDA_LIQUIDA: TFloatField
      DisplayLabel = 'Venda L'#237'quida'
      DisplayWidth = 12
      FieldName = 'VALOR_VENDA_LIQUIDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60ID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object qrsintegra_r60MOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Visible = False
      Size = 1
    end
    object qrsintegra_r60CODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
      Visible = False
    end
    object qrsintegra_r60OBS1: TStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 40
    end
    object qrsintegra_r60CNPJ: TStringField
      FieldName = 'CNPJ'
      Visible = False
      Size = 14
    end
    object qrsintegra_r60IE: TStringField
      FieldName = 'IE'
      Visible = False
      Size = 14
    end
    object qrsintegra_r60UF: TStringField
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrsintegra_r60CFOP: TStringField
      DisplayWidth = 4
      FieldName = 'CFOP'
      Visible = False
      Size = 5
    end
    object qrsintegra_r60CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
      Visible = False
    end
    object qrsintegra_r60CNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Visible = False
      Size = 14
    end
    object qrsintegra_r60IE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Visible = False
      Size = 14
    end
    object qrsintegra_r60UF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      Visible = False
      Size = 2
    end
    object qrsintegra_r60COD_SINTEGRA_R60: TStringField
      FieldName = 'COD_SINTEGRA_R60'
      Visible = False
      Size = 10
    end
    object qrsintegra_r60NRO_SERIE_EQP: TStringField
      FieldName = 'NRO_SERIE_EQP'
      Visible = False
    end
    object qrsintegra_r60NRO_ORDEM_EQP: TIntegerField
      FieldName = 'NRO_ORDEM_EQP'
      Visible = False
    end
    object qrsintegra_r60MODELO_DOC: TStringField
      FieldName = 'MODELO_DOC'
      Visible = False
      Size = 2
    end
    object qrsintegra_r60NRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
      Visible = False
    end
    object qrsintegra_r60NRO_DOC_FISCAL: TIntegerField
      FieldName = 'NRO_DOC_FISCAL'
      Visible = False
    end
    object qrsintegra_r60NRO_ITENS: TIntegerField
      FieldName = 'NRO_ITENS'
      Visible = False
    end
    object qrsintegra_r60CONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
      Visible = False
    end
    object qrsintegra_r60VALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60BRANCOS: TStringField
      FieldName = 'BRANCOS'
      Visible = False
      Size = 37
    end
    object qrsintegra_r60DATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
      Visible = False
    end
    object qrsintegra_r60MODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Visible = False
      Size = 2
    end
    object qrsintegra_r60DATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
      Visible = False
    end
    object qrsintegra_r60DATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
      Visible = False
    end
    object qrsintegra_r60SUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60ISENTO: TFloatField
      FieldName = 'ISENTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60NAO_INCIDENCIA: TFloatField
      FieldName = 'NAO_INCIDENCIA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60ACRESCIMO_IOF: TFloatField
      FieldName = 'ACRESCIMO_IOF'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60ALIQUOTA01: TFloatField
      FieldName = 'ALIQUOTA01'
      Visible = False
      DisplayFormat = '00.00'
    end
    object qrsintegra_r60ALIQUOTA02: TFloatField
      FieldName = 'ALIQUOTA02'
      Visible = False
      DisplayFormat = '00.00'
    end
    object qrsintegra_r60ALIQUOTA03: TFloatField
      FieldName = 'ALIQUOTA03'
      Visible = False
      DisplayFormat = '00.00'
    end
    object qrsintegra_r60ALIQUOTA04: TFloatField
      FieldName = 'ALIQUOTA04'
      Visible = False
      DisplayFormat = '00.00'
    end
    object qrsintegra_r60ALIQUOTA05: TFloatField
      FieldName = 'ALIQUOTA05'
      Visible = False
      DisplayFormat = '00.00'
    end
    object qrsintegra_r60BASE01: TFloatField
      FieldName = 'BASE01'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60BASE02: TFloatField
      FieldName = 'BASE02'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60BASE03: TFloatField
      FieldName = 'BASE03'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60BASE04: TFloatField
      FieldName = 'BASE04'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60BASE05: TFloatField
      FieldName = 'BASE05'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60VALOR_TPARCIAL01: TFloatField
      FieldName = 'VALOR_TPARCIAL01'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60VALOR_TPARCIAL02: TFloatField
      FieldName = 'VALOR_TPARCIAL02'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60VALOR_TPARCIAL03: TFloatField
      FieldName = 'VALOR_TPARCIAL03'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60VALOR_TPARCIAL04: TFloatField
      FieldName = 'VALOR_TPARCIAL04'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60VALOR_TPARCIAL05: TFloatField
      FieldName = 'VALOR_TPARCIAL05'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60BRANCOS_60A01: TStringField
      FieldName = 'BRANCOS_60A01'
      Visible = False
    end
    object qrsintegra_r60BRANCOS_60A02: TStringField
      FieldName = 'BRANCOS_60A02'
      Visible = False
    end
    object qrsintegra_r60BRANCOS_60A03: TStringField
      FieldName = 'BRANCOS_60A03'
      Visible = False
    end
    object qrsintegra_r60BRANCOS_60A04: TStringField
      FieldName = 'BRANCOS_60A04'
      Visible = False
    end
    object qrsintegra_r60BRANCOS_60A05: TStringField
      FieldName = 'BRANCOS_60A05'
      Visible = False
    end
    object qrsintegra_r60TOTAL_INICIO_DIA: TFloatField
      FieldName = 'TOTAL_INICIO_DIA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60TOTAL_FINAL_DIA: TFloatField
      FieldName = 'TOTAL_FINAL_DIA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60TOTAL_DIA: TFloatField
      FieldName = 'TOTAL_DIA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrsintegra_r60OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Visible = False
      Size = 60
    end
    object qrsintegra_r60NRO_CONTADOR_CANCELAMENTO: TIntegerField
      FieldName = 'NRO_CONTADOR_CANCELAMENTO'
      Visible = False
    end
  end
  object qrrentabilidade: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000077')
    Params = <>
    Left = 240
    Top = 162
    object qrrentabilidadeCODIGO: TStringField
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrrentabilidadeCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrrentabilidadePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Visible = False
      Size = 40
    end
    object qrrentabilidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Visible = False
      Size = 2
    end
    object qrrentabilidadeEMBALAGEM: TFloatField
      FieldName = 'EMBALAGEM'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrrentabilidadePERDA: TFloatField
      FieldName = 'PERDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrrentabilidade_item: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000078')
    Params = <>
    Left = 320
    Top = 162
    object qrrentabilidade_itemCODPRODUTO: TStringField
      DisplayWidth = 11
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrrentabilidade_itemPRODUTO: TStringField
      DisplayWidth = 60
      FieldName = 'PRODUTO'
      Size = 40
    end
    object qrrentabilidade_itemRENDIMENTO: TFloatField
      DisplayWidth = 10
      FieldName = 'RENDIMENTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrentabilidade_itemRENTABILIDADE: TStringField
      DisplayWidth = 6
      FieldName = 'RENTABILIDADE'
      Required = True
      Visible = False
      Size = 6
    end
    object qrrentabilidade_itemQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrrentabilidade_itemVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrrentabilidade_itemCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 6
    end
  end
  object qrindustria_produtos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000079')
    Params = <>
    Left = 328
    Top = 290
    object qrindustria_produtosCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrindustria_produtosPRODUTO: TStringField
      DisplayWidth = 57
      FieldName = 'PRODUTO'
      Size = 50
    end
    object qrindustria_produtosCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'D.PRODUTO'
      DisplayWidth = 13
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrindustria_produtosQUANTIDADE: TFloatField
      DisplayWidth = 11
      FieldName = 'QUANTIDADE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrindustria_produtosproduto_ind: TStringField
      FieldKind = fkLookup
      FieldName = 'produto_ind'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrindustria_produtosCUSTO: TFloatField
      FieldName = 'CUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrindustria_produtosUNIDADE_PRODUTO: TStringField
      FieldName = 'UNIDADE_PRODUTO'
      Size = 2
    end
    object qrindustria_produtosUNIDADE_MATERIAPRIMA: TStringField
      FieldName = 'UNIDADE_MATERIAPRIMA'
      Size = 2
    end
    object qrindustria_produtosPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrindustria_produtoscst_produto: TStringField
      FieldKind = fkLookup
      FieldName = 'cst_produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CST'
      KeyFields = 'CODIGO'
      Size = 4
      Lookup = True
    end
    object qrindustria_produtoscst_mprima: TStringField
      FieldKind = fkLookup
      FieldName = 'cst_mprima'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CST'
      KeyFields = 'CODPRODUTO'
      Size = 3
      Lookup = True
    end
    object qrindustria_produtosaliquota_produto: TFloatField
      FieldKind = fkLookup
      FieldName = 'aliquota_produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'alIQUOTA'
      KeyFields = 'CODIGO'
      Lookup = True
    end
    object qrindustria_produtosaliquota_mprima: TFloatField
      FieldKind = fkLookup
      FieldName = 'aliquota_mprima'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'aliQUOTA'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
  end
  object qrdespesas_ind: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000090')
    Params = <>
    Left = 416
    Top = 290
    object qrdespesas_indCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrdespesas_indDESPESA: TStringField
      DisplayWidth = 40
      FieldName = 'DESPESA'
      Size = 40
    end
    object qrdespesas_indPERCENTUAL: TFloatField
      DisplayWidth = 10
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrdespesasitem_ind: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000091')
    Params = <>
    Left = 512
    Top = 290
    object qrdespesasitem_indCODDESPESA: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODDESPESA'
      Size = 6
    end
    object qrdespesasitem_inddespesa: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'despesa'
      LookupDataSet = qrdespesas_ind
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESPESA'
      KeyFields = 'CODDESPESA'
      Size = 40
      Lookup = True
    end
    object qrdespesasitem_indPERCENTUAL: TFloatField
      DisplayLabel = '  %'
      DisplayWidth = 5
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrdespesasitem_indVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.0000'
    end
    object qrdespesasitem_indCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
  end
  object qrlote_fabricacao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000092')
    Params = <>
    Left = 336
    Top = 346
    object qrlote_fabricacaoLOTE: TStringField
      FieldName = 'LOTE'
      Required = True
      Size = 10
    end
    object qrlote_fabricacaoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrlote_fabricacaoFABRICACAO: TDateTimeField
      FieldName = 'FABRICACAO'
    end
    object qrlote_fabricacaoVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
    end
    object qrlote_fabricacaoREG_ANVISA: TStringField
      FieldName = 'REG_ANVISA'
    end
    object qrlote_fabricacaoTECNICO: TStringField
      FieldName = 'TECNICO'
    end
    object qrlote_fabricacaoREG_TECNICO: TStringField
      FieldName = 'REG_TECNICO'
    end
    object qrlote_fabricacaoVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrlote_fabricacaoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrlote_fabricacaoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 100
    end
    object qrlote_fabricacaoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrlote_fabricacaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrlote_fabricacaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrlote_fabricacaoVALIDADE_MES: TIntegerField
      FieldName = 'VALIDADE_MES'
    end
    object qrlote_fabricacaopeso_liquido: TFloatField
      FieldKind = fkLookup
      FieldName = 'peso_liquido'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PESO_LIQUIDO'
      KeyFields = 'CODPRODUTO'
      DisplayFormat = '###,###,##0.000'
      Lookup = True
    end
    object qrlote_fabricacaoclassificacao_fiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'classificacao_fiscal'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'claSSIFICACAO_FISCAL'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
    object qrlote_fabricacaoLAUDO_TECNICO: TStringField
      FieldName = 'LAUDO_TECNICO'
      Size = 200
    end
    object qrlote_fabricacaopeso_bruto: TFloatField
      FieldKind = fkLookup
      FieldName = 'peso_bruto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'peSO'
      KeyFields = 'CODPRODUTO'
      DisplayFormat = '###,###,##0.000'
      Lookup = True
    end
    object qrlote_fabricacaoStringField: TStringField
      FieldKind = fkLookup
      FieldName = 'cst_produto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CST'
      KeyFields = 'CODPRODUTO'
      Size = 4
      Lookup = True
    end
    object qrlote_fabricacaoFloatField: TFloatField
      FieldKind = fkLookup
      FieldName = 'aliquota_produto'
      LookupDataSet = qrprod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'alIQUOTA'
      KeyFields = 'CODPRODUTO'
      Lookup = True
    end
    object qrlote_fabricacaoLANCAMENTO: TStringField
      FieldName = 'LANCAMENTO'
      Size = 10
    end
  end
  object qrlote_rentabilidade: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000093')
    Params = <>
    Left = 520
    Top = 242
    object qrlote_rentabilidadeLOTE: TStringField
      FieldName = 'LOTE'
      Required = True
      Size = 10
    end
    object qrlote_rentabilidadeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrlote_rentabilidadeCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrlote_rentabilidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrlote_rentabilidadeDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrlote_rentabilidadeNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrlote_rentabilidadeQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrlote_rentabilidadeVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrlote_rentabilidadeOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object qrlote_rentabilidadeproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 40
      Lookup = True
    end
  end
  object qrmemorando: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000094')
    Params = <>
    Left = 704
    Top = 242
    object qrmemorandoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrmemorandoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrmemorandoMEMORANDO: TStringField
      FieldName = 'MEMORANDO'
      Size = 6
    end
    object qrmemorandoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrmemorandoNOTAFISCAL_MODELO: TStringField
      FieldName = 'NOTAFISCAL_MODELO'
      Size = 10
    end
    object qrmemorandoNOTAFISCAL_SERIE: TStringField
      FieldName = 'NOTAFISCAL_SERIE'
      Size = 10
    end
    object qrmemorandoNOTAFISCAL_DATA: TDateTimeField
      FieldName = 'NOTAFISCAL_DATA'
    end
    object qrmemorandoDESPACHO: TStringField
      FieldName = 'DESPACHO'
    end
    object qrmemorandoDESPACHO_DATA: TDateTimeField
      FieldName = 'DESPACHO_DATA'
    end
    object qrmemorandoREGISTRO: TStringField
      FieldName = 'REGISTRO'
    end
    object qrmemorandoREGISTRO_DATA: TDateTimeField
      FieldName = 'REGISTRO_DATA'
    end
    object qrmemorandoCONHECIMENTO_EMBARQUE: TStringField
      FieldName = 'CONHECIMENTO_EMBARQUE'
    end
    object qrmemorandoCONHECIMENTO_EMBARQUE_DATA: TDateTimeField
      FieldName = 'CONHECIMENTO_EMBARQUE_DATA'
    end
    object qrmemorandoESTADO_FABRICANTE: TStringField
      FieldName = 'ESTADO_FABRICANTE'
    end
    object qrmemorandoPAIS_DESTINO: TStringField
      FieldName = 'PAIS_DESTINO'
    end
    object qrmemorandoCONHECIMENTO: TStringField
      FieldName = 'CONHECIMENTO'
      Size = 6
    end
    object qrmemorandoCONHECIMENTO_MODELO: TStringField
      FieldName = 'CONHECIMENTO_MODELO'
      Size = 10
    end
    object qrmemorandoCONHECIMENTO_SERIE: TStringField
      FieldName = 'CONHECIMENTO_SERIE'
      Size = 10
    end
    object qrmemorandoCONHECIMENTO_DATA: TDateTimeField
      FieldName = 'CONHECIMENTO_DATA'
    end
    object qrmemorandoTRANSPORTADOR_CODIGO: TStringField
      FieldName = 'TRANSPORTADOR_CODIGO'
      Size = 6
    end
    object qrmemorandoTRANSPORTADOR_NOME: TStringField
      FieldName = 'TRANSPORTADOR_NOME'
      Size = 50
    end
    object qrmemorandoTRANSPORTADOR_ENDERECO: TStringField
      FieldName = 'TRANSPORTADOR_ENDERECO'
      Size = 50
    end
    object qrmemorandoTRANSPORTADOR_BAIRRO: TStringField
      FieldName = 'TRANSPORTADOR_BAIRRO'
    end
    object qrmemorandoTRANSPORTADOR_CIDADE: TStringField
      FieldName = 'TRANSPORTADOR_CIDADE'
      Size = 30
    end
    object qrmemorandoTRANSPORTADOR_UF: TStringField
      FieldName = 'TRANSPORTADOR_UF'
      Size = 2
    end
    object qrmemorandoTRANSPORTADOR_PAIS: TStringField
      FieldName = 'TRANSPORTADOR_PAIS'
    end
    object qrmemorandoTRANSPORTADOR_CNPJCPF: TStringField
      FieldName = 'TRANSPORTADOR_CNPJCPF'
    end
    object qrmemorandoTRANSPORTADOR_INSCRG: TStringField
      FieldName = 'TRANSPORTADOR_INSCRG'
    end
    object qrmemorandoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrmemorandoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
  end
  object qrmemorando_notas: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000095')
    Params = <>
    Left = 704
    Top = 290
    object qrmemorando_notasMEMORANDO: TStringField
      FieldName = 'MEMORANDO'
      Size = 6
    end
    object qrmemorando_notasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Required = True
      Size = 6
    end
    object qrmemorando_notasNF_DATA: TDateTimeField
      FieldName = 'NF_DATA'
    end
    object qrmemorando_notasNF_MODELO: TStringField
      FieldName = 'NF_MODELO'
      Size = 10
    end
    object qrmemorando_notasNF_SERIE: TStringField
      FieldName = 'NF_SERIE'
      Size = 10
    end
    object qrmemorando_notasNF_QUANTIDADE: TFloatField
      FieldName = 'NF_QUANTIDADE'
    end
    object qrmemorando_notasNF_UNIDADE: TStringField
      FieldName = 'NF_UNIDADE'
      Size = 2
    end
  end
  object qrservicos_periodicos: TZQuery
    Connection = Conexao
    OnCalcFields = qrservicos_periodicosCalcFields
    SQL.Strings = (
      'select * from servicos_periodicos')
    Params = <>
    Left = 472
    Top = 346
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
  object qritem_baixa_produtos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000097')
    Params = <>
    Left = 592
    Top = 402
    object qritem_baixa_produtosCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qritem_baixa_produtosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qritem_baixa_produtosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 5
    end
    object qritem_baixa_produtosQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qritem_baixa_produtosUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qritem_baixa_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qritem_baixa_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qritem_baixa_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qritem_baixa_produtosCODORCAMENTO: TStringField
      FieldName = 'CODORCAMENTO'
      Size = 6
    end
  end
  object qrbaixa_produtos: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000096')
    Params = <>
    Left = 592
    Top = 354
    object qrbaixa_produtosCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrbaixa_produtosDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrbaixa_produtosCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrbaixa_produtosCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrbaixa_produtosSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrbaixa_produtosDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrbaixa_produtosACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrbaixa_produtosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrbaixa_produtosOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrbaixa_produtosOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrbaixa_produtosOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrbaixa_produtosOBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrbaixa_produtosTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrbaixa_produtoscliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrbaixa_produtosvendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 40
      Lookup = True
    end
  end
  object qrestoque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from estoque')
    Params = <>
    Left = 712
    Top = 354
    object qrestoqueTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object qrestoqueCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrestoqueDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrestoqueQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
    end
    object qrestoqueVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
  object qrinventario: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from inventario')
    Params = <>
    Left = 768
    Top = 354
    object qrinventarioCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrinventarioDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrinventarioESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrinventarioCUSTO: TFloatField
      FieldName = 'CUSTO'
    end
  end
  object qrproduto_estoque: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from estoque')
    Params = <>
    Left = 72
    Top = 378
  end
  object conexao_adic: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DATASAC\server\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 40
    Top = 738
  end
  object qradic: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000007'
      '')
    Params = <>
    Left = 112
    Top = 738
  end
  object qradic2: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000007'
      '')
    Params = <>
    Left = 168
    Top = 738
  end
  object qradic_orcamento: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000074')
    Params = <>
    Left = 32
    Top = 794
    object StringField7: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object StringField8: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DATA'
    end
    object StringField9: TStringField
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
    object FloatField12: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object FloatField13: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField14: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object FloatField15: TFloatField
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
  object qradic_orcamento_produto: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000075')
    Params = <>
    Left = 160
    Top = 794
  end
  object qradic_contasreceber: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 288
    Top = 794
    object qradic_contasreceberPRESTACAO: TIntegerField
      DisplayLabel = 'N'#186
      DisplayWidth = 3
      FieldName = 'PRESTACAO'
    end
    object qradic_contasreceberVENCIMENTO: TDateTimeField
      DisplayWidth = 14
      FieldName = 'VENCIMENTO'
    end
    object qradic_contasreceberTIPO: TStringField
      DisplayWidth = 13
      FieldName = 'TIPO'
    end
    object qradic_contasreceberDOCUMENTO: TStringField
      DisplayWidth = 15
      FieldName = 'DOCUMENTO'
    end
    object qradic_contasreceberVALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qradic_mestre: TZQuery
    Connection = conexao_adic
    AfterPost = qradic_mestreAfterPost
    SQL.Strings = (
      'select * from c000000')
    Params = <>
    Left = 224
    Top = 738
  end
  object qradic_nota: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 32
    Top = 850
    object qradic_notaDATA_LANCAMENTO: TDateTimeField
      DisplayLabel = 'Data Lancto.'
      DisplayWidth = 10
      FieldName = 'DATA_LANCAMENTO'
    end
    object qradic_notaNUMERO: TStringField
      DisplayLabel = 'Nota Fiscal'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 10
    end
    object qradic_notafornecedor: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 55
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object qradic_notaCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Size = 10
    end
    object qradic_notaCONF_TOTALNOTA: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 11
      FieldName = 'CONF_TOTALNOTA'
    end
    object qradic_notaDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'EMISS'#195'O'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qradic_notaTOTAL_NOTA: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_NOTA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaSITUACAO: TIntegerField
      DisplayLabel = 'SIT'
      DisplayWidth = 2
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qradic_notaMODELO: TStringField
      DisplayLabel = 'MOD'
      DisplayWidth = 3
      FieldName = 'MODELO'
      Visible = False
      Size = 10
    end
    object qradic_notaESPECIE: TStringField
      DisplayLabel = 'ESP'
      DisplayWidth = 4
      FieldName = 'ESPECIE'
      Visible = False
      Size = 10
    end
    object qradic_notaSERIE: TStringField
      DisplayLabel = 'S'#201'RIE'
      DisplayWidth = 4
      FieldName = 'SERIE'
      Visible = False
      Size = 10
    end
    object qradic_notaBASE_ICMS: TFloatField
      DisplayLabel = 'B.C'#193'LCULO'
      DisplayWidth = 9
      FieldName = 'BASE_ICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaVALOR_ICMS: TFloatField
      DisplayLabel = 'VL. ICMS'
      DisplayWidth = 8
      FieldName = 'VALOR_ICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaempresa: TStringField
      DisplayLabel = 'EMPRESA'
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'empresa'
      LookupDataSet = qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'codempresa'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qradic_notaCONF_VALORICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_VALORICMS'
      Visible = False
    end
    object qradic_notaCODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qradic_notaCODEMPRESA: TStringField
      DisplayWidth = 10
      FieldName = 'CODEMPRESA'
      Visible = False
      Size = 10
    end
    object qradic_notaCODFORNECEDOR: TStringField
      DisplayWidth = 10
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qradic_notaCONF_BASEICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_BASEICMS'
      Visible = False
    end
    object qradic_notaCONF_BASESUB: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_BASESUB'
      Visible = False
    end
    object qradic_notaCONF_VALORSUB: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_VALORSUB'
      Visible = False
    end
    object qradic_notaCONF_FRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_FRETE'
      Visible = False
    end
    object qradic_notaCONF_SEGURO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_SEGURO'
      Visible = False
    end
    object qradic_notaCONF_OUTRAS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_OUTRAS'
      Visible = False
    end
    object qradic_notaCONF_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_IPI'
      Visible = False
    end
    object qradic_notaCONF_DESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_DESCONTO'
      Visible = False
    end
    object qradic_notaCONF_TOTALPRODUTOS: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_TOTALPRODUTOS'
      Visible = False
    end
    object qradic_notaCONF_ICMSRETIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_ICMSRETIDO'
      Visible = False
    end
    object qradic_notaCONF_ICMSREDITO_PERC: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_ICMSREDITO_PERC'
      Visible = False
    end
    object qradic_notaBASE_SUB: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_SUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaFRETE: TFloatField
      DisplayWidth = 10
      FieldName = 'FRETE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaSEGURO: TFloatField
      DisplayWidth = 10
      FieldName = 'SEGURO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaOUTRAS: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTRAS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaTOTAL_PRODUTOS: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_PRODUTOS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaTRANSP_NOME: TStringField
      DisplayWidth = 60
      FieldName = 'TRANSP_NOME'
      Visible = False
      Size = 60
    end
    object qradic_notaTRANSP_FRETE: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_FRETE'
      Visible = False
    end
    object qradic_notaTRANSP_PLACA: TStringField
      DisplayWidth = 10
      FieldName = 'TRANSP_PLACA'
      Visible = False
      Size = 10
    end
    object qradic_notaTRANSP_PLACAUF: TStringField
      DisplayWidth = 2
      FieldName = 'TRANSP_PLACAUF'
      Visible = False
      Size = 2
    end
    object qradic_notaTRANSP_IE: TStringField
      DisplayWidth = 25
      FieldName = 'TRANSP_IE'
      Visible = False
      Size = 25
    end
    object qradic_notaTRANSP_CNPJ: TStringField
      DisplayWidth = 25
      FieldName = 'TRANSP_CNPJ'
      Visible = False
      Size = 25
    end
    object qradic_notaTRANSP_ENDERECO: TStringField
      DisplayWidth = 40
      FieldName = 'TRANSP_ENDERECO'
      Visible = False
      Size = 40
    end
    object qradic_notaTRANSP_CIDADE: TStringField
      DisplayWidth = 30
      FieldName = 'TRANSP_CIDADE'
      Visible = False
      Size = 30
    end
    object qradic_notaTRANSP_UF: TStringField
      DisplayWidth = 2
      FieldName = 'TRANSP_UF'
      Visible = False
      Size = 2
    end
    object qradic_notaTRANSP_QTDE: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_QTDE'
      Visible = False
    end
    object qradic_notaTRANSP_ESPECIE: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_ESPECIE'
      Visible = False
    end
    object qradic_notaTRANSP_MARCA: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_MARCA'
      Visible = False
    end
    object qradic_notaTRANSP_NUMERO: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_NUMERO'
      Visible = False
    end
    object qradic_notaTRANSP_PESOBRUTO: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_PESOBRUTO'
      Visible = False
    end
    object qradic_notaTRANSP_PESOLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_PESOLIQUIDO'
      Visible = False
    end
    object qradic_notaOBS1: TStringField
      DisplayWidth = 60
      FieldName = 'OBS1'
      Visible = False
      Size = 60
    end
    object qradic_notaOBS2: TStringField
      DisplayWidth = 60
      FieldName = 'OBS2'
      Visible = False
      Size = 60
    end
    object qradic_notaOBS3: TStringField
      DisplayWidth = 60
      FieldName = 'OBS3'
      Visible = False
      Size = 60
    end
    object qradic_notaOBS4: TStringField
      DisplayWidth = 60
      FieldName = 'OBS4'
      Visible = False
      Size = 60
    end
    object qradic_notaOBS5: TStringField
      DisplayWidth = 60
      FieldName = 'OBS5'
      Visible = False
      Size = 60
    end
    object qradic_notaOBS6: TStringField
      DisplayWidth = 60
      FieldName = 'OBS6'
      Visible = False
      Size = 60
    end
    object qradic_notaOBS7: TStringField
      DisplayWidth = 60
      FieldName = 'OBS7'
      Visible = False
      Size = 60
    end
    object qradic_notaVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
      DisplayFormat = '00#'
    end
    object qradic_notaTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qradic_notaNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 6
    end
    object qradic_notaCODREMETENTE: TStringField
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object qradic_notaREMETENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'REMETENTE'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODREMETENTE'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qradic_notaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Visible = False
    end
    object qradic_notaICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qradic_notaICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object qradic_notaDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Visible = False
    end
    object qradic_notaITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
      Visible = False
    end
    object qradic_notaITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
      Visible = False
    end
    object qradic_notaITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Visible = False
    end
    object qradic_notaITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
      Visible = False
    end
    object qradic_notaITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
      Visible = False
    end
    object qradic_notaITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
      Visible = False
    end
    object qradic_notaITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Visible = False
    end
    object qradic_notaITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
      Visible = False
    end
    object qradic_notaITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
      Visible = False
    end
    object qradic_notaITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
      Visible = False
    end
    object qradic_notaITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Visible = False
    end
    object qradic_notaITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
      Visible = False
    end
    object qradic_notaITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Visible = False
    end
    object qradic_notaITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Visible = False
    end
    object qradic_notaITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Visible = False
    end
    object qradic_notaITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Visible = False
    end
    object qradic_notaITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
      Visible = False
    end
    object qradic_notaITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
      Visible = False
    end
    object qradic_notaITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Visible = False
    end
    object qradic_notaITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
      Visible = False
    end
    object qradic_notaITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Visible = False
    end
    object qradic_notaITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
      Visible = False
    end
    object qradic_notaITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Visible = False
    end
    object qradic_notaITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Visible = False
    end
    object qradic_notaITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_notaBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Visible = False
    end
  end
  object qradic_nota_item: TZQuery
    Connection = conexao_adic
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    Left = 120
    Top = 850
    object qradic_nota_itemITEM: TStringField
      DisplayLabel = 'IT.'
      DisplayWidth = 3
      FieldName = 'ITEM'
      Size = 3
    end
    object qradic_nota_itemCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'D.'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qradic_nota_itemUN_COMPRA: TStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 4
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qradic_nota_itemCST: TStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Size = 5
    end
    object qradic_nota_itemCFOP: TStringField
      DisplayWidth = 5
      FieldName = 'CFOP'
      Size = 6
    end
    object qradic_nota_itemICMS_ALIQUOTA: TFloatField
      DisplayLabel = 'ICMS'
      DisplayWidth = 7
      FieldName = 'ICMS_ALIQUOTA'
      DisplayFormat = '###,###,##0.00%'
    end
    object qradic_nota_itemIPI_ALIQUOTA: TFloatField
      DisplayLabel = 'IPI'
      DisplayWidth = 7
      FieldName = 'IPI_ALIQUOTA'
      DisplayFormat = '###,###,##0.00%'
    end
    object qradic_nota_itemQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 9
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
    end
    object qradic_nota_itemUNITARIO: TFloatField
      DisplayLabel = 'UNIT.'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.000'
    end
    object qradic_nota_itemSUBTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_nota_itemDESCONTO: TFloatField
      DisplayLabel = 'DESC.'
      DisplayWidth = 7
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_nota_itemTOTAL: TFloatField
      DisplayWidth = 9
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_nota_itemSUB_VALOR: TFloatField
      DisplayLabel = 'SUB.'
      DisplayWidth = 6
      FieldName = 'SUB_VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_nota_itemIPI_VALOR: TFloatField
      DisplayLabel = 'V.IPI'
      DisplayWidth = 9
      FieldName = 'IPI_VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qradic_nota_itemCODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Visible = False
      Size = 10
    end
    object qradic_nota_itemCODNOTA: TStringField
      DisplayWidth = 10
      FieldName = 'CODNOTA'
      Visible = False
      Size = 10
    end
    object qradic_nota_itemCODLANCAMENTO: TStringField
      DisplayWidth = 10
      FieldName = 'CODLANCAMENTO'
      Visible = False
      Size = 10
    end
    object qradic_nota_itemUN_FRACAO: TStringField
      DisplayWidth = 5
      FieldName = 'UN_FRACAO'
      Visible = False
      Size = 5
    end
    object qradic_nota_itemFRACAO: TFloatField
      DisplayWidth = 10
      FieldName = 'FRACAO'
      Visible = False
    end
    object qradic_nota_itemDESCONTO_P: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO_P'
      Visible = False
    end
    object qradic_nota_itemICMS_RETIDO: TStringField
      DisplayWidth = 1
      FieldName = 'ICMS_RETIDO'
      Visible = False
      Size = 1
    end
    object qradic_nota_itemICMS_REDUCAO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUCAO'
      Visible = False
    end
    object qradic_nota_itemICMS_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_BASE'
      Visible = False
    end
    object qradic_nota_itemICMS_VALOR: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_VALOR'
      Visible = False
    end
    object qradic_nota_itemICMS_VALORRETIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_VALORRETIDO'
      Visible = False
    end
    object qradic_nota_itemICMS_ISENTO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qradic_nota_itemICMS_NAOTRIBUTADO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_NAOTRIBUTADO'
      Visible = False
    end
    object qradic_nota_itemSUB_MARGEM: TFloatField
      DisplayWidth = 10
      FieldName = 'SUB_MARGEM'
      Visible = False
    end
    object qradic_nota_itemSUB_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'SUB_BASE'
      Visible = False
    end
    object qradic_nota_itemIPI_BASE: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI_BASE'
      Visible = False
    end
    object qradic_nota_itemDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qradic_nota_itemTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qradic_nota_itemNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object qradic_nota_itemIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Visible = False
      Size = 25
    end
    object qradic_nota_itemFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object qradic_nota_itemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object qradic_nota_itemSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object qradic_nota_itemCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
      Size = 25
    end
  end
  object EConexao: TIBCConnection
    Database = 'C:\DATASAC\SERVER\bd\BASE.FDB'
    DefaultTransaction = ETransaction
    ClientLibrary = 'fbclient.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    LoginPrompt = False
    Left = 800
    Top = 282
  end
  object ETransaction: TIBCTransaction
    DefaultConnection = EConexao
    Left = 1008
    Top = 290
  end
  object qrprod: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 944
    Top = 370
  end
  object querylog: TZQuery
    Connection = econexao2
    Params = <>
    Left = 840
    Top = 322
  end
  object time_gp: TTimer
    Enabled = False
    OnTimer = time_gpTimer
    Left = 824
    Top = 234
  end
  object qrautorizacao: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from FARMACIA_AUTORIZACAO')
    Params = <>
    Left = 712
    Top = 178
    object qrautorizacaoAUTORIZACAO: TStringField
      FieldName = 'AUTORIZACAO'
      Required = True
    end
    object qrautorizacaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrautorizacaoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrautorizacaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrautorizacaoPLANO: TStringField
      FieldName = 'PLANO'
      Size = 8
    end
    object qrautorizacaoCONVENIADO: TStringField
      FieldName = 'CONVENIADO'
      Size = 30
    end
    object qrautorizacaoCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 40
    end
    object qrautorizacaoECF: TStringField
      FieldName = 'ECF'
      Size = 4
    end
    object qrautorizacaoCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 6
    end
    object qrautorizacaoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 14
    end
    object qrautorizacaoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrautorizacaoPMC: TFloatField
      FieldName = 'PMC'
    end
    object qrautorizacaoPV: TFloatField
      FieldName = 'PV'
    end
    object qrautorizacaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrautorizacaoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object qrautorizacaoPC_VISTA: TFloatField
      FieldName = 'PC_VISTA'
    end
    object qrautorizacaoPC_RECEBER: TFloatField
      FieldName = 'PC_RECEBER'
    end
    object qrautorizacaoREEMBOLSO: TFloatField
      FieldName = 'REEMBOLSO'
    end
    object qrautorizacaoSUBSIDIO: TFloatField
      FieldName = 'SUBSIDIO'
    end
    object qrautorizacaoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrautorizacaoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 40
    end
    object qrautorizacaoCRM_MEDICO: TStringField
      FieldName = 'CRM_MEDICO'
      Size = 5
    end
    object qrautorizacaoUF_MEDICO: TStringField
      FieldName = 'UF_MEDICO'
      Size = 2
    end
    object qrautorizacaoSOLICITACAO: TIntegerField
      FieldName = 'SOLICITACAO'
    end
    object qrautorizacaoQTDE_AUTORIZADO: TFloatField
      FieldName = 'QTDE_AUTORIZADO'
    end
    object qrautorizacaoCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object qrautorizacaoPACIENTE: TStringField
      FieldName = 'PACIENTE'
      Size = 50
    end
    object qrautorizacaoCODCONVENIO: TIntegerField
      FieldName = 'CODCONVENIO'
    end
    object qrautorizacaoPRE_AUTORIZACAO: TStringField
      FieldName = 'PRE_AUTORIZACAO'
    end
    object qrautorizacaoLOTE: TStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object qrautorizacaoOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
  end
  object queryagenda: TZQuery
    Connection = econexao2
    Params = <>
    Left = 864
    Top = 274
  end
  object qrcnae: TZQuery
    Connection = ConexaoLocal
    AfterPost = qrrelatorioAfterPost
    SQL.Strings = (
      'select * from cnae')
    Params = <>
    Left = 72
    Top = 290
    object qrcnaeCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcnaeCNAE: TStringField
      FieldName = 'CNAE'
      Size = 10
    end
    object qrcnaeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qrcnaeABREVIADO: TStringField
      FieldName = 'ABREVIADO'
      Size = 50
    end
  end
  object qrpedido_industria: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000126')
    Params = <>
    Left = 952
    Top = 522
    object qrpedido_industriaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrpedido_industriaPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Required = True
      Size = 10
    end
    object qrpedido_industriaCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Required = True
      Size = 10
    end
    object qrpedido_industriaDATA_PEDIDO: TDateTimeField
      FieldName = 'DATA_PEDIDO'
    end
    object qrpedido_industriaDATA_ENTREGA: TDateTimeField
      FieldName = 'DATA_ENTREGA'
    end
    object qrpedido_industriaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrpedido_industriaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrpedido_industriaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrpedido_industriaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 100
    end
    object qrpedido_industriaOBS4: TStringField
      FieldName = 'OBS4'
      Size = 100
    end
    object qrpedido_industriaOBS5: TStringField
      FieldName = 'OBS5'
      Size = 100
    end
    object qrpedido_industriacliente: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrpedido_industriaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrpedido_industriaCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Size = 100
    end
    object qrpedido_industriaCODREPRESENTANTE: TStringField
      FieldName = 'CODREPRESENTANTE'
      Size = 10
    end
    object qrpedido_industriarepresentante: TStringField
      FieldKind = fkLookup
      FieldName = 'representante'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODREPRESENTANTE'
      Size = 40
      Lookup = True
    end
    object qrpedido_industriarepresentante_fone: TStringField
      FieldKind = fkLookup
      FieldName = 'representante_fone'
      LookupDataSet = qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TELEFONE'
      KeyFields = 'CODREPRESENTANTE'
      Size = 15
      Lookup = True
    end
    object qrpedido_industriaLOTE: TStringField
      FieldName = 'LOTE'
    end
    object qrpedido_industriaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 100
    end
  end
  object qrpedido_industria_item: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000127')
    Params = <>
    Left = 1024
    Top = 522
    object qrpedido_industria_itemCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrpedido_industria_itemPEDIDO: TStringField
      FieldName = 'PEDIDO'
      Required = True
      Size = 10
    end
    object qrpedido_industria_itemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Required = True
      Size = 6
    end
    object qrpedido_industria_itemREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object qrpedido_industria_itemTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Size = 10
    end
    object qrpedido_industria_itemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object qrpedido_industria_itemVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrpedido_industria_itemCOR: TStringField
      FieldName = 'COR'
      Size = 30
    end
    object qrpedido_industria_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrpedido_industria_itemproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrpedido_industria_itemcodbarra: TStringField
      FieldKind = fkLookup
      FieldName = 'codbarra'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'CODPRODUTO'
      Size = 15
      Lookup = True
    end
    object qrpedido_industria_itemITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object qrtamanho: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000128')
    Params = <>
    Left = 944
    Top = 570
    object qrtamanhoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrtamanhoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Required = True
    end
  end
  object qrcor: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000129')
    Params = <>
    Left = 1000
    Top = 570
    object qrcorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrcorCOR: TStringField
      FieldName = 'COR'
      Required = True
    end
  end
  object qrfornecedor_codigo: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from FORNECEDOR_CODIGO')
    Params = <>
    Left = 504
    Top = 162
    object qrfornecedor_codigoCODFORNECEDOR: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Required = True
      Size = 6
    end
    object qrfornecedor_codigofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrfornecedor_codigoCODIGO: TStringField
      DisplayLabel = 'REREFER'#202'NCIA'
      DisplayWidth = 15
      FieldName = 'CODIGO'
    end
    object qrfornecedor_codigoPRECO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 8
      FieldName = 'PRECO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrfornecedor_codigoCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrfornecedor_codigoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'ReportPrinter Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 611
    Top = 256
  end
  object econexao2: TZConnection
    Protocol = 'firebird-2.1'
    Database = 'C:\DATASAC\SERVER\bd\BASE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 807
    Top = 192
  end
  object qrNCM: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from NCM')
    Params = <>
    Left = 600
    Top = 176
    object qrNCMNCM: TStringField
      FieldName = 'NCM'
      Required = True
      Size = 10
    end
    object qrNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object qrNCMUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
  end
  object ZQuery1: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000061')
    Params = <>
    Left = 88
    Top = 157
    object StringField10: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField11: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object StringField13: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DATA'
    end
    object StringField14: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object FloatField16: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField17: TFloatField
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField18: TFloatField
      FieldName = 'BASE_CALCULO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField19: TFloatField
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField20: TFloatField
      FieldName = 'BASE_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField21: TFloatField
      FieldName = 'ICMS_SUB'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField22: TFloatField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField23: TFloatField
      FieldName = 'SEGURO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField24: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField25: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ITENS'
    end
    object FloatField26: TFloatField
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField15: TStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 6
    end
    object IntegerField3: TIntegerField
      FieldName = 'FRETE_CONTA'
    end
    object StringField16: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object StringField17: TStringField
      FieldName = 'PLACA_UF'
      Size = 2
    end
    object FloatField27: TFloatField
      FieldName = 'VOL_QTDE'
    end
    object StringField18: TStringField
      FieldName = 'VOL_ESPECIE'
    end
    object StringField19: TStringField
      FieldName = 'VOL_MARCA'
    end
    object StringField20: TStringField
      FieldName = 'VOL_NUMERO'
    end
    object FloatField28: TFloatField
      FieldName = 'PESO_LIQUIDO'
      DisplayFormat = '###,###,##0.000'
    end
    object FloatField29: TFloatField
      FieldName = 'PESO_BRUTO'
      DisplayFormat = '###,###,##0.000'
    end
    object IntegerField4: TIntegerField
      FieldName = 'SITUACAO'
    end
    object StringField21: TStringField
      FieldName = 'MOTIVO'
      Size = 40
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'FATURAMENTO_DATA1'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'FATURAMENTO_DATA2'
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'FATURAMENTO_DATA3'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'FATURAMENTO_DATA4'
    end
    object StringField22: TStringField
      FieldName = 'FATURAMENTO_NUMERO1'
      Size = 15
    end
    object StringField23: TStringField
      FieldName = 'FATURAMENTO_NUMERO2'
      Size = 15
    end
    object StringField24: TStringField
      FieldName = 'FATURAMENTO_NUMERO3'
      Size = 15
    end
    object StringField25: TStringField
      FieldName = 'FATURAMENTO_NUMERO4'
      Size = 15
    end
    object FloatField30: TFloatField
      FieldName = 'FATURAMENTO_VALOR1'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField31: TFloatField
      FieldName = 'FATURAMENTO_VALOR2'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField32: TFloatField
      FieldName = 'FATURAMENTO_VALOR3'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField33: TFloatField
      FieldName = 'FATURAMENTO_VALOR4'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField26: TStringField
      FieldName = 'CODFILIAL'
      Size = 6
    end
    object StringField27: TStringField
      FieldKind = fkLookup
      FieldName = 'filial'
      LookupDataSet = qrFilial
      LookupKeyFields = 'codigo'
      LookupResultField = 'FILIAL'
      KeyFields = 'codfilial'
      Size = 30
      Lookup = True
    end
    object StringField28: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = qrcliente
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codcliente'
      Size = 50
      Lookup = True
    end
    object StringField29: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = qrCFOP
      LookupKeyFields = 'CFOP'
      LookupResultField = 'NATUREZA'
      KeyFields = 'cfop'
      Size = 30
      Lookup = True
    end
    object StringField30: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object StringField31: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object StringField32: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object StringField33: TStringField
      FieldName = 'INF1'
      Size = 80
    end
    object StringField34: TStringField
      FieldName = 'INF2'
      Size = 80
    end
    object StringField35: TStringField
      FieldName = 'INF3'
      Size = 80
    end
    object StringField36: TStringField
      FieldName = 'INF4'
      Size = 80
    end
    object StringField37: TStringField
      FieldName = 'INF5'
      Size = 80
    end
    object StringField38: TStringField
      FieldKind = fkLookup
      FieldName = 'TRANSPORTADOR'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODTRANSPORTADOR'
      Size = 50
      Lookup = True
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'DATA_SAIDA'
    end
    object StringField39: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object StringField40: TStringField
      FieldName = 'SITUACAO_A'
      Size = 1
    end
    object StringField41: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object StringField42: TStringField
      FieldName = 'SERIE_NF'
      Size = 3
    end
    object FloatField34: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
    end
    object FloatField35: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object StringField43: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_endereco'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'ENDERECO'
      KeyFields = 'codtransportador'
      Size = 50
      Lookup = True
    end
    object StringField44: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cidade'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CIDADE'
      KeyFields = 'codtransportador'
      Size = 30
      Lookup = True
    end
    object StringField45: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_uf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'UF'
      KeyFields = 'codtransportador'
      Size = 2
      Lookup = True
    end
    object StringField46: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_cpf'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'CPF'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object StringField47: TStringField
      FieldKind = fkLookup
      FieldName = 'transp_rg'
      LookupDataSet = qrtransportador
      LookupKeyFields = 'codigo'
      LookupResultField = 'RG'
      KeyFields = 'codtransportador'
      Size = 25
      Lookup = True
    end
    object StringField48: TStringField
      FieldName = 'SIT'
      Size = 1
    end
    object StringField49: TStringField
      FieldKind = fkLookup
      FieldName = 'ESPECIE'
      LookupDataSet = qrfiscal_modelo
      LookupKeyFields = 'SINTEGRA'
      LookupResultField = 'SIGLA'
      KeyFields = 'MODELO_NF'
      Size = 10
      Lookup = True
    end
    object StringField50: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object StringField51: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object StringField52: TStringField
      FieldKind = fkLookup
      FieldName = 'endereco'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ENDERECO'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object StringField53: TStringField
      FieldKind = fkLookup
      FieldName = 'cpf'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CPF'
      KeyFields = 'CODCLIENTE'
      Size = 14
      Lookup = True
    end
    object StringField54: TStringField
      FieldKind = fkLookup
      FieldName = 'rg'
      LookupDataSet = qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'RG'
      KeyFields = 'CODCLIENTE'
      Lookup = True
    end
    object StringField55: TStringField
      FieldName = 'BAIXA_ESTOQUE'
      Size = 1
    end
    object StringField56: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object StringField57: TStringField
      FieldName = 'OS_COD1'
      Size = 10
    end
    object StringField58: TStringField
      FieldName = 'OS_COD2'
      Size = 10
    end
    object StringField59: TStringField
      FieldName = 'OS_COD3'
      Size = 10
    end
    object StringField60: TStringField
      FieldName = 'OS_COD4'
      Size = 10
    end
    object StringField61: TStringField
      FieldName = 'OS_COD5'
      Size = 10
    end
    object StringField62: TStringField
      FieldName = 'OS_COD6'
      Size = 10
    end
    object StringField63: TStringField
      FieldName = 'OS_SERV1'
      Size = 60
    end
    object StringField64: TStringField
      FieldName = 'OS_SERV2'
      Size = 60
    end
    object StringField65: TStringField
      FieldName = 'OS_SERV3'
      Size = 60
    end
    object StringField66: TStringField
      FieldName = 'OS_SERV4'
      Size = 60
    end
    object StringField67: TStringField
      FieldName = 'OS_SERV5'
      Size = 60
    end
    object StringField68: TStringField
      FieldName = 'OS_SERV6'
      Size = 60
    end
    object StringField69: TStringField
      FieldName = 'OS_COMP1'
      Size = 60
    end
    object StringField70: TStringField
      FieldName = 'OS_COMP2'
      Size = 60
    end
    object StringField71: TStringField
      FieldName = 'OS_COMP3'
      Size = 60
    end
    object StringField72: TStringField
      FieldName = 'OS_COMP4'
      Size = 60
    end
    object StringField73: TStringField
      FieldName = 'OS_COMP5'
      Size = 60
    end
    object StringField74: TStringField
      FieldName = 'OS_COMP6'
      Size = 60
    end
    object FloatField36: TFloatField
      FieldName = 'OS_QTDE1'
    end
    object FloatField37: TFloatField
      FieldName = 'OS_QTDE2'
    end
    object FloatField38: TFloatField
      FieldName = 'OS_QTDE3'
    end
    object FloatField39: TFloatField
      FieldName = 'OS_QTDE4'
    end
    object FloatField40: TFloatField
      FieldName = 'OS_QTDE5'
    end
    object FloatField41: TFloatField
      FieldName = 'OS_QTDE6'
    end
    object FloatField42: TFloatField
      FieldName = 'OS_UNIT1'
    end
    object FloatField43: TFloatField
      FieldName = 'OS_UNIT2'
    end
    object FloatField44: TFloatField
      FieldName = 'OS_UNIT3'
    end
    object FloatField45: TFloatField
      FieldName = 'OS_UNIT4'
    end
    object FloatField46: TFloatField
      FieldName = 'OS_UNIT5'
    end
    object FloatField47: TFloatField
      FieldName = 'OS_UNIT6'
    end
    object FloatField48: TFloatField
      FieldName = 'OS_TOTAL1'
    end
    object FloatField49: TFloatField
      FieldName = 'OS_TOTAL2'
    end
    object FloatField50: TFloatField
      FieldName = 'OS_TOTAL3'
    end
    object FloatField51: TFloatField
      FieldName = 'OS_TOTAL4'
    end
    object FloatField52: TFloatField
      FieldName = 'OS_TOTAL5'
    end
    object FloatField53: TFloatField
      FieldName = 'OS_TOTAL6'
    end
    object FloatField54: TFloatField
      FieldName = 'OS_ISS'
    end
    object FloatField55: TFloatField
      FieldName = 'OS_TOTAL_GERAL'
    end
    object FloatField56: TFloatField
      FieldName = 'OS_TOTAL_ISS'
    end
  end
  object qrCSOSN: TZQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from CSOSN')
    Params = <>
    Left = 160
    Top = 226
    object qrCSOSNCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 3
    end
    object qrCSOSNDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 200
    end
  end
end
