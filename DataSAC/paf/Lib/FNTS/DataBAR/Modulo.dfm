object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 438
  Top = 191
  Height = 311
  Width = 512
  object Conexao: TIBCConnection
    Database = 'C:\datasac\Server\BD\BASE.FDB'
    SQLDialect = 1
    ClientLibrary = 'fbclient.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'LOCALHOST'
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 72
  end
  object query: TIBCQuery
    Connection = Conexao
    Left = 64
    Top = 24
  end
  object st_Mesa_Abertura: TIBCStoredProc
    StoredProcName = 'ST_LANCTO_INSERT'
    Connection = Conexao
    Left = 144
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'COD_FUNCIONARIO'
        ParamType = ptInput
        Size = 10
      end>
  end
  object st_consumo: TIBCStoredProc
    StoredProcName = 'ST_LANCTO_CONSUMO'
    Connection = Conexao
    Left = 144
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_MESA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
      end>
  end
  object Balanca: TACBrBAL
    Porta = 'COM1'
    OnLePeso = BalancaLePeso
    Left = 48
    Top = 136
  end
  object qrconfig: TIBCQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from c000001')
    Active = True
    Left = 144
    Top = 152
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
    object qrconfigEXTRATO_TIPONOTA: TIntegerField
      FieldName = 'EXTRATO_TIPONOTA'
    end
    object qrconfigBOBINA_SUBIRPAPEL: TIntegerField
      FieldName = 'BOBINA_SUBIRPAPEL'
    end
    object qrconfigCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Size = 10
    end
    object qrconfigBOLETO_FORMAPGTO: TStringField
      FieldName = 'BOLETO_FORMAPGTO'
    end
    object qrconfigPLANO_VENDA_AV: TStringField
      FieldName = 'PLANO_VENDA_AV'
      Size = 30
    end
    object qrconfigPLANO_VENDA_AP: TStringField
      FieldName = 'PLANO_VENDA_AP'
      Size = 30
    end
    object qrconfigPLANO_OS_AV: TStringField
      FieldName = 'PLANO_OS_AV'
      Size = 30
    end
    object qrconfigPLANO_OS_AP: TStringField
      FieldName = 'PLANO_OS_AP'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_ENTRADAS: TStringField
      FieldName = 'PLANO_OUTRAS_ENTRADAS'
      Size = 30
    end
    object qrconfigPLANO_OUTRAS_SAIDAS: TStringField
      FieldName = 'PLANO_OUTRAS_SAIDAS'
      Size = 30
    end
    object qrconfigPLANO_RECEBTO_CREDIARIO: TStringField
      FieldName = 'PLANO_RECEBTO_CREDIARIO'
      Size = 30
    end
    object qrconfigNF_ITENS_PAGINA: TIntegerField
      FieldName = 'NF_ITENS_PAGINA'
    end
    object qrconfigNF_ITENS_TRANSPORTE: TIntegerField
      FieldName = 'NF_ITENS_TRANSPORTE'
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
    object qrconfigNR_CONTROLE_ECF: TStringField
      FieldName = 'NR_CONTROLE_ECF'
      Size = 6
    end
    object qrconfigBALANCA_PROGRAMA: TStringField
      FieldName = 'BALANCA_PROGRAMA'
      Size = 150
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
    object qrconfigCONDICIONAL: TIntegerField
      FieldName = 'CONDICIONAL'
    end
    object qrconfigCONDICIONAL_PRAZO: TIntegerField
      FieldName = 'CONDICIONAL_PRAZO'
    end
    object qrconfigVS_ATIVAR: TIntegerField
      FieldName = 'VS_ATIVAR'
    end
    object qrconfigVS_DINHEIRO: TIntegerField
      FieldName = 'VS_DINHEIRO'
    end
    object qrconfigVS_CHEQUEAV: TIntegerField
      FieldName = 'VS_CHEQUEAV'
    end
    object qrconfigVS_CHEQUEAP: TIntegerField
      FieldName = 'VS_CHEQUEAP'
    end
    object qrconfigVS_CARTRAOCRED: TIntegerField
      FieldName = 'VS_CARTRAOCRED'
    end
    object qrconfigVS_CARTAODEB: TIntegerField
      FieldName = 'VS_CARTAODEB'
    end
    object qrconfigVS_CREDIARIO: TIntegerField
      FieldName = 'VS_CREDIARIO'
    end
    object qrconfigVS_CLIENTE_VISTA: TStringField
      FieldName = 'VS_CLIENTE_VISTA'
      Size = 6
    end
    object qrconfigVS_CAIXA: TIntegerField
      FieldName = 'VS_CAIXA'
    end
    object qrconfigVS_RELATORIO: TIntegerField
      FieldName = 'VS_RELATORIO'
    end
    object qrconfigVS_VIAS: TIntegerField
      FieldName = 'VS_VIAS'
    end
    object qrconfigVS_VISUALIZAR: TIntegerField
      FieldName = 'VS_VISUALIZAR'
    end
    object qrconfigCONDICIONAL_MODELO: TIntegerField
      FieldName = 'CONDICIONAL_MODELO'
    end
    object qrconfigALTERAR_UNITARIO: TIntegerField
      FieldName = 'ALTERAR_UNITARIO'
    end
    object qrconfigCONTASRECEBER_VALORJUROS: TFloatField
      FieldName = 'CONTASRECEBER_VALORJUROS'
    end
    object qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField
      FieldName = 'CONTASRECEBER_JUROS_DINHEIRO'
    end
    object qrconfigPLANO_DUPLICATA_NFE: TStringField
      FieldName = 'PLANO_DUPLICATA_NFE'
      Size = 30
    end
    object qrconfigVAREJO_ATACADO: TIntegerField
      FieldName = 'VAREJO_ATACADO'
    end
    object qrconfigVISUALIZA_MENSAGEM: TIntegerField
      FieldName = 'VISUALIZA_MENSAGEM'
    end
    object qrconfigSERIAL_REPETIDO: TIntegerField
      FieldName = 'SERIAL_REPETIDO'
    end
    object qrconfigOCULTAR_CUSTO: TIntegerField
      FieldName = 'OCULTAR_CUSTO'
    end
    object qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField
      FieldName = 'OCULTAR_PRODUTO_INATIVO'
    end
    object qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField
      FieldName = 'OCULTAR_CLIENTE_INATIVO'
    end
    object qrconfigOBS_FARMA: TIntegerField
      FieldName = 'OBS_FARMA'
    end
    object qrconfigOBS_FARMA_TEXTO: TStringField
      FieldName = 'OBS_FARMA_TEXTO'
      Size = 45
    end
    object qrconfigCUSTO_MAIOR_VENDA: TIntegerField
      FieldName = 'CUSTO_MAIOR_VENDA'
    end
    object qrconfigVENDER_ABAIXO_CUSTO: TIntegerField
      FieldName = 'VENDER_ABAIXO_CUSTO'
    end
    object qrconfigNF_GERAR_RECEBER: TIntegerField
      FieldName = 'NF_GERAR_RECEBER'
    end
    object qrconfigNF_CODIGOBARRA_NFE: TIntegerField
      FieldName = 'NF_CODIGOBARRA_NFE'
    end
    object qrconfigNF_GRADE_NFE: TIntegerField
      FieldName = 'NF_GRADE_NFE'
    end
    object qrconfigNF_SERIAL_NFE: TIntegerField
      FieldName = 'NF_SERIAL_NFE'
    end
    object qrconfigNF_REFERENCIA_NFE: TIntegerField
      FieldName = 'NF_REFERENCIA_NFE'
    end
    object qrconfigNF_GERAR_DUPLICATA: TIntegerField
      FieldName = 'NF_GERAR_DUPLICATA'
    end
    object qrconfigVALE_CAIXA: TIntegerField
      FieldName = 'VALE_CAIXA'
    end
    object qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField
      FieldName = 'CONTAS_RECEBER_BLOQUEIO'
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
    object qrconfigVS_FRETE: TIntegerField
      FieldName = 'VS_FRETE'
    end
    object qrconfigINVENTARIO_AUTOMATICO: TIntegerField
      FieldName = 'INVENTARIO_AUTOMATICO'
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
    object qrconfigINESTRA: TIntegerField
      FieldName = 'INESTRA'
    end
    object qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField
      FieldName = 'FARMACIA_INVENTARIO_FECHA'
    end
    object qrconfigFARMACIA_ENVIO_NOVARTIS: TStringField
      FieldName = 'FARMACIA_ENVIO_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_RESPOSTA_NOVARTIS: TStringField
      FieldName = 'FARMACIA_RESPOSTA_NOVARTIS'
      Size = 60
    end
    object qrconfigFARMACIA_INVENTARIO_CONFIRMA: TStringField
      FieldName = 'FARMACIA_INVENTARIO_CONFIRMA'
      Size = 1
    end
    object qrconfigFARMACIA_INVENTARIO_DATA: TDateTimeField
      FieldName = 'FARMACIA_INVENTARIO_DATA'
    end
    object qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField
      FieldName = 'CALCULA_ISENTAS_OUTRAS'
    end
    object qrconfigUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
    end
    object qrconfigUSA_PRODUTOR_RURAL: TIntegerField
      FieldName = 'USA_PRODUTOR_RURAL'
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
    object qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField
      FieldName = 'IND_MOSTRA_COMPOSICAO'
    end
    object qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField
      FieldName = 'CHECA_SERIAL_NOTA_SAIDA'
    end
    object qrconfigCOR_COMERCIO: TStringField
      FieldName = 'COR_COMERCIO'
      Size = 10
    end
    object qrconfigLOGO_COMERCIO: TStringField
      FieldName = 'LOGO_COMERCIO'
      Size = 100
    end
    object qrconfigCOR_FARMACIA: TStringField
      FieldName = 'COR_FARMACIA'
      Size = 10
    end
    object qrconfigLOGO_FARMACIA: TStringField
      FieldName = 'LOGO_FARMACIA'
      Size = 100
    end
    object qrconfigCOR_PECAS: TStringField
      FieldName = 'COR_PECAS'
      Size = 10
    end
    object qrconfigLOGO_PECAS: TStringField
      FieldName = 'LOGO_PECAS'
      Size = 100
    end
    object qrconfigCOR_MERCADO: TStringField
      FieldName = 'COR_MERCADO'
      Size = 10
    end
    object qrconfigLOGO_MERCADO: TStringField
      FieldName = 'LOGO_MERCADO'
      Size = 100
    end
    object qrconfigCOR_POSTO: TStringField
      FieldName = 'COR_POSTO'
      Size = 10
    end
    object qrconfigLOGO_POSTO: TStringField
      FieldName = 'LOGO_POSTO'
      Size = 100
    end
    object qrconfigIND_CLIE_ENTRADA_DESC: TStringField
      FieldName = 'IND_CLIE_ENTRADA_DESC'
      Size = 40
    end
    object qrconfigIND_CFOP_ENTRADA_DESC: TStringField
      FieldName = 'IND_CFOP_ENTRADA_DESC'
      Size = 40
    end
    object qrconfigIND_CLIE_SAIDA_DESC: TStringField
      FieldName = 'IND_CLIE_SAIDA_DESC'
      Size = 40
    end
    object qrconfigIND_CFOP_SAIDA_DESC: TStringField
      FieldName = 'IND_CFOP_SAIDA_DESC'
      Size = 40
    end
    object qrconfigIND_CLIE_PERDA_DESC: TStringField
      FieldName = 'IND_CLIE_PERDA_DESC'
      Size = 40
    end
    object qrconfigIND_CFOP_PERDA_DESC: TStringField
      FieldName = 'IND_CFOP_PERDA_DESC'
      Size = 40
    end
  end
end
