object frmDados: TfrmDados
  Tag = 99
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 65532
  Top = 65532
  Height = 746
  Width = 1032
  object Sql_Dados: TSQLConnection
    ConnectionName = 'UIB FireBird15 Connection'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=C:\auxsystcom\fbdados.fdb'
      'DriverName=UIB FireBird15'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=masterkey'
      'RoleName=RoleName'
      'ServerCharSet='
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 32
    Top = 14
  end
  object dbx_Tipo_Pgto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tipo_pgto')
    SQLConnection = Sql_Dados
    Left = 96
    Top = 14
    object dbx_Tipo_PgtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_Tipo_PgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object dbx_Tipo_PgtoMOSVD: TStringField
      FieldName = 'MOSVD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dbx_Tipo_PgtoEHELETRONICO: TStringField
      FieldName = 'EHELETRONICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dbx_Tipo_PgtoCODECF: TStringField
      FieldName = 'CODECF'
      Size = 2
    end
    object dbx_Tipo_PgtoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object dbx_Tipo_PgtoPDESC: TFMTBCDField
      FieldName = 'PDESC'
      Precision = 18
      Size = 2
    end
    object dbx_Tipo_PgtoEHAGENDAMENTO: TStringField
      FieldName = 'EHAGENDAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsp_Tipo_Pgto: TDataSetProvider
    DataSet = dbx_Tipo_Pgto
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 30
  end
  object cds_Tipo_Pgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Tipo_Pgto'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = cds_Tipo_PgtoAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 119
    Top = 46
    object cds_Tipo_PgtoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_Tipo_PgtoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 26
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cds_Tipo_PgtoMOSVD: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'MOSVD'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_Tipo_PgtoEHELETRONICO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHELETRONICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds_Tipo_PgtoCODECF: TStringField
      FieldName = 'CODECF'
      Size = 2
    end
    object cds_Tipo_PgtoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object cds_Tipo_PgtoPDESC: TFMTBCDField
      FieldName = 'PDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object cds_Tipo_PgtoEHAGENDAMENTO: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'EHAGENDAMENTO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dts_Tipo_Pgto: TDataSource
    DataSet = cds_Tipo_Pgto
    Left = 135
    Top = 62
  end
  object Dbx_Vencto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vencimentos')
    SQLConnection = Sql_Dados
    Left = 176
    Top = 14
    object Dbx_VenctoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_VenctoC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Dbx_VenctoC_SVENDA: TIntegerField
      FieldName = 'C_SVENDA'
    end
    object Dbx_VenctoDTL: TDateField
      FieldName = 'DTL'
    end
    object Dbx_VenctoDTV: TDateField
      FieldName = 'DTV'
    end
    object Dbx_VenctoDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_VenctoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Dbx_VenctoDOC: TStringField
      FieldName = 'DOC'
      Size = 70
    end
    object Dbx_VenctoCREC: TIntegerField
      FieldName = 'CREC'
    end
    object Dbx_VenctoCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_VenctoCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_VenctoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_VenctoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Dbx_VenctoVPARCSEMJ: TFMTBCDField
      FieldName = 'VPARCSEMJ'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_VenctoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object Dbx_VenctoPARC: TStringField
      FieldName = 'PARC'
      Size = 5
    end
    object Dbx_VenctoEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VenctoORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Dbx_VenctoPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Dbx_VenctoNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Dbx_VenctoPARTE: TStringField
      FieldName = 'PARTE'
      Size = 3
    end
    object Dbx_VenctoNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Dbx_VenctoDTB: TDateField
      FieldName = 'DTB'
    end
    object Dbx_VenctoCCLA: TIntegerField
      FieldName = 'CCLA'
    end
    object Dbx_VenctoNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 15
    end
    object Dbx_VenctoVALORREAL: TFMTBCDField
      FieldName = 'VALORREAL'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoECFLANCADO: TStringField
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VenctoMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Dbx_VenctoIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Dbx_VenctoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_VenctoCODLIVROCAIXA: TIntegerField
      FieldName = 'CODLIVROCAIXA'
    end
    object Dbx_VenctoPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_VenctoVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_VenctoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_VenctoCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Dbx_VenctoCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Dbx_VenctoBAIXARTODOS: TStringField
      FieldName = 'BAIXARTODOS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_Vencto: TDataSetProvider
    DataSet = Dbx_Vencto
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 30
  end
  object Cds_Vencto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Vencto'
    AfterInsert = Cds_VenctoAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_VenctoAfterPost
    AfterScroll = Cds_VenctoAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 208
    Top = 46
    object Cds_VenctoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_VenctoC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Cds_VenctoC_SVENDA: TIntegerField
      FieldName = 'C_SVENDA'
    end
    object Cds_VenctoDTL: TDateField
      FieldName = 'DTL'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoDTV: TDateField
      FieldName = 'DTV'
      OnChange = Cds_VenctoDTVChange
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoDTE: TDateField
      FieldName = 'DTE'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Cds_VenctoDOC: TStringField
      FieldName = 'DOC'
      Size = 70
    end
    object Cds_VenctoCREC: TIntegerField
      FieldName = 'CREC'
      DisplayFormat = '###,###,##0.00'
    end
    object Cds_VenctoCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_VenctoCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Cds_VenctoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_VenctoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Cds_VenctoVPARCSEMJ: TFMTBCDField
      FieldName = 'VPARCSEMJ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_VenctoCRT: TIntegerField
      FieldName = 'CRT'
    end
    object Cds_VenctoPARC: TStringField
      FieldName = 'PARC'
      Size = 5
    end
    object Cds_VenctoEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Vencton_tipo_pgto: TStringField
      FieldKind = fkLookup
      FieldName = 'n_tipo_pgto'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'C_TIPO_PGTO'
      Size = 30
      Lookup = True
    end
    object Cds_Venctonsit: TStringField
      FieldKind = fkLookup
      FieldName = 'nsit'
      LookupDataSet = Cds_SituPagar
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSIT'
      Size = 30
      Lookup = True
    end
    object Cds_VenctoORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Cds_VenctoPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Cds_Venctoncli: TStringField
      FieldKind = fkLookup
      FieldName = 'ncli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CCLI'
      Size = 80
      Lookup = True
    end
    object Cds_Venctonsiturec: TStringField
      FieldKind = fkLookup
      FieldName = 'nsiturec'
      LookupDataSet = Cds_SituRec
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSIT'
      Size = 60
      Lookup = True
    end
    object Cds_VenctoNPED: TIntegerField
      FieldName = 'NPED'
      DisplayFormat = '00000'
    end
    object Cds_VenctoPARTE: TStringField
      FieldName = 'PARTE'
      Size = 3
    end
    object Cds_VenctoNOS: TIntegerField
      FieldName = 'NOS'
      DisplayFormat = '00000'
    end
    object Cds_VenctoDTB: TDateField
      FieldName = 'DTB'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_VenctoCCLA: TIntegerField
      FieldName = 'CCLA'
    end
    object Cds_Venctoncla: TStringField
      FieldKind = fkLookup
      FieldName = 'ncla'
      LookupDataSet = Cds_Classe
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCLA'
      Size = 60
      Lookup = True
    end
    object Cds_Venctongrupocla: TStringField
      FieldKind = fkLookup
      FieldName = 'ngrupocla'
      LookupDataSet = Cds_Classe
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'AGRUPCOD'
      KeyFields = 'CCLA'
      Size = 30
      Lookup = True
    end
    object Cds_VenctoNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 15
    end
    object Cds_Venctontipoop: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipoop'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODTIPOP'
      Size = 30
      Lookup = True
    end
    object Cds_VenctoVALORREAL: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALORREAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoECFLANCADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VenctoMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Cds_VenctoIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Cds_VenctoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_Venctonfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 50
      Lookup = True
    end
    object Cds_VenctoCODLIVROCAIXA: TIntegerField
      FieldName = 'CODLIVROCAIXA'
    end
    object Cds_VenctoPCOM: TBCDField
      FieldName = 'PCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_VenctoVCOM: TFMTBCDField
      FieldName = 'VCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VenctoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_VenctoCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Cds_VenctoCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Cds_VenctoBAIXARTODOS: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'BAIXARTODOS'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dts_Vencto: TDataSource
    DataSet = Cds_Vencto
    OnUpdateData = Dts_VenctoUpdateData
    Left = 224
    Top = 62
  end
  object Dbx_Totais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select sum(Prve*Qtde) as TotS from dVenda where EouS = '#39'S'#39)
    SQLConnection = Sql_Dados
    Left = 312
    Top = 1023
  end
  object ADO_Conexao: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=200xsystcom;Persist Security Info=Tr' +
      'ue;User ID=SYSDBA;Data Source=Banco de dados MS Access;Initial C' +
      'atalog=C:\Marcos\desenvolvimento\sistemas\rb\dados\bdSystcom'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 224
    Top = 1018
  end
  object ADO_Mestre: TADOQuery
    Connection = ADO_Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tabItens')
    Left = 32
    Top = 1018
  end
  object Dbx_Dados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from indice')
    SQLConnection = Sql_Dados
    Left = 266
    Top = 14
  end
  object Dsp_Dados: TDataSetProvider
    DataSet = Dbx_Dados
    UpdateMode = upWhereKeyOnly
    Left = 274
    Top = 30
  end
  object Cds_dados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Dados'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_dadosAfterPost
    BeforeDelete = Cds_dadosBeforeDelete
    AfterDelete = Cds_dadosAfterDelete
    OnNewRecord = Cds_dadosNewRecord
    AfterApplyUpdates = Cds_dadosAfterApplyUpdates
    Left = 290
    Top = 46
  end
  object Dts_Dados: TDataSource
    DataSet = Cds_dados
    Left = 306
    Top = 62
  end
  object Dbx_Indice: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from indice')
    SQLConnection = Sql_Dados
    Left = 347
    Top = 14
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_IndiceOS: TIntegerField
      FieldName = 'OS'
    end
    object Dbx_IndiceCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_IndiceNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_IndiceVEN: TIntegerField
      FieldName = 'VEN'
    end
    object Dbx_IndicePEDS: TIntegerField
      FieldName = 'PEDS'
    end
    object Dbx_IndicePEDE: TIntegerField
      FieldName = 'PEDE'
    end
    object Dbx_IndicePEDO: TIntegerField
      FieldName = 'PEDO'
    end
    object Dbx_IndiceCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Dbx_IndiceCOUT: TIntegerField
      FieldName = 'COUT'
    end
    object Dbx_IndiceOS1: TIntegerField
      FieldName = 'OS1'
    end
    object Dbx_IndiceNRECIBO: TIntegerField
      FieldName = 'NRECIBO'
    end
    object Dbx_IndiceVLRHRMO: TFMTBCDField
      FieldName = 'VLRHRMO'
      Precision = 18
      Size = 2
    end
    object Dbx_IndiceCAPLIC: TIntegerField
      FieldName = 'CAPLIC'
    end
    object Dbx_IndiceOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_IndiceOBS1: TMemoField
      FieldName = 'OBS1'
      BlobType = ftMemo
    end
    object Dbx_IndiceMENS: TStringField
      FieldName = 'MENS'
      Size = 200
    end
    object Dbx_IndiceTXT: TStringField
      FieldName = 'TXT'
      Size = 200
    end
    object Dbx_IndiceIMPBOBV: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'IMPBOBV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceIMPBOBO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'IMPBOBO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceNCOPIASV: TSmallintField
      FieldName = 'NCOPIASV'
    end
    object Dbx_IndiceNCOPIASO: TSmallintField
      FieldName = 'NCOPIASO'
    end
    object Dbx_IndiceQDOOSAP: TSmallintField
      FieldName = 'QDOOSAP'
    end
    object Dbx_IndiceQDOOSIR: TSmallintField
      FieldName = 'QDOOSIR'
    end
    object Dbx_IndiceQDOENTCLI: TSmallintField
      FieldName = 'QDOENTCLI'
    end
    object Dbx_IndiceQDODCLIKPR: TSmallintField
      FieldName = 'QDODCLIKPR'
    end
    object Dbx_IndiceCODPRINPRO: TSmallintField
      FieldName = 'CODPRINPRO'
    end
    object Dbx_IndiceANOCONTABI: TSmallintField
      FieldName = 'ANOCONTABI'
    end
    object Dbx_IndiceANOCONTP: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ANOCONTP'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceJAN: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'JAN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceFEV: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'FEV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMAR: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'MAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceABR: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ABR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMAI: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'MAI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceJUN: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'JUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceJUL: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'JUL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceAGO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'AGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceSETE: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'SETE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceOUT: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'OUT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceNOV: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'NOV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceDEZ: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'DEZ'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceAUTHTYPE: TSmallintField
      FieldName = 'AUTHTYPE'
    end
    object Dbx_IndiceHOST: TStringField
      FieldName = 'HOST'
      Size = 50
    end
    object Dbx_IndicePASS_WORD: TStringField
      FieldName = 'PASS_WORD'
    end
    object Dbx_IndicePORT: TSmallintField
      FieldName = 'PORT'
    end
    object Dbx_IndiceSOCKSAUTH: TSmallintField
      FieldName = 'SOCKSAUTH'
    end
    object Dbx_IndiceSOCKSVERSI: TSmallintField
      FieldName = 'SOCKSVERSI'
    end
    object Dbx_IndiceUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 30
    end
    object Dbx_IndiceEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Dbx_IndiceNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Dbx_IndiceCAMPO13: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CAMPO13'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCFB: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CFB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCAX: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CAX'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceOBCLI: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'OBCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceOBVEN: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'OBVEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceLIMITEDESC: TFMTBCDField
      FieldName = 'LIMITEDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_IndiceOBFECTELV: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'OBFECTELV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCODTIPO: TIntegerField
      FieldName = 'CODTIPO'
    end
    object Dbx_IndiceGRAVAQUA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'GRAVAQUA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndicePARC: TSmallintField
      FieldName = 'PARC'
    end
    object Dbx_IndiceCRIAPARC: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CRIAPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMAXPARC: TSmallintField
      FieldName = 'MAXPARC'
    end
    object Dbx_IndiceTPPARCBCO: TSmallintField
      FieldName = 'TPPARCBCO'
    end
    object Dbx_IndiceCAMINHOBCOADO: TStringField
      FieldName = 'CAMINHOBCOADO'
      Size = 200
    end
    object Dbx_IndiceLOGINADO: TStringField
      FieldName = 'LOGINADO'
    end
    object Dbx_IndiceSENHAADO: TStringField
      FieldName = 'SENHAADO'
      Size = 11
    end
    object Dbx_IndiceCAMINHOBCOADO_2: TStringField
      FieldName = 'CAMINHOBCOADO_2'
      Size = 200
    end
    object Dbx_IndicePERIODO_PREVIO: TSmallintField
      FieldName = 'PERIODO_PREVIO'
    end
    object Dbx_IndiceCAMINHODBF_1: TStringField
      FieldName = 'CAMINHODBF_1'
      Size = 200
    end
    object Dbx_IndiceEHORC: TSmallintField
      FieldName = 'EHORC'
    end
    object Dbx_IndicePRECVEND: TStringField
      FieldName = 'PRECVEND'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceEHENTREGA: TSmallintField
      FieldName = 'EHENTREGA'
    end
    object Dbx_IndiceVENDVENDA: TSmallintField
      FieldName = 'VENDVENDA'
    end
    object Dbx_IndicePARCPADRAO: TSmallintField
      FieldName = 'PARCPADRAO'
    end
    object Dbx_IndiceOBRCLIPARC: TSmallintField
      FieldName = 'OBRCLIPARC'
    end
    object Dbx_IndiceABRIRPRODFV: TSmallintField
      FieldName = 'ABRIRPRODFV'
    end
    object Dbx_IndiceABRRESUPRODV: TSmallintField
      FieldName = 'ABRRESUPRODV'
    end
    object Dbx_IndiceTPIMPV: TSmallintField
      FieldName = 'TPIMPV'
    end
    object Dbx_IndiceOBS_RODAPE: TMemoField
      FieldName = 'OBS_RODAPE'
      BlobType = ftMemo
    end
    object Dbx_IndiceBAIXAQDOORCPED: TSmallintField
      FieldName = 'BAIXAQDOORCPED'
    end
    object Dbx_IndicePULALINHA: TSmallintField
      FieldName = 'PULALINHA'
    end
    object Dbx_IndiceF6FINALIZA: TSmallintField
      FieldName = 'F6FINALIZA'
    end
    object Dbx_IndiceLINHAS_NF: TSmallintField
      FieldName = 'LINHAS_NF'
    end
    object Dbx_IndiceCOMPACTAR_LINHAS_NF: TSmallintField
      FieldName = 'COMPACTAR_LINHAS_NF'
    end
    object Dbx_IndiceREDUCAOICMS: TBCDField
      FieldName = 'REDUCAOICMS'
      Precision = 9
      Size = 3
    end
    object Dbx_IndiceDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Dbx_IndiceDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Dbx_IndiceDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Dbx_IndiceDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Dbx_IndiceDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Dbx_IndiceDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Dbx_IndiceDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Dbx_IndiceDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Dbx_IndiceIMPDESTDA1: TIntegerField
      FieldName = 'IMPDESTDA1'
    end
    object Dbx_IndiceIMPDESTDA2: TIntegerField
      FieldName = 'IMPDESTDA2'
    end
    object Dbx_IndiceIMPDESTDA3: TIntegerField
      FieldName = 'IMPDESTDA3'
    end
    object Dbx_IndiceIMPDESTDA4: TIntegerField
      FieldName = 'IMPDESTDA4'
    end
    object Dbx_IndiceIMPDESTDA5: TIntegerField
      FieldName = 'IMPDESTDA5'
    end
    object Dbx_IndiceIMPDESTDA6: TIntegerField
      FieldName = 'IMPDESTDA6'
    end
    object Dbx_IndiceIMPDESTDA7: TIntegerField
      FieldName = 'IMPDESTDA7'
    end
    object Dbx_IndiceIMPDESTDA8: TIntegerField
      FieldName = 'IMPDESTDA8'
    end
    object Dbx_IndiceQDONOVOPEDINT: TSmallintField
      FieldName = 'QDONOVOPEDINT'
    end
    object Dbx_IndiceEMAILRET: TStringField
      FieldName = 'EMAILRET'
      Size = 100
    end
    object Dbx_IndiceNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 30
    end
    object Dbx_IndiceCODAVISTA: TSmallintField
      FieldName = 'CODAVISTA'
    end
    object Dbx_IndicePORTAIMP: TSmallintField
      FieldName = 'PORTAIMP'
    end
    object Dbx_IndiceID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Dbx_IndiceID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Dbx_IndiceDESC1: TStringField
      FieldName = 'DESC1'
      Size = 25
    end
    object Dbx_IndiceDESC2: TStringField
      FieldName = 'DESC2'
      Size = 25
    end
    object Dbx_IndiceDESC3: TStringField
      FieldName = 'DESC3'
      Size = 25
    end
    object Dbx_IndiceDESC4: TStringField
      FieldName = 'DESC4'
      Size = 25
    end
    object Dbx_IndiceDESC5: TStringField
      FieldName = 'DESC5'
      Size = 25
    end
    object Dbx_IndiceDESC6: TStringField
      FieldName = 'DESC6'
      Size = 25
    end
    object Dbx_IndiceDESC7: TStringField
      FieldName = 'DESC7'
      Size = 25
    end
    object Dbx_IndiceDESC8: TStringField
      FieldName = 'DESC8'
      Size = 25
    end
    object Dbx_IndiceDESC9: TStringField
      FieldName = 'DESC9'
      Size = 25
    end
    object Dbx_IndiceDESC10: TStringField
      FieldName = 'DESC10'
      Size = 25
    end
    object Dbx_IndiceDESC11: TStringField
      FieldName = 'DESC11'
      Size = 25
    end
    object Dbx_IndiceDESC12: TStringField
      FieldName = 'DESC12'
      Size = 25
    end
    object Dbx_IndiceDESC13: TStringField
      FieldName = 'DESC13'
      Size = 25
    end
    object Dbx_IndiceDESC14: TStringField
      FieldName = 'DESC14'
      Size = 25
    end
    object Dbx_IndiceDESC15: TStringField
      FieldName = 'DESC15'
      Size = 25
    end
    object Dbx_IndiceDESC16: TStringField
      FieldName = 'DESC16'
      Size = 25
    end
    object Dbx_IndiceDESC17: TStringField
      FieldName = 'DESC17'
      Size = 25
    end
    object Dbx_IndiceDESC18: TStringField
      FieldName = 'DESC18'
      Size = 25
    end
    object Dbx_IndiceDESC19: TStringField
      FieldName = 'DESC19'
      Size = 25
    end
    object Dbx_IndiceDESC20: TStringField
      FieldName = 'DESC20'
      Size = 25
    end
    object Dbx_IndiceDESC21: TStringField
      FieldName = 'DESC21'
      Size = 25
    end
    object Dbx_IndiceDESC22: TStringField
      FieldName = 'DESC22'
      Size = 25
    end
    object Dbx_IndiceDESC23: TStringField
      FieldName = 'DESC23'
      Size = 25
    end
    object Dbx_IndiceDESC24: TStringField
      FieldName = 'DESC24'
      Size = 25
    end
    object Dbx_IndiceDESC25: TStringField
      FieldName = 'DESC25'
      Size = 25
    end
    object Dbx_IndiceDESC26: TStringField
      FieldName = 'DESC26'
      Size = 25
    end
    object Dbx_IndiceDESC27: TStringField
      FieldName = 'DESC27'
      Size = 25
    end
    object Dbx_IndiceDESC28: TStringField
      FieldName = 'DESC28'
      Size = 25
    end
    object Dbx_IndiceDESC29: TStringField
      FieldName = 'DESC29'
      Size = 25
    end
    object Dbx_IndiceDESC30: TStringField
      FieldName = 'DESC30'
      Size = 25
    end
    object Dbx_IndiceDESC31: TStringField
      FieldName = 'DESC31'
      Size = 25
    end
    object Dbx_IndiceDESC32: TStringField
      FieldName = 'DESC32'
      Size = 25
    end
    object Dbx_IndiceDESC33: TStringField
      FieldName = 'DESC33'
      Size = 25
    end
    object Dbx_IndiceDESC34: TStringField
      FieldName = 'DESC34'
      Size = 25
    end
    object Dbx_IndiceDESC35: TStringField
      FieldName = 'DESC35'
      Size = 25
    end
    object Dbx_IndiceDESC36: TStringField
      FieldName = 'DESC36'
      Size = 25
    end
    object Dbx_IndiceDESC37: TStringField
      FieldName = 'DESC37'
      Size = 25
    end
    object Dbx_IndiceDESC38: TStringField
      FieldName = 'DESC38'
      Size = 25
    end
    object Dbx_IndiceTDESC1: TStringField
      FieldName = 'TDESC1'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC2: TStringField
      FieldName = 'TDESC2'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC3: TStringField
      FieldName = 'TDESC3'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC4: TStringField
      FieldName = 'TDESC4'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC5: TStringField
      FieldName = 'TDESC5'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC6: TStringField
      FieldName = 'TDESC6'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC7: TStringField
      FieldName = 'TDESC7'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC8: TStringField
      FieldName = 'TDESC8'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC9: TStringField
      FieldName = 'TDESC9'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC10: TStringField
      FieldName = 'TDESC10'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC11: TStringField
      FieldName = 'TDESC11'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC12: TStringField
      FieldName = 'TDESC12'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC13: TStringField
      FieldName = 'TDESC13'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC14: TStringField
      FieldName = 'TDESC14'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC15: TStringField
      FieldName = 'TDESC15'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC16: TStringField
      FieldName = 'TDESC16'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC17: TStringField
      FieldName = 'TDESC17'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC18: TStringField
      FieldName = 'TDESC18'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC19: TStringField
      FieldName = 'TDESC19'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC20: TStringField
      FieldName = 'TDESC20'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC21: TStringField
      FieldName = 'TDESC21'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC22: TStringField
      FieldName = 'TDESC22'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC23: TStringField
      FieldName = 'TDESC23'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC24: TStringField
      FieldName = 'TDESC24'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC25: TStringField
      FieldName = 'TDESC25'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC26: TStringField
      FieldName = 'TDESC26'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC27: TStringField
      FieldName = 'TDESC27'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC28: TStringField
      FieldName = 'TDESC28'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC29: TStringField
      FieldName = 'TDESC29'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC30: TStringField
      FieldName = 'TDESC30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC31: TStringField
      FieldName = 'TDESC31'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC32: TStringField
      FieldName = 'TDESC32'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC33: TStringField
      FieldName = 'TDESC33'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC34: TStringField
      FieldName = 'TDESC34'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC35: TStringField
      FieldName = 'TDESC35'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC36: TStringField
      FieldName = 'TDESC36'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC37: TStringField
      FieldName = 'TDESC37'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTDESC38: TStringField
      FieldName = 'TDESC38'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndicePCT1: TStringField
      FieldName = 'PCT1'
      Size = 150
    end
    object Dbx_IndicePCT2: TStringField
      FieldName = 'PCT2'
      Size = 150
    end
    object Dbx_IndicePCT3: TStringField
      FieldName = 'PCT3'
      Size = 150
    end
    object Dbx_IndicePCT4: TStringField
      FieldName = 'PCT4'
      Size = 150
    end
    object Dbx_IndicePCT5: TStringField
      FieldName = 'PCT5'
      Size = 150
    end
    object Dbx_IndicePCT6: TStringField
      FieldName = 'PCT6'
      Size = 150
    end
    object Dbx_IndicePCT7: TStringField
      FieldName = 'PCT7'
      Size = 150
    end
    object Dbx_IndicePCT8: TStringField
      FieldName = 'PCT8'
      Size = 150
    end
    object Dbx_IndicePCT9: TStringField
      FieldName = 'PCT9'
      Size = 150
    end
    object Dbx_IndicePCT10: TStringField
      FieldName = 'PCT10'
      Size = 150
    end
    object Dbx_IndicePCT11: TStringField
      FieldName = 'PCT11'
      Size = 150
    end
    object Dbx_IndicePCT12: TStringField
      FieldName = 'PCT12'
      Size = 150
    end
    object Dbx_IndicePCT13: TStringField
      FieldName = 'PCT13'
      Size = 150
    end
    object Dbx_IndicePCT14: TStringField
      FieldName = 'PCT14'
      Size = 150
    end
    object Dbx_IndicePCT15: TStringField
      FieldName = 'PCT15'
      Size = 150
    end
    object Dbx_IndicePCT16: TStringField
      FieldName = 'PCT16'
      Size = 150
    end
    object Dbx_IndicePCT17: TStringField
      FieldName = 'PCT17'
      Size = 150
    end
    object Dbx_IndicePCT18: TStringField
      FieldName = 'PCT18'
      Size = 150
    end
    object Dbx_IndicePCT19: TStringField
      FieldName = 'PCT19'
      Size = 150
    end
    object Dbx_IndicePCT20: TStringField
      FieldName = 'PCT20'
      Size = 150
    end
    object Dbx_IndiceTPIMPVI: TSmallintField
      FieldName = 'TPIMPVI'
    end
    object Dbx_IndiceNOMECLIOBR: TStringField
      FieldName = 'NOMECLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCPFCLIOBR: TStringField
      FieldName = 'CPFCLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceRGCLIOBR: TStringField
      FieldName = 'RGCLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceFONECLIOBR: TStringField
      FieldName = 'FONECLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTPEQPOS: TStringField
      FieldName = 'TPEQPOS'
      Size = 15
    end
    object Dbx_IndiceID1CLIOBR: TStringField
      FieldName = 'ID1CLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTIPOCTAPASSIVO: TIntegerField
      FieldName = 'TIPOCTAPASSIVO'
    end
    object Dbx_IndiceIMPCABCLI: TStringField
      FieldName = 'IMPCABCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceIMPVLRRECCLI: TStringField
      FieldName = 'IMPVLRRECCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceIMPVLRCB: TIntegerField
      FieldName = 'IMPVLRCB'
    end
    object Dbx_IndiceTIPOCTAATIVO: TIntegerField
      FieldName = 'TIPOCTAATIVO'
    end
    object Dbx_IndicePRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Dbx_IndiceTIPOIMPF: TSmallintField
      FieldName = 'TIPOIMPF'
    end
    object Dbx_IndiceECFLANCA: TStringField
      FieldName = 'ECFLANCA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceDIRNFE: TStringField
      FieldName = 'DIRNFE'
      Size = 150
    end
    object Dbx_IndiceTIPOIMPNF: TSmallintField
      FieldName = 'TIPOIMPNF'
    end
    object Dbx_IndiceCSITP: TSmallintField
      FieldName = 'CSITP'
    end
    object Dbx_IndiceCSITR: TSmallintField
      FieldName = 'CSITR'
    end
    object Dbx_IndiceTPNF: TStringField
      FieldName = 'TPNF'
      Size = 3
    end
    object Dbx_IndiceTPIMP: TStringField
      FieldName = 'TPIMP'
      Size = 3
    end
    object Dbx_IndiceFINNFE: TStringField
      FieldName = 'FINNFE'
      Size = 3
    end
    object Dbx_IndiceMODEL: TStringField
      FieldName = 'MODEL'
      Size = 5
    end
    object Dbx_IndiceSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object Dbx_IndiceMODBC: TStringField
      FieldName = 'MODBC'
      Size = 5
    end
    object Dbx_IndicePISNT: TStringField
      FieldName = 'PISNT'
      Size = 5
    end
    object Dbx_IndiceCOFINSNT: TStringField
      FieldName = 'COFINSNT'
      Size = 5
    end
    object Dbx_IndiceMOSTRAENDENT: TStringField
      FieldName = 'MOSTRAENDENT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMOSTRAENDCOM: TStringField
      FieldName = 'MOSTRAENDCOM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMOSTRAENDCOB: TStringField
      FieldName = 'MOSTRAENDCOB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMOSTRAFOTOCLI: TStringField
      FieldName = 'MOSTRAFOTOCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTITENDENT: TStringField
      FieldName = 'TITENDENT'
      Size = 15
    end
    object Dbx_IndiceTITENDCOM: TStringField
      FieldName = 'TITENDCOM'
      Size = 15
    end
    object Dbx_IndiceTITENDCOB: TStringField
      FieldName = 'TITENDCOB'
      Size = 15
    end
    object Dbx_IndiceOUTINFCLI1: TStringField
      FieldName = 'OUTINFCLI1'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI2: TStringField
      FieldName = 'OUTINFCLI2'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI3: TStringField
      FieldName = 'OUTINFCLI3'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI4: TStringField
      FieldName = 'OUTINFCLI4'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI5: TStringField
      FieldName = 'OUTINFCLI5'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI6: TStringField
      FieldName = 'OUTINFCLI6'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI7: TStringField
      FieldName = 'OUTINFCLI7'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI8: TStringField
      FieldName = 'OUTINFCLI8'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI9: TStringField
      FieldName = 'OUTINFCLI9'
      Size = 25
    end
    object Dbx_IndiceOUTINFCLI10: TStringField
      FieldName = 'OUTINFCLI10'
      Size = 25
    end
    object Dbx_IndiceCSITR1: TSmallintField
      FieldName = 'CSITR1'
    end
    object Dbx_IndiceCSITP1: TSmallintField
      FieldName = 'CSITP1'
    end
    object Dbx_IndiceRDIRNFE: TStringField
      FieldName = 'RDIRNFE'
      Size = 150
    end
    object Dbx_IndiceMOSTRAAPL: TStringField
      FieldName = 'MOSTRAAPL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMOSTRACODAUX: TStringField
      FieldName = 'MOSTRACODAUX'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceMOSTRAMARCA: TStringField
      FieldName = 'MOSTRAMARCA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCAMINHO_ECF: TStringField
      FieldName = 'CAMINHO_ECF'
      Size = 200
    end
    object Dbx_IndiceINICIOAGEDODIA: TTimeField
      FieldName = 'INICIOAGEDODIA'
    end
    object Dbx_IndiceFIMAGEDODIA: TTimeField
      FieldName = 'FIMAGEDODIA'
    end
    object Dbx_IndiceINTERVALOAGEDODIA: TTimeField
      FieldName = 'INTERVALOAGEDODIA'
    end
    object Dbx_IndiceTIPOETIQ: TSmallintField
      FieldName = 'TIPOETIQ'
    end
    object Dbx_IndiceCSITCLIBLOQ: TIntegerField
      FieldName = 'CSITCLIBLOQ'
    end
    object Dbx_IndiceBLOQUEIACLI: TStringField
      FieldName = 'BLOQUEIACLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCSITCLIINAT: TIntegerField
      FieldName = 'CSITCLIINAT'
    end
    object Dbx_IndiceBLOQCLIINA: TStringField
      FieldName = 'BLOQCLIINA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_IndiceTIPOQTDEECF: TIntegerField
      FieldName = 'TIPOQTDEECF'
    end
    object Dbx_IndiceIMPCONCOMITANTE: TStringField
      FieldName = 'IMPCONCOMITANTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_IndiceTCLFINALIZA: TSmallintField
      FieldName = 'TCLFINALIZA'
    end
    object Dbx_IndiceMOSTRAINFOFINADD: TSmallintField
      FieldName = 'MOSTRAINFOFINADD'
    end
    object Dbx_IndiceCONTADOR_MULTPAGAR: TIntegerField
      FieldName = 'CONTADOR_MULTPAGAR'
    end
    object strngfldDbx_IndiceORDEM_PRODUCAO: TStringField
      FieldName = 'ORDEM_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_Indicechaveconsultacep: TStringField
      FieldName = 'chaveconsultacep'
      Size = 40
    end
  end
  object Dsp_Indice: TDataSetProvider
    DataSet = Dbx_Indice
    UpdateMode = upWhereKeyOnly
    Left = 363
    Top = 30
  end
  object Cds_Indice: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Indice'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 379
    Top = 46
    object Cds_IndiceCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_IndiceOS: TIntegerField
      FieldName = 'OS'
    end
    object Cds_IndiceCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_IndiceNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_IndiceVEN: TIntegerField
      FieldName = 'VEN'
    end
    object Cds_IndicePEDS: TIntegerField
      FieldName = 'PEDS'
    end
    object Cds_IndicePEDE: TIntegerField
      FieldName = 'PEDE'
    end
    object Cds_IndicePEDO: TIntegerField
      FieldName = 'PEDO'
    end
    object Cds_IndiceCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Cds_IndiceCOUT: TIntegerField
      FieldName = 'COUT'
    end
    object Cds_IndiceOS1: TIntegerField
      FieldName = 'OS1'
    end
    object Cds_IndiceNRECIBO: TIntegerField
      FieldName = 'NRECIBO'
    end
    object Cds_IndiceVLRHRMO: TFMTBCDField
      FieldName = 'VLRHRMO'
      Precision = 18
      Size = 2
    end
    object Cds_IndiceCAPLIC: TIntegerField
      FieldName = 'CAPLIC'
    end
    object Cds_IndiceOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_IndiceOBS1: TMemoField
      FieldName = 'OBS1'
      BlobType = ftMemo
    end
    object Cds_IndiceMENS: TStringField
      FieldName = 'MENS'
      Size = 200
    end
    object Cds_IndiceTXT: TStringField
      FieldName = 'TXT'
      Size = 200
    end
    object Cds_IndiceIMPBOBV: TStringField
      FieldName = 'IMPBOBV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceIMPBOBO: TStringField
      FieldName = 'IMPBOBO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceNCOPIASV: TSmallintField
      FieldName = 'NCOPIASV'
    end
    object Cds_IndiceNCOPIASO: TSmallintField
      FieldName = 'NCOPIASO'
    end
    object Cds_IndiceQDOOSAP: TSmallintField
      FieldName = 'QDOOSAP'
    end
    object Cds_IndiceQDOOSIR: TSmallintField
      FieldName = 'QDOOSIR'
    end
    object Cds_IndiceQDOENTCLI: TSmallintField
      FieldName = 'QDOENTCLI'
    end
    object Cds_IndiceQDODCLIKPR: TSmallintField
      FieldName = 'QDODCLIKPR'
    end
    object Cds_IndiceCODPRINPRO: TSmallintField
      FieldName = 'CODPRINPRO'
    end
    object Cds_IndiceANOCONTABI: TSmallintField
      FieldName = 'ANOCONTABI'
    end
    object Cds_IndiceANOCONTP: TStringField
      FieldName = 'ANOCONTP'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceJAN: TStringField
      FieldName = 'JAN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceFEV: TStringField
      FieldName = 'FEV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMAR: TStringField
      FieldName = 'MAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceABR: TStringField
      FieldName = 'ABR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMAI: TStringField
      FieldName = 'MAI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceJUN: TStringField
      FieldName = 'JUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceJUL: TStringField
      FieldName = 'JUL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceAGO: TStringField
      FieldName = 'AGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceSETE: TStringField
      FieldName = 'SETE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceOUT: TStringField
      FieldName = 'OUT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceNOV: TStringField
      FieldName = 'NOV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceDEZ: TStringField
      FieldName = 'DEZ'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceAUTHTYPE: TSmallintField
      FieldName = 'AUTHTYPE'
    end
    object Cds_IndiceHOST: TStringField
      FieldName = 'HOST'
      Size = 50
    end
    object Cds_IndicePASS_WORD: TStringField
      FieldName = 'PASS_WORD'
    end
    object Cds_IndicePORT: TSmallintField
      FieldName = 'PORT'
    end
    object Cds_IndiceSOCKSAUTH: TSmallintField
      FieldName = 'SOCKSAUTH'
    end
    object Cds_IndiceSOCKSVERSI: TSmallintField
      FieldName = 'SOCKSVERSI'
    end
    object Cds_IndiceUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 30
    end
    object Cds_IndiceEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Cds_IndiceNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cds_IndiceCAMPO13: TStringField
      FieldName = 'CAMPO13'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceCFB: TStringField
      FieldName = 'CFB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceCAX: TStringField
      FieldName = 'CAX'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceOBCLI: TStringField
      FieldName = 'OBCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceOBVEN: TStringField
      FieldName = 'OBVEN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceLIMITEDESC: TFMTBCDField
      FieldName = 'LIMITEDESC'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_IndiceOBFECTELV: TStringField
      FieldName = 'OBFECTELV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceCODTIPO: TIntegerField
      FieldName = 'CODTIPO'
    end
    object Cds_IndiceGRAVAQUA: TStringField
      FieldName = 'GRAVAQUA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndicePARC: TSmallintField
      FieldName = 'PARC'
    end
    object Cds_IndiceCRIAPARC: TStringField
      FieldName = 'CRIAPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMAXPARC: TSmallintField
      FieldName = 'MAXPARC'
    end
    object Cds_IndiceTPPARCBCO: TSmallintField
      FieldName = 'TPPARCBCO'
    end
    object Cds_IndiceCAMINHOBCOADO: TStringField
      FieldName = 'CAMINHOBCOADO'
      Size = 200
    end
    object Cds_IndiceLOGINADO: TStringField
      FieldName = 'LOGINADO'
    end
    object Cds_IndiceSENHAADO: TStringField
      FieldName = 'SENHAADO'
      Size = 11
    end
    object Cds_IndiceCAMINHOBCOADO_2: TStringField
      FieldName = 'CAMINHOBCOADO_2'
      Size = 200
    end
    object Cds_IndicePERIODO_PREVIO: TSmallintField
      FieldName = 'PERIODO_PREVIO'
    end
    object Cds_IndiceCAMINHODBF_1: TStringField
      FieldName = 'CAMINHODBF_1'
      Size = 200
    end
    object Cds_IndiceEHORC: TSmallintField
      FieldName = 'EHORC'
    end
    object Cds_IndicePRECVEND: TStringField
      FieldName = 'PRECVEND'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceEHENTREGA: TSmallintField
      FieldName = 'EHENTREGA'
    end
    object Cds_IndiceVENDVENDA: TSmallintField
      FieldName = 'VENDVENDA'
    end
    object Cds_IndicePARCPADRAO: TSmallintField
      FieldName = 'PARCPADRAO'
    end
    object Cds_Indicenparcpadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'nparcpadrao'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PARCPADRAO'
      Size = 40
      Lookup = True
    end
    object Cds_IndiceOBRCLIPARC: TSmallintField
      FieldName = 'OBRCLIPARC'
    end
    object Cds_IndiceABRIRPRODFV: TSmallintField
      FieldName = 'ABRIRPRODFV'
    end
    object Cds_IndiceABRRESUPRODV: TSmallintField
      FieldName = 'ABRRESUPRODV'
    end
    object Cds_IndiceTPIMPV: TSmallintField
      FieldName = 'TPIMPV'
    end
    object Cds_IndiceOBS_RODAPE: TMemoField
      FieldName = 'OBS_RODAPE'
      BlobType = ftMemo
    end
    object Cds_IndiceBAIXAQDOORCPED: TSmallintField
      FieldName = 'BAIXAQDOORCPED'
    end
    object Cds_IndicePULALINHA: TSmallintField
      FieldName = 'PULALINHA'
    end
    object Cds_IndiceF6FINALIZA: TSmallintField
      FieldName = 'F6FINALIZA'
    end
    object Cds_IndiceLINHAS_NF: TSmallintField
      FieldName = 'LINHAS_NF'
    end
    object Cds_IndiceCOMPACTAR_LINHAS_NF: TSmallintField
      FieldName = 'COMPACTAR_LINHAS_NF'
    end
    object Cds_IndiceREDUCAOICMS: TBCDField
      FieldName = 'REDUCAOICMS'
      Precision = 9
      Size = 3
    end
    object Cds_Indicedespgtoavista: TStringField
      FieldKind = fkLookup
      FieldName = 'despgtoavista'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODAVISTA'
      Size = 50
      Lookup = True
    end
    object Cds_IndiceDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Cds_IndiceDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Cds_IndiceDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Cds_IndiceDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Cds_IndiceDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Cds_IndiceDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Cds_IndiceDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Cds_IndiceDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Cds_IndiceIMPDESTDA1: TIntegerField
      FieldName = 'IMPDESTDA1'
    end
    object Cds_IndiceIMPDESTDA2: TIntegerField
      FieldName = 'IMPDESTDA2'
    end
    object Cds_IndiceIMPDESTDA3: TIntegerField
      FieldName = 'IMPDESTDA3'
    end
    object Cds_IndiceIMPDESTDA4: TIntegerField
      FieldName = 'IMPDESTDA4'
    end
    object Cds_IndiceIMPDESTDA5: TIntegerField
      FieldName = 'IMPDESTDA5'
    end
    object Cds_IndiceIMPDESTDA6: TIntegerField
      FieldName = 'IMPDESTDA6'
    end
    object Cds_IndiceIMPDESTDA7: TIntegerField
      FieldName = 'IMPDESTDA7'
    end
    object Cds_IndiceIMPDESTDA8: TIntegerField
      FieldName = 'IMPDESTDA8'
    end
    object Cds_IndiceQDONOVOPEDINT: TSmallintField
      FieldName = 'QDONOVOPEDINT'
    end
    object Cds_IndiceEMAILRET: TStringField
      FieldName = 'EMAILRET'
      Size = 100
    end
    object Cds_IndiceNOMERET: TStringField
      FieldName = 'NOMERET'
      Size = 30
    end
    object Cds_IndiceCODAVISTA: TSmallintField
      FieldName = 'CODAVISTA'
    end
    object Cds_IndicePORTAIMP: TSmallintField
      FieldName = 'PORTAIMP'
    end
    object Cds_IndiceID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Cds_IndiceID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Cds_IndiceDESC1: TStringField
      FieldName = 'DESC1'
      Size = 25
    end
    object Cds_IndiceDESC2: TStringField
      FieldName = 'DESC2'
      Size = 25
    end
    object Cds_IndiceDESC3: TStringField
      FieldName = 'DESC3'
      Size = 25
    end
    object Cds_IndiceDESC4: TStringField
      FieldName = 'DESC4'
      Size = 25
    end
    object Cds_IndiceDESC5: TStringField
      FieldName = 'DESC5'
      Size = 25
    end
    object Cds_IndiceDESC6: TStringField
      FieldName = 'DESC6'
      Size = 25
    end
    object Cds_IndiceDESC7: TStringField
      FieldName = 'DESC7'
      Size = 25
    end
    object Cds_IndiceDESC8: TStringField
      FieldName = 'DESC8'
      Size = 25
    end
    object Cds_IndiceDESC9: TStringField
      FieldName = 'DESC9'
      Size = 25
    end
    object Cds_IndiceDESC10: TStringField
      FieldName = 'DESC10'
      Size = 25
    end
    object Cds_IndiceDESC11: TStringField
      FieldName = 'DESC11'
      Size = 25
    end
    object Cds_IndiceDESC12: TStringField
      FieldName = 'DESC12'
      Size = 25
    end
    object Cds_IndiceDESC13: TStringField
      FieldName = 'DESC13'
      Size = 25
    end
    object Cds_IndiceDESC14: TStringField
      FieldName = 'DESC14'
      Size = 25
    end
    object Cds_IndiceDESC15: TStringField
      FieldName = 'DESC15'
      Size = 25
    end
    object Cds_IndiceDESC16: TStringField
      FieldName = 'DESC16'
      Size = 25
    end
    object Cds_IndiceDESC17: TStringField
      FieldName = 'DESC17'
      Size = 25
    end
    object Cds_IndiceDESC18: TStringField
      FieldName = 'DESC18'
      Size = 25
    end
    object Cds_IndiceDESC19: TStringField
      FieldName = 'DESC19'
      Size = 25
    end
    object Cds_IndiceDESC20: TStringField
      FieldName = 'DESC20'
      Size = 25
    end
    object Cds_IndiceDESC21: TStringField
      FieldName = 'DESC21'
      Size = 25
    end
    object Cds_IndiceDESC22: TStringField
      FieldName = 'DESC22'
      Size = 25
    end
    object Cds_IndiceDESC23: TStringField
      FieldName = 'DESC23'
      Size = 25
    end
    object Cds_IndiceDESC24: TStringField
      FieldName = 'DESC24'
      Size = 25
    end
    object Cds_IndiceDESC25: TStringField
      FieldName = 'DESC25'
      Size = 25
    end
    object Cds_IndiceDESC26: TStringField
      FieldName = 'DESC26'
      Size = 25
    end
    object Cds_IndiceDESC27: TStringField
      FieldName = 'DESC27'
      Size = 25
    end
    object Cds_IndiceDESC28: TStringField
      FieldName = 'DESC28'
      Size = 25
    end
    object Cds_IndiceDESC29: TStringField
      FieldName = 'DESC29'
      Size = 25
    end
    object Cds_IndiceDESC30: TStringField
      FieldName = 'DESC30'
      Size = 25
    end
    object Cds_IndiceDESC31: TStringField
      FieldName = 'DESC31'
      Size = 25
    end
    object Cds_IndiceDESC32: TStringField
      FieldName = 'DESC32'
      Size = 25
    end
    object Cds_IndiceDESC33: TStringField
      FieldName = 'DESC33'
      Size = 25
    end
    object Cds_IndiceDESC34: TStringField
      FieldName = 'DESC34'
      Size = 25
    end
    object Cds_IndiceDESC35: TStringField
      FieldName = 'DESC35'
      Size = 25
    end
    object Cds_IndiceDESC36: TStringField
      FieldName = 'DESC36'
      Size = 25
    end
    object Cds_IndiceDESC37: TStringField
      FieldName = 'DESC37'
      Size = 25
    end
    object Cds_IndiceDESC38: TStringField
      FieldName = 'DESC38'
      Size = 25
    end
    object Cds_IndiceTDESC1: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC1'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC2: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC2'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC3: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC3'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC4: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC4'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC5: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC5'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC6: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC6'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC7: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC7'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC8: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC8'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC9: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC9'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC10: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC10'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC11: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC11'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC12: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC12'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC13: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC13'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC14: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC14'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC15: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC15'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC16: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC16'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC17: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC17'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC18: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC18'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC19: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC19'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC20: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC20'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC21: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC21'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC22: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC22'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC23: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC23'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC24: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC24'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC25: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC25'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC26: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC26'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC27: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC27'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC28: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC28'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC29: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC29'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC30: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC30'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC31: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC31'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC32: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC32'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC33: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC33'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC34: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC34'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC35: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC35'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC36: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC36'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC37: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC37'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTDESC38: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'TDESC38'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndicePCT1: TStringField
      FieldName = 'PCT1'
      Size = 150
    end
    object Cds_IndicePCT2: TStringField
      FieldName = 'PCT2'
      Size = 150
    end
    object Cds_IndicePCT3: TStringField
      FieldName = 'PCT3'
      Size = 150
    end
    object Cds_IndicePCT4: TStringField
      FieldName = 'PCT4'
      Size = 150
    end
    object Cds_IndicePCT5: TStringField
      FieldName = 'PCT5'
      Size = 150
    end
    object Cds_IndicePCT6: TStringField
      FieldName = 'PCT6'
      Size = 150
    end
    object Cds_IndicePCT7: TStringField
      FieldName = 'PCT7'
      Size = 150
    end
    object Cds_IndicePCT8: TStringField
      FieldName = 'PCT8'
      Size = 150
    end
    object Cds_IndicePCT9: TStringField
      FieldName = 'PCT9'
      Size = 150
    end
    object Cds_IndicePCT10: TStringField
      FieldName = 'PCT10'
      Size = 150
    end
    object Cds_IndicePCT11: TStringField
      FieldName = 'PCT11'
      Size = 150
    end
    object Cds_IndicePCT12: TStringField
      FieldName = 'PCT12'
      Size = 150
    end
    object Cds_IndicePCT13: TStringField
      FieldName = 'PCT13'
      Size = 150
    end
    object Cds_IndicePCT14: TStringField
      FieldName = 'PCT14'
      Size = 150
    end
    object Cds_IndicePCT15: TStringField
      FieldName = 'PCT15'
      Size = 150
    end
    object Cds_IndicePCT16: TStringField
      FieldName = 'PCT16'
      Size = 150
    end
    object Cds_IndicePCT17: TStringField
      FieldName = 'PCT17'
      Size = 150
    end
    object Cds_IndicePCT18: TStringField
      FieldName = 'PCT18'
      Size = 150
    end
    object Cds_IndicePCT19: TStringField
      FieldName = 'PCT19'
      Size = 150
    end
    object Cds_IndicePCT20: TStringField
      FieldName = 'PCT20'
      Size = 150
    end
    object Cds_IndiceTPIMPVI: TSmallintField
      FieldName = 'TPIMPVI'
    end
    object Cds_IndiceNOMECLIOBR: TStringField
      FieldName = 'NOMECLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceCPFCLIOBR: TStringField
      FieldName = 'CPFCLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceRGCLIOBR: TStringField
      FieldName = 'RGCLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceFONECLIOBR: TStringField
      FieldName = 'FONECLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTPEQPOS: TStringField
      FieldName = 'TPEQPOS'
      Size = 15
    end
    object Cds_IndiceID1CLIOBR: TStringField
      FieldName = 'ID1CLIOBR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTIPOCTAPASSIVO: TIntegerField
      FieldName = 'TIPOCTAPASSIVO'
    end
    object Cds_IndiceIMPCABCLI: TStringField
      FieldName = 'IMPCABCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceIMPVLRRECCLI: TStringField
      FieldName = 'IMPVLRRECCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceIMPVLRCB: TIntegerField
      FieldName = 'IMPVLRCB'
    end
    object Cds_IndiceTIPOCTAATIVO: TIntegerField
      FieldName = 'TIPOCTAATIVO'
    end
    object Cds_IndicePRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Cds_IndiceTIPOIMPF: TSmallintField
      FieldName = 'TIPOIMPF'
    end
    object Cds_IndiceECFLANCA: TStringField
      FieldName = 'ECFLANCA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceDIRNFE: TStringField
      FieldName = 'DIRNFE'
      Size = 150
    end
    object Cds_IndiceTIPOIMPNF: TSmallintField
      FieldName = 'TIPOIMPNF'
    end
    object Cds_IndiceCSITP: TSmallintField
      FieldName = 'CSITP'
    end
    object Cds_IndiceCSITR: TSmallintField
      FieldName = 'CSITR'
    end
    object Cds_IndiceTPNF: TStringField
      FieldName = 'TPNF'
      Size = 3
    end
    object Cds_IndiceTPIMP: TStringField
      FieldName = 'TPIMP'
      Size = 3
    end
    object Cds_IndiceFINNFE: TStringField
      FieldName = 'FINNFE'
      Size = 3
    end
    object Cds_IndiceMODEL: TStringField
      FieldName = 'MODEL'
      Size = 5
    end
    object Cds_IndiceSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object Cds_IndiceMODBC: TStringField
      FieldName = 'MODBC'
      Size = 5
    end
    object Cds_IndicePISNT: TStringField
      FieldName = 'PISNT'
      Size = 5
    end
    object Cds_IndiceCOFINSNT: TStringField
      FieldName = 'COFINSNT'
      Size = 5
    end
    object Cds_IndiceMOSTRAENDENT: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'MOSTRAENDENT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMOSTRAENDCOM: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'MOSTRAENDCOM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMOSTRAENDCOB: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'MOSTRAENDCOB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMOSTRAFOTOCLI: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'MOSTRAFOTOCLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTITENDENT: TStringField
      FieldName = 'TITENDENT'
      Size = 15
    end
    object Cds_IndiceTITENDCOM: TStringField
      FieldName = 'TITENDCOM'
      Size = 15
    end
    object Cds_IndiceTITENDCOB: TStringField
      FieldName = 'TITENDCOB'
      Size = 15
    end
    object Cds_IndiceOUTINFCLI1: TStringField
      FieldName = 'OUTINFCLI1'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI2: TStringField
      FieldName = 'OUTINFCLI2'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI3: TStringField
      FieldName = 'OUTINFCLI3'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI4: TStringField
      FieldName = 'OUTINFCLI4'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI5: TStringField
      FieldName = 'OUTINFCLI5'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI6: TStringField
      FieldName = 'OUTINFCLI6'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI7: TStringField
      FieldName = 'OUTINFCLI7'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI8: TStringField
      FieldName = 'OUTINFCLI8'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI9: TStringField
      FieldName = 'OUTINFCLI9'
      Size = 25
    end
    object Cds_IndiceOUTINFCLI10: TStringField
      FieldName = 'OUTINFCLI10'
      Size = 25
    end
    object Cds_IndiceCSITR1: TSmallintField
      FieldName = 'CSITR1'
    end
    object Cds_IndiceCSITP1: TSmallintField
      FieldName = 'CSITP1'
    end
    object Cds_IndiceRDIRNFE: TStringField
      FieldName = 'RDIRNFE'
      Size = 150
    end
    object Cds_IndiceMOSTRAAPL: TStringField
      FieldName = 'MOSTRAAPL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMOSTRACODAUX: TStringField
      FieldName = 'MOSTRACODAUX'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceMOSTRAMARCA: TStringField
      FieldName = 'MOSTRAMARCA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceCAMINHO_ECF: TStringField
      FieldName = 'CAMINHO_ECF'
      Size = 200
    end
    object Cds_IndiceINICIOAGEDODIA: TTimeField
      FieldName = 'INICIOAGEDODIA'
    end
    object Cds_IndiceFIMAGEDODIA: TTimeField
      FieldName = 'FIMAGEDODIA'
    end
    object Cds_IndiceINTERVALOAGEDODIA: TTimeField
      FieldName = 'INTERVALOAGEDODIA'
    end
    object Cds_IndiceTIPOETIQ: TSmallintField
      FieldName = 'TIPOETIQ'
    end
    object Cds_IndiceCSITCLIBLOQ: TIntegerField
      FieldName = 'CSITCLIBLOQ'
    end
    object Cds_IndiceBLOQUEIACLI: TStringField
      FieldName = 'BLOQUEIACLI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceCSITCLIINAT: TIntegerField
      FieldName = 'CSITCLIINAT'
    end
    object Cds_IndiceBLOQCLIINA: TStringField
      FieldName = 'BLOQCLIINA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Indicensitcliinat: TStringField
      FieldKind = fkLookup
      FieldName = 'nsitcliinat'
      LookupDataSet = Cds_SituCadCli
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSITCLIINAT'
      Size = 40
      Lookup = True
    end
    object Cds_IndiceCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_IndiceTIPOQTDEECF: TIntegerField
      FieldName = 'TIPOQTDEECF'
    end
    object Cds_IndiceIMPCONCOMITANTE: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'IMPCONCOMITANTE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_IndiceTCLFINALIZA: TSmallintField
      FieldName = 'TCLFINALIZA'
    end
    object Cds_IndiceMOSTRAINFOFINADD: TSmallintField
      FieldName = 'MOSTRAINFOFINADD'
    end
    object Cds_IndiceCONTADOR_MULTPAGAR: TIntegerField
      FieldName = 'CONTADOR_MULTPAGAR'
    end
    object strngfldCds_IndiceORDEM_PRODUCAO: TStringField
      FieldName = 'ORDEM_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Indicechaveconsultacep: TStringField
      FieldName = 'chaveconsultacep'
      Size = 40
    end
  end
  object Dts_Indice: TDataSource
    DataSet = Cds_Indice
    Left = 395
    Top = 62
  end
  object ADO_Detalhe: TADOQuery
    Connection = ADO_Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from tabvenda v inner join tabitens i on i.itnumeronota' +
        ' = v.venumeronota')
    Left = 240
    Top = 1035
  end
  object ADO_Exec: TADOQuery
    Connection = ADO_Conexao
    Parameters = <>
    Left = 256
    Top = 1039
  end
  object Dbx_Exec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vprodutos order by descricao')
    SQLConnection = Sql_Dados
    Left = 800
    Top = 211
  end
  object Dbx_sVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from svenda')
    SQLConnection = Sql_Dados
    Left = 435
    Top = 14
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_sVendaPDESC: TFMTBCDField
      FieldName = 'PDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaGARANTIA: TMemoField
      FieldName = 'GARANTIA'
      BlobType = ftMemo
    end
    object Dbx_sVendaFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDIN: TFMTBCDField
      FieldName = 'DIN'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_sVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_sVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_sVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTITENS: TIntegerField
      FieldName = 'TOTITENS'
    end
    object Dbx_sVendaTOTBRUTO: TFMTBCDField
      FieldName = 'TOTBRUTO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTROAVIST: TFMTBCDField
      FieldName = 'OUTROAVIST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaPARC: TSmallintField
      FieldName = 'PARC'
    end
    object Dbx_sVendaJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 9
      Size = 2
    end
    object Dbx_sVendaNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Dbx_sVendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_sVendaCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_sVendaPRIPARC: TStringField
      FieldName = 'PRIPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaTOTE: TFMTBCDField
      FieldName = 'TOTE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Dbx_sVendaEM_CAIXA: TFMTBCDField
      FieldName = 'EM_CAIXA'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaCUSTOPECAS: TFMTBCDField
      FieldName = 'CUSTOPECAS'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaCUSTOPECAE: TFMTBCDField
      FieldName = 'CUSTOPECAE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Dbx_sVendaNCF: TIntegerField
      FieldName = 'NCF'
    end
    object Dbx_sVendaVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 60
    end
    object Dbx_sVendaCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 55
    end
    object Dbx_sVendaENDERECOST: TStringField
      FieldName = 'ENDERECOST'
      Size = 60
    end
    object Dbx_sVendaBAIRROST: TStringField
      FieldName = 'BAIRROST'
      Size = 40
    end
    object Dbx_sVendaFONEST: TStringField
      FieldName = 'FONEST'
    end
    object Dbx_sVendaMUNICIPIOST: TStringField
      FieldName = 'MUNICIPIOST'
      Size = 40
    end
    object Dbx_sVendaEMISSAOST: TDateField
      FieldName = 'EMISSAOST'
    end
    object Dbx_sVendaTOTALST: TFMTBCDField
      FieldName = 'TOTALST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOPERACAOST: TStringField
      FieldName = 'OPERACAOST'
      Size = 50
    end
    object Dbx_sVendaPAGAMENTOST: TStringField
      FieldName = 'PAGAMENTOST'
      Size = 2
    end
    object Dbx_sVendaVENCIMENTOST: TDateField
      FieldName = 'VENCIMENTOST'
    end
    object Dbx_sVendaTOTALPST: TFMTBCDField
      FieldName = 'TOTALPST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDESCONTOST: TFMTBCDField
      FieldName = 'DESCONTOST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDST: TStringField
      FieldName = 'DST'
      Size = 1
    end
    object Dbx_sVendaCONTATOST: TStringField
      FieldName = 'CONTATOST'
      Size = 60
    end
    object Dbx_sVendaCPFST: TStringField
      FieldName = 'CPFST'
      Size = 25
    end
    object Dbx_sVendaIEST: TStringField
      FieldName = 'IEST'
      Size = 25
    end
    object Dbx_sVendaOBSST: TMemoField
      FieldName = 'OBSST'
      BlobType = ftMemo
    end
    object Dbx_sVendaFECHADOST: TStringField
      FieldName = 'FECHADOST'
      Size = 1
    end
    object Dbx_sVendaRETORNOST: TDateField
      FieldName = 'RETORNOST'
    end
    object Dbx_sVendaHORAST: TTimeField
      FieldName = 'HORAST'
    end
    object Dbx_sVendaCUSTOST: TFMTBCDField
      FieldName = 'CUSTOST'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_sVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object Dbx_sVendaNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_sVendaTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
    end
    object Dbx_sVendaTIPOENT: TIntegerField
      FieldName = 'TIPOENT'
    end
    object Dbx_sVendaNUMORC: TIntegerField
      FieldName = 'NUMORC'
    end
    object Dbx_sVendaNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Dbx_sVendaABSDESC: TFMTBCDField
      FieldName = 'ABSDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTPAGAR: TFMTBCDField
      FieldName = 'TOTPAGAR'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTOTGPAGAR: TFMTBCDField
      FieldName = 'TOTGPAGAR'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object Dbx_sVendaVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object Dbx_sVendaRESUNI: TStringField
      FieldName = 'RESUNI'
      Size = 30
    end
    object Dbx_sVendaPRAZO_VALIDADE: TDateField
      FieldName = 'PRAZO_VALIDADE'
    end
    object Dbx_sVendaTOTGPRODD: TFMTBCDField
      FieldName = 'TOTGPRODD'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTPNF: TSmallintField
      FieldName = 'TPNF'
    end
    object Dbx_sVendaCNAT: TSmallintField
      FieldName = 'CNAT'
    end
    object Dbx_sVendaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALORICMS: TFMTBCDField
      FieldName = 'VALORICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaBASECALCICMSSUB: TFMTBCDField
      FieldName = 'BASECALCICMSSUB'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRICMSSUB: TFMTBCDField
      FieldName = 'VLRICMSSUB'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTDESP: TFMTBCDField
      FieldName = 'OUTDESP'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVLRTOTNF: TFMTBCDField
      FieldName = 'VLRTOTNF'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDADOSADICIONAIS: TMemoField
      FieldName = 'DADOSADICIONAIS'
      BlobType = ftMemo
    end
    object Dbx_sVendaQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object Dbx_sVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object Dbx_sVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object Dbx_sVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object Dbx_sVendaPESOB: TStringField
      FieldName = 'PESOB'
      Size = 15
    end
    object Dbx_sVendaPESOL: TStringField
      FieldName = 'PESOL'
      Size = 15
    end
    object Dbx_sVendaFRETEPOR: TStringField
      FieldName = 'FRETEPOR'
      Size = 1
    end
    object Dbx_sVendaPLACAVEI: TStringField
      FieldName = 'PLACAVEI'
      Size = 10
    end
    object Dbx_sVendaUFVEI: TStringField
      FieldName = 'UFVEI'
      Size = 2
    end
    object Dbx_sVendaVLRDUP1: TFMTBCDField
      FieldName = 'VLRDUP1'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP1: TDateField
      FieldName = 'VCTDUP1'
    end
    object Dbx_sVendaVLRDUP2: TFMTBCDField
      FieldName = 'VLRDUP2'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP2: TDateField
      FieldName = 'VCTDUP2'
    end
    object Dbx_sVendaVLRDUP3: TFMTBCDField
      FieldName = 'VLRDUP3'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP3: TDateField
      FieldName = 'VCTDUP3'
    end
    object Dbx_sVendaVLRDUP4: TFMTBCDField
      FieldName = 'VLRDUP4'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVCTDUP4: TDateField
      FieldName = 'VCTDUP4'
    end
    object Dbx_sVendaFRETEP: TSmallintField
      FieldName = 'FRETEP'
    end
    object Dbx_sVendaDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Dbx_sVendaDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Dbx_sVendaDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Dbx_sVendaDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Dbx_sVendaDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Dbx_sVendaDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Dbx_sVendaDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Dbx_sVendaDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Dbx_sVendaCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Dbx_sVendaIMPDESTQCONT: TStringField
      FieldName = 'IMPDESTQCONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaNUMDUP1: TStringField
      FieldName = 'NUMDUP1'
      Size = 12
    end
    object Dbx_sVendaNUMDUP2: TStringField
      FieldName = 'NUMDUP2'
      Size = 12
    end
    object Dbx_sVendaNUMDUP3: TStringField
      FieldName = 'NUMDUP3'
      Size = 12
    end
    object Dbx_sVendaNUMDUP4: TStringField
      FieldName = 'NUMDUP4'
      Size = 12
    end
    object Dbx_sVendaPRAZO1: TSmallintField
      FieldName = 'PRAZO1'
    end
    object Dbx_sVendaPRAZO2: TSmallintField
      FieldName = 'PRAZO2'
    end
    object Dbx_sVendaPRAZO3: TSmallintField
      FieldName = 'PRAZO3'
    end
    object Dbx_sVendaPRAZO4: TSmallintField
      FieldName = 'PRAZO4'
    end
    object Dbx_sVendaLANCADO: TStringField
      FieldName = 'LANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Dbx_sVendaPDESC_P: TFMTBCDField
      FieldName = 'PDESC_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALDESC_P: TFMTBCDField
      FieldName = 'VALDESC_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaLIQUIDO_P: TFMTBCDField
      FieldName = 'LIQUIDO_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDIN_P: TFMTBCDField
      FieldName = 'DIN_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTROCO_P: TFMTBCDField
      FieldName = 'TROCO_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTROAVIST_P: TFMTBCDField
      FieldName = 'OUTROAVIST_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaPARC_P: TSmallintField
      FieldName = 'PARC_P'
    end
    object Dbx_sVendaJUROS_P: TBCDField
      FieldName = 'JUROS_P'
      Precision = 9
      Size = 2
    end
    object Dbx_sVendaPRIPARC_P: TStringField
      FieldName = 'PRIPARC_P'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaPDESC_O: TFMTBCDField
      FieldName = 'PDESC_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaVALDESC_O: TFMTBCDField
      FieldName = 'VALDESC_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaLIQUIDO_O: TFMTBCDField
      FieldName = 'LIQUIDO_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaDIN_O: TFMTBCDField
      FieldName = 'DIN_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaTROCO_O: TFMTBCDField
      FieldName = 'TROCO_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOUTROAVIST_O: TFMTBCDField
      FieldName = 'OUTROAVIST_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaPARC_O: TSmallintField
      FieldName = 'PARC_O'
    end
    object Dbx_sVendaJUROS_O: TBCDField
      FieldName = 'JUROS_O'
      Precision = 9
      Size = 2
    end
    object Dbx_sVendaPRIPARC_O: TStringField
      FieldName = 'PRIPARC_O'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Dbx_sVendaID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Dbx_sVendaID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Dbx_sVendaDESC1: TStringField
      FieldName = 'DESC1'
      Size = 40
    end
    object Dbx_sVendaDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object Dbx_sVendaDESC3: TStringField
      FieldName = 'DESC3'
      Size = 40
    end
    object Dbx_sVendaDESC4: TStringField
      FieldName = 'DESC4'
      Size = 40
    end
    object Dbx_sVendaDESC5: TStringField
      FieldName = 'DESC5'
      Size = 40
    end
    object Dbx_sVendaDESC6: TStringField
      FieldName = 'DESC6'
      Size = 40
    end
    object Dbx_sVendaDESC7: TStringField
      FieldName = 'DESC7'
      Size = 40
    end
    object Dbx_sVendaDESC8: TStringField
      FieldName = 'DESC8'
      Size = 40
    end
    object Dbx_sVendaDESC9: TStringField
      FieldName = 'DESC9'
      Size = 40
    end
    object Dbx_sVendaDESC10: TStringField
      FieldName = 'DESC10'
      Size = 40
    end
    object Dbx_sVendaDESC11: TStringField
      FieldName = 'DESC11'
      Size = 40
    end
    object Dbx_sVendaDESC12: TStringField
      FieldName = 'DESC12'
      Size = 40
    end
    object Dbx_sVendaDESC13: TStringField
      FieldName = 'DESC13'
      Size = 40
    end
    object Dbx_sVendaDESC14: TStringField
      FieldName = 'DESC14'
      Size = 40
    end
    object Dbx_sVendaDESC15: TStringField
      FieldName = 'DESC15'
      Size = 40
    end
    object Dbx_sVendaDESC16: TStringField
      FieldName = 'DESC16'
      Size = 40
    end
    object Dbx_sVendaDESC17: TStringField
      FieldName = 'DESC17'
      Size = 40
    end
    object Dbx_sVendaDESC18: TStringField
      FieldName = 'DESC18'
      Size = 40
    end
    object Dbx_sVendaDESC19: TStringField
      FieldName = 'DESC19'
      Size = 40
    end
    object Dbx_sVendaDESC20: TStringField
      FieldName = 'DESC20'
      Size = 40
    end
    object Dbx_sVendaDESC21: TStringField
      FieldName = 'DESC21'
      Size = 40
    end
    object Dbx_sVendaDESC22: TStringField
      FieldName = 'DESC22'
      Size = 40
    end
    object Dbx_sVendaDESC23: TStringField
      FieldName = 'DESC23'
      Size = 40
    end
    object Dbx_sVendaDESC24: TStringField
      FieldName = 'DESC24'
      Size = 40
    end
    object Dbx_sVendaDESC25: TStringField
      FieldName = 'DESC25'
      Size = 40
    end
    object Dbx_sVendaDESC26: TStringField
      FieldName = 'DESC26'
      Size = 40
    end
    object Dbx_sVendaDESC27: TStringField
      FieldName = 'DESC27'
      Size = 40
    end
    object Dbx_sVendaDESC28: TStringField
      FieldName = 'DESC28'
      Size = 40
    end
    object Dbx_sVendaDESC29: TStringField
      FieldName = 'DESC29'
      Size = 40
    end
    object Dbx_sVendaDESC30: TStringField
      FieldName = 'DESC30'
      Size = 40
    end
    object Dbx_sVendaDESC31: TStringField
      FieldName = 'DESC31'
      Size = 40
    end
    object Dbx_sVendaDESC32: TStringField
      FieldName = 'DESC32'
      Size = 40
    end
    object Dbx_sVendaDESC33: TStringField
      FieldName = 'DESC33'
      Size = 40
    end
    object Dbx_sVendaDESC34: TStringField
      FieldName = 'DESC34'
      Size = 40
    end
    object Dbx_sVendaDESC35: TStringField
      FieldName = 'DESC35'
      Size = 40
    end
    object Dbx_sVendaDESC36: TStringField
      FieldName = 'DESC36'
      Size = 40
    end
    object Dbx_sVendaDESC37: TStringField
      FieldName = 'DESC37'
      Size = 40
    end
    object Dbx_sVendaDESC38: TStringField
      FieldName = 'DESC38'
      Size = 40
    end
    object Dbx_sVendaNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Dbx_sVendaCFUNREB: TIntegerField
      FieldName = 'CFUNREB'
    end
    object Dbx_sVendaCFUNCON: TIntegerField
      FieldName = 'CFUNCON'
    end
    object Dbx_sVendaRETPOR: TStringField
      FieldName = 'RETPOR'
    end
    object Dbx_sVendaAUTPOR: TStringField
      FieldName = 'AUTPOR'
    end
    object Dbx_sVendaCFUNENT: TIntegerField
      FieldName = 'CFUNENT'
    end
    object Dbx_sVendaSINAL: TFMTBCDField
      FieldName = 'SINAL'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaACRESCIMO_P: TFMTBCDField
      FieldName = 'ACRESCIMO_P'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaACRESCIMO_O: TFMTBCDField
      FieldName = 'ACRESCIMO_O'
      Precision = 18
      Size = 2
    end
    object Dbx_sVendaOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaOBS1: TMemoField
      FieldName = 'OBS1'
      BlobType = ftMemo
    end
    object Dbx_sVendaOBS2: TMemoField
      FieldName = 'OBS2'
      BlobType = ftMemo
    end
    object Dbx_sVendaTPO: TSmallintField
      FieldName = 'TPO'
    end
    object Dbx_sVendaHRCAD: TStringField
      FieldName = 'HRCAD'
      Size = 5
    end
    object Dbx_sVendaHRFEC: TStringField
      FieldName = 'HRFEC'
      Size = 5
    end
    object Dbx_sVendaMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Dbx_sVendaECFLANCADO: TStringField
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_sVendaIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Dbx_sVendaNCUPOMF: TIntegerField
      FieldName = 'NCUPOMF'
    end
    object Dbx_sVendaST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object Dbx_sVendaCMAT_RESTAURAR: TIntegerField
      FieldName = 'CMAT_RESTAURAR'
    end
    object Dbx_sVendaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_sVendaCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Dbx_sVendaTIPO_COBERTURA: TIntegerField
      FieldName = 'TIPO_COBERTURA'
    end
    object Dbx_sVendaDATATIPO1: TSQLTimeStampField
      FieldName = 'DATATIPO1'
    end
    object Dbx_sVendaDATATIPO2: TSQLTimeStampField
      FieldName = 'DATATIPO2'
    end
    object Dbx_sVendaDATATIPO3: TSQLTimeStampField
      FieldName = 'DATATIPO3'
    end
    object Dbx_sVendaDATATIPO4: TSQLTimeStampField
      FieldName = 'DATATIPO4'
    end
    object Dbx_sVendaDATATIPO5: TSQLTimeStampField
      FieldName = 'DATATIPO5'
    end
    object Dbx_sVendaDATATIPO6: TSQLTimeStampField
      FieldName = 'DATATIPO6'
    end
    object Dbx_sVendaDATATIPO7: TSQLTimeStampField
      FieldName = 'DATATIPO7'
    end
    object Dbx_sVendaDATATIPO8: TSQLTimeStampField
      FieldName = 'DATATIPO8'
    end
    object Dbx_sVendaDATATIPO9: TSQLTimeStampField
      FieldName = 'DATATIPO9'
    end
    object Dbx_sVendaDATATIPO10: TSQLTimeStampField
      FieldName = 'DATATIPO10'
    end
    object Dbx_sVendaDATASITU1: TSQLTimeStampField
      FieldName = 'DATASITU1'
    end
    object Dbx_sVendaDATASITU2: TSQLTimeStampField
      FieldName = 'DATASITU2'
    end
    object Dbx_sVendaDATASITU3: TSQLTimeStampField
      FieldName = 'DATASITU3'
    end
    object Dbx_sVendaDATASITU4: TSQLTimeStampField
      FieldName = 'DATASITU4'
    end
    object Dbx_sVendaDATASITU5: TSQLTimeStampField
      FieldName = 'DATASITU5'
    end
    object Dbx_sVendaDATASITU6: TSQLTimeStampField
      FieldName = 'DATASITU6'
    end
    object Dbx_sVendaDATASITU7: TSQLTimeStampField
      FieldName = 'DATASITU7'
    end
    object Dbx_sVendaDATASITU8: TSQLTimeStampField
      FieldName = 'DATASITU8'
    end
    object Dbx_sVendaDATASITU9: TSQLTimeStampField
      FieldName = 'DATASITU9'
    end
    object Dbx_sVendaDATASITU10: TSQLTimeStampField
      FieldName = 'DATASITU10'
    end
    object Dbx_sVendaNORC: TIntegerField
      FieldName = 'NORC'
    end
    object Dbx_sVendaCUSUB: TIntegerField
      FieldName = 'CUSUB'
    end
    object Dbx_sVendaCUSUMA: TIntegerField
      FieldName = 'CUSUMA'
    end
    object Dbx_sVendaIDTERMINAL: TIntegerField
      FieldName = 'IDTERMINAL'
    end
    object Dbx_sVendaCCONDPGTO: TIntegerField
      FieldName = 'CCONDPGTO'
    end
  end
  object Dsp_sVenda: TDataSetProvider
    DataSet = Dbx_sVenda
    UpdateMode = upWhereKeyOnly
    Left = 451
    Top = 30
  end
  object Cds_sVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_sVenda'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_sVendaBeforePost
    AfterPost = Cds_sVendaAfterPost
    BeforeDelete = Cds_sVendaBeforeDelete
    AfterDelete = Cds_sVendaAfterDelete
    OnCalcFields = Cds_sVendaCalcFields
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 467
    Top = 46
    object IntegerField16: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'N'#186' Pedido'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_sVendaPDESC: TFMTBCDField
      FieldName = 'PDESC'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaGARANTIA: TMemoField
      FieldName = 'GARANTIA'
      BlobType = ftMemo
    end
    object Cds_sVendaFRETE: TFMTBCDField
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDIN: TFMTBCDField
      FieldName = 'DIN'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_sVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_sVendaTROCO: TFMTBCDField
      FieldName = 'TROCO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTITENS: TIntegerField
      FieldName = 'TOTITENS'
    end
    object Cds_sVendaTOTBRUTO: TFMTBCDField
      FieldName = 'TOTBRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTROAVIST: TFMTBCDField
      FieldName = 'OUTROAVIST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaPARC: TSmallintField
      FieldName = 'PARC'
    end
    object Cds_sVendaJUROS: TBCDField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_sVendaNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Cds_sVendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_sVendaCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Cds_sVendaPRIPARC: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PRIPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaTOTE: TFMTBCDField
      FieldName = 'TOTE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDATACAD: TDateField
      FieldName = 'DATACAD'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaEM_CAIXA: TFMTBCDField
      FieldName = 'EM_CAIXA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaCUSTOPECAS: TFMTBCDField
      FieldName = 'CUSTOPECAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaCUSTOPECAE: TFMTBCDField
      FieldName = 'CUSTOPECAE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object Cds_sVendaNCF: TIntegerField
      FieldName = 'NCF'
    end
    object Cds_sVendaVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 60
    end
    object Cds_sVendaCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 55
    end
    object Cds_sVendaENDERECOST: TStringField
      FieldName = 'ENDERECOST'
      Size = 60
    end
    object Cds_sVendaBAIRROST: TStringField
      FieldName = 'BAIRROST'
      Size = 40
    end
    object Cds_sVendaFONEST: TStringField
      FieldName = 'FONEST'
    end
    object Cds_sVendaMUNICIPIOST: TStringField
      FieldName = 'MUNICIPIOST'
      Size = 40
    end
    object Cds_sVendaEMISSAOST: TDateField
      FieldName = 'EMISSAOST'
    end
    object Cds_sVendaTOTALST: TFMTBCDField
      FieldName = 'TOTALST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOPERACAOST: TStringField
      FieldName = 'OPERACAOST'
      Size = 50
    end
    object Cds_sVendaPAGAMENTOST: TStringField
      FieldName = 'PAGAMENTOST'
      Size = 2
    end
    object Cds_sVendaVENCIMENTOST: TDateField
      FieldName = 'VENCIMENTOST'
    end
    object Cds_sVendaTOTALPST: TFMTBCDField
      FieldName = 'TOTALPST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDESCONTOST: TFMTBCDField
      FieldName = 'DESCONTOST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDST: TStringField
      FieldName = 'DST'
      Size = 1
    end
    object Cds_sVendaCONTATOST: TStringField
      FieldName = 'CONTATOST'
      Size = 60
    end
    object Cds_sVendaCPFST: TStringField
      FieldName = 'CPFST'
      Size = 25
    end
    object Cds_sVendaIEST: TStringField
      FieldName = 'IEST'
      Size = 25
    end
    object Cds_sVendaOBSST: TMemoField
      FieldName = 'OBSST'
      BlobType = ftMemo
    end
    object Cds_sVendaFECHADOST: TStringField
      FieldName = 'FECHADOST'
      Size = 1
    end
    object Cds_sVendaRETORNOST: TDateField
      FieldName = 'RETORNOST'
      DisplayFormat = '###,###,##0.00'
    end
    object Cds_sVendaHORAST: TTimeField
      FieldName = 'HORAST'
    end
    object Cds_sVendaCUSTOST: TFMTBCDField
      FieldName = 'CUSTOST'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_sVendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object Cds_sVendaNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_sVendaTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
    end
    object Cds_sVendaTIPOENT: TIntegerField
      FieldName = 'TIPOENT'
    end
    object Cds_sVendaNUMORC: TIntegerField
      FieldName = 'NUMORC'
    end
    object Cds_sVendaNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Cds_sVendaABSDESC: TFMTBCDField
      FieldName = 'ABSDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendancli: TStringField
      FieldKind = fkLookup
      FieldName = 'ncli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CCLI'
      Size = 50
      Lookup = True
    end
    object Cds_sVendanfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 50
      Lookup = True
    end
    object Cds_sVendanrep: TStringField
      FieldKind = fkLookup
      FieldName = 'nrep'
      LookupDataSet = Cds_Representantes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CREP'
      Size = 50
      Lookup = True
    end
    object Cds_sVendaTOTPAGAR: TFMTBCDField
      FieldName = 'TOTPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTOTGPAGAR: TFMTBCDField
      FieldName = 'TOTGPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaSAIDA: TDateField
      FieldName = 'SAIDA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object Cds_sVendaRESUNI: TStringField
      FieldName = 'RESUNI'
      Size = 30
    end
    object Cds_sVendaPRAZO_VALIDADE: TDateField
      FieldName = 'PRAZO_VALIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaTOTGPRODD: TFMTBCDField
      FieldName = 'TOTGPRODD'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTPNF: TSmallintField
      FieldName = 'TPNF'
    end
    object Cds_sVendaCNAT: TSmallintField
      FieldName = 'CNAT'
    end
    object Cds_sVendaBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALORICMS: TFMTBCDField
      FieldName = 'VALORICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaBASECALCICMSSUB: TFMTBCDField
      FieldName = 'BASECALCICMSSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRICMSSUB: TFMTBCDField
      FieldName = 'VLRICMSSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTDESP: TFMTBCDField
      FieldName = 'OUTDESP'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVLRTOTNF: TFMTBCDField
      FieldName = 'VLRTOTNF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDADOSADICIONAIS: TMemoField
      FieldName = 'DADOSADICIONAIS'
      BlobType = ftMemo
    end
    object Cds_sVendaQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object Cds_sVendaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object Cds_sVendaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object Cds_sVendaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object Cds_sVendaPESOB: TStringField
      FieldName = 'PESOB'
      Size = 15
    end
    object Cds_sVendaPESOL: TStringField
      FieldName = 'PESOL'
      Size = 15
    end
    object Cds_sVendaFRETEPOR: TStringField
      FieldName = 'FRETEPOR'
      Size = 1
    end
    object Cds_sVendaPLACAVEI: TStringField
      FieldName = 'PLACAVEI'
      Size = 10
    end
    object Cds_sVendaUFVEI: TStringField
      FieldName = 'UFVEI'
      Size = 2
    end
    object Cds_sVendanatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = Cds_NatOp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CNAT'
      Size = 40
      Lookup = True
    end
    object Cds_sVendacfop: TStringField
      FieldKind = fkLookup
      FieldName = 'cfop'
      LookupDataSet = Cds_NatOp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CFOP'
      KeyFields = 'CNAT'
      Size = 6
      Lookup = True
    end
    object Cds_sVendaVLRDUP1: TFMTBCDField
      FieldName = 'VLRDUP1'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP1: TDateField
      FieldName = 'VCTDUP1'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVLRDUP2: TFMTBCDField
      FieldName = 'VLRDUP2'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP2: TDateField
      FieldName = 'VCTDUP2'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVLRDUP3: TFMTBCDField
      FieldName = 'VLRDUP3'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP3: TDateField
      FieldName = 'VCTDUP3'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaVLRDUP4: TFMTBCDField
      FieldName = 'VLRDUP4'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVCTDUP4: TDateField
      FieldName = 'VCTDUP4'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_sVendaFRETEP: TSmallintField
      FieldName = 'FRETEP'
    end
    object Cds_sVendaDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Cds_sVendaDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Cds_sVendaDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Cds_sVendaDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Cds_sVendaDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Cds_sVendaDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Cds_sVendaDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Cds_sVendaDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Cds_sVendaCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Cds_sVendantransp: TStringField
      FieldKind = fkLookup
      FieldName = 'ntransp'
      LookupDataSet = Cds_Transportadores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CTRANSP'
      Size = 80
      Lookup = True
    end
    object Cds_sVendaIMPDESTQCONT: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'IMPDESTQCONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaNUMDUP1: TStringField
      FieldName = 'NUMDUP1'
      Size = 12
    end
    object Cds_sVendaNUMDUP2: TStringField
      FieldName = 'NUMDUP2'
      Size = 12
    end
    object Cds_sVendaNUMDUP3: TStringField
      FieldName = 'NUMDUP3'
      Size = 12
    end
    object Cds_sVendaNUMDUP4: TStringField
      FieldName = 'NUMDUP4'
      Size = 12
    end
    object Cds_sVendaPRAZO1: TSmallintField
      FieldName = 'PRAZO1'
    end
    object Cds_sVendaPRAZO2: TSmallintField
      FieldName = 'PRAZO2'
    end
    object Cds_sVendaPRAZO3: TSmallintField
      FieldName = 'PRAZO3'
    end
    object Cds_sVendaPRAZO4: TSmallintField
      FieldName = 'PRAZO4'
    end
    object Cds_sVendacbccli: TIntegerField
      FieldKind = fkLookup
      FieldName = 'cbccli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CCLI'
      Lookup = True
    end
    object Cds_sVendacbcfun: TIntegerField
      FieldKind = fkLookup
      FieldName = 'cbcfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CFUN'
      Lookup = True
    end
    object Cds_sVendacbcrep: TIntegerField
      FieldKind = fkLookup
      FieldName = 'cbcrep'
      LookupDataSet = Cds_Representantes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CREP'
      Lookup = True
    end
    object Cds_sVendacbt: TStringField
      FieldKind = fkLookup
      FieldName = 'cbt'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CCLI'
      Size = 10
      Lookup = True
    end
    object Cds_sVendanfant: TStringField
      FieldKind = fkLookup
      FieldName = 'nfant'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'CCLI'
      Size = 60
      Lookup = True
    end
    object Cds_sVendaLANCADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'LANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Cds_sVendaPDESC_P: TFMTBCDField
      FieldName = 'PDESC_P'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALDESC_P: TFMTBCDField
      FieldName = 'VALDESC_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaLIQUIDO_P: TFMTBCDField
      FieldName = 'LIQUIDO_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDIN_P: TFMTBCDField
      FieldName = 'DIN_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTROCO_P: TFMTBCDField
      FieldName = 'TROCO_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTROAVIST_P: TFMTBCDField
      FieldName = 'OUTROAVIST_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaPARC_P: TSmallintField
      FieldName = 'PARC_P'
    end
    object Cds_sVendaJUROS_P: TBCDField
      FieldName = 'JUROS_P'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_sVendaPRIPARC_P: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PRIPARC_P'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaPDESC_O: TFMTBCDField
      FieldName = 'PDESC_O'
      DisplayFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaVALDESC_O: TFMTBCDField
      FieldName = 'VALDESC_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaLIQUIDO_O: TFMTBCDField
      FieldName = 'LIQUIDO_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaDIN_O: TFMTBCDField
      FieldName = 'DIN_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaTROCO_O: TFMTBCDField
      FieldName = 'TROCO_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOUTROAVIST_O: TFMTBCDField
      FieldName = 'OUTROAVIST_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaPARC_O: TSmallintField
      FieldName = 'PARC_O'
    end
    object Cds_sVendaJUROS_O: TBCDField
      FieldName = 'JUROS_O'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_sVendaPRIPARC_O: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PRIPARC_O'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Cds_sVendatotg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totg'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_sVendaID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Cds_sVendaID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Cds_sVendaDESC1: TStringField
      FieldName = 'DESC1'
      Size = 40
    end
    object Cds_sVendaDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object Cds_sVendaDESC3: TStringField
      FieldName = 'DESC3'
      Size = 40
    end
    object Cds_sVendaDESC4: TStringField
      FieldName = 'DESC4'
      Size = 40
    end
    object Cds_sVendaDESC5: TStringField
      FieldName = 'DESC5'
      Size = 40
    end
    object Cds_sVendaDESC6: TStringField
      FieldName = 'DESC6'
      Size = 40
    end
    object Cds_sVendaDESC7: TStringField
      FieldName = 'DESC7'
      Size = 40
    end
    object Cds_sVendaDESC8: TStringField
      FieldName = 'DESC8'
      Size = 40
    end
    object Cds_sVendaDESC9: TStringField
      FieldName = 'DESC9'
      Size = 40
    end
    object Cds_sVendaDESC10: TStringField
      FieldName = 'DESC10'
      Size = 40
    end
    object Cds_sVendaDESC11: TStringField
      FieldName = 'DESC11'
      Size = 40
    end
    object Cds_sVendaDESC12: TStringField
      FieldName = 'DESC12'
      Size = 40
    end
    object Cds_sVendaDESC13: TStringField
      FieldName = 'DESC13'
      Size = 40
    end
    object Cds_sVendaDESC14: TStringField
      FieldName = 'DESC14'
      Size = 40
    end
    object Cds_sVendaDESC15: TStringField
      FieldName = 'DESC15'
      Size = 40
    end
    object Cds_sVendaDESC16: TStringField
      FieldName = 'DESC16'
      Size = 40
    end
    object Cds_sVendaDESC17: TStringField
      FieldName = 'DESC17'
      Size = 40
    end
    object Cds_sVendaDESC18: TStringField
      FieldName = 'DESC18'
      Size = 40
    end
    object Cds_sVendaDESC19: TStringField
      FieldName = 'DESC19'
      Size = 40
    end
    object Cds_sVendaDESC20: TStringField
      FieldName = 'DESC20'
      Size = 40
    end
    object Cds_sVendaDESC21: TStringField
      FieldName = 'DESC21'
      Size = 40
    end
    object Cds_sVendaDESC22: TStringField
      FieldName = 'DESC22'
      Size = 40
    end
    object Cds_sVendaDESC23: TStringField
      FieldName = 'DESC23'
      Size = 40
    end
    object Cds_sVendaDESC24: TStringField
      FieldName = 'DESC24'
      Size = 40
    end
    object Cds_sVendaDESC25: TStringField
      FieldName = 'DESC25'
      Size = 40
    end
    object Cds_sVendaDESC26: TStringField
      FieldName = 'DESC26'
      Size = 40
    end
    object Cds_sVendaDESC27: TStringField
      FieldName = 'DESC27'
      Size = 40
    end
    object Cds_sVendaDESC28: TStringField
      FieldName = 'DESC28'
      Size = 40
    end
    object Cds_sVendaDESC29: TStringField
      FieldName = 'DESC29'
      Size = 40
    end
    object Cds_sVendaDESC30: TStringField
      FieldName = 'DESC30'
      Size = 40
    end
    object Cds_sVendaDESC31: TStringField
      FieldName = 'DESC31'
      Size = 40
    end
    object Cds_sVendaDESC32: TStringField
      FieldName = 'DESC32'
      Size = 40
    end
    object Cds_sVendaDESC33: TStringField
      FieldName = 'DESC33'
      Size = 40
    end
    object Cds_sVendaDESC34: TStringField
      FieldName = 'DESC34'
      Size = 40
    end
    object Cds_sVendaDESC35: TStringField
      FieldName = 'DESC35'
      Size = 40
    end
    object Cds_sVendaDESC36: TStringField
      FieldName = 'DESC36'
      Size = 40
    end
    object Cds_sVendaDESC37: TStringField
      FieldName = 'DESC37'
      Size = 40
    end
    object Cds_sVendaDESC38: TStringField
      FieldName = 'DESC38'
      Size = 40
    end
    object Cds_sVendaNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Cds_sVendaCFUNREB: TIntegerField
      FieldName = 'CFUNREB'
    end
    object Cds_sVendaCFUNCON: TIntegerField
      FieldName = 'CFUNCON'
    end
    object Cds_sVendaRETPOR: TStringField
      FieldName = 'RETPOR'
    end
    object Cds_sVendaAUTPOR: TStringField
      FieldName = 'AUTPOR'
    end
    object Cds_sVendaCFUNENT: TIntegerField
      FieldName = 'CFUNENT'
    end
    object Cds_sVendaSINAL: TFMTBCDField
      FieldName = 'SINAL'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaACRESCIMO_P: TFMTBCDField
      FieldName = 'ACRESCIMO_P'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaACRESCIMO_O: TFMTBCDField
      FieldName = 'ACRESCIMO_O'
      Precision = 18
      Size = 2
    end
    object Cds_sVendaOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaOBS1: TMemoField
      FieldName = 'OBS1'
      BlobType = ftMemo
    end
    object Cds_sVendaOBS2: TMemoField
      FieldName = 'OBS2'
      BlobType = ftMemo
    end
    object Cds_sVendaTPO: TSmallintField
      FieldName = 'TPO'
    end
    object Cds_sVendaftotm: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ftotm'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_sVendaftotp: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ftotp'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_sVendaHRCAD: TStringField
      FieldName = 'HRCAD'
      Size = 5
    end
    object Cds_sVendaHRFEC: TStringField
      FieldName = 'HRFEC'
      Size = 5
    end
    object Cds_sVendaMAQUINA: TStringField
      FieldName = 'MAQUINA'
    end
    object Cds_sVendaECFLANCADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ECFLANCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_sVendaIDMAQ: TIntegerField
      FieldName = 'IDMAQ'
    end
    object Cds_sVendaNCUPOMF: TIntegerField
      FieldName = 'NCUPOMF'
    end
    object Cds_sVendaST: TStringField
      FieldName = 'ST'
      Size = 1
    end
    object Cds_sVendaftotc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ftotc'
      Calculated = True
    end
    object Cds_sVendaCMAT_RESTAURAR: TIntegerField
      FieldName = 'CMAT_RESTAURAR'
    end
    object Cds_sVendaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_sVendaCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Cds_sVendaTIPO_COBERTURA: TIntegerField
      FieldName = 'TIPO_COBERTURA'
    end
    object Cds_sVendaDATATIPO1: TSQLTimeStampField
      FieldName = 'DATATIPO1'
    end
    object Cds_sVendaDATATIPO2: TSQLTimeStampField
      FieldName = 'DATATIPO2'
    end
    object Cds_sVendaDATATIPO3: TSQLTimeStampField
      FieldName = 'DATATIPO3'
    end
    object Cds_sVendaDATATIPO4: TSQLTimeStampField
      FieldName = 'DATATIPO4'
    end
    object Cds_sVendaDATATIPO5: TSQLTimeStampField
      FieldName = 'DATATIPO5'
    end
    object Cds_sVendaDATATIPO6: TSQLTimeStampField
      FieldName = 'DATATIPO6'
    end
    object Cds_sVendaDATATIPO7: TSQLTimeStampField
      FieldName = 'DATATIPO7'
    end
    object Cds_sVendaDATATIPO8: TSQLTimeStampField
      FieldName = 'DATATIPO8'
    end
    object Cds_sVendaDATATIPO9: TSQLTimeStampField
      FieldName = 'DATATIPO9'
    end
    object Cds_sVendaDATATIPO10: TSQLTimeStampField
      FieldName = 'DATATIPO10'
    end
    object Cds_sVendaDATASITU1: TSQLTimeStampField
      FieldName = 'DATASITU1'
    end
    object Cds_sVendaDATASITU2: TSQLTimeStampField
      FieldName = 'DATASITU2'
    end
    object Cds_sVendaDATASITU3: TSQLTimeStampField
      FieldName = 'DATASITU3'
    end
    object Cds_sVendaDATASITU4: TSQLTimeStampField
      FieldName = 'DATASITU4'
    end
    object Cds_sVendaDATASITU5: TSQLTimeStampField
      FieldName = 'DATASITU5'
    end
    object Cds_sVendaDATASITU6: TSQLTimeStampField
      FieldName = 'DATASITU6'
    end
    object Cds_sVendaDATASITU7: TSQLTimeStampField
      FieldName = 'DATASITU7'
    end
    object Cds_sVendaDATASITU8: TSQLTimeStampField
      FieldName = 'DATASITU8'
    end
    object Cds_sVendaDATASITU9: TSQLTimeStampField
      FieldName = 'DATASITU9'
    end
    object Cds_sVendaDATASITU10: TSQLTimeStampField
      FieldName = 'DATASITU10'
    end
    object Cds_sVendaNORC: TIntegerField
      FieldName = 'NORC'
    end
    object Cds_sVendaCUSUB: TIntegerField
      FieldName = 'CUSUB'
    end
    object Cds_sVendaCUSUMA: TIntegerField
      FieldName = 'CUSUMA'
    end
    object Cds_sVendaIDTERMINAL: TIntegerField
      FieldName = 'IDTERMINAL'
    end
    object Cds_sVendancusub: TStringField
      FieldKind = fkLookup
      FieldName = 'ncusub'
      LookupDataSet = Cds_Usuarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CUSUB'
      Size = 40
      Lookup = True
    end
    object Cds_sVendaCCONDPGTO: TIntegerField
      FieldName = 'CCONDPGTO'
    end
    object Cds_sVendancondpgto: TIntegerField
      FieldKind = fkLookup
      FieldName = 'ncondpgto'
      LookupDataSet = cds_cond_pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCONDPGTO'
      Lookup = True
    end
  end
  object Dts_sVenda: TDataSource
    DataSet = Cds_sVenda
    OnDataChange = Dts_sVendaDataChange
    Left = 483
    Top = 62
  end
  object Dbx_Produtos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from produtos')
    SQLConnection = Sql_Dados
    Left = 627
    Top = 14
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object Dbx_ProdutosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Produtos: TDataSetProvider
    DataSet = Dbx_Produtos
    UpdateMode = upWhereKeyOnly
    Left = 643
    Top = 30
  end
  object Cds_Produtos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Produtos'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_ProdutosAfterPost
    AfterScroll = Cds_ProdutosAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 659
    Top = 46
    object IntegerField18: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object Cds_ProdutosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_Produtos: TDataSource
    DataSet = Cds_Produtos
    Left = 675
    Top = 62
  end
  object Dbx_dProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select * from dProdutos d inner join Produtos p on d.cdescprod =' +
        ' p.codigo')
    SQLConnection = Sql_Dados
    Left = 723
    Top = 14
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_dProdutosCDESCPROD: TIntegerField
      FieldName = 'CDESCPROD'
    end
    object Dbx_dProdutosPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosPER: TBCDField
      FieldName = 'PER'
      Precision = 4
      Size = 2
    end
    object Dbx_dProdutosPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Dbx_dProdutosQUA: TFMTBCDField
      FieldName = 'QUA'
      Precision = 18
      Size = 3
    end
    object Dbx_dProdutosCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Dbx_dProdutosCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Dbx_dProdutosCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Dbx_dProdutosQTDEMB: TBCDField
      FieldName = 'QTDEMB'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object Dbx_dProdutosCAUX: TStringField
      FieldName = 'CAUX'
    end
    object Dbx_dProdutosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_dProdutosCFAB: TStringField
      FieldName = 'CFAB'
      Size = 15
    end
    object Dbx_dProdutosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 3
    end
    object Dbx_dProdutosESTMIN: TBCDField
      FieldName = 'ESTMIN'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosESTMAX: TBCDField
      FieldName = 'ESTMAX'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 3
    end
    object Dbx_dProdutosOUTIMPOST: TFMTBCDField
      FieldName = 'OUTIMPOST'
      Precision = 18
      Size = 3
    end
    object Dbx_dProdutosRESERVA: TFMTBCDField
      FieldName = 'RESERVA'
      Precision = 18
      Size = 3
    end
    object Dbx_dProdutosSALDOEST: TBCDField
      FieldName = 'SALDOEST'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosMESCLADO: TStringField
      FieldName = 'MESCLADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dProdutosVALKM: TStringField
      FieldName = 'VALKM'
      Size = 10
    end
    object Dbx_dProdutosVALDATA: TDateField
      FieldName = 'VALDATA'
    end
    object Dbx_dProdutosIMP: TStringField
      FieldName = 'IMP'
      FixedChar = True
      Size = 1
    end
    object Dbx_dProdutosPRCUBS: TFMTBCDField
      FieldName = 'PRCUBS'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosALIQCUS: TBCDField
      FieldName = 'ALIQCUS'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosSGLIMPFIS: TIntegerField
      FieldName = 'SGLIMPFIS'
    end
    object Dbx_dProdutosVLRADD: TFMTBCDField
      FieldName = 'VLRADD'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosOBNSERIE: TStringField
      FieldName = 'OBNSERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dProdutosFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
    object Dbx_dProdutosCAPLIC: TIntegerField
      FieldName = 'CAPLIC'
    end
    object Dbx_dProdutosULTSAI: TDateField
      FieldName = 'ULTSAI'
    end
    object Dbx_dProdutosULTENT: TDateField
      FieldName = 'ULTENT'
    end
    object Dbx_dProdutosULTCONT: TDateField
      FieldName = 'ULTCONT'
    end
    object Dbx_dProdutosCARACTERIST: TStringField
      FieldName = 'CARACTERIST'
      Size = 60
    end
    object Dbx_dProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_dProdutosACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dProdutosPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Dbx_dProdutosPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_dProdutosCONT: TStringField
      FieldName = 'CONT'
    end
    object Dbx_dProdutosESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Dbx_dProdutosCTIPO_PROD: TIntegerField
      FieldName = 'CTIPO_PROD'
    end
    object Dbx_dProdutosCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Dbx_dProdutosCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Dbx_dProdutosCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Dbx_dProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Dbx_dProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object Dbx_dProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 100
    end
    object Dbx_dProdutosCCFOP: TIntegerField
      FieldName = 'CCFOP'
    end
    object Dbx_dProdutosCPIS: TIntegerField
      FieldName = 'CPIS'
    end
    object Dbx_dProdutosCCOFINS: TIntegerField
      FieldName = 'CCOFINS'
    end
    object Dbx_dProdutosCMODBC: TIntegerField
      FieldName = 'CMODBC'
    end
    object Dbx_dProdutosCIRII: TIntegerField
      FieldName = 'CIRII'
    end
    object Dbx_dProdutosCVII: TIntegerField
      FieldName = 'CVII'
    end
    object Dbx_dProdutosCOIMP: TIntegerField
      FieldName = 'COIMP'
    end
    object Dbx_dProdutosVBC: TFMTBCDField
      FieldName = 'VBC'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosCMODBCST: TIntegerField
      FieldName = 'CMODBCST'
    end
    object Dbx_dProdutosPMVAST: TBCDField
      FieldName = 'PMVAST'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosPREDBCST: TBCDField
      FieldName = 'PREDBCST'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosVBCST: TFMTBCDField
      FieldName = 'VBCST'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosPICMSST: TBCDField
      FieldName = 'PICMSST'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosVICMSST: TFMTBCDField
      FieldName = 'VICMSST'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosPREDBC: TBCDField
      FieldName = 'PREDBC'
      Precision = 9
      Size = 3
    end
    object Dbx_dProdutosCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Dbx_dProdutosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_dProdutosFATOR1: TFMTBCDField
      FieldName = 'FATOR1'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosFATOR2: TFMTBCDField
      FieldName = 'FATOR2'
      Precision = 18
      Size = 2
    end
    object Dbx_dProdutosNCM: TStringField
      FieldName = 'NCM'
    end
    object Dbx_dProdutosINDTOT: TStringField
      FieldName = 'INDTOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 10
    end
    object Dbx_dProdutoscest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object Dsp_dProdutos: TDataSetProvider
    DataSet = Dbx_dProdutos
    UpdateMode = upWhereKeyOnly
    Left = 739
    Top = 30
  end
  object Cds_dProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_dProdutos'
    AfterInsert = Cds_IndiceAfterInsert
    BeforeEdit = Cds_dProdutosBeforeEdit
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_dProdutosAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 755
    Top = 46
    object IntegerField6: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_dProdutosCDESCPROD: TIntegerField
      FieldName = 'CDESCPROD'
    end
    object Cds_dProdutosPRCU: TFMTBCDField
      FieldName = 'PRCU'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosPER: TBCDField
      FieldName = 'PER'
      DisplayFormat = '###,###,##0.00'
      Precision = 4
      Size = 2
    end
    object Cds_dProdutosPRVE: TFMTBCDField
      FieldName = 'PRVE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Cds_dProdutosQUA: TFMTBCDField
      FieldName = 'QUA'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object Cds_dProdutosCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Cds_dProdutosCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Cds_dProdutosCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Cds_dProdutosQTDEMB: TBCDField
      FieldName = 'QTDEMB'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object Cds_dProdutosCAUX: TStringField
      FieldName = 'CAUX'
    end
    object Cds_dProdutosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_dProdutosCFAB: TStringField
      FieldName = 'CFAB'
      Size = 15
    end
    object Cds_dProdutosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 3
    end
    object Cds_dProdutosESTMIN: TBCDField
      FieldName = 'ESTMIN'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosESTMAX: TBCDField
      FieldName = 'ESTMAX'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 3
    end
    object Cds_dProdutosOUTIMPOST: TFMTBCDField
      FieldName = 'OUTIMPOST'
      Precision = 18
      Size = 3
    end
    object Cds_dProdutosRESERVA: TFMTBCDField
      FieldName = 'RESERVA'
      Precision = 18
      Size = 3
    end
    object Cds_dProdutosSALDOEST: TBCDField
      FieldName = 'SALDOEST'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosMESCLADO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'MESCLADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dProdutosVALKM: TStringField
      FieldName = 'VALKM'
      Size = 10
    end
    object Cds_dProdutosVALDATA: TDateField
      FieldName = 'VALDATA'
    end
    object Cds_dProdutosIMP: TStringField
      FieldName = 'IMP'
      FixedChar = True
      Size = 1
    end
    object Cds_dProdutosPRCUBS: TFMTBCDField
      FieldName = 'PRCUBS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosALIQCUS: TBCDField
      FieldName = 'ALIQCUS'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosSGLIMPFIS: TIntegerField
      FieldName = 'SGLIMPFIS'
    end
    object Cds_dProdutosVLRADD: TFMTBCDField
      FieldName = 'VLRADD'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosOBNSERIE: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'OBNSERIE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dProdutosnpro: TStringField
      FieldKind = fkLookup
      FieldName = 'npro'
      LookupDataSet = Cds_Produtos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CDESCPROD'
      Size = 60
      Lookup = True
    end
    object Cds_dProdutosFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
    object Cds_dProdutosCAPLIC: TIntegerField
      FieldName = 'CAPLIC'
    end
    object Cds_dProdutosULTSAI: TDateField
      FieldName = 'ULTSAI'
    end
    object Cds_dProdutosULTENT: TDateField
      FieldName = 'ULTENT'
    end
    object Cds_dProdutosULTCONT: TDateField
      FieldName = 'ULTCONT'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_dProdutosCARACTERIST: TStringField
      FieldName = 'CARACTERIST'
      Size = 60
    end
    object Cds_dProdutosnunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'nunidade'
      LookupDataSet = Cds_Unidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUNI'
      Size = 40
      Lookup = True
    end
    object Cds_dProdutosACTDESC: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dProdutosPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Cds_dProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_dProdutosPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_dProdutosCONT: TStringField
      FieldName = 'CONT'
    end
    object Cds_dProdutosESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Cds_dProdutosCTIPO_PROD: TIntegerField
      FieldName = 'CTIPO_PROD'
    end
    object Cds_dProdutosCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Cds_dProdutosCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Cds_dProdutosCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Cds_dProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Cds_dProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object Cds_dProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 100
    end
    object Cds_dProdutosCCFOP: TIntegerField
      FieldName = 'CCFOP'
    end
    object Cds_dProdutosCPIS: TIntegerField
      FieldName = 'CPIS'
    end
    object Cds_dProdutosCCOFINS: TIntegerField
      FieldName = 'CCOFINS'
    end
    object Cds_dProdutosCMODBC: TIntegerField
      FieldName = 'CMODBC'
    end
    object Cds_dProdutosCIRII: TIntegerField
      FieldName = 'CIRII'
    end
    object Cds_dProdutosCVII: TIntegerField
      FieldName = 'CVII'
    end
    object Cds_dProdutosCOIMP: TIntegerField
      FieldName = 'COIMP'
    end
    object Cds_dProdutosVBC: TFMTBCDField
      FieldName = 'VBC'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosCMODBCST: TIntegerField
      FieldName = 'CMODBCST'
    end
    object Cds_dProdutosPMVAST: TBCDField
      FieldName = 'PMVAST'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosPREDBCST: TBCDField
      FieldName = 'PREDBCST'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosVBCST: TFMTBCDField
      FieldName = 'VBCST'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosPICMSST: TBCDField
      FieldName = 'PICMSST'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosVICMSST: TFMTBCDField
      FieldName = 'VICMSST'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosPREDBC: TBCDField
      FieldName = 'PREDBC'
      Precision = 9
      Size = 3
    end
    object Cds_dProdutosCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Cds_dProdutosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_dProdutosFATOR1: TFMTBCDField
      FieldName = 'FATOR1'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosFATOR2: TFMTBCDField
      FieldName = 'FATOR2'
      Precision = 18
      Size = 2
    end
    object Cds_dProdutosNCM: TStringField
      FieldName = 'NCM'
    end
    object Cds_dProdutosINDTOT: TStringField
      FieldName = 'INDTOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 10
    end
    object Cds_dProdutoscest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object Dst_dProdutos: TDataSource
    DataSet = Cds_dProdutos
    OnDataChange = Dst_dProdutosDataChange
    Left = 771
    Top = 62
  end
  object Dbx_dVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from dVenda d  where d.cpro = 0')
    SQLConnection = Sql_Dados
    Left = 536
    Top = 13
    object Dbx_dVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_dVendaCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_dVendaPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object Dbx_dVendaCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_dVendaEOUS: TStringField
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Dbx_dVendaPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Dbx_dVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_dVendaCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Dbx_dVendaCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Dbx_dVendaPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_dVendaCVEN: TIntegerField
      FieldName = 'CVEN'
    end
    object Dbx_dVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_dVendaNSERIE: TStringField
      FieldName = 'NSERIE'
      Size = 30
    end
    object Dbx_dVendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_dVendaBAIXA: TStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object Dbx_dVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object Dbx_dVendaDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Dbx_dVendaCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaIDENTST: TStringField
      FieldName = 'IDENTST'
      Size = 1
    end
    object Dbx_dVendaTIPOST: TStringField
      FieldName = 'TIPOST'
      Size = 8
    end
    object Dbx_dVendaPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Dbx_dVendaCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object Dbx_dVendaDESCRICAOST: TStringField
      FieldName = 'DESCRICAOST'
      Size = 80
    end
    object Dbx_dVendaUNDST: TStringField
      FieldName = 'UNDST'
      Size = 3
    end
    object Dbx_dVendaCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 75
    end
    object Dbx_dVendaVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 80
    end
    object Dbx_dVendaPGST: TStringField
      FieldName = 'PGST'
      Size = 1
    end
    object Dbx_dVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_dVendaVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaICM: TBCDField
      FieldName = 'ICM'
      Precision = 9
      Size = 2
    end
    object Dbx_dVendaISS: TBCDField
      FieldName = 'ISS'
      Precision = 9
      Size = 2
    end
    object Dbx_dVendaMETRAGEM: TFMTBCDField
      FieldName = 'METRAGEM'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaMETRAGEM2: TFMTBCDField
      FieldName = 'METRAGEM2'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dVendaMAXI: TIntegerField
      FieldName = 'MAXI'
    end
    object Dbx_dVendaTIPOV: TIntegerField
      FieldName = 'TIPOV'
    end
    object Dbx_dVendaNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Dbx_dVendaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Dbx_dVendaVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Dbx_dVendaSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dVendaIMPNF: TStringField
      FieldName = 'IMPNF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dVendaCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Dbx_dVendaCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Dbx_dVendaCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Dbx_dVendaCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Dbx_dVendaCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
    object Dbx_dVendaVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Dbx_dVendaCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Dbx_dVendaCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
    end
    object Dbx_dVendaCODPIS: TIntegerField
      FieldName = 'CODPIS'
    end
    object Dbx_dVendaCODCOFINS: TIntegerField
      FieldName = 'CODCOFINS'
    end
    object Dbx_dVendaCODMODBC: TIntegerField
      FieldName = 'CODMODBC'
    end
    object Dbx_dVendaCODIRII: TIntegerField
      FieldName = 'CODIRII'
    end
    object Dbx_dVendaCODVII: TIntegerField
      FieldName = 'CODVII'
    end
    object Dbx_dVendaCODOIMP: TIntegerField
      FieldName = 'CODOIMP'
    end
    object Dbx_dVendaCODMODBCST: TIntegerField
      FieldName = 'CODMODBCST'
    end
    object Dbx_dVendaCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Dbx_dVendaQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Dbx_dVendaQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Dbx_dVendaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_dVendaNCM: TStringField
      FieldName = 'NCM'
    end
    object Dbx_dVendaINDTOT: TStringField
      FieldName = 'INDTOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dVendaALTMAIS: TStringField
      FieldName = 'ALTMAIS'
    end
    object Dbx_dVendaALTMENOS: TStringField
      FieldName = 'ALTMENOS'
    end
    object Dbx_dVendaSUBS: TStringField
      FieldName = 'SUBS'
      Size = 150
    end
    object Dbx_dVendacest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object Dsp_dVenda: TDataSetProvider
    DataSet = Dbx_dVenda
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 29
  end
  object Cds_dVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_dVenda'
    AfterInsert = Cds_dVendaAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_dVendaBeforePost
    AfterPost = Cds_dVendaAfterPost
    AfterDelete = Cds_dVendaAfterDelete
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 560
    Top = 45
    object Cds_dVendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_dVendaCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Cds_dVendaPRVE: TFMTBCDField
      FieldName = 'PRVE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object Cds_dVendaCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_dVendaEOUS: TStringField
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Cds_dVendaPRCU: TFMTBCDField
      FieldName = 'PRCU'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Cds_dVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_dVendaCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Cds_dVendaCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Cds_dVendaPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_dVendaCVEN: TIntegerField
      FieldName = 'CVEN'
    end
    object Cds_dVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_dVendaNSERIE: TStringField
      FieldName = 'NSERIE'
      Size = 30
    end
    object Cds_dVendaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_dVendaBAIXA: TStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object Cds_dVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object Cds_dVendaDATA_OP: TDateField
      FieldName = 'DATA_OP'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_dVendaCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaIDENTST: TStringField
      FieldName = 'IDENTST'
      Size = 1
    end
    object Cds_dVendaTIPOST: TStringField
      FieldName = 'TIPOST'
      Size = 8
    end
    object Cds_dVendaPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Cds_dVendaCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object Cds_dVendaDESCRICAOST: TStringField
      FieldName = 'DESCRICAOST'
      Size = 80
    end
    object Cds_dVendaUNDST: TStringField
      FieldName = 'UNDST'
      Size = 3
    end
    object Cds_dVendaCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 75
    end
    object Cds_dVendaVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 80
    end
    object Cds_dVendaPGST: TStringField
      FieldName = 'PGST'
      Size = 1
    end
    object Cds_dVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_dVendaVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaICM: TBCDField
      FieldName = 'ICM'
      Precision = 9
      Size = 2
    end
    object Cds_dVendaISS: TBCDField
      FieldName = 'ISS'
      Precision = 9
      Size = 2
    end
    object Cds_dVendaMETRAGEM: TFMTBCDField
      FieldName = 'METRAGEM'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaMETRAGEM2: TFMTBCDField
      FieldName = 'METRAGEM2'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dVendaMAXI: TIntegerField
      FieldName = 'MAXI'
    end
    object Cds_dVendanpro: TStringField
      FieldKind = fkLookup
      FieldName = 'nprod'
      LookupDataSet = Cds_vProdutos
      LookupKeyFields = 'codigo'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CPRO'
      Size = 60
      Lookup = True
    end
    object Cds_dVendaTIPOV: TIntegerField
      FieldName = 'TIPOV'
    end
    object Cds_dVendaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Cds_dVendaVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Cds_dVendaSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dVendaNPRO2: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Cds_dVendanunid: TStringField
      FieldKind = fkLookup
      FieldName = 'nunid'
      LookupDataSet = Cds_Unidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUNI'
      Size = 4
      Lookup = True
    end
    object Cds_dVendaIMPNF: TStringField
      FieldName = 'IMPNF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dVendaCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Cds_dVendaCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Cds_dVendaCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Cds_dVendaCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Cds_dVendaCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
    object Cds_dVendancfsigla: TStringField
      FieldKind = fkLookup
      FieldName = 'ncfsigla'
      LookupDataSet = Cds_CF
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODCF'
      Size = 3
      Lookup = True
    end
    object Cds_dVendansitasigla: TStringField
      FieldKind = fkLookup
      FieldName = 'nsitasigla'
      LookupDataSet = Cds_SITA
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODSITA'
      Size = 3
      Lookup = True
    end
    object Cds_dVendansitbsigla: TStringField
      FieldKind = fkLookup
      FieldName = 'nsitbsigla'
      LookupDataSet = Cds_SITB
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODSITB'
      Size = 3
      Lookup = True
    end
    object Cds_dVendanicmssigla: TStringField
      FieldKind = fkLookup
      FieldName = 'nicmssigla'
      LookupDataSet = Cds_AliqImpFis
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODICMS'
      Size = 3
      Lookup = True
    end
    object Cds_dVendanipisigla: TStringField
      FieldKind = fkLookup
      FieldName = 'nipisigla'
      LookupDataSet = Cds_IPI
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODIPI'
      Size = 3
      Lookup = True
    end
    object Cds_dVendaVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Cds_dVendaCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Cds_dVendancli: TStringField
      FieldKind = fkLookup
      FieldName = 'ncli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CCLI'
      Size = 50
      Lookup = True
    end
    object Cds_dVendaCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
    end
    object Cds_dVendaCODPIS: TIntegerField
      FieldName = 'CODPIS'
    end
    object Cds_dVendaCODCOFINS: TIntegerField
      FieldName = 'CODCOFINS'
    end
    object Cds_dVendaCODMODBC: TIntegerField
      FieldName = 'CODMODBC'
    end
    object Cds_dVendaCODIRII: TIntegerField
      FieldName = 'CODIRII'
    end
    object Cds_dVendaCODVII: TIntegerField
      FieldName = 'CODVII'
    end
    object Cds_dVendaCODOIMP: TIntegerField
      FieldName = 'CODOIMP'
    end
    object Cds_dVendaCODMODBCST: TIntegerField
      FieldName = 'CODMODBCST'
    end
    object Cds_dVendaCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Cds_dVendaQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Cds_dVendaQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Cds_dVendaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_dVendaNCM: TStringField
      FieldName = 'NCM'
    end
    object Cds_dVendaINDTOT: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'INDTOT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dVendaALTMAIS: TStringField
      FieldName = 'ALTMAIS'
    end
    object Cds_dVendaALTMENOS: TStringField
      FieldName = 'ALTMENOS'
    end
    object Cds_dVendaSUBS: TStringField
      FieldName = 'SUBS'
      Size = 150
    end
    object Cds_dVendacest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object Dst_dVenda: TDataSource
    DataSet = Cds_dVenda
    Left = 576
    Top = 61
  end
  object Dsp_Ado: TDataSetProvider
    DataSet = ADO_Mestre
    Left = 40
    Top = 1034
  end
  object Cds_Ado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Ado'
    Left = 56
    Top = 1050
  end
  object Dts_Ado: TDataSource
    AutoEdit = False
    DataSet = Cds_Ado
    Left = 72
    Top = 1066
  end
  object DbxAdo_ItensV: TADOQuery
    Connection = ADO_Conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(itquantidade) as Qtde, itund as Unidade, itDescricao ' +
        'as Descricao, itvenda as Data, sum(itcusto*itquantidade) as Cust' +
        'o, sum(itunitario*itquantidade) as Preco from tabitens group by ' +
        'itDescricao, itCodigo, itund, itvenda having itvenda = #25/09/20' +
        '06#')
    Left = 512
    Top = 1057
  end
  object DspAdo_ItensV: TDataSetProvider
    DataSet = DbxAdo_ItensV
    Left = 600
    Top = 1057
  end
  object CdsAdo_ItensV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspAdo_ItensV'
    Left = 696
    Top = 1057
    object CdsAdo_ItensVQtde: TFloatField
      DisplayWidth = 12
      FieldName = 'Qtde'
      DisplayFormat = '###,###,##0.00'
    end
    object CdsAdo_ItensVUnidade: TWideStringField
      DisplayWidth = 8
      FieldName = 'Unidade'
      Size = 3
    end
    object CdsAdo_ItensVDescricao: TWideStringField
      DisplayWidth = 60
      FieldName = 'Descricao'
      Size = 80
    end
    object CdsAdo_ItensVData: TDateTimeField
      DisplayWidth = 22
      FieldName = 'Data'
    end
    object CdsAdo_ItensVCusto: TFloatField
      DisplayWidth = 12
      FieldName = 'Custo'
      DisplayFormat = '###,###,##0.00'
    end
    object CdsAdo_ItensVPreco: TFloatField
      DisplayWidth = 12
      FieldName = 'Preco'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DtsAdo_ItensV: TDataSource
    AutoEdit = False
    DataSet = CdsAdo_ItensV
    Left = 776
    Top = 1057
  end
  object RvDscItens_Vendidos: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = DbxAdo_ItensV
    Left = 881
    Top = 1059
  end
  object RvPItensV: TRvProject
    ProjectFile = 
      'C:\Documents and Settings\Marcos\Meus documentos\desenvolvimento' +
      '\sistemas\rb\rItensV.rav'
    Left = 976
    Top = 1057
  end
  object Dbx_Usuarios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from usuarios')
    SQLConnection = Sql_Dados
    Left = 819
    Top = 14
    object Dbx_UsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_UsuariosNOME: TStringField
      FieldName = 'NOME'
    end
    object Dbx_UsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object Dbx_UsuariosCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_UsuariosNIVEL: TSmallintField
      FieldName = 'NIVEL'
    end
    object Dbx_UsuariosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Usuarios: TDataSetProvider
    DataSet = Dbx_Usuarios
    UpdateMode = upWhereKeyOnly
    Left = 835
    Top = 30
  end
  object Cds_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Usuarios'
    BeforeInsert = Cds_UsuariosBeforeInsert
    AfterInsert = Cds_UsuariosAfterInsert
    AfterEdit = Cds_UsuariosAfterEdit
    BeforePost = Cds_UsuariosBeforePost
    AfterPost = Cds_UsuariosAfterPost
    BeforeDelete = Cds_UsuariosBeforeDelete
    AfterDelete = Cds_UsuariosAfterDelete
    AfterScroll = Cds_UsuariosAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 851
    Top = 46
    object Cds_UsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_UsuariosNOME: TStringField
      FieldName = 'NOME'
    end
    object Cds_UsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object Cds_UsuariosCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_Usuariosnfunc: TStringField
      FieldKind = fkLookup
      FieldName = 'nfunc'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 50
      Lookup = True
    end
    object Cds_UsuariosNIVEL: TSmallintField
      FieldName = 'NIVEL'
    end
    object Cds_UsuariosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_Usuarios: TDataSource
    DataSet = Cds_Usuarios
    Left = 867
    Top = 62
  end
  object Dbx_invsys: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from invsys')
    SQLConnection = Sql_Dados
    Left = 915
    Top = 14
    object Dbx_invsysCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_invsysDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_invsysCINVSYSP: TIntegerField
      FieldName = 'CINVSYSP'
    end
    object Dbx_invsysCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_invsys: TDataSetProvider
    DataSet = Dbx_invsys
    UpdateMode = upWhereKeyOnly
    Left = 931
    Top = 30
  end
  object Cds_Invsys: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_invsys'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_InvsysAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 947
    Top = 46
    object Cds_InvsysCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_InvsysDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_InvsysCINVSYSP: TIntegerField
      FieldName = 'CINVSYSP'
    end
    object Cds_InvsysCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_invsys: TDataSource
    DataSet = Cds_Invsys
    Left = 963
    Top = 62
  end
  object Dbx_invsysf: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from invsysf')
    SQLConnection = Sql_Dados
    Left = 32
    Top = 114
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_invsysfCINVSYS: TIntegerField
      FieldName = 'CINVSYS'
    end
    object Dbx_invsysfCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Dbx_invsysfNEGA: TStringField
      FieldName = 'NEGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfRESTRITO: TStringField
      FieldName = 'RESTRITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfCONFIDENCIAL: TStringField
      FieldName = 'CONFIDENCIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfINS: TStringField
      FieldName = 'INS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfUPDT: TStringField
      FieldName = 'UPDT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfDEL: TStringField
      FieldName = 'DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfNCOMP: TStringField
      FieldName = 'NCOMP'
      Size = 30
    end
    object Dbx_invsysfLOOKFOR: TStringField
      FieldName = 'LOOKFOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_invsysf: TDataSetProvider
    DataSet = Dbx_invsysf
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 130
  end
  object Cds_invsysf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_invsysf'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_invsysfAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 64
    Top = 146
    object IntegerField8: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_invsysfCINVSYS: TIntegerField
      FieldName = 'CINVSYS'
    end
    object Cds_invsysfCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Cds_invsysfNEGA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'NEGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfRESTRITO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'RESTRITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfCONFIDENCIAL: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CONFIDENCIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfINS: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'INS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfUPDT: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'UPDT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfDEL: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfNCOMP: TStringField
      FieldName = 'NCOMP'
      Size = 30
    end
    object Cds_invsysfdesc: TStringField
      FieldKind = fkLookup
      FieldName = 'desc'
      LookupDataSet = Cds_Invsys
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CINVSYS'
      Size = 30
      Lookup = True
    end
    object Cds_invsysfLOOKFOR: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'LOOKFOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_invsysf: TDataSource
    DataSet = Cds_invsysf
    Left = 80
    Top = 162
  end
  object Dbx_invsysp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from invsysp')
    SQLConnection = Sql_Dados
    Left = 117
    Top = 114
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_invsyspDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_invsyspCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Invsysp: TDataSetProvider
    DataSet = Dbx_invsysp
    UpdateMode = upWhereKeyOnly
    Left = 133
    Top = 130
  end
  object Cds_Invsysp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Invsysp'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_InvsyspAfterPost
    AfterScroll = Cds_InvsyspAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 149
    Top = 146
    object IntegerField11: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_InvsyspDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_InvsyspCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_invsysp: TDataSource
    DataSet = Cds_Invsysp
    Left = 165
    Top = 162
  end
  object Dbx_Grupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from grupo')
    SQLConnection = Sql_Dados
    Left = 208
    Top = 114
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_GrupoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Grupo: TDataSetProvider
    DataSet = Dbx_Grupo
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 130
  end
  object Cds_Grupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Grupo'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_GrupoAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 240
    Top = 146
    object IntegerField10: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_GrupoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Grupo: TDataSource
    DataSet = Cds_Grupo
    Left = 256
    Top = 162
  end
  object Dbx_Marca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from marca')
    SQLConnection = Sql_Dados
    Left = 295
    Top = 114
    object IntegerField12: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_MarcaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Marca: TDataSetProvider
    DataSet = Dbx_Marca
    UpdateMode = upWhereKeyOnly
    Left = 311
    Top = 130
  end
  object Cds_Marca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Marca'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_MarcaAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 327
    Top = 146
    object IntegerField13: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_MarcaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_Marca: TDataSource
    DataSet = Cds_Marca
    Left = 343
    Top = 162
  end
  object Dbx_Representantes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from representantes')
    SQLConnection = Sql_Dados
    Left = 403
    Top = 114
    object Dbx_RepresentantesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_RepresentantesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Dbx_RepresentantesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Dbx_RepresentantesCOMPL: TStringField
      FieldName = 'COMPL'
      Size = 30
    end
    object Dbx_RepresentantesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Dbx_RepresentantesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Dbx_RepresentantesESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Dbx_RepresentantesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object Dbx_RepresentantesCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Dbx_RepresentantesIE: TStringField
      FieldName = 'IE'
    end
    object Dbx_RepresentantesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object Dbx_RepresentantesFONES: TStringField
      FieldName = 'FONES'
      Size = 50
    end
    object Dbx_RepresentantesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object Dbx_RepresentantesCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object Dbx_RepresentantesOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_RepresentantesIMP: TStringField
      FieldName = 'IMP'
      Size = 10
    end
    object Dbx_RepresentantesETIQ: TStringField
      FieldName = 'ETIQ'
      Size = 10
    end
    object Dbx_RepresentantesFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Dbx_RepresentantesCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 9
      Size = 2
    end
    object Dbx_RepresentantesCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_RepresentantesNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Dbx_RepresentantesCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Dbx_RepresentantesCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object Dbx_RepresentantesCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
  end
  object Dsp_Representantes: TDataSetProvider
    DataSet = Dbx_Representantes
    UpdateMode = upWhereKeyOnly
    Left = 419
    Top = 130
  end
  object Cds_Representantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Representantes'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_RepresentantesAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 435
    Top = 146
    object Cds_RepresentantesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_RepresentantesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cds_RepresentantesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Cds_RepresentantesCOMPL: TStringField
      FieldName = 'COMPL'
      Size = 30
    end
    object Cds_RepresentantesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Cds_RepresentantesCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Cds_RepresentantesESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Cds_RepresentantesCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object Cds_RepresentantesCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Cds_RepresentantesIE: TStringField
      FieldName = 'IE'
    end
    object Cds_RepresentantesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 10
    end
    object Cds_RepresentantesFONES: TStringField
      FieldName = 'FONES'
      Size = 50
    end
    object Cds_RepresentantesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object Cds_RepresentantesCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object Cds_RepresentantesOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_RepresentantesIMP: TStringField
      FieldName = 'IMP'
      Size = 10
    end
    object Cds_RepresentantesETIQ: TStringField
      FieldName = 'ETIQ'
      Size = 10
    end
    object Cds_RepresentantesFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Cds_RepresentantesCOMISSAO: TBCDField
      DefaultExpression = '0'
      FieldName = 'COMISSAO'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_RepresentantesCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_RepresentantesNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Cds_RepresentantesCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Cds_RepresentantesCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object Cds_RepresentantesCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
  end
  object Dst_Representantes: TDataSource
    DataSet = Cds_Representantes
    OnDataChange = Dst_RepresentantesDataChange
    Left = 451
    Top = 162
  end
  object Dbx_Funcionarios: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from funcionarios')
    SQLConnection = Sql_Dados
    Left = 513
    Top = 114
    object Dbx_Funcionarioscodigo: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_FuncionariosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Dbx_FuncionariosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Dbx_FuncionariosCOMPLEMENT: TStringField
      FieldName = 'COMPLEMENT'
      Size = 30
    end
    object Dbx_FuncionariosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Dbx_FuncionariosESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Dbx_FuncionariosCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object Dbx_FuncionariosCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Dbx_FuncionariosIE: TStringField
      FieldName = 'IE'
    end
    object Dbx_FuncionariosFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object Dbx_FuncionariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Dbx_FuncionariosCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object Dbx_FuncionariosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_FuncionariosIMP: TStringField
      FieldName = 'IMP'
      Size = 1
    end
    object Dbx_FuncionariosETIQ: TStringField
      FieldName = 'ETIQ'
      Size = 1
    end
    object Dbx_FuncionariosDATAADM: TDateField
      FieldName = 'DATAADM'
    end
    object Dbx_FuncionariosSALARIO: TFMTBCDField
      FieldName = 'SALARIO'
      Precision = 18
      Size = 2
    end
    object Dbx_FuncionariosDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object Dbx_FuncionariosCP: TStringField
      FieldName = 'CP'
      Size = 15
    end
    object Dbx_FuncionariosCARGO: TStringField
      FieldName = 'CARGO'
      Size = 40
    end
    object Dbx_FuncionariosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object Dbx_FuncionariosPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_FuncionariosTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 50
    end
    object Dbx_FuncionariosATIVO: TStringField
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_FuncionariosFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Dbx_FuncionariosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object Dbx_FuncionariosFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 100
    end
    object Dbx_FuncionariosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_FuncionariosCTIPOTAB_PORCENTAGEM: TIntegerField
      FieldName = 'CTIPOTAB_PORCENTAGEM'
    end
    object Dbx_FuncionariosNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Dbx_FuncionariosCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
    object Dbx_FuncionariosCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Dbx_FuncionariosCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
  end
  object Dsp_Funcionarios: TDataSetProvider
    DataSet = Dbx_Funcionarios
    UpdateMode = upWhereKeyOnly
    Left = 529
    Top = 130
  end
  object Cds_Funcionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Funcionarios'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_FuncionariosBeforePost
    AfterPost = Cds_FuncionariosAfterPost
    BeforeScroll = Cds_FuncionariosBeforeScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 545
    Top = 146
    object cds_Funcionarioscodigo: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_FuncionariosNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cds_FuncionariosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Cds_FuncionariosCOMPLEMENT: TStringField
      FieldName = 'COMPLEMENT'
      Size = 30
    end
    object Cds_FuncionariosCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Cds_FuncionariosESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Cds_FuncionariosCEP: TStringField
      FieldName = 'CEP'
      EditMask = '#####-###'
      FixedChar = True
      Size = 9
    end
    object Cds_FuncionariosCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Cds_FuncionariosIE: TStringField
      FieldName = 'IE'
    end
    object Cds_FuncionariosFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object Cds_FuncionariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Cds_FuncionariosCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object Cds_FuncionariosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_FuncionariosIMP: TStringField
      FieldName = 'IMP'
      Size = 1
    end
    object Cds_FuncionariosETIQ: TStringField
      FieldName = 'ETIQ'
      Size = 1
    end
    object Cds_FuncionariosDATAADM: TDateField
      FieldName = 'DATAADM'
    end
    object Cds_FuncionariosSALARIO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'SALARIO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_FuncionariosDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object Cds_FuncionariosCP: TStringField
      FieldName = 'CP'
      Size = 15
    end
    object Cds_FuncionariosCARGO: TStringField
      FieldName = 'CARGO'
      Size = 40
    end
    object Cds_FuncionariosPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 40
    end
    object Cds_FuncionariosPCOM: TBCDField
      DefaultExpression = '0'
      FieldName = 'PCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_FuncionariosTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 50
    end
    object Cds_FuncionariosATIVO: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_FuncionariosFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Cds_FuncionariosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object Cds_FuncionariosFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 100
    end
    object Cds_FuncionariosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_FuncionariosCTIPOTAB_PORCENTAGEM: TIntegerField
      FieldName = 'CTIPOTAB_PORCENTAGEM'
    end
    object Cds_FuncionariosNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Cds_FuncionariosCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
    object Cds_FuncionariosCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Cds_FuncionariosCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
  end
  object Dst_Funcionarios: TDataSource
    DataSet = Cds_Funcionarios
    OnDataChange = Dst_FuncionariosDataChange
    Left = 561
    Top = 162
  end
  object Sqp_dados: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Sql_Dados
    Left = 32
    Top = 63
  end
  object Dbx_Unidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Unidade')
    SQLConnection = Sql_Dados
    Left = 604
    Top = 114
    object IntegerField17: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_UnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_UnidadeCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Unidade: TDataSetProvider
    DataSet = Dbx_Unidade
    UpdateMode = upWhereKeyOnly
    Left = 620
    Top = 130
  end
  object Cds_Unidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Unidade'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_UnidadeAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 636
    Top = 146
    object IntegerField19: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_UnidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_UnidadeCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dst_unidade: TDataSource
    DataSet = Cds_Unidade
    Left = 652
    Top = 162
  end
  object Dbx_invsysfcon: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from invsysf')
    SQLConnection = Sql_Dados
    Left = 698
    Top = 114
    object IntegerField20: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField21: TIntegerField
      FieldName = 'CINVSYS'
    end
    object IntegerField22: TIntegerField
      FieldName = 'CUSU'
    end
    object StringField5: TStringField
      FieldName = 'NEGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'RESTRITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField7: TStringField
      FieldName = 'CONFIDENCIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'INS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'UPDT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField10: TStringField
      FieldName = 'DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'NCOMP'
      Size = 30
    end
    object StringField12: TStringField
      FieldName = 'LOOKFOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_invsysfconCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_invsysfcon: TDataSetProvider
    DataSet = Dbx_invsysfcon
    UpdateMode = upWhereKeyOnly
    Left = 714
    Top = 130
  end
  object Cds_invsysfcon: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_invsysfcon'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_invsysfconAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 730
    Top = 146
    object IntegerField23: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField24: TIntegerField
      FieldName = 'CINVSYS'
    end
    object IntegerField25: TIntegerField
      FieldName = 'CUSU'
    end
    object StringField13: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'NEGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField14: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'RESTRITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField15: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CONFIDENCIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField16: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'INS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField17: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'UPDT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField18: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField19: TStringField
      FieldName = 'NCOMP'
      Size = 30
    end
    object StringField20: TStringField
      FieldKind = fkLookup
      FieldName = 'desc'
      LookupDataSet = Cds_Invsys
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CINVSYS'
      Size = 30
      Lookup = True
    end
    object StringField21: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'LOOKFOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_invsysfconCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_invsysfcon: TDataSource
    DataSet = Cds_invsysfcon
    Left = 746
    Top = 162
  end
  object Dbx_Fornecedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from fornecedores')
    SQLConnection = Sql_Dados
    Left = 803
    Top = 114
    object IntegerField26: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_FornecedoresDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object Dbx_FornecedoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Dbx_FornecedoresFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object Dbx_FornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Dbx_FornecedoresCOMPLEMENT: TStringField
      FieldName = 'COMPLEMENT'
      Size = 30
    end
    object Dbx_FornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object Dbx_FornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Dbx_FornecedoresESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Dbx_FornecedoresCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object Dbx_FornecedoresFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object Dbx_FornecedoresCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object Dbx_FornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Dbx_FornecedoresSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object Dbx_FornecedoresCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object Dbx_FornecedoresCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object Dbx_FornecedoresRG: TStringField
      FieldName = 'RG'
    end
    object Dbx_FornecedoresBANCO: TStringField
      FieldName = 'BANCO'
    end
    object Dbx_FornecedoresCC: TStringField
      FieldName = 'CC'
      Size = 40
    end
    object Dbx_FornecedoresIMP: TStringField
      FieldName = 'IMP'
      Size = 1
    end
    object Dbx_FornecedoresTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 50
    end
    object Dbx_FornecedoresOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_FornecedoresLINHA: TStringField
      FieldName = 'LINHA'
      Size = 30
    end
    object Dbx_FornecedoresNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Dbx_FornecedoresCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
    object Dbx_FornecedoresCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Dbx_FornecedoresCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object Dbx_FornecedoresCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Fornecedores: TDataSetProvider
    DataSet = Dbx_Fornecedores
    UpdateMode = upWhereKeyOnly
    Left = 819
    Top = 130
  end
  object Cds_Fornecedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Fornecedores'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 835
    Top = 146
    object IntegerField29: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_FornecedoresDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object Cds_FornecedoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Cds_FornecedoresFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object Cds_FornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object Cds_FornecedoresCOMPLEMENT: TStringField
      FieldName = 'COMPLEMENT'
      Size = 30
    end
    object Cds_FornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object Cds_FornecedoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object Cds_FornecedoresESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Cds_FornecedoresCEP: TStringField
      FieldName = 'CEP'
      EditMask = '#####-###'
      FixedChar = True
      Size = 9
    end
    object Cds_FornecedoresFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object Cds_FornecedoresCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 10
    end
    object Cds_FornecedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Cds_FornecedoresSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object Cds_FornecedoresCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object Cds_FornecedoresCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object Cds_FornecedoresRG: TStringField
      FieldName = 'RG'
    end
    object Cds_FornecedoresBANCO: TStringField
      FieldName = 'BANCO'
    end
    object Cds_FornecedoresCC: TStringField
      FieldName = 'CC'
      Size = 40
    end
    object Cds_FornecedoresIMP: TStringField
      FieldName = 'IMP'
      Size = 1
    end
    object Cds_FornecedoresTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 50
    end
    object Cds_FornecedoresOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_FornecedoresLINHA: TStringField
      FieldName = 'LINHA'
      Size = 30
    end
    object Cds_FornecedoresNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Cds_FornecedoresCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
    object Cds_FornecedoresCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Cds_FornecedoresCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object Cds_Fornecedoresdescufibge: TStringField
      FieldKind = fkLookup
      FieldName = 'descufibge'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODUFIBGE'
      Size = 2
      Lookup = True
    end
    object Cds_Fornecedoresnumufibge: TStringField
      FieldKind = fkLookup
      FieldName = 'numufibge'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODUFIBGE'
      KeyFields = 'CODUFIBGE'
      Size = 12
      Lookup = True
    end
    object Cds_Fornecedoresdescmibge: TStringField
      FieldKind = fkLookup
      FieldName = 'descmibge'
      LookupDataSet = Cds_Munic
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMIBGE'
      Lookup = True
    end
    object Cds_Fornecedoresnummibge: TStringField
      FieldKind = fkLookup
      FieldName = 'nummibge'
      LookupDataSet = Cds_Munic
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODMIBGE'
      KeyFields = 'CODMIBGE'
      Size = 12
      Lookup = True
    end
    object Cds_Fornecedoresdescpaisibge: TStringField
      FieldKind = fkLookup
      FieldName = 'descpaisibge'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPAIS'
      Lookup = True
    end
    object Cds_Fornecedoresnumpaisibge: TStringField
      FieldKind = fkLookup
      FieldName = 'numpaisibge'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODPIBGE'
      KeyFields = 'CODPAIS'
      Size = 12
      Lookup = True
    end
    object Cds_FornecedoresCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Fornecedores: TDataSource
    DataSet = Cds_Fornecedores
    Left = 851
    Top = 162
  end
  object Dbx_Compras: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Compras')
    SQLConnection = Sql_Dados
    Left = 904
    Top = 109
    object Dbx_ComprasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ComprasCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Compras: TDataSetProvider
    DataSet = Dbx_Compras
    UpdateMode = upWhereKeyOnly
    Left = 915
    Top = 125
  end
  object Cds_Compras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Compras'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_ComprasAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 931
    Top = 141
    object Cds_ComprasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ComprasCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Compras: TDataSource
    DataSet = Cds_Compras
    Left = 947
    Top = 157
  end
  object Dbx_Ent_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Ent_Prod')
    SQLConnection = Sql_Dados
    Left = 32
    Top = 211
    object IntegerField30: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_Ent_ProdCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_Ent_ProdCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object Dbx_Ent_ProdCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_Ent_ProdALIICMS: TBCDField
      FieldName = 'ALIICMS'
      Precision = 9
      Size = 2
    end
    object Dbx_Ent_ProdALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 9
      Size = 2
    end
    object Dbx_Ent_ProdQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 9
      Size = 3
    end
    object Dbx_Ent_ProdCUNID: TIntegerField
      FieldName = 'CUNID'
    end
    object Dbx_Ent_ProdPRUNIT: TFMTBCDField
      FieldName = 'PRUNIT'
      Precision = 18
      Size = 2
    end
    object Dbx_Ent_ProdDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
    end
    object Dbx_Ent_ProdDATA_COTACAO: TDateField
      FieldName = 'DATA_COTACAO'
    end
    object Dbx_Ent_ProdDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
    end
    object Dbx_Ent_ProdEHCOTACAO: TStringField
      FieldName = 'EHCOTACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_Ent_ProdEHCOMPRA: TStringField
      FieldName = 'EHCOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_Ent_ProdEHENTREGA: TStringField
      FieldName = 'EHENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_Ent_ProdCCOMPRAS: TIntegerField
      FieldName = 'CCOMPRAS'
    end
    object Dbx_Ent_ProdCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Dbx_Ent_ProdOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_Ent_ProdCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Dbx_Ent_ProdQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Dbx_Ent_ProdQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Dbx_Ent_ProdCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Ent_Prod: TDataSetProvider
    DataSet = Dbx_Ent_Prod
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 227
  end
  object Cds_Ent_Prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Ent_Prod'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_Ent_ProdAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_Ent_ProdAfterApplyUpdates
    Left = 64
    Top = 243
    object IntegerField32: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_Ent_ProdCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Cds_Ent_ProdCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object Cds_Ent_ProdCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Cds_Ent_ProdALIICMS: TBCDField
      FieldName = 'ALIICMS'
      Precision = 9
      Size = 2
    end
    object Cds_Ent_ProdALIIPI: TBCDField
      FieldName = 'ALIIPI'
      Precision = 9
      Size = 2
    end
    object Cds_Ent_ProdQTDE: TBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
      Precision = 9
      Size = 3
    end
    object Cds_Ent_ProdCUNID: TIntegerField
      FieldName = 'CUNID'
    end
    object Cds_Ent_ProdPRUNIT: TFMTBCDField
      FieldName = 'PRUNIT'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_Ent_ProdDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_Ent_ProdDATA_COTACAO: TDateField
      FieldName = 'DATA_COTACAO'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_Ent_ProdDATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_Ent_ProdEHCOTACAO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHCOTACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Ent_ProdEHCOMPRA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHCOMPRA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Ent_ProdEHENTREGA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Ent_ProdCCOMPRAS: TIntegerField
      FieldName = 'CCOMPRAS'
    end
    object Cds_Ent_ProdCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Cds_Ent_Prodnfor: TStringField
      FieldKind = fkLookup
      FieldName = 'nfor'
      LookupDataSet = Cds_Fornecedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFOR'
      Size = 50
      Lookup = True
    end
    object Cds_Ent_Prodnpro: TStringField
      FieldKind = fkLookup
      FieldName = 'npro'
      LookupDataSet = Cds_vProdutos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CPRO'
      Size = 150
      Lookup = True
    end
    object Cds_Ent_ProdOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_Ent_ProdCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Cds_Ent_ProdQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Cds_Ent_ProdQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Cds_Ent_ProdCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Ent_Prod: TDataSource
    DataSet = Cds_Ent_Prod
    Left = 80
    Top = 259
  end
  object Dbx_Clientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Clientes')
    SQLConnection = Sql_Dados
    Left = 123
    Top = 211
    object IntegerField31: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object Dbx_ClientesENDCOM: TStringField
      FieldName = 'ENDCOM'
      Size = 100
    end
    object Dbx_ClientesCOMPLCOM: TStringField
      FieldName = 'COMPLCOM'
      Size = 50
    end
    object Dbx_ClientesBAIRROCOM: TStringField
      FieldName = 'BAIRROCOM'
      Size = 100
    end
    object Dbx_ClientesCIDADECOM: TStringField
      FieldName = 'CIDADECOM'
      Size = 40
    end
    object Dbx_ClientesCEPCOM: TStringField
      FieldName = 'CEPCOM'
      FixedChar = True
      Size = 9
    end
    object Dbx_ClientesTELEFONECOM: TStringField
      FieldName = 'TELEFONECOM'
      Size = 10
    end
    object Dbx_ClientesCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object Dbx_ClientesIE: TStringField
      FieldName = 'IE'
    end
    object Dbx_ClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object Dbx_ClientesENDENT: TStringField
      FieldName = 'ENDENT'
      Size = 100
    end
    object Dbx_ClientesCOMPLENT: TStringField
      FieldName = 'COMPLENT'
      Size = 50
    end
    object Dbx_ClientesBAIRROENT: TStringField
      FieldName = 'BAIRROENT'
      Size = 100
    end
    object Dbx_ClientesCIDADEENT: TStringField
      FieldName = 'CIDADEENT'
      Size = 40
    end
    object Dbx_ClientesCEPENT: TStringField
      FieldName = 'CEPENT'
      FixedChar = True
      Size = 9
    end
    object Dbx_ClientesTELEFONEENT: TStringField
      FieldName = 'TELEFONEENT'
      Size = 10
    end
    object Dbx_ClientesENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 100
    end
    object Dbx_ClientesCOMPLCOB: TStringField
      FieldName = 'COMPLCOB'
      Size = 50
    end
    object Dbx_ClientesBAIRROCOB: TStringField
      FieldName = 'BAIRROCOB'
      Size = 100
    end
    object Dbx_ClientesCIDADECOB: TStringField
      FieldName = 'CIDADECOB'
      Size = 40
    end
    object Dbx_ClientesCEPCOB: TStringField
      FieldName = 'CEPCOB'
      FixedChar = True
      Size = 9
    end
    object Dbx_ClientesTELEFONECOB: TStringField
      FieldName = 'TELEFONECOB'
      Size = 10
    end
    object Dbx_ClientesESTADOCOM: TStringField
      FieldName = 'ESTADOCOM'
      FixedChar = True
      Size = 2
    end
    object Dbx_ClientesESTADOENT: TStringField
      FieldName = 'ESTADOENT'
      FixedChar = True
      Size = 2
    end
    object Dbx_ClientesESTADOCOB: TStringField
      FieldName = 'ESTADOCOB'
      FixedChar = True
      Size = 2
    end
    object Dbx_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Dbx_ClientesSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object Dbx_ClientesLIMITE: TFMTBCDField
      FieldName = 'LIMITE'
      Precision = 18
      Size = 2
    end
    object Dbx_ClientesDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object Dbx_ClientesTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 60
    end
    object Dbx_ClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object Dbx_ClientesOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object Dbx_ClientesREFERENCIA_END: TStringField
      FieldName = 'REFERENCIA_END'
      Size = 150
    end
    object Dbx_ClientesREFERENCIA_OUT: TStringField
      FieldName = 'REFERENCIA_OUT'
      Size = 150
    end
    object Dbx_ClientesCTIPOCLI: TIntegerField
      FieldName = 'CTIPOCLI'
    end
    object Dbx_ClientesPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Dbx_ClientesREDUCAOICMS: TStringField
      FieldName = 'REDUCAOICMS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ClientesCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 30
    end
    object Dbx_ClientesCVEND: TIntegerField
      FieldName = 'CVEND'
    end
    object Dbx_ClientesCONTRATO: TStringField
      FieldName = 'CONTRATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 12
    end
    object Dbx_ClientesDATANASC: TDateField
      FieldName = 'DATANASC'
    end
    object Dbx_ClientesCSITCAD: TIntegerField
      FieldName = 'CSITCAD'
    end
    object Dbx_ClientesDTPESPCERASA: TDateField
      FieldName = 'DTPESPCERASA'
    end
    object Dbx_ClientesDDDFS: TStringField
      FieldName = 'DDDFS'
      Size = 2
    end
    object Dbx_ClientesDDDECOB: TStringField
      FieldName = 'DDDECOB'
      Size = 2
    end
    object Dbx_ClientesDDDEENT: TStringField
      FieldName = 'DDDEENT'
      Size = 2
    end
    object Dbx_ClientesDDDECOM: TStringField
      FieldName = 'DDDECOM'
      Size = 2
    end
    object Dbx_ClientesCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Dbx_ClientesNROCOB: TStringField
      FieldName = 'NROCOB'
      Size = 10
    end
    object Dbx_ClientesNROENT: TStringField
      FieldName = 'NROENT'
      Size = 10
    end
    object Dbx_ClientesNROCOM: TStringField
      FieldName = 'NROCOM'
      Size = 10
    end
    object Dbx_ClientesCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
    object Dbx_ClientesCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Dbx_ClientesCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object Dbx_ClientesSOHMARKETING: TStringField
      FieldName = 'SOHMARKETING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ClientesCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Dbx_ClientesFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Dbx_ClientesFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 100
    end
    object Dbx_ClientesRESPONSAVELFIN: TStringField
      FieldName = 'RESPONSAVELFIN'
      Size = 60
    end
    object Dbx_ClientesRESPONSAVELENT: TStringField
      FieldName = 'RESPONSAVELENT'
      Size = 60
    end
    object Dbx_ClientesRESPONSAVELCOM: TStringField
      FieldName = 'RESPONSAVELCOM'
      Size = 60
    end
    object Dbx_ClientesRGRESPONSAVELFIN: TStringField
      FieldName = 'RGRESPONSAVELFIN'
    end
    object Dbx_ClientesCPFRESPONSAVELFIN: TStringField
      FieldName = 'CPFRESPONSAVELFIN'
      Size = 18
    end
    object Dbx_ClientesRGRESPONSAVELCOM: TStringField
      FieldName = 'RGRESPONSAVELCOM'
    end
    object Dbx_ClientesCPFRESPONSAVELCOM: TStringField
      FieldName = 'CPFRESPONSAVELCOM'
      Size = 18
    end
    object Dbx_ClientesRGRESPONSAVELENT: TStringField
      FieldName = 'RGRESPONSAVELENT'
    end
    object Dbx_ClientesCPFRESPONSAVELENT: TStringField
      FieldName = 'CPFRESPONSAVELENT'
      Size = 18
    end
    object Dbx_ClientesOUTINF1: TStringField
      FieldName = 'OUTINF1'
      Size = 40
    end
    object Dbx_ClientesOUTINF2: TStringField
      FieldName = 'OUTINF2'
      Size = 40
    end
    object Dbx_ClientesOUTINF3: TStringField
      FieldName = 'OUTINF3'
      Size = 40
    end
    object Dbx_ClientesOUTINF4: TStringField
      FieldName = 'OUTINF4'
      Size = 40
    end
    object Dbx_ClientesOUTINF5: TStringField
      FieldName = 'OUTINF5'
      Size = 40
    end
    object Dbx_ClientesOUTINF6: TStringField
      FieldName = 'OUTINF6'
      Size = 40
    end
    object Dbx_ClientesOUTINF7: TStringField
      FieldName = 'OUTINF7'
      Size = 40
    end
    object Dbx_ClientesOUTINF8: TStringField
      FieldName = 'OUTINF8'
      Size = 40
    end
    object Dbx_ClientesOUTINF9: TStringField
      FieldName = 'OUTINF9'
      Size = 40
    end
    object Dbx_ClientesOUTINF10: TStringField
      FieldName = 'OUTINF10'
      Size = 40
    end
    object Dbx_ClientesCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_ClientesCAUX: TStringField
      FieldName = 'CAUX'
    end
    object Dbx_ClientesCCONDPAGTO: TIntegerField
      FieldName = 'CCONDPAGTO'
    end
  end
  object Dsp_Clientes: TDataSetProvider
    DataSet = Dbx_Clientes
    UpdateMode = upWhereKeyOnly
    Left = 139
    Top = 227
  end
  object Cds_Clientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Clientes'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_ClientesBeforePost
    AfterPost = Cds_ClientesAfterPost
    AfterScroll = Cds_ClientesAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 152
    Top = 243
    object IntegerField38: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ClientesBAIRROCOM: TStringField
      FieldName = 'BAIRROCOM'
      Size = 100
    end
    object Cds_ClientesCEPCOM: TStringField
      FieldName = 'CEPCOM'
      EditMask = '#####-###'
      FixedChar = True
      Size = 9
    end
    object Cds_ClientesTELEFONECOM: TStringField
      FieldName = 'TELEFONECOM'
      Size = 10
    end
    object Cds_ClientesCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object Cds_ClientesIE: TStringField
      FieldName = 'IE'
    end
    object Cds_ClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object Cds_ClientesBAIRROENT: TStringField
      FieldName = 'BAIRROENT'
      Size = 100
    end
    object Cds_ClientesCEPENT: TStringField
      FieldName = 'CEPENT'
      EditMask = '#####-###'
      FixedChar = True
      Size = 9
    end
    object Cds_ClientesTELEFONEENT: TStringField
      FieldName = 'TELEFONEENT'
      Size = 10
    end
    object Cds_ClientesBAIRROCOB: TStringField
      FieldName = 'BAIRROCOB'
      Size = 100
    end
    object Cds_ClientesCEPCOB: TStringField
      FieldName = 'CEPCOB'
      EditMask = '#####-###'
      FixedChar = True
      Size = 9
    end
    object Cds_ClientesTELEFONECOB: TStringField
      FieldName = 'TELEFONECOB'
      Size = 10
    end
    object Cds_ClientesESTADOCOM: TStringField
      FieldName = 'ESTADOCOM'
      FixedChar = True
      Size = 2
    end
    object Cds_ClientesESTADOENT: TStringField
      FieldName = 'ESTADOENT'
      FixedChar = True
      Size = 2
    end
    object Cds_ClientesESTADOCOB: TStringField
      FieldName = 'ESTADOCOB'
      FixedChar = True
      Size = 2
    end
    object Cds_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object Cds_ClientesSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
    object Cds_ClientesLIMITE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'LIMITE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_ClientesDTCAD: TDateField
      FieldName = 'DTCAD'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_ClientesNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object Cds_ClientesENDCOM: TStringField
      FieldName = 'ENDCOM'
      Size = 100
    end
    object Cds_ClientesCOMPLCOM: TStringField
      FieldName = 'COMPLCOM'
      Size = 50
    end
    object Cds_ClientesCIDADECOM: TStringField
      FieldName = 'CIDADECOM'
      Size = 40
    end
    object Cds_ClientesENDENT: TStringField
      FieldName = 'ENDENT'
      Size = 100
    end
    object Cds_ClientesCOMPLENT: TStringField
      FieldName = 'COMPLENT'
      Size = 50
    end
    object Cds_ClientesCIDADEENT: TStringField
      FieldName = 'CIDADEENT'
      Size = 40
    end
    object Cds_ClientesENDCOB: TStringField
      FieldName = 'ENDCOB'
      Size = 100
    end
    object Cds_ClientesCOMPLCOB: TStringField
      FieldName = 'COMPLCOB'
      Size = 50
    end
    object Cds_ClientesCIDADECOB: TStringField
      FieldName = 'CIDADECOB'
      Size = 40
    end
    object Cds_ClientesTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 60
    end
    object Cds_ClientesFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 60
    end
    object Cds_ClientesOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object Cds_ClientesREFERENCIA_END: TStringField
      FieldName = 'REFERENCIA_END'
      Size = 150
    end
    object Cds_ClientesREFERENCIA_OUT: TStringField
      FieldName = 'REFERENCIA_OUT'
      Size = 150
    end
    object Cds_ClientesCTIPOCLI: TIntegerField
      FieldName = 'CTIPOCLI'
    end
    object Cds_ClientesPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Cds_ClientesREDUCAOICMS: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'REDUCAOICMS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_ClientesCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 30
    end
    object Cds_ClientesCVEND: TIntegerField
      FieldName = 'CVEND'
    end
    object Cds_ClientesCONTRATO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CONTRATO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_ClientesCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 12
    end
    object Cds_ClientesDATANASC: TDateField
      FieldName = 'DATANASC'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_ClientesCSITCAD: TIntegerField
      FieldName = 'CSITCAD'
    end
    object Cds_ClientesDTPESPCERASA: TDateField
      FieldName = 'DTPESPCERASA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_ClientesDDDFS: TStringField
      FieldName = 'DDDFS'
      Size = 2
    end
    object Cds_ClientesDDDECOB: TStringField
      FieldName = 'DDDECOB'
      Size = 2
    end
    object Cds_ClientesDDDEENT: TStringField
      FieldName = 'DDDEENT'
      Size = 2
    end
    object Cds_ClientesDDDECOM: TStringField
      FieldName = 'DDDECOM'
      Size = 2
    end
    object Cds_ClientesCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Cds_ClientesNROCOB: TStringField
      FieldName = 'NROCOB'
      Size = 10
    end
    object Cds_ClientesNROENT: TStringField
      FieldName = 'NROENT'
      Size = 10
    end
    object Cds_ClientesNROCOM: TStringField
      FieldName = 'NROCOM'
      Size = 10
    end
    object Cds_ClientesCODUFIBGE: TIntegerField
      FieldName = 'CODUFIBGE'
    end
    object Cds_ClientesCODMIBGE: TIntegerField
      FieldName = 'CODMIBGE'
    end
    object Cds_Clientesdescufibge: TStringField
      FieldKind = fkLookup
      FieldName = 'descufibge'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODUFIBGE'
      Size = 2
      Lookup = True
    end
    object Cds_Clientesnumufibge: TStringField
      FieldKind = fkLookup
      FieldName = 'numufibge'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODUFIBGE'
      KeyFields = 'CODUFIBGE'
      Size = 12
      Lookup = True
    end
    object Cds_Clientesdescmibge: TStringField
      FieldKind = fkLookup
      FieldName = 'descmibge'
      LookupDataSet = Cds_Munic
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMIBGE'
      Lookup = True
    end
    object Cds_Clientesnummibge: TStringField
      FieldKind = fkLookup
      FieldName = 'nummibge'
      LookupDataSet = Cds_Munic
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODMIBGE'
      KeyFields = 'CODMIBGE'
      Size = 12
      Lookup = True
    end
    object Cds_ClientesCODPAIS: TIntegerField
      FieldName = 'CODPAIS'
    end
    object Cds_Clientesdescpaisibge: TStringField
      FieldKind = fkLookup
      FieldName = 'descpaisibge'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODPAIS'
      Lookup = True
    end
    object Cds_Clientesnumpaisibge: TStringField
      FieldKind = fkLookup
      FieldName = 'numpaisibge'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODPIBGE'
      KeyFields = 'CODPAIS'
      Size = 12
      Lookup = True
    end
    object Cds_ClientesSOHMARKETING: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'SOHMARKETING'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_ClientesCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Cds_ClientesFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Cds_ClientesFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 100
    end
    object Cds_ClientesRESPONSAVELFIN: TStringField
      FieldName = 'RESPONSAVELFIN'
      Size = 60
    end
    object Cds_ClientesRESPONSAVELENT: TStringField
      FieldName = 'RESPONSAVELENT'
      Size = 60
    end
    object Cds_ClientesRESPONSAVELCOM: TStringField
      FieldName = 'RESPONSAVELCOM'
      Size = 60
    end
    object Cds_ClientesRGRESPONSAVELFIN: TStringField
      FieldName = 'RGRESPONSAVELFIN'
    end
    object Cds_ClientesCPFRESPONSAVELFIN: TStringField
      FieldName = 'CPFRESPONSAVELFIN'
      Size = 18
    end
    object Cds_ClientesRGRESPONSAVELCOM: TStringField
      FieldName = 'RGRESPONSAVELCOM'
    end
    object Cds_ClientesCPFRESPONSAVELCOM: TStringField
      FieldName = 'CPFRESPONSAVELCOM'
      Size = 18
    end
    object Cds_ClientesRGRESPONSAVELENT: TStringField
      FieldName = 'RGRESPONSAVELENT'
    end
    object Cds_ClientesCPFRESPONSAVELENT: TStringField
      FieldName = 'CPFRESPONSAVELENT'
      Size = 18
    end
    object Cds_Clientesntipotab: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipotab'
      LookupDataSet = Cds_Tipotab
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTIPOTAB'
      Size = 30
      Lookup = True
    end
    object Cds_ClientesOUTINF1: TStringField
      FieldName = 'OUTINF1'
      Size = 40
    end
    object Cds_ClientesOUTINF2: TStringField
      FieldName = 'OUTINF2'
      Size = 40
    end
    object Cds_ClientesOUTINF3: TStringField
      FieldName = 'OUTINF3'
      Size = 40
    end
    object Cds_ClientesOUTINF4: TStringField
      FieldName = 'OUTINF4'
      Size = 40
    end
    object Cds_ClientesOUTINF5: TStringField
      FieldName = 'OUTINF5'
      Size = 40
    end
    object Cds_ClientesOUTINF6: TStringField
      FieldName = 'OUTINF6'
      Size = 40
    end
    object Cds_ClientesOUTINF7: TStringField
      FieldName = 'OUTINF7'
      Size = 40
    end
    object Cds_ClientesOUTINF8: TStringField
      FieldName = 'OUTINF8'
      Size = 40
    end
    object Cds_ClientesOUTINF9: TStringField
      FieldName = 'OUTINF9'
      Size = 40
    end
    object Cds_ClientesOUTINF10: TStringField
      FieldName = 'OUTINF10'
      Size = 40
    end
    object Cds_ClientesCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_ClientesCAUX: TStringField
      FieldName = 'CAUX'
    end
    object Cds_ClientesCCONDPAGTO: TIntegerField
      FieldName = 'CCONDPAGTO'
    end
    object Cds_Clientesncondpgto: TStringField
      FieldKind = fkLookup
      FieldName = 'ncondpgto'
      LookupDataSet = cds_cond_pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCONDPAGTO'
      Size = 40
      Lookup = True
    end
  end
  object Dts_Clientes: TDataSource
    DataSet = Cds_Clientes
    OnDataChange = Dts_ClientesDataChange
    Left = 163
    Top = 259
  end
  object Dbx_Classe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from classe')
    SQLConnection = Sql_Dados
    Left = 219
    Top = 211
    object IntegerField27: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ClasseDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_ClasseCCLAP: TIntegerField
      FieldName = 'CCLAP'
    end
    object Dbx_ClasseSUBGRU: TIntegerField
      FieldName = 'SUBGRU'
    end
    object Dbx_ClasseAGRUPCOD: TStringField
      FieldName = 'AGRUPCOD'
      Size = 30
    end
    object Dbx_ClasseCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Classe: TDataSetProvider
    DataSet = Dbx_Classe
    UpdateMode = upWhereKeyOnly
    Left = 235
    Top = 227
  end
  object Cds_Classe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Classe'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_ClasseAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 251
    Top = 243
    object IntegerField28: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ClasseDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_ClasseCCLAP: TIntegerField
      FieldName = 'CCLAP'
    end
    object Cds_Classenclap: TStringField
      FieldKind = fkLookup
      FieldName = 'nclap'
      LookupDataSet = Cds_Classep
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCLAP'
      Size = 50
      Lookup = True
    end
    object Cds_Classejan: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'jan'
      Calculated = True
    end
    object Cds_Classefev: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'fev'
      Calculated = True
    end
    object Cds_Classemar: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'mar'
      Calculated = True
    end
    object Cds_Classeabr: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'abr'
      Calculated = True
    end
    object Cds_Classemai: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'mai'
      Calculated = True
    end
    object Cds_Classejun: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'jun'
      Calculated = True
    end
    object Cds_Classejul: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'jul'
      Calculated = True
    end
    object Cds_Classeago: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ago'
      Calculated = True
    end
    object Cds_Classesete: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'sete'
      Calculated = True
    end
    object Cds_Classeout: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'out'
      Calculated = True
    end
    object Cds_Classenov: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'nov'
      Calculated = True
    end
    object Cds_Classedez: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'dez'
      Calculated = True
    end
    object Cds_ClasseSUBGRU: TIntegerField
      FieldName = 'SUBGRU'
    end
    object Cds_ClasseAGRUPCOD: TStringField
      FieldName = 'AGRUPCOD'
      Size = 30
    end
    object Cds_ClasseCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Classe: TDataSource
    DataSet = Cds_Classe
    Left = 267
    Top = 259
  end
  object Dbx_Classep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from classep')
    SQLConnection = Sql_Dados
    Left = 323
    Top = 211
    object IntegerField33: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ClassepDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Dbx_ClassepCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Classep: TDataSetProvider
    DataSet = Dbx_Classep
    UpdateMode = upWhereKeyOnly
    Left = 339
    Top = 227
  end
  object Cds_Classep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Classep'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_ClassepAfterPost
    AfterScroll = Cds_ClassepAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 355
    Top = 243
    object IntegerField35: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ClassepDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Cds_ClassepCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Classep: TDataSource
    DataSet = Cds_Classep
    Left = 371
    Top = 259
  end
  object Dbx_Pagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from pagar')
    SQLConnection = Sql_Dados
    Left = 419
    Top = 211
    object IntegerField34: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_PagarDTL: TDateField
      FieldName = 'DTL'
    end
    object Dbx_PagarDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_PagarDTV: TDateField
      FieldName = 'DTV'
    end
    object Dbx_PagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_PagarVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      Precision = 18
      Size = 2
    end
    object Dbx_PagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_PagarDOC: TStringField
      FieldName = 'DOC'
      Size = 30
    end
    object Dbx_PagarCCLA: TIntegerField
      FieldName = 'CCLA'
    end
    object Dbx_PagarCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Dbx_PagarCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_PagarOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_PagarCTPPAGTO: TIntegerField
      FieldName = 'CTPPAGTO'
    end
    object Dbx_PagarNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 15
    end
    object Dbx_PagarDTB: TDateField
      FieldName = 'DTB'
    end
    object Dbx_PagarCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Dbx_PagarC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Dbx_PagarVALORREAL: TFMTBCDField
      FieldName = 'VALORREAL'
      Precision = 18
      Size = 2
    end
    object Dbx_PagarEHENTREGA: TStringField
      FieldName = 'EHENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_PagarNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_PagarNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Dbx_PagarCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_PagarCCONTADOR_MULTPAGAR: TIntegerField
      FieldName = 'CCONTADOR_MULTPAGAR'
    end
    object Dbx_PagarPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object Dbx_PagarPARC: TStringField
      FieldName = 'PARC'
      Size = 6
    end
    object Dbx_PagarPARTE: TStringField
      FieldName = 'PARTE'
      Size = 6
    end
  end
  object Dsp_Pagar: TDataSetProvider
    DataSet = Dbx_Pagar
    UpdateMode = upWhereKeyOnly
    Left = 435
    Top = 227
  end
  object Cds_Pagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Pagar'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_PagarAfterPost
    AfterScroll = Cds_PagarAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 451
    Top = 243
    object IntegerField36: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_PagarDTL: TDateField
      FieldName = 'DTL'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_PagarDTE: TDateField
      FieldName = 'DTE'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_PagarDTV: TDateField
      FieldName = 'DTV'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_PagarVALOR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_PagarVALLIQ: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_PagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_PagarDOC: TStringField
      FieldName = 'DOC'
      Size = 30
    end
    object Cds_PagarCCLA: TIntegerField
      FieldName = 'CCLA'
    end
    object Cds_PagarCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Cds_PagarCSIT: TIntegerField
      DefaultExpression = '1'
      FieldName = 'CSIT'
    end
    object Cds_PagarOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_Pagarncla: TStringField
      FieldKind = fkLookup
      FieldName = 'ncla'
      LookupDataSet = Cds_Classe
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCLA'
      Size = 60
      Lookup = True
    end
    object Cds_Pagarnfor: TStringField
      FieldKind = fkLookup
      FieldName = 'nfor'
      LookupDataSet = Cds_Fornecedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFOR'
      Size = 50
      Lookup = True
    end
    object Cds_Pagarnsituapagar: TStringField
      FieldKind = fkLookup
      FieldName = 'nsituapagar'
      LookupDataSet = Cds_SituPagar
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSIT'
      Size = 60
      Lookup = True
    end
    object Cds_PagarCTPPAGTO: TIntegerField
      FieldName = 'CTPPAGTO'
    end
    object Cds_PagarNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 15
    end
    object Cds_Pagarnagrupcod: TStringField
      FieldKind = fkLookup
      FieldName = 'nagrupcod'
      LookupDataSet = Cds_Classe
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'AGRUPCOD'
      KeyFields = 'CCLA'
      Size = 30
      Lookup = True
    end
    object Cds_PagarDTB: TDateField
      FieldName = 'DTB'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_PagarCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Cds_Pagarntipoop: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipoop'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODTIPOP'
      Size = 30
      Lookup = True
    end
    object Cds_PagarC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Cds_Pagarntipopgto: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipopgto'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'C_TIPO_PGTO'
      Size = 30
      Lookup = True
    end
    object Cds_PagarVALORREAL: TFMTBCDField
      FieldName = 'VALORREAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_PagarEHENTREGA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHENTREGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_PagarNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_PagarNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Cds_PagarCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_PagarCCONTADOR_MULTPAGAR: TIntegerField
      FieldName = 'CCONTADOR_MULTPAGAR'
    end
    object Cds_PagarPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object Cds_PagarPARC: TStringField
      FieldName = 'PARC'
      Size = 6
    end
    object Cds_PagarPARTE: TStringField
      FieldName = 'PARTE'
      Size = 6
    end
  end
  object Dts_Pagar: TDataSource
    DataSet = Cds_Pagar
    OnUpdateData = Dts_PagarUpdateData
    Left = 467
    Top = 259
  end
  object Dbx_SituRec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SituRec')
    SQLConnection = Sql_Dados
    Left = 515
    Top = 211
    object IntegerField37: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SituRecDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_SituRecCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SituRec: TDataSetProvider
    DataSet = Dbx_SituRec
    UpdateMode = upWhereKeyOnly
    Left = 531
    Top = 227
  end
  object Cds_SituRec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SituRec'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_SituRecAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 547
    Top = 243
    object IntegerField42: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SituRecDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_SituRecCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SituRec: TDataSource
    DataSet = Cds_SituRec
    OnDataChange = Dts_SituRecDataChange
    Left = 563
    Top = 259
  end
  object Dbx_SituPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SituPagar')
    SQLConnection = Sql_Dados
    Left = 611
    Top = 211
    object IntegerField39: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SituPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_SituPagarCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SituPagar: TDataSetProvider
    DataSet = Dbx_SituPagar
    UpdateMode = upWhereKeyOnly
    Left = 627
    Top = 227
  end
  object Cds_SituPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SituPagar'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_SituPagarAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 643
    Top = 243
    object IntegerField40: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SituPagarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_SituPagarCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SituPagar: TDataSource
    DataSet = Cds_SituPagar
    OnDataChange = Dts_SituPagarDataChange
    Left = 659
    Top = 259
  end
  object Dbx_Temp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from temp')
    SQLConnection = Sql_Dados
    Left = 707
    Top = 211
    object IntegerField41: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TempCODCLA: TIntegerField
      FieldName = 'CODCLA'
    end
    object Dbx_TempCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object Dbx_TempCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object Dbx_TempCODSITPAGAR: TIntegerField
      FieldName = 'CODSITPAGAR'
    end
    object Dbx_TempCODSITREC: TIntegerField
      FieldName = 'CODSITREC'
    end
    object Dbx_TempCODPRO: TIntegerField
      FieldName = 'CODPRO'
    end
    object Dbx_TempCODFUN: TIntegerField
      FieldName = 'CODFUN'
    end
    object Dbx_TempCODTIPOPROD: TIntegerField
      FieldName = 'CODTIPOPROD'
    end
    object Dbx_TempCOD: TIntegerField
      FieldName = 'COD'
    end
    object Dbx_TempCOD1: TIntegerField
      FieldName = 'COD1'
    end
    object Dbx_TempCOD2: TIntegerField
      FieldName = 'COD2'
    end
    object Dbx_TempCOD3: TIntegerField
      FieldName = 'COD3'
    end
    object Dbx_TempCOD4: TIntegerField
      FieldName = 'COD4'
    end
    object Dbx_TempCOD5: TIntegerField
      FieldName = 'COD5'
    end
    object Dbx_TempCOD6: TIntegerField
      FieldName = 'COD6'
    end
    object Dbx_TempCOD7: TIntegerField
      FieldName = 'COD7'
    end
    object Dbx_TempCOD8: TIntegerField
      FieldName = 'COD8'
    end
    object Dbx_TempCOD9: TIntegerField
      FieldName = 'COD9'
    end
    object Dbx_TempCOD10: TIntegerField
      FieldName = 'COD10'
    end
    object Dbx_TempCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Temp: TDataSetProvider
    DataSet = Dbx_Temp
    UpdateMode = upWhereKeyOnly
    Left = 723
    Top = 227
  end
  object Cds_Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Temp'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_TempAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 739
    Top = 243
    object IntegerField43: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TempCODCLA: TIntegerField
      FieldName = 'CODCLA'
    end
    object Cds_TempCODFOR: TIntegerField
      FieldName = 'CODFOR'
    end
    object Cds_TempCODCLI: TIntegerField
      FieldName = 'CODCLI'
    end
    object Cds_TempCODSITPAGAR: TIntegerField
      FieldName = 'CODSITPAGAR'
    end
    object Cds_TempCODSITREC: TIntegerField
      FieldName = 'CODSITREC'
    end
    object Cds_Tempnomecla: TStringField
      FieldKind = fkLookup
      FieldName = 'nomecla'
      LookupDataSet = Cds_Classe
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODCLA'
      Size = 50
      Lookup = True
    end
    object Cds_Tempnomefor: TStringField
      FieldKind = fkLookup
      FieldName = 'nomefor'
      LookupDataSet = Cds_Fornecedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFOR'
      Size = 50
      Lookup = True
    end
    object Cds_Tempnomecli: TStringField
      FieldKind = fkLookup
      FieldName = 'nomecli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLI'
      Size = 50
      Lookup = True
    end
    object Cds_Tempnomesitpagar: TStringField
      FieldKind = fkLookup
      FieldName = 'nomesitpagar'
      LookupDataSet = Dbx_SituPagar
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODSITPAGAR'
      Size = 60
      Lookup = True
    end
    object Cds_Tempnomesitrec: TStringField
      FieldKind = fkLookup
      FieldName = 'nomesitrec'
      LookupDataSet = Cds_SituRec
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODSITREC'
      Size = 50
      Lookup = True
    end
    object Cds_TempCODPRO: TIntegerField
      FieldName = 'CODPRO'
    end
    object Cds_TempCODFUN: TIntegerField
      FieldName = 'CODFUN'
    end
    object Cds_TempCODTIPOPROD: TIntegerField
      FieldName = 'CODTIPOPROD'
    end
    object Cds_Tempntipo_prod: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipo_prod'
      LookupDataSet = Cds_Tipo_Prod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODTIPOPROD'
      Size = 50
      Lookup = True
    end
    object Cds_TempCOD: TIntegerField
      FieldName = 'COD'
    end
    object Cds_TempCOD1: TIntegerField
      FieldName = 'COD1'
    end
    object Cds_TempCOD2: TIntegerField
      FieldName = 'COD2'
    end
    object Cds_TempCOD3: TIntegerField
      FieldName = 'COD3'
    end
    object Cds_TempCOD4: TIntegerField
      FieldName = 'COD4'
    end
    object Cds_TempCOD5: TIntegerField
      FieldName = 'COD5'
    end
    object Cds_TempCOD6: TIntegerField
      FieldName = 'COD6'
    end
    object Cds_TempCOD7: TIntegerField
      FieldName = 'COD7'
    end
    object Cds_TempCOD8: TIntegerField
      FieldName = 'COD8'
    end
    object Cds_TempCOD9: TIntegerField
      FieldName = 'COD9'
    end
    object Cds_TempCOD10: TIntegerField
      FieldName = 'COD10'
    end
    object Cds_TempCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Temp: TDataSource
    DataSet = Cds_Temp
    Left = 755
    Top = 259
  end
  object ADO_Conexao_2: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=200xsystcom;Persist Security Info=Tr' +
      'ue;User ID=SYSDBA;Data Source=Banco de dados MS Access;Initial C' +
      'atalog=C:\Marcos\desenvolvimento\sistemas\rb\dados\bdSystcom'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 128
    Top = 1019
  end
  object RDSC_ESTOQUE: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Dbx_dProdutos
    Left = 344
    Top = 1055
  end
  object Dsp_Exec: TDataSetProvider
    DataSet = Dbx_Exec
    UpdateMode = upWhereKeyOnly
    Left = 808
    Top = 227
  end
  object Cds_Exec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Exec'
    BeforePost = Cds_IndiceBeforePost
    Left = 824
    Top = 243
  end
  object Dts_exec: TDataSource
    DataSet = Cds_Exec
    Left = 832
    Top = 259
  end
  object ADO_Mestre_2: TADOQuery
    Connection = ADO_Conexao_2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tabItens')
    Left = 136
    Top = 1035
  end
  object ADO_Detalhe_2: TADOQuery
    Connection = ADO_Conexao_2
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from tabvenda v inner join tabitens i on i.itnumeronota' +
        ' = v.venumeronota')
    Left = 152
    Top = 1044
  end
  object ADO_Exec_2: TADOQuery
    Connection = ADO_Conexao_2
    Parameters = <>
    Left = 168
    Top = 1059
  end
  object Dbx_Dbf: TQuery
    RequestLive = True
    Left = 328
    Top = 1039
  end
  object Dbx_vProdutos: TSQLQuery
    AfterClose = Cds_ClassepAfterScroll
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vProdutos')
    SQLConnection = Sql_Dados
    Left = 883
    Top = 211
    object Dbx_vProdutosPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosPER: TBCDField
      FieldName = 'PER'
      Precision = 9
      Size = 2
    end
    object Dbx_vProdutosPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Dbx_vProdutosQUA: TFMTBCDField
      FieldName = 'QUA'
      Precision = 18
      Size = 3
    end
    object Dbx_vProdutosCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Dbx_vProdutosCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Dbx_vProdutosCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Dbx_vProdutosQTDEMB: TBCDField
      FieldName = 'QTDEMB'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object Dbx_vProdutosCAUX: TStringField
      FieldName = 'CAUX'
    end
    object Dbx_vProdutosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_vProdutosCFAB: TStringField
      FieldName = 'CFAB'
      Size = 15
    end
    object Dbx_vProdutosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 3
    end
    object Dbx_vProdutosESTMIN: TBCDField
      FieldName = 'ESTMIN'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosESTMAX: TBCDField
      FieldName = 'ESTMAX'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 3
    end
    object Dbx_vProdutosOUTIMPOST: TFMTBCDField
      FieldName = 'OUTIMPOST'
      Precision = 18
      Size = 3
    end
    object Dbx_vProdutosRESERVA: TFMTBCDField
      FieldName = 'RESERVA'
      Precision = 18
      Size = 3
    end
    object Dbx_vProdutosSALDOEST: TBCDField
      FieldName = 'SALDOEST'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosMESCLADO: TStringField
      FieldName = 'MESCLADO'
      FixedChar = True
      Size = 1
    end
    object Dbx_vProdutosVALKM: TStringField
      FieldName = 'VALKM'
      Size = 10
    end
    object Dbx_vProdutosVALDATA: TDateField
      FieldName = 'VALDATA'
    end
    object Dbx_vProdutosIMP: TStringField
      FieldName = 'IMP'
      FixedChar = True
      Size = 1
    end
    object Dbx_vProdutosPRCUBS: TFMTBCDField
      FieldName = 'PRCUBS'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosALIQCUS: TBCDField
      FieldName = 'ALIQCUS'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosSGLIMPFIS: TIntegerField
      FieldName = 'SGLIMPFIS'
    end
    object Dbx_vProdutosVLRADD: TFMTBCDField
      FieldName = 'VLRADD'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosOBNSERIE: TStringField
      FieldName = 'OBNSERIE'
      FixedChar = True
      Size = 1
    end
    object Dbx_vProdutosFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
    object Dbx_vProdutosCAPLIC: TIntegerField
      FieldName = 'CAPLIC'
    end
    object Dbx_vProdutosULTSAI: TDateField
      FieldName = 'ULTSAI'
    end
    object Dbx_vProdutosULTENT: TDateField
      FieldName = 'ULTENT'
    end
    object Dbx_vProdutosULTCONT: TDateField
      FieldName = 'ULTCONT'
    end
    object Dbx_vProdutosCARACTERIST: TStringField
      FieldName = 'CARACTERIST'
      Size = 60
    end
    object Dbx_vProdutosCODPROD: TIntegerField
      FieldName = 'CODPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Dbx_vProdutosACTDESC: TStringField
      FieldName = 'ACTDESC'
      FixedChar = True
      Size = 1
    end
    object Dbx_vProdutosPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Dbx_vProdutosCDESCPROD: TIntegerField
      FieldName = 'CDESCPROD'
    end
    object Dbx_vProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Dbx_vProdutosPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_vProdutosCONT: TStringField
      FieldName = 'CONT'
    end
    object Dbx_vProdutosESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Dbx_vProdutosCTIPO_PROD: TIntegerField
      FieldName = 'CTIPO_PROD'
    end
    object Dbx_vProdutosCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Dbx_vProdutosCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Dbx_vProdutosCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Dbx_vProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Dbx_vProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object Dbx_vProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object Dbx_vProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 100
    end
    object Dbx_vProdutosCCFOP: TIntegerField
      FieldName = 'CCFOP'
    end
    object Dbx_vProdutosCPIS: TIntegerField
      FieldName = 'CPIS'
    end
    object Dbx_vProdutosCCOFINS: TIntegerField
      FieldName = 'CCOFINS'
    end
    object Dbx_vProdutosCMODBC: TIntegerField
      FieldName = 'CMODBC'
    end
    object Dbx_vProdutosCIRII: TIntegerField
      FieldName = 'CIRII'
    end
    object Dbx_vProdutosCVII: TIntegerField
      FieldName = 'CVII'
    end
    object Dbx_vProdutosCOIMP: TIntegerField
      FieldName = 'COIMP'
    end
    object Dbx_vProdutosVBC: TFMTBCDField
      FieldName = 'VBC'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosCMODBCST: TIntegerField
      FieldName = 'CMODBCST'
    end
    object Dbx_vProdutosPMVAST: TBCDField
      FieldName = 'PMVAST'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosPREDBCST: TBCDField
      FieldName = 'PREDBCST'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosVBCST: TFMTBCDField
      FieldName = 'VBCST'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosPICMSST: TBCDField
      FieldName = 'PICMSST'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosVICMSST: TFMTBCDField
      FieldName = 'VICMSST'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosPREDBC: TBCDField
      FieldName = 'PREDBC'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdutosCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Dbx_vProdutosFATOR1: TFMTBCDField
      FieldName = 'FATOR1'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosFATOR2: TFMTBCDField
      FieldName = 'FATOR2'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdutosNCM: TStringField
      FieldName = 'NCM'
    end
    object Dbx_vProdutosINDTOT: TStringField
      FieldName = 'INDTOT'
      FixedChar = True
      Size = 1
    end
    object Dbx_vProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 10
    end
    object Dbx_vProdutosEX: TStringField
      FieldName = 'EX'
      Size = 10
    end
    object Dbx_vProdutoscest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object Dsp_vProdutos: TDataSetProvider
    DataSet = Dbx_vProdutos
    UpdateMode = upWhereKeyOnly
    Left = 899
    Top = 227
  end
  object Cds_vProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_vProdutos'
    AfterInsert = Cds_vProdutosAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_vProdutosBeforePost
    AfterPost = Cds_vProdutosAfterPost
    AfterScroll = Cds_vProdutosAfterScroll
    OnCalcFields = Cds_vProdutosCalcFields
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 915
    Top = 243
    object Cds_vProdutosPRCU: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'PRCU'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object ultu: TBCDField
      DefaultExpression = '0'
      FieldName = 'PER'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_vProdutosPRVE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'PRVE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosFOTO: TGraphicField
      FieldName = 'FOTO'
      BlobType = ftGraphic
    end
    object Cds_vProdutosQUA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'QUA'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object Cds_vProdutosCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Cds_vProdutosCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Cds_vProdutosCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Cds_vProdutosQTDEMB: TBCDField
      FieldName = 'QTDEMB'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object Cds_vProdutosCAUX: TStringField
      FieldName = 'CAUX'
    end
    object Cds_vProdutosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_vProdutosCFAB: TStringField
      FieldName = 'CFAB'
      Size = 15
    end
    object Cds_vProdutosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Precision = 18
      Size = 3
    end
    object Cds_vProdutosESTMIN: TBCDField
      FieldName = 'ESTMIN'
      DisplayFormat = '###,###,##0.000'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosESTMAX: TBCDField
      FieldName = 'ESTMAX'
      DisplayFormat = '###,###,##0.000'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosIPI: TFMTBCDField
      FieldName = 'IPI'
      Precision = 18
      Size = 3
    end
    object Cds_vProdutosOUTIMPOST: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'OUTIMPOST'
      LookupDataSet = ADO_Detalhe
      Precision = 18
      Size = 3
    end
    object Cds_vProdutosRESERVA: TFMTBCDField
      FieldName = 'RESERVA'
      LookupDataSet = ADO_Detalhe
      Precision = 18
      Size = 3
    end
    object Cds_vProdutosSALDOEST: TBCDField
      FieldName = 'SALDOEST'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosMESCLADO: TStringField
      FieldName = 'MESCLADO'
      FixedChar = True
      Size = 1
    end
    object Cds_vProdutosVALKM: TStringField
      FieldName = 'VALKM'
      Size = 10
    end
    object Cds_vProdutosVALDATA: TDateField
      FieldName = 'VALDATA'
    end
    object Cds_vProdutosIMP: TStringField
      FieldName = 'IMP'
      FixedChar = True
      Size = 1
    end
    object Cds_vProdutosPRCUBS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'PRCUBS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosALIQCUS: TBCDField
      DefaultExpression = '0'
      FieldName = 'ALIQCUS'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosSGLIMPFIS: TIntegerField
      FieldName = 'SGLIMPFIS'
    end
    object Cds_vProdutosVLRADD: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VLRADD'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosOBNSERIE: TStringField
      FieldName = 'OBNSERIE'
      FixedChar = True
      Size = 1
    end
    object Cds_vProdutosFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
    object Cds_vProdutosCAPLIC: TIntegerField
      FieldName = 'CAPLIC'
    end
    object Cds_vProdutosULTSAI: TDateField
      FieldName = 'ULTSAI'
    end
    object Cds_vProdutosULTENT: TDateField
      FieldName = 'ULTENT'
    end
    object Cds_vProdutosULTCONT: TDateField
      FieldName = 'ULTCONT'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_vProdutosCARACTERIST: TStringField
      FieldName = 'CARACTERIST'
      Size = 60
    end
    object Cds_vProdutosnuni: TStringField
      FieldKind = fkLookup
      FieldName = 'nuni'
      LookupDataSet = Cds_Unidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUNI'
      Size = 50
      Lookup = True
    end
    object Cds_vProdutosCODPROD: TIntegerField
      FieldName = 'CODPROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Cds_vProdutosACTDESC: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'ACTDESC'
      FixedChar = True
      Size = 1
    end
    object Cds_vProdutosPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Cds_vProdutosCDESCPROD: TIntegerField
      FieldName = 'CDESCPROD'
    end
    object Cds_vProdutosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Cds_vProdutosPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_vProdutosCONT: TStringField
      FieldName = 'CONT'
    end
    object Cds_vProdutosESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Cds_vProdutosCTIPO_PROD: TIntegerField
      FieldName = 'CTIPO_PROD'
    end
    object Cds_vProdutosntipo_prod: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipo_prod'
      LookupDataSet = Cds_Tipo_Prod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTIPO_PROD'
      Size = 60
      Lookup = True
    end
    object Cds_vProdutosCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Cds_vProdutosCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Cds_vProdutosCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Cds_vProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Cds_vProdutosncf: TStringField
      FieldKind = fkLookup
      FieldName = 'ncf'
      LookupDataSet = Cds_CF
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODCF'
      Lookup = True
    end
    object Cds_vProdutosnsita: TStringField
      FieldKind = fkLookup
      FieldName = 'nsita'
      LookupDataSet = Cds_SITA
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODSITA'
      Lookup = True
    end
    object Cds_vProdutosnsitb: TStringField
      FieldKind = fkLookup
      FieldName = 'nsitb'
      LookupDataSet = Cds_SITB
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODSITB'
      Lookup = True
    end
    object Cds_vProdutosnsigla: TStringField
      FieldKind = fkLookup
      FieldName = 'nsiglaicms'
      LookupDataSet = Cds_AliqImpFis
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'SGLIMPFIS'
      Size = 10
      Lookup = True
    end
    object Cds_vProdutosnipi: TStringField
      FieldKind = fkLookup
      FieldName = 'nipi'
      LookupDataSet = Cds_IPI
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODIPI'
      Lookup = True
    end
    object Cds_vProdutosnmarca: TStringField
      FieldKind = fkLookup
      FieldName = 'nmarca'
      LookupDataSet = Cds_Marca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CMAR'
      Size = 60
      Lookup = True
    end
    object Cds_vProdutosngrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'ngrupo'
      LookupDataSet = Cds_Grupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CGRU'
      Size = 60
      Lookup = True
    end
    object Cds_vProdutoscodmar: TIntegerField
      FieldKind = fkLookup
      FieldName = 'codmar'
      LookupDataSet = Cds_Marca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CMAR'
      Lookup = True
    end
    object Cds_vProdutoscodgru: TIntegerField
      FieldKind = fkLookup
      FieldName = 'codgru'
      LookupDataSet = Cds_Grupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CGRU'
      Lookup = True
    end
    object Cds_vProdutosEntradas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Entradas'
      Calculated = True
    end
    object Cds_vProdutosSaidas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saidas'
      Calculated = True
    end
    object Cds_vProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object Cds_vProdutosAPLICACAO: TStringField
      FieldName = 'APLICACAO'
      Size = 100
    end
    object Cds_vProdutosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 100
    end
    object Cds_vProdutostipo_prod: TStringField
      FieldKind = fkLookup
      FieldName = 'tipo_prod'
      LookupDataSet = Cds_Tipo_Prod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTIPO_PROD'
      Size = 50
      Lookup = True
    end
    object Cds_vProdutostotprod: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totprod'
      Calculated = True
    end
    object Cds_vProdutosCCFOP: TIntegerField
      FieldName = 'CCFOP'
    end
    object Cds_vProdutosncfop: TStringField
      FieldKind = fkLookup
      FieldName = 'ncfop'
      LookupDataSet = Cds_NatOp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CFOP'
      KeyFields = 'CCFOP'
      Size = 11
      Lookup = True
    end
    object Cds_vProdutosndesccfop: TStringField
      FieldKind = fkLookup
      FieldName = 'ndesccfop'
      LookupDataSet = Cds_NatOp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCFOP'
      Size = 50
      Lookup = True
    end
    object Cds_vProdutosCPIS: TIntegerField
      FieldName = 'CPIS'
    end
    object Cds_vProdutosCCOFINS: TIntegerField
      FieldName = 'CCOFINS'
    end
    object Cds_vProdutosCMODBC: TIntegerField
      FieldName = 'CMODBC'
    end
    object Cds_vProdutosCIRII: TIntegerField
      FieldName = 'CIRII'
    end
    object Cds_vProdutosCVII: TIntegerField
      FieldName = 'CVII'
    end
    object Cds_vProdutosCOIMP: TIntegerField
      FieldName = 'COIMP'
    end
    object Cds_vProdutosVBC: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VBC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosCMODBCST: TIntegerField
      FieldName = 'CMODBCST'
    end
    object Cds_vProdutosPMVAST: TBCDField
      DefaultExpression = '0'
      FieldName = 'PMVAST'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosPREDBCST: TBCDField
      DefaultExpression = '0'
      FieldName = 'PREDBCST'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosVBCST: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VBCST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosPICMSST: TBCDField
      DefaultExpression = '0'
      FieldName = 'PICMSST'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosVICMSST: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VICMSST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosPREDBC: TBCDField
      DefaultExpression = '0'
      FieldName = 'PREDBC'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_vProdutosnomepis: TStringField
      FieldKind = fkLookup
      FieldName = 'nomepis'
      LookupDataSet = Cds_pis
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CPIS'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosnomecofins: TStringField
      FieldKind = fkLookup
      FieldName = 'nomecofins'
      LookupDataSet = Cds_Cofins
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CCOFINS'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosnomemodbc: TStringField
      FieldKind = fkLookup
      FieldName = 'nomemodbc'
      LookupDataSet = Cds_ModBc
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CMODBC'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosnomemodbcst: TStringField
      FieldKind = fkLookup
      FieldName = 'nomemodbcst'
      LookupDataSet = cds_modbcst
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CMODBCST'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosnomeirii: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeirii'
      LookupDataSet = Cds_IR_II
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CIRII'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosnomevii: TStringField
      FieldKind = fkLookup
      FieldName = 'nomevii'
      LookupDataSet = Cds_vii
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CVII'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosnomeoimp: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeoimp'
      LookupDataSet = Cds_Oimp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COIMP'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Cds_vProdutosntipotab: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipotab'
      LookupDataSet = Cds_Tipotab
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTIPOTAB'
      Size = 30
      Lookup = True
    end
    object Cds_vProdutosFATOR1: TFMTBCDField
      FieldName = 'FATOR1'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosFATOR2: TFMTBCDField
      FieldName = 'FATOR2'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdutosNCM: TStringField
      FieldName = 'NCM'
    end
    object Cds_vProdutosINDTOT: TStringField
      FieldName = 'INDTOT'
      FixedChar = True
      Size = 1
    end
    object Cds_vProdutosCSOSN: TStringField
      FieldName = 'CSOSN'
      Size = 10
    end
    object Cds_vProdutosEX: TStringField
      FieldName = 'EX'
      Size = 10
    end
    object Cds_vProdutoscest: TStringField
      FieldName = 'cest'
      Size = 40
    end
  end
  object Dts_vProdutos: TDataSource
    DataSet = Cds_vProdutos
    OnUpdateData = Dts_vProdutosUpdateData
    Left = 931
    Top = 259
  end
  object Dbx_vVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vVendas')
    SQLConnection = Sql_Dados
    Left = 27
    Top = 305
    object IntegerField45: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_vVendaCDESCPROD: TIntegerField
      FieldName = 'CDESCPROD'
    end
    object Dbx_vVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_vVendaCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_vVendaQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 2
    end
    object Dbx_vVendaPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_vVendaSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_vVendaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_vVendaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_vVendaCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_vVendaPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_vVendaEHVENDA: TStringField
      FieldName = 'EHVENDA'
      FixedChar = True
      Size = 1
    end
    object Dbx_vVendaVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_vVendaCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_vVendaCODV: TIntegerField
      FieldName = 'CODV'
    end
    object Dbx_vVendaCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Dbx_vVendaNPRO: TStringField
      FieldName = 'NPRO'
      Size = 50
    end
    object Dbx_vVendaTIPOV: TIntegerField
      FieldName = 'TIPOV'
    end
  end
  object Dsp_vVenda: TDataSetProvider
    DataSet = Dbx_vVenda
    UpdateMode = upWhereKeyOnly
    Left = 43
    Top = 321
  end
  object Cds_vVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_vVenda'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_vVendaAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 59
    Top = 337
    object IntegerField60: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_vVendaCDESCPROD: TIntegerField
      FieldName = 'CDESCPROD'
    end
    object Cds_vVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_vVendaCPRO: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CPRO'
    end
    object Cds_vVendaQTDE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'QTDE'
      Precision = 18
      Size = 2
    end
    object Cds_vVendaPRVE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Cds_vVendaSUBTOTAL: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Cds_vVendaCFUN: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CFUN'
    end
    object Cds_vVendaCCLI: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CCLI'
    end
    object Cds_vVendaCREP: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CREP'
    end
    object Cds_vVendaPCOM: TBCDField
      DefaultExpression = '0'
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_vVendaEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      FixedChar = True
      Size = 1
    end
    object Cds_vVendaVCOM: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Cds_vVendaCODSVENDA: TIntegerField
      DefaultExpression = '1'
      FieldName = 'CODSVENDA'
    end
    object Cds_vVendaCODV: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CODV'
    end
    object Cds_vVendaCONTROLE: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CONTROLE'
    end
    object Cds_vVendaNPRO: TStringField
      FieldName = 'NPRO'
      Size = 50
    end
    object Cds_vVendaTIPOV: TIntegerField
      DefaultExpression = '0'
      FieldName = 'TIPOV'
    end
  end
  object Dts_vVenda: TDataSource
    DataSet = Cds_vVenda
    Left = 75
    Top = 353
  end
  object Dbx_MovReg: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from MovReg')
    SQLConnection = Sql_Dados
    Left = 123
    Top = 305
    object IntegerField46: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_MovRegHDNUMBER: TStringField
      FieldName = 'HDNUMBER'
      Size = 40
    end
    object Dbx_MovRegST: TIntegerField
      FieldName = 'ST'
    end
    object Dbx_MovRegCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Dbx_MovRegDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_MovRegHORA: TTimeField
      FieldName = 'HORA'
    end
    object Dbx_MovRegCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Dbx_MovRegCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_MovRegCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_MovReg: TDataSetProvider
    DataSet = Dbx_MovReg
    UpdateMode = upWhereKeyOnly
    Left = 139
    Top = 321
  end
  object Cds_MovReg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_MovReg'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_MovRegAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 155
    Top = 337
    object IntegerField62: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_MovRegHDNUMBER: TStringField
      FieldName = 'HDNUMBER'
      Size = 40
    end
    object Cds_MovRegST: TIntegerField
      FieldName = 'ST'
    end
    object Cds_MovRegCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Cds_MovRegDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_MovRegHORA: TTimeField
      FieldName = 'HORA'
    end
    object Cds_MovRegCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Cds_MovRegCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_MovRegnfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 50
      Lookup = True
    end
    object Cds_MovRegCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_MovReg: TDataSource
    DataSet = Cds_MovReg
    Left = 171
    Top = 353
  end
  object Dbx_Vendab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vendab')
    SQLConnection = Sql_Dados
    Left = 217
    Top = 305
    object IntegerField47: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_VendabNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Dbx_VendabCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_VendabQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object Dbx_VendabPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_VendabCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_VendabCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_VendabPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_VendabEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VendabVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Dbx_VendabEOUS: TStringField
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Dbx_VendabPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Dbx_VendabPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Dbx_VendabVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCUIN: TIntegerField
      FieldName = 'CUIN'
    end
    object Dbx_VendabACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_VendabSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Dbx_VendabCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_VendabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_VendabCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Dbx_VendabITEMECF: TStringField
      FieldName = 'ITEMECF'
      Size = 6
    end
    object Dbx_VendabCMDB: TSmallintField
      FieldName = 'CMDB'
    end
    object Dbx_VendabTPCMDB: TStringField
      FieldName = 'TPCMDB'
      Size = 1
    end
    object Dbx_VendabHORA_OP: TTimeField
      FieldName = 'HORA_OP'
    end
    object Dbx_VendabQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Dbx_VendabQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Dbx_VendabCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_VendabCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
  end
  object Dsp_Vendab: TDataSetProvider
    DataSet = Dbx_Vendab
    UpdateMode = upWhereKeyOnly
    Left = 233
    Top = 321
  end
  object Cds_Vendab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Vendab'
    AfterInsert = Cds_VendabAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_VendabBeforePost
    AfterPost = Cds_VendabAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 249
    Top = 337
    object IntegerField64: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_VendabNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Cds_VendabCPRO: TIntegerField
      FieldName = 'CPRO'
      DisplayFormat = '00000'
    end
    object Cds_VendabQTDE: TFMTBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 3
    end
    object Cds_VendabPRVE: TFMTBCDField
      FieldName = 'PRVE'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_VendabCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_VendabCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_VendabPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_VendabEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VendabVCOM: TFMTBCDField
      FieldName = 'VCOM'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Cds_VendabEOUS: TStringField
      DefaultExpression = #39'S'#39
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Cds_VendabPRCU: TFMTBCDField
      FieldName = 'PRCU'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_VendabDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Cds_VendabPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Cds_VendabVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCUIN: TIntegerField
      FieldName = 'CUIN'
    end
    object Cds_Vendabnuni: TStringField
      FieldKind = fkLookup
      FieldName = 'nuni'
      LookupDataSet = Cds_Unidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUIN'
      Size = 5
      Lookup = True
    end
    object Cds_VendabACTDESC: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_VendabSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Cds_VendabCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_VendabOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_Vendabncli: TStringField
      FieldKind = fkLookup
      FieldName = 'ncli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CCLI'
      Size = 50
      Lookup = True
    end
    object Cds_VendabCOMENTARIO: TStringField
      FieldName = 'COMENTARIO'
      Size = 100
    end
    object Cds_VendabITEMECF: TStringField
      FieldName = 'ITEMECF'
      Size = 6
    end
    object Cds_VendabCMDB: TSmallintField
      FieldName = 'CMDB'
    end
    object Cds_VendabTPCMDB: TStringField
      FieldName = 'TPCMDB'
      Size = 1
    end
    object Cds_VendabHORA_OP: TTimeField
      FieldName = 'HORA_OP'
    end
    object Cds_VendabQUAANT: TFMTBCDField
      FieldName = 'QUAANT'
      Precision = 18
      Size = 3
    end
    object Cds_VendabQUAPOS: TFMTBCDField
      FieldName = 'QUAPOS'
      Precision = 18
      Size = 3
    end
    object Cds_VendabCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_VendabCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
  end
  object Dts_Vendab: TDataSource
    DataSet = Cds_Vendab
    OnDataChange = Dts_VendabDataChange
    Left = 265
    Top = 353
  end
  object Dbx_Config: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from config')
    SQLConnection = Sql_Dados
    Left = 313
    Top = 305
    object IntegerField48: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ConfigCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 120
    end
    object Dbx_ConfigCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 120
    end
    object Dbx_ConfigCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 120
    end
    object Dbx_ConfigCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 120
    end
    object Dbx_ConfigCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Size = 120
    end
    object Dbx_ConfigCAMPO6: TStringField
      FieldName = 'CAMPO6'
      Size = 120
    end
    object Dbx_ConfigCAMPO7: TStringField
      FieldName = 'CAMPO7'
      Size = 120
    end
    object Dbx_ConfigCAMPO8: TStringField
      FieldName = 'CAMPO8'
      Size = 120
    end
    object Dbx_ConfigCAMPO9: TStringField
      FieldName = 'CAMPO9'
      Size = 80
    end
    object Dbx_ConfigCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 80
    end
    object Dbx_ConfigCAMPO11: TStringField
      FieldName = 'CAMPO11'
      Size = 80
    end
    object Dbx_ConfigCAMPO12: TStringField
      FieldName = 'CAMPO12'
      Size = 80
    end
    object Dbx_ConfigCAMPO14: TIntegerField
      FieldName = 'CAMPO14'
    end
    object Dbx_ConfigCAMPO15: TStringField
      FieldName = 'CAMPO15'
      Size = 80
    end
    object Dbx_ConfigCAMPO16: TStringField
      FieldName = 'CAMPO16'
      Size = 11
    end
    object Dbx_ConfigCAMPO151: TStringField
      FieldName = 'CAMPO151'
      Size = 11
    end
    object Dbx_ConfigCAMPO161: TStringField
      FieldName = 'CAMPO161'
      Size = 11
    end
    object Dbx_ConfigCAMPO171: TStringField
      FieldName = 'CAMPO171'
      Size = 11
    end
    object Dbx_ConfigCAMPO181: TStringField
      FieldName = 'CAMPO181'
      Size = 11
    end
    object Dbx_ConfigCAMPO191: TStringField
      FieldName = 'CAMPO191'
      Size = 11
    end
    object Dbx_ConfigCAMPO201: TStringField
      FieldName = 'CAMPO201'
      Size = 11
    end
    object Dbx_ConfigCAMPO152: TStringField
      FieldName = 'CAMPO152'
      Size = 11
    end
    object Dbx_ConfigCAMPO162: TStringField
      FieldName = 'CAMPO162'
      Size = 11
    end
    object Dbx_ConfigCAMPO172: TStringField
      FieldName = 'CAMPO172'
      Size = 11
    end
    object Dbx_ConfigCAMPO182: TStringField
      FieldName = 'CAMPO182'
      Size = 11
    end
    object Dbx_ConfigCAMPO192: TStringField
      FieldName = 'CAMPO192'
      Size = 11
    end
    object Dbx_ConfigCAMPO202: TStringField
      FieldName = 'CAMPO202'
      Size = 11
    end
    object Dbx_ConfigCAMPO153: TStringField
      FieldName = 'CAMPO153'
      Size = 11
    end
    object Dbx_ConfigCAMPO163: TStringField
      FieldName = 'CAMPO163'
      Size = 11
    end
    object Dbx_ConfigCAMPO173: TStringField
      FieldName = 'CAMPO173'
      Size = 11
    end
    object Dbx_ConfigCAMPO183: TStringField
      FieldName = 'CAMPO183'
      Size = 11
    end
    object Dbx_ConfigCAMPO193: TStringField
      FieldName = 'CAMPO193'
      Size = 11
    end
    object Dbx_ConfigCAMPO203: TStringField
      FieldName = 'CAMPO203'
      Size = 11
    end
    object Dbx_ConfigCAMPO154: TStringField
      FieldName = 'CAMPO154'
      Size = 11
    end
    object Dbx_ConfigCAMPO164: TStringField
      FieldName = 'CAMPO164'
      Size = 11
    end
    object Dbx_ConfigCAMPO174: TStringField
      FieldName = 'CAMPO174'
      Size = 11
    end
    object Dbx_ConfigCAMPO184: TStringField
      FieldName = 'CAMPO184'
      Size = 11
    end
    object Dbx_ConfigCAMPO194: TStringField
      FieldName = 'CAMPO194'
      Size = 11
    end
    object Dbx_ConfigCAMPO204: TStringField
      FieldName = 'CAMPO204'
      Size = 11
    end
    object Dbx_ConfigCAMPO13: TStringField
      FieldName = 'CAMPO13'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ConfigLOGO: TGraphicField
      FieldName = 'LOGO'
      BlobType = ftGraphic
    end
    object Dbx_ConfigLOGO1: TGraphicField
      FieldName = 'LOGO1'
      BlobType = ftGraphic
    end
    object Dbx_ConfigFUNDO1: TGraphicField
      FieldName = 'FUNDO1'
      BlobType = ftGraphic
    end
    object Dbx_ConfigFUNDO2: TGraphicField
      FieldName = 'FUNDO2'
      BlobType = ftGraphic
    end
    object Dbx_ConfigFUNDO3: TGraphicField
      FieldName = 'FUNDO3'
      BlobType = ftGraphic
    end
    object Dbx_ConfigSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object Dbx_ConfigFILELOGO: TStringField
      FieldName = 'FILELOGO'
      Size = 150
    end
    object Dbx_ConfigFILELOGO1: TStringField
      FieldName = 'FILELOGO1'
      Size = 150
    end
    object Dbx_ConfigCUFNFE: TIntegerField
      FieldName = 'CUFNFE'
    end
    object Dbx_ConfigCMNFE: TIntegerField
      FieldName = 'CMNFE'
    end
    object Dbx_ConfigNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Dbx_ConfigCAMPO17: TStringField
      FieldName = 'CAMPO17'
      Size = 120
    end
    object Dbx_ConfigCAMPO18: TStringField
      FieldName = 'CAMPO18'
      Size = 50
    end
    object Dbx_ConfigCAMPO19: TStringField
      FieldName = 'CAMPO19'
      Size = 50
    end
    object Dbx_ConfigCAMPO20: TStringField
      FieldName = 'CAMPO20'
      Size = 50
    end
    object Dbx_ConfigBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object Dbx_ConfigCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object Dbx_ConfigCPAIS: TIntegerField
      FieldName = 'CPAIS'
    end
    object Dbx_ConfigFONE: TStringField
      FieldName = 'FONE'
      Size = 30
    end
    object Dbx_ConfigCRT: TIntegerField
      FieldName = 'CRT'
    end
    object strngfldDbx_ConfigORDEM_PRODUCAO: TStringField
      FieldName = 'ORDEM_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_Config: TDataSetProvider
    DataSet = Dbx_Config
    UpdateMode = upWhereKeyOnly
    Left = 329
    Top = 321
  end
  object Cds_Config: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Config'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_ConfigAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 345
    Top = 337
    object IntegerField66: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ConfigCAMPO1: TStringField
      FieldName = 'CAMPO1'
      Size = 120
    end
    object Cds_ConfigCAMPO2: TStringField
      FieldName = 'CAMPO2'
      Size = 120
    end
    object Cds_ConfigCAMPO3: TStringField
      FieldName = 'CAMPO3'
      Size = 120
    end
    object Cds_ConfigCAMPO4: TStringField
      FieldName = 'CAMPO4'
      Size = 120
    end
    object Cds_ConfigCAMPO5: TStringField
      FieldName = 'CAMPO5'
      Size = 120
    end
    object Cds_ConfigCAMPO6: TStringField
      FieldName = 'CAMPO6'
      Size = 120
    end
    object Cds_ConfigCAMPO7: TStringField
      FieldName = 'CAMPO7'
      Size = 120
    end
    object Cds_ConfigCAMPO8: TStringField
      FieldName = 'CAMPO8'
      Size = 120
    end
    object Cds_ConfigCAMPO9: TStringField
      FieldName = 'CAMPO9'
      Size = 80
    end
    object Cds_ConfigCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 80
    end
    object Cds_ConfigCAMPO11: TStringField
      FieldName = 'CAMPO11'
      Size = 80
    end
    object Cds_ConfigCAMPO12: TStringField
      FieldName = 'CAMPO12'
      Size = 80
    end
    object Cds_ConfigCAMPO14: TIntegerField
      FieldName = 'CAMPO14'
    end
    object Cds_ConfigCAMPO15: TStringField
      FieldName = 'CAMPO15'
      Size = 80
    end
    object Cds_ConfigCAMPO16: TStringField
      FieldName = 'CAMPO16'
      Size = 11
    end
    object Cds_ConfigCAMPO151: TStringField
      FieldName = 'CAMPO151'
      Size = 11
    end
    object Cds_ConfigCAMPO161: TStringField
      FieldName = 'CAMPO161'
      Size = 11
    end
    object Cds_ConfigCAMPO171: TStringField
      FieldName = 'CAMPO171'
      Size = 11
    end
    object Cds_ConfigCAMPO181: TStringField
      FieldName = 'CAMPO181'
      Size = 11
    end
    object Cds_ConfigCAMPO191: TStringField
      FieldName = 'CAMPO191'
      Size = 11
    end
    object Cds_ConfigCAMPO201: TStringField
      FieldName = 'CAMPO201'
      Size = 11
    end
    object Cds_ConfigCAMPO152: TStringField
      FieldName = 'CAMPO152'
      Size = 11
    end
    object Cds_ConfigCAMPO162: TStringField
      FieldName = 'CAMPO162'
      Size = 11
    end
    object Cds_ConfigCAMPO172: TStringField
      FieldName = 'CAMPO172'
      Size = 11
    end
    object Cds_ConfigCAMPO182: TStringField
      FieldName = 'CAMPO182'
      Size = 11
    end
    object Cds_ConfigCAMPO192: TStringField
      FieldName = 'CAMPO192'
      Size = 11
    end
    object Cds_ConfigCAMPO202: TStringField
      FieldName = 'CAMPO202'
      Size = 11
    end
    object Cds_ConfigCAMPO153: TStringField
      FieldName = 'CAMPO153'
      Size = 11
    end
    object Cds_ConfigCAMPO163: TStringField
      FieldName = 'CAMPO163'
      Size = 11
    end
    object Cds_ConfigCAMPO173: TStringField
      FieldName = 'CAMPO173'
      Size = 11
    end
    object Cds_ConfigCAMPO183: TStringField
      FieldName = 'CAMPO183'
      Size = 11
    end
    object Cds_ConfigCAMPO193: TStringField
      FieldName = 'CAMPO193'
      Size = 11
    end
    object Cds_ConfigCAMPO203: TStringField
      FieldName = 'CAMPO203'
      Size = 11
    end
    object Cds_ConfigCAMPO154: TStringField
      FieldName = 'CAMPO154'
      Size = 11
    end
    object Cds_ConfigCAMPO164: TStringField
      FieldName = 'CAMPO164'
      Size = 11
    end
    object Cds_ConfigCAMPO174: TStringField
      FieldName = 'CAMPO174'
      Size = 11
    end
    object Cds_ConfigCAMPO184: TStringField
      FieldName = 'CAMPO184'
      Size = 11
    end
    object Cds_ConfigCAMPO194: TStringField
      FieldName = 'CAMPO194'
      Size = 11
    end
    object Cds_ConfigCAMPO204: TStringField
      FieldName = 'CAMPO204'
      Size = 11
    end
    object Cds_ConfigCAMPO13: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CAMPO13'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_ConfigLOGO: TGraphicField
      FieldName = 'LOGO'
      BlobType = ftGraphic
    end
    object Cds_ConfigLOGO1: TGraphicField
      FieldName = 'LOGO1'
      BlobType = ftGraphic
    end
    object Cds_ConfigFUNDO1: TGraphicField
      FieldName = 'FUNDO1'
      BlobType = ftGraphic
    end
    object Cds_ConfigFUNDO2: TGraphicField
      FieldName = 'FUNDO2'
      BlobType = ftGraphic
    end
    object Cds_ConfigFUNDO3: TGraphicField
      FieldName = 'FUNDO3'
      BlobType = ftGraphic
    end
    object Cds_ConfigSITE: TStringField
      FieldName = 'SITE'
      Size = 150
    end
    object Cds_ConfigFILELOGO: TStringField
      FieldName = 'FILELOGO'
      Size = 150
    end
    object Cds_ConfigFILELOGO1: TStringField
      FieldName = 'FILELOGO1'
      Size = 150
    end
    object Cds_Configcodufibge: TStringField
      FieldKind = fkLookup
      FieldName = 'codufibge'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODUFIBGE'
      KeyFields = 'CUFNFE'
      Size = 12
      Lookup = True
    end
    object Cds_Configsiglaufibge: TStringField
      FieldKind = fkLookup
      FieldName = 'siglaufibge'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CUFNFE'
      Size = 2
      Lookup = True
    end
    object Cds_ConfigCUFNFE: TIntegerField
      FieldName = 'CUFNFE'
    end
    object Cds_ConfigCMNFE: TIntegerField
      FieldName = 'CMNFE'
    end
    object Cds_Configcodmibge: TStringField
      FieldKind = fkLookup
      FieldName = 'codmibge'
      LookupDataSet = Cds_Munic
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CMNFE'
      Lookup = True
    end
    object Cds_Configcodmc_ibge: TStringField
      FieldKind = fkLookup
      FieldName = 'codmc_ibge'
      LookupDataSet = Cds_Munic
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODMIBGE'
      KeyFields = 'CMNFE'
      Size = 12
      Lookup = True
    end
    object Cds_ConfigNRO: TStringField
      FieldName = 'NRO'
      Size = 10
    end
    object Cds_ConfigCAMPO17: TStringField
      FieldName = 'CAMPO17'
      Size = 120
    end
    object Cds_ConfigCAMPO18: TStringField
      FieldName = 'CAMPO18'
      Size = 50
    end
    object Cds_ConfigCAMPO19: TStringField
      FieldName = 'CAMPO19'
      Size = 50
    end
    object Cds_ConfigCAMPO20: TStringField
      FieldName = 'CAMPO20'
      Size = 50
    end
    object Cds_ConfigBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 25
    end
    object Cds_ConfigCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object Cds_ConfigCPAIS: TIntegerField
      FieldName = 'CPAIS'
    end
    object Cds_ConfigFONE: TStringField
      FieldName = 'FONE'
      Size = 30
    end
    object Cds_Confignpais: TStringField
      FieldKind = fkLookup
      FieldName = 'npais'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CPAIS'
      Lookup = True
    end
    object Cds_Configcpaisibge: TStringField
      FieldKind = fkLookup
      FieldName = 'cpaisibge'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODPIBGE'
      KeyFields = 'CPAIS'
      Size = 12
      Lookup = True
    end
    object Cds_ConfigCRT: TIntegerField
      FieldName = 'CRT'
    end
    object strngfldCds_ConfigORDEM_PRODUCAO: TStringField
      FieldName = 'ORDEM_PRODUCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dts_Config: TDataSource
    DataSet = Cds_Config
    Left = 361
    Top = 353
  end
  object Dbx_vDvendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select cuni, sum(QTDE) as QtdeT , DESCRICAO, NCO, TIPOOP, PRCU, ' +
        ' PRVE,  Sum(SUBTOTC) as subtotct, Sum(SUBTOTV) as subtotvt,  DAT' +
        'A,  EOUS, CODIGO,  CFUN,  CREP,  CCLI from vDvendas group by cun' +
        'i, QTDE, DESCRICAO, NCO, TIPOOP, PRCU,  PRVE,  SUBTOTC, SUBTOTV,' +
        '  DATA,  EOUS, CODIGO,  CFUN,  CREP,  CCLI ')
    SQLConnection = Sql_Dados
    Left = 409
    Top = 305
    object Dbx_vDvendasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 60
    end
    object Dbx_vDvendasDATA: TDateField
      FieldName = 'DATA'
      ReadOnly = True
    end
    object Dbx_vDvendasQTDET: TFMTBCDField
      FieldName = 'QTDET'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Dbx_vDvendasCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Dbx_vDvendasSUBTOTCT: TFMTBCDField
      FieldName = 'SUBTOTCT'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Dbx_vDvendasSUBTOTVT: TFMTBCDField
      FieldName = 'SUBTOTVT'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Dbx_vDvendasNCO: TIntegerField
      FieldName = 'NCO'
      ReadOnly = True
    end
    object Dbx_vDvendasTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
      ReadOnly = True
    end
    object Dbx_vDvendasPRCU: TFMTBCDField
      FieldName = 'PRCU'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Dbx_vDvendasPRVE: TFMTBCDField
      FieldName = 'PRVE'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Dbx_vDvendasEOUS: TStringField
      FieldName = 'EOUS'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object Dbx_vDvendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object Dbx_vDvendasCFUN: TIntegerField
      FieldName = 'CFUN'
      ReadOnly = True
    end
    object Dbx_vDvendasCREP: TIntegerField
      FieldName = 'CREP'
      ReadOnly = True
    end
    object Dbx_vDvendasCCLI: TIntegerField
      FieldName = 'CCLI'
      ReadOnly = True
    end
  end
  object Dsp_vDvendas: TDataSetProvider
    DataSet = Dbx_vDvendas
    UpdateMode = upWhereKeyOnly
    Left = 425
    Top = 321
  end
  object Cds_vDvendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_vDvendas'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_vDvendasAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 441
    Top = 337
    object Cds_vDvendasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ReadOnly = True
      Size = 60
    end
    object Cds_vDvendasDATA: TDateField
      FieldName = 'DATA'
      ReadOnly = True
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_vDvendasQTDET: TFMTBCDField
      FieldName = 'QTDET'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 2
    end
    object Cds_vDvendasCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Cds_vDvendasnuni: TStringField
      FieldKind = fkLookup
      FieldName = 'nuni'
      LookupDataSet = Cds_Unidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUNI'
      Size = 3
      Lookup = True
    end
    object Cds_vDvendasSUBTOTCT: TFMTBCDField
      FieldName = 'SUBTOTCT'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vDvendasSUBTOTVT: TFMTBCDField
      FieldName = 'SUBTOTVT'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vDvendasNCO: TIntegerField
      FieldName = 'NCO'
      ReadOnly = True
    end
    object Cds_vDvendasTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
      ReadOnly = True
    end
    object Cds_vDvendasPRCU: TFMTBCDField
      FieldName = 'PRCU'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Cds_vDvendasPRVE: TFMTBCDField
      FieldName = 'PRVE'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Cds_vDvendasEOUS: TStringField
      FieldName = 'EOUS'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object Cds_vDvendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object Cds_vDvendasCFUN: TIntegerField
      FieldName = 'CFUN'
      ReadOnly = True
    end
    object Cds_vDvendasCREP: TIntegerField
      FieldName = 'CREP'
      ReadOnly = True
    end
    object Cds_vDvendasCCLI: TIntegerField
      FieldName = 'CCLI'
      ReadOnly = True
    end
  end
  object Dts_vDvendas: TDataSource
    DataSet = Cds_vDvendas
    Left = 457
    Top = 353
  end
  object Dbx_Tipo_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tipo_produto')
    SQLConnection = Sql_Dados
    Left = 512
    Top = 305
    object IntegerField44: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_Tipo_ProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_Tipo_ProdCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Tipo_Prod: TDataSetProvider
    DataSet = Dbx_Tipo_Prod
    UpdateMode = upWhereKeyOnly
    Left = 528
    Top = 321
  end
  object Cds_Tipo_Prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Tipo_Prod'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_Tipo_ProdAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 544
    Top = 337
    object IntegerField67: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_Tipo_ProdDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_Tipo_ProdCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Tipo_Prod: TDataSource
    DataSet = Cds_Tipo_Prod
    Left = 560
    Top = 353
  end
  object Dbx_Conf_NF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from confnf')
    SQLConnection = Sql_Dados
    Left = 603
    Top = 305
    object IntegerField49: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_Conf_NFCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 40
    end
    object Dbx_Conf_NFCOLUNA: TBCDField
      FieldName = 'COLUNA'
      Precision = 9
      Size = 2
    end
    object Dbx_Conf_NFLINHA: TBCDField
      FieldName = 'LINHA'
      Precision = 9
      Size = 2
    end
    object Dbx_Conf_NFIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_Conf_NFESPACO: TIntegerField
      FieldName = 'ESPACO'
    end
    object Dbx_Conf_NFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Conf_NF: TDataSetProvider
    DataSet = Dbx_Conf_NF
    UpdateMode = upWhereKeyOnly
    Left = 619
    Top = 321
  end
  object Cds_Conf_NF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Conf_NF'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 635
    Top = 337
    object IntegerField69: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_Conf_NFCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 40
    end
    object Cds_Conf_NFCOLUNA: TBCDField
      FieldName = 'COLUNA'
      Precision = 9
      Size = 2
    end
    object Cds_Conf_NFLINHA: TBCDField
      FieldName = 'LINHA'
      Precision = 9
      Size = 2
    end
    object Cds_Conf_NFIMPRIME: TStringField
      FieldName = 'IMPRIME'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Conf_NFESPACO: TIntegerField
      FieldName = 'ESPACO'
    end
    object Cds_Conf_NFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Conf_NF: TDataSource
    DataSet = Cds_Conf_NF
    Left = 651
    Top = 353
  end
  object Dbx_NatOp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from NatOp')
    SQLConnection = Sql_Dados
    Left = 691
    Top = 305
    object IntegerField50: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_NatOpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Dbx_NatOpCFOP: TStringField
      FieldName = 'CFOP'
      Size = 11
    end
    object Dbx_NatOpCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_NatOp: TDataSetProvider
    DataSet = Dbx_NatOp
    UpdateMode = upWhereKeyOnly
    Left = 707
    Top = 321
  end
  object Cds_NatOp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_NatOp'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 723
    Top = 337
    object IntegerField71: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_NatOpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Cds_NatOpCFOP: TStringField
      DisplayWidth = 11
      FieldName = 'CFOP'
      Size = 11
    end
    object Cds_NatOpCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_NatOp: TDataSource
    DataSet = Cds_NatOp
    Left = 739
    Top = 353
  end
  object Dbx_TipoCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from TipoCli')
    SQLConnection = Sql_Dados
    Left = 779
    Top = 305
    object IntegerField51: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TipoCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Dbx_TipoCliSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_TipoCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_TipoCli: TDataSetProvider
    DataSet = Dbx_TipoCli
    UpdateMode = upWhereKeyOnly
    Left = 795
    Top = 321
  end
  object Cds_TipoCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_TipoCli'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 811
    Top = 337
    object IntegerField73: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TipoCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object Cds_TipoCliSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_TipoCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_TipoCli: TDataSource
    DataSet = Cds_TipoCli
    Left = 827
    Top = 353
  end
  object Dbx_Transportadores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from transportador')
    SQLConnection = Sql_Dados
    Left = 891
    Top = 305
    object IntegerField52: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TransportadoresNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object Dbx_TransportadoresCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Dbx_TransportadoresIE: TStringField
      FieldName = 'IE'
    end
    object Dbx_TransportadoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object Dbx_TransportadoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Dbx_TransportadoresESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Dbx_TransportadoresCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object Dbx_TransportadoresTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 60
    end
    object Dbx_TransportadoresCOMPL: TStringField
      FieldName = 'COMPL'
      Size = 50
    end
    object Dbx_TransportadoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object Dbx_TransportadoresCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object Dbx_TransportadoresSITE: TStringField
      FieldName = 'SITE'
      Size = 30
    end
    object Dbx_TransportadoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object Dbx_TransportadoresCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Transportadores: TDataSetProvider
    DataSet = Dbx_Transportadores
    UpdateMode = upWhereKeyOnly
    Left = 907
    Top = 321
  end
  object Cds_Transportadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Transportadores'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 923
    Top = 337
    object IntegerField75: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TransportadoresNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object Cds_TransportadoresCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object Cds_TransportadoresIE: TStringField
      FieldName = 'IE'
    end
    object Cds_TransportadoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object Cds_TransportadoresCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object Cds_TransportadoresESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object Cds_TransportadoresCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object Cds_TransportadoresTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 60
    end
    object Cds_TransportadoresCOMPL: TStringField
      FieldName = 'COMPL'
      Size = 50
    end
    object Cds_TransportadoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object Cds_TransportadoresCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 50
    end
    object Cds_TransportadoresSITE: TStringField
      FieldName = 'SITE'
      Size = 30
    end
    object Cds_TransportadoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object Cds_TransportadoresCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Transportadores: TDataSource
    DataSet = Cds_Transportadores
    Left = 939
    Top = 353
  end
  object Dbx_CF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from CF')
    SQLConnection = Sql_Dados
    Left = 19
    Top = 403
    object IntegerField53: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_CFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Dbx_CFSIGLA: TStringField
      FieldName = 'SIGLA'
    end
    object Dbx_CFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_CF: TDataSetProvider
    DataSet = Dbx_CF
    UpdateMode = upWhereKeyOnly
    Left = 35
    Top = 419
  end
  object Cds_CF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_CF'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 51
    Top = 435
    object IntegerField77: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_CFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Cds_CFSIGLA: TStringField
      FieldName = 'SIGLA'
    end
    object Cds_CFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_CF: TDataSource
    DataSet = Cds_CF
    Left = 67
    Top = 451
  end
  object Dbx_SITA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SITA')
    SQLConnection = Sql_Dados
    Left = 99
    Top = 403
    object IntegerField54: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SITADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Dbx_SITASIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 3
    end
    object Dbx_SITACEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SITA: TDataSetProvider
    DataSet = Dbx_SITA
    UpdateMode = upWhereKeyOnly
    Left = 115
    Top = 419
  end
  object Cds_SITA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SITA'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 131
    Top = 435
    object IntegerField55: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SITADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Cds_SITASIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 3
    end
    object Cds_SITACEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SITA: TDataSource
    DataSet = Cds_SITA
    Left = 147
    Top = 451
  end
  object Dbx_SITB: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SITB')
    SQLConnection = Sql_Dados
    Left = 179
    Top = 403
    object IntegerField56: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SITBDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Dbx_SITBSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 3
    end
    object Dbx_SITBCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SITB: TDataSetProvider
    DataSet = Dbx_SITB
    UpdateMode = upWhereKeyOnly
    Left = 195
    Top = 419
  end
  object Cds_SITB: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SITB'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_SITBAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 211
    Top = 435
    object IntegerField57: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SITBDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Cds_SITBSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 3
    end
    object Cds_SITBCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SITB: TDataSource
    DataSet = Cds_SITB
    Left = 224
    Top = 451
  end
  object Dbx_IPI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ipi')
    SQLConnection = Sql_Dados
    Left = 251
    Top = 403
    object IntegerField58: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_IPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Dbx_IPISIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_IPIALIQ: TBCDField
      FieldName = 'ALIQ'
      Precision = 9
      Size = 3
    end
    object Dbx_IPIREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_IPICEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_IPI: TDataSetProvider
    DataSet = Dbx_IPI
    UpdateMode = upWhereKeyOnly
    Left = 267
    Top = 419
  end
  object Cds_IPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_IPI'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 283
    Top = 435
    object IntegerField59: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_IPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Cds_IPISIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_IPIALIQ: TBCDField
      DefaultExpression = '0'
      FieldName = 'ALIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_IPIREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Cds_IPICEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_IPI: TDataSource
    DataSet = Cds_IPI
    Left = 299
    Top = 451
  end
  object Dbx_AliqImpFis: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from AliqImpFis')
    SQLConnection = Sql_Dados
    Left = 339
    Top = 403
    object IntegerField61: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_AliqImpFisCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object Dbx_AliqImpFisACUMULA: TStringField
      FieldName = 'ACUMULA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_AliqImpFisREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_AliqImpFisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_AliqImpFisALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Dbx_AliqImpFisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Dbx_AliqImpFisCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_AliqImpFis: TDataSetProvider
    DataSet = Dbx_AliqImpFis
    UpdateMode = upWhereKeyOnly
    Left = 355
    Top = 419
  end
  object Cds_AliqImpFis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_AliqImpFis'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 371
    Top = 435
    object IntegerField63: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_AliqImpFisCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object Cds_AliqImpFisACUMULA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ACUMULA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_AliqImpFisncodest: TStringField
      FieldKind = fkLookup
      FieldName = 'ncodest'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODEST'
      Size = 10
      Lookup = True
    end
    object Cds_AliqImpFisREDUCAO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'REDUCAO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object Cds_AliqImpFisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_AliqImpFisALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Cds_AliqImpFisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Cds_AliqImpFisCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_AliqImpFis: TDataSource
    DataSet = Cds_AliqImpFis
    Left = 387
    Top = 451
  end
  object Dbx_Estados: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Estados')
    SQLConnection = Sql_Dados
    Left = 435
    Top = 404
    object IntegerField65: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_EstadosNOME: TStringField
      FieldName = 'NOME'
    end
    object Dbx_EstadosSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object Dbx_EstadosCODUFIBGE: TStringField
      FieldName = 'CODUFIBGE'
      Size = 12
    end
    object Dbx_EstadosMUNIC: TStringField
      FieldName = 'MUNIC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_EstadosCPAIS: TIntegerField
      FieldName = 'CPAIS'
    end
    object Dbx_EstadosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Estados: TDataSetProvider
    DataSet = Dbx_Estados
    UpdateMode = upWhereKeyOnly
    Left = 451
    Top = 420
  end
  object Cds_estados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Estados'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 467
    Top = 436
    object IntegerField68: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_estadosNOME: TStringField
      FieldName = 'NOME'
    end
    object Cds_estadosSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object Cds_estadosCODUFIBGE: TStringField
      FieldName = 'CODUFIBGE'
      Size = 12
    end
    object Cds_estadosMUNIC: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'MUNIC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_estadosCPAIS: TIntegerField
      FieldName = 'CPAIS'
    end
    object Cds_estadosnpais: TStringField
      FieldKind = fkLookup
      FieldName = 'npais'
      LookupDataSet = Cds_Pais
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CPAIS'
      Lookup = True
    end
    object Cds_estadosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Estados: TDataSource
    DataSet = Cds_estados
    Left = 483
    Top = 452
  end
  object Dbx_ImpRecAnt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ImpRecAnt')
    SQLConnection = Sql_Dados
    Left = 539
    Top = 404
    object IntegerField70: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ImpRecAntCSITA: TIntegerField
      FieldName = 'CSITA'
    end
    object Dbx_ImpRecAntCSITB: TIntegerField
      FieldName = 'CSITB'
    end
    object Dbx_ImpRecAntCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_ImpRecAnt: TDataSetProvider
    DataSet = Dbx_ImpRecAnt
    UpdateMode = upWhereKeyOnly
    Left = 555
    Top = 420
  end
  object Cds_ImpRecAnt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_ImpRecAnt'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 571
    Top = 436
    object IntegerField72: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ImpRecAntCSITA: TIntegerField
      FieldName = 'CSITA'
    end
    object Cds_ImpRecAntCSITB: TIntegerField
      FieldName = 'CSITB'
    end
    object Cds_ImpRecAntCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_ImpRecAnt: TDataSource
    DataSet = Cds_ImpRecAnt
    Left = 587
    Top = 452
  end
  object Dbx_vEnt_Estq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vEnt_Estq')
    SQLConnection = Sql_Dados
    Left = 643
    Top = 404
    object Dbx_vEnt_EstqNPRO: TStringField
      FieldName = 'NPRO'
      Size = 60
    end
    object Dbx_vEnt_EstqCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_vEnt_EstqCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Dbx_vEnt_EstqDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
    end
    object Dbx_vEnt_EstqCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Dbx_vEnt_EstqQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 9
      Size = 3
    end
    object Dbx_vEnt_EstqEHENTREGA: TStringField
      FieldName = 'EHENTREGA'
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_vEnt_Estq: TDataSetProvider
    DataSet = Dbx_vEnt_Estq
    UpdateMode = upWhereKeyOnly
    Left = 659
    Top = 420
  end
  object Cds_vEnt_Estq: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_vEnt_Estq'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 675
    Top = 436
    object Cds_vEnt_EstqNPRO: TStringField
      FieldName = 'NPRO'
      Size = 60
    end
    object Cds_vEnt_EstqCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Cds_vEnt_EstqCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Cds_vEnt_EstqDATA_ENT: TDateField
      FieldName = 'DATA_ENT'
    end
    object Cds_vEnt_EstqCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Cds_vEnt_EstqQTDE: TBCDField
      FieldName = 'QTDE'
      Precision = 9
      Size = 3
    end
    object Cds_vEnt_EstqEHENTREGA: TStringField
      FieldName = 'EHENTREGA'
      FixedChar = True
      Size = 1
    end
  end
  object Dts_vEnt_Estq: TDataSource
    DataSet = Cds_vEnt_Estq
    Left = 691
    Top = 452
  end
  object Dbx_Vencto_NF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vencimentos_nf')
    SQLConnection = Sql_Dados
    Left = 744
    Top = 402
    object Dbx_Vencto_NFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_Vencto_NFC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Dbx_Vencto_NFC_SVENDA: TIntegerField
      FieldName = 'C_SVENDA'
    end
    object Dbx_Vencto_NFDTL: TDateField
      FieldName = 'DTL'
    end
    object Dbx_Vencto_NFDTV: TDateField
      FieldName = 'DTV'
    end
    object Dbx_Vencto_NFVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_Vencto_NFVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      Precision = 18
      Size = 2
    end
    object Dbx_Vencto_NFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Dbx_Vencto_NFDOC: TStringField
      FieldName = 'DOC'
      Size = 70
    end
    object Dbx_Vencto_NFCREC: TIntegerField
      FieldName = 'CREC'
    end
    object Dbx_Vencto_NFCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_Vencto_NFCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Dbx_Vencto_NFOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_Vencto_NFJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Dbx_Vencto_NFCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Dbx_Vencto_NFVPARCSEMJ: TFMTBCDField
      FieldName = 'VPARCSEMJ'
      Precision = 18
      Size = 2
    end
    object Dbx_Vencto_NFNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_Vencto_NFCRT: TIntegerField
      FieldName = 'CRT'
    end
    object Dbx_Vencto_NFPARC: TStringField
      FieldName = 'PARC'
      Size = 5
    end
    object Dbx_Vencto_NFEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_Vencto_NFORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Dbx_Vencto_NFPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Dbx_Vencto_NFDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_Vencto_NFNNF: TIntegerField
      FieldName = 'NNF'
    end
    object Dbx_Vencto_NFPARTE: TStringField
      FieldName = 'PARTE'
      Size = 3
    end
    object Dbx_Vencto_NFCODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Dbx_Vencto_NFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Vencto_NF: TDataSetProvider
    DataSet = Dbx_Vencto_NF
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 418
  end
  object Cds_Vencto_NF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Vencto_NF'
    AfterInsert = Cds_Vencto_NFAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_Vencto_NFAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 776
    Top = 434
    object Cds_Vencto_NFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_Vencto_NFC_TIPO_PGTO: TIntegerField
      FieldName = 'C_TIPO_PGTO'
    end
    object Cds_Vencto_NFC_SVENDA: TIntegerField
      FieldName = 'C_SVENDA'
    end
    object Cds_Vencto_NFDTL: TDateField
      FieldName = 'DTL'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_Vencto_NFDTV: TDateField
      FieldName = 'DTV'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_Vencto_NFVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_Vencto_NFVALLIQ: TFMTBCDField
      FieldName = 'VALLIQ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_Vencto_NFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Cds_Vencto_NFDOC: TStringField
      FieldName = 'DOC'
      Size = 70
    end
    object Cds_Vencto_NFCREC: TIntegerField
      FieldName = 'CREC'
    end
    object Cds_Vencto_NFCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_Vencto_NFCSIT: TIntegerField
      FieldName = 'CSIT'
    end
    object Cds_Vencto_NFOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_Vencto_NFJUROS: TFMTBCDField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_Vencto_NFCODTIPOP: TIntegerField
      FieldName = 'CODTIPOP'
    end
    object Cds_Vencto_NFVPARCSEMJ: TFMTBCDField
      FieldName = 'VPARCSEMJ'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_Vencto_NFNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_Vencto_NFCRT: TIntegerField
      FieldName = 'CRT'
    end
    object Cds_Vencto_NFPARC: TStringField
      FieldName = 'PARC'
      Size = 5
    end
    object Cds_Vencto_NFEHVENDA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_Vencto_NFORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Cds_Vencto_NFPRAZO: TSmallintField
      FieldName = 'PRAZO'
    end
    object Cds_Vencto_NFDTE: TDateField
      FieldName = 'DTE'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_Vencto_NFn_tipo_pgto: TStringField
      FieldKind = fkLookup
      FieldName = 'n_tipo_pgto'
      LookupDataSet = cds_Tipo_Pgto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'C_TIPO_PGTO'
      Size = 30
      Lookup = True
    end
    object Cds_Vencto_NFNNF: TIntegerField
      FieldName = 'NNF'
    end
    object Cds_Vencto_NFPARTE: TStringField
      FieldName = 'PARTE'
      Size = 3
    end
    object Cds_Vencto_NFCODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Cds_Vencto_NFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Vencto_NF: TDataSource
    DataSet = Cds_Vencto_NF
    OnUpdateData = Dts_Vencto_NFUpdateData
    Left = 792
    Top = 450
  end
  object Dbx_NFE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from nfe')
    SQLConnection = Sql_Dados
    Left = 834
    Top = 402
    object Dbx_NFECODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_NFECOD_SVENDA: TIntegerField
      FieldName = 'COD_SVENDA'
    end
    object Dbx_NFEDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_NFETOTALBSCALCICMS: TFMTBCDField
      FieldName = 'TOTALBSCALCICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRICMS: TFMTBCDField
      FieldName = 'TOTVLRICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTBSCALCBSICMS: TFMTBCDField
      FieldName = 'TOTBSCALCBSICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRBSICMS: TFMTBCDField
      FieldName = 'TOTVLRBSICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTBSCALCICMS: TFMTBCDField
      FieldName = 'TOTBSCALCICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRTOTPROD: TFMTBCDField
      FieldName = 'TOTVLRTOTPROD'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRFRETE: TFMTBCDField
      FieldName = 'TOTVLRFRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRSEG: TFMTBCDField
      FieldName = 'TOTVLRSEG'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLROUTDESP: TFMTBCDField
      FieldName = 'TOTVLROUTDESP'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRIPI: TFMTBCDField
      FieldName = 'TOTVLRIPI'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVLRTOTNF: TFMTBCDField
      FieldName = 'TOTVLRTOTNF'
      Precision = 18
      Size = 2
    end
    object Dbx_NFENNF: TIntegerField
      FieldName = 'NNF'
    end
    object Dbx_NFECSITNFE: TIntegerField
      FieldName = 'CSITNFE'
    end
    object Dbx_NFECODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Dbx_NFETOTPIS: TFMTBCDField
      FieldName = 'TOTPIS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTCOFINS: TFMTBCDField
      FieldName = 'TOTCOFINS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTIRII: TFMTBCDField
      FieldName = 'TOTIRII'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTVII: TFMTBCDField
      FieldName = 'TOTVII'
      Precision = 18
      Size = 2
    end
    object Dbx_NFETOTOIMP: TFMTBCDField
      FieldName = 'TOTOIMP'
      Precision = 18
      Size = 2
    end
    object Dbx_NFELOTENFE: TStringField
      FieldName = 'LOTENFE'
      Size = 15
    end
    object Dbx_NFECEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_NFE: TDataSetProvider
    DataSet = Dbx_NFE
    UpdateMode = upWhereKeyOnly
    Left = 850
    Top = 418
  end
  object Cds_NFE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_NFE'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 866
    Top = 434
    object Cds_NFECODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_NFECOD_SVENDA: TIntegerField
      FieldName = 'COD_SVENDA'
    end
    object Cds_NFEDTE: TDateField
      FieldName = 'DTE'
    end
    object Cds_NFETOTALBSCALCICMS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTALBSCALCICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRICMS: TFMTBCDField
      FieldName = 'TOTVLRICMS'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTBSCALCBSICMS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTBSCALCBSICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRBSICMS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTVLRBSICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTBSCALCICMS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTBSCALCICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRTOTPROD: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTVLRTOTPROD'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRFRETE: TFMTBCDField
      FieldName = 'TOTVLRFRETE'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRSEG: TFMTBCDField
      FieldName = 'TOTVLRSEG'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLROUTDESP: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTVLROUTDESP'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRIPI: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTVLRIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVLRTOTNF: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTVLRTOTNF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFENNF: TIntegerField
      FieldName = 'NNF'
    end
    object Cds_NFECSITNFE: TIntegerField
      FieldName = 'CSITNFE'
    end
    object Cds_NFEnsitnfe: TStringField
      FieldKind = fkLookup
      FieldName = 'nsitnfe'
      LookupDataSet = Cds_SituNFE
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSITNFE'
      Lookup = True
    end
    object Cds_NFECODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Cds_NFETOTPIS: TFMTBCDField
      FieldName = 'TOTPIS'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTCOFINS: TFMTBCDField
      FieldName = 'TOTCOFINS'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTIRII: TFMTBCDField
      FieldName = 'TOTIRII'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTVII: TFMTBCDField
      FieldName = 'TOTVII'
      Precision = 18
      Size = 2
    end
    object Cds_NFETOTOIMP: TFMTBCDField
      FieldName = 'TOTOIMP'
      Precision = 18
      Size = 2
    end
    object Cds_NFELOTENFE: TStringField
      FieldName = 'LOTENFE'
      Size = 15
    end
    object Cds_NFECEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_NFE: TDataSource
    DataSet = Cds_NFE
    Left = 882
    Top = 450
  end
  object Dbx_Modulo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Modulo')
    SQLConnection = Sql_Dados
    Left = 922
    Top = 402
    object IntegerField74: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ModuloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_ModuloCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Modulo: TDataSetProvider
    DataSet = Dbx_Modulo
    UpdateMode = upWhereKeyOnly
    Left = 938
    Top = 418
  end
  object Cds_Modulo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Modulo'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_ModuloAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 954
    Top = 434
    object IntegerField80: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ModuloDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_ModuloCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Modulo: TDataSource
    DataSet = Cds_Modulo
    Left = 970
    Top = 450
  end
  object Dbx_NFP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from NFP')
    SQLConnection = Sql_Dados
    Left = 26
    Top = 499
    object IntegerField76: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_NFPCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_NFPPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPEOUS: TStringField
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Dbx_NFPPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Dbx_NFPCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_NFPCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Dbx_NFPCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Dbx_NFPPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_NFPCVEN: TIntegerField
      FieldName = 'CVEN'
    end
    object Dbx_NFPCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_NFPNSERIE: TStringField
      FieldName = 'NSERIE'
      Size = 30
    end
    object Dbx_NFPOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_NFPBAIXA: TStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object Dbx_NFPSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object Dbx_NFPDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Dbx_NFPCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPIDENTST: TStringField
      FieldName = 'IDENTST'
      Size = 1
    end
    object Dbx_NFPTIPOST: TStringField
      FieldName = 'TIPOST'
      Size = 8
    end
    object Dbx_NFPPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Dbx_NFPCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object Dbx_NFPDESCRICAOST: TStringField
      FieldName = 'DESCRICAOST'
      Size = 80
    end
    object Dbx_NFPUNDST: TStringField
      FieldName = 'UNDST'
      Size = 3
    end
    object Dbx_NFPCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 75
    end
    object Dbx_NFPVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 80
    end
    object Dbx_NFPPGST: TStringField
      FieldName = 'PGST'
      Size = 1
    end
    object Dbx_NFPCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_NFPMAXI: TIntegerField
      FieldName = 'MAXI'
    end
    object Dbx_NFPVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPICM: TBCDField
      FieldName = 'ICM'
      Precision = 9
      Size = 2
    end
    object Dbx_NFPISS: TBCDField
      FieldName = 'ISS'
      Precision = 9
      Size = 2
    end
    object Dbx_NFPMETRAGEM: TFMTBCDField
      FieldName = 'METRAGEM'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPMETRAGEM2: TFMTBCDField
      FieldName = 'METRAGEM2'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_NFPTIPOV: TIntegerField
      FieldName = 'TIPOV'
    end
    object Dbx_NFPNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Dbx_NFPCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Dbx_NFPVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Dbx_NFPSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_NFPIMPNF: TStringField
      FieldName = 'IMPNF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_NFPCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Dbx_NFPCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Dbx_NFPCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Dbx_NFPCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Dbx_NFPCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
    object Dbx_NFPVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPCODNFE: TIntegerField
      FieldName = 'CODNFE'
    end
    object Dbx_NFPCODDVENDA: TIntegerField
      FieldName = 'CODDVENDA'
    end
    object Dbx_NFPCODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Dbx_NFPCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
    end
    object Dbx_NFPCODPIS: TIntegerField
      FieldName = 'CODPIS'
    end
    object Dbx_NFPCODCOFINS: TIntegerField
      FieldName = 'CODCOFINS'
    end
    object Dbx_NFPCODMODBC: TIntegerField
      FieldName = 'CODMODBC'
    end
    object Dbx_NFPCODIRII: TIntegerField
      FieldName = 'CODIRII'
    end
    object Dbx_NFPCODVII: TIntegerField
      FieldName = 'CODVII'
    end
    object Dbx_NFPCODOIMP: TIntegerField
      FieldName = 'CODOIMP'
    end
    object Dbx_NFPCODMODBCST: TIntegerField
      FieldName = 'CODMODBCST'
    end
    object Dbx_NFPCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_NFPNCM: TStringField
      FieldName = 'NCM'
    end
    object Dbx_NFPINDTOT: TStringField
      FieldName = 'INDTOT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_NFP: TDataSetProvider
    DataSet = Dbx_NFP
    UpdateMode = upWhereKeyOnly
    Left = 42
    Top = 515
  end
  object Cds_NFP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_NFP'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_NFPBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 58
    Top = 531
    object IntegerField78: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_NFPCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Cds_NFPPRVE: TFMTBCDField
      FieldName = 'PRVE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFPQTDE: TFMTBCDField
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFPEOUS: TStringField
      FieldName = 'EOUS'
      FixedChar = True
      Size = 1
    end
    object Cds_NFPPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Cds_NFPCUNI: TIntegerField
      FieldName = 'CUNI'
    end
    object Cds_NFPCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_NFPCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Cds_NFPCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Cds_NFPPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_NFPCVEN: TIntegerField
      FieldName = 'CVEN'
    end
    object Cds_NFPCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_NFPNSERIE: TStringField
      FieldName = 'NSERIE'
      Size = 30
    end
    object Cds_NFPOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_NFPBAIXA: TStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object Cds_NFPSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFPREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object Cds_NFPDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Cds_NFPCOMISSAO: TFMTBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object Cds_NFPIDENTST: TStringField
      FieldName = 'IDENTST'
      Size = 1
    end
    object Cds_NFPTIPOST: TStringField
      FieldName = 'TIPOST'
      Size = 8
    end
    object Cds_NFPPDESC: TBCDField
      FieldName = 'PDESC'
      Precision = 9
      Size = 2
    end
    object Cds_NFPCUPOM: TIntegerField
      FieldName = 'CUPOM'
    end
    object Cds_NFPDESCRICAOST: TStringField
      FieldName = 'DESCRICAOST'
      Size = 80
    end
    object Cds_NFPUNDST: TStringField
      FieldName = 'UNDST'
      Size = 3
    end
    object Cds_NFPCLIENTEST: TStringField
      FieldName = 'CLIENTEST'
      Size = 75
    end
    object Cds_NFPVENDEDORST: TStringField
      FieldName = 'VENDEDORST'
      Size = 80
    end
    object Cds_NFPPGST: TStringField
      FieldName = 'PGST'
      Size = 1
    end
    object Cds_NFPCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_NFPMAXI: TIntegerField
      FieldName = 'MAXI'
    end
    object Cds_NFPVDESC: TFMTBCDField
      FieldName = 'VDESC'
      Precision = 18
      Size = 2
    end
    object Cds_NFPICM: TBCDField
      FieldName = 'ICM'
      Precision = 9
      Size = 2
    end
    object Cds_NFPISS: TBCDField
      FieldName = 'ISS'
      Precision = 9
      Size = 2
    end
    object Cds_NFPMETRAGEM: TFMTBCDField
      FieldName = 'METRAGEM'
      Precision = 18
      Size = 2
    end
    object Cds_NFPMETRAGEM2: TFMTBCDField
      FieldName = 'METRAGEM2'
      Precision = 18
      Size = 2
    end
    object Cds_NFPEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_NFPTIPOV: TIntegerField
      FieldName = 'TIPOV'
    end
    object Cds_NFPNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Cds_NFPCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
    end
    object Cds_NFPVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Cds_NFPESPECIFICACAO: TStringField
      FieldName = 'ESPECIFICACAO'
      Size = 60
    end
    object Cds_NFPSUBTOTALC: TFMTBCDField
      FieldName = 'SUBTOTALC'
      Precision = 18
      Size = 2
    end
    object Cds_NFPACTDESC: TStringField
      FieldName = 'ACTDESC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_NFPIMPNF: TStringField
      FieldName = 'IMPNF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_NFPCODCF: TIntegerField
      FieldName = 'CODCF'
    end
    object Cds_NFPCODSITA: TIntegerField
      FieldName = 'CODSITA'
    end
    object Cds_NFPCODSITB: TIntegerField
      FieldName = 'CODSITB'
    end
    object Cds_NFPCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object Cds_NFPCODICMS: TIntegerField
      FieldName = 'CODICMS'
    end
    object Cds_NFPVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Cds_NFPCODNFE: TIntegerField
      FieldName = 'CODNFE'
    end
    object Cds_NFPCODDVENDA: TIntegerField
      FieldName = 'CODDVENDA'
    end
    object Cds_NFPCODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Cds_NFPnunid: TStringField
      FieldKind = fkLookup
      FieldName = 'nunid'
      LookupDataSet = Cds_Unidade
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CUNI'
      Size = 50
      Lookup = True
    end
    object Cds_NFPCODCFOP: TIntegerField
      FieldName = 'CODCFOP'
    end
    object Cds_NFPCODPIS: TIntegerField
      FieldName = 'CODPIS'
    end
    object Cds_NFPCODCOFINS: TIntegerField
      FieldName = 'CODCOFINS'
    end
    object Cds_NFPCODMODBC: TIntegerField
      FieldName = 'CODMODBC'
    end
    object Cds_NFPCODIRII: TIntegerField
      FieldName = 'CODIRII'
    end
    object Cds_NFPCODVII: TIntegerField
      FieldName = 'CODVII'
    end
    object Cds_NFPCODOIMP: TIntegerField
      FieldName = 'CODOIMP'
    end
    object Cds_NFPCODMODBCST: TIntegerField
      FieldName = 'CODMODBCST'
    end
    object Cds_NFPCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_NFPNCM: TStringField
      FieldName = 'NCM'
    end
    object Cds_NFPINDTOT: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'INDTOT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dts_NFP: TDataSource
    DataSet = Cds_NFP
    Left = 74
    Top = 547
  end
  object Dbx_NFM: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from NFM')
    SQLConnection = Sql_Dados
    Left = 122
    Top = 499
    object IntegerField79: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_NFMCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Dbx_NFMCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Dbx_NFMNDESC: TStringField
      FieldName = 'NDESC'
      Size = 150
    end
    object Dbx_NFMQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFMVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_NFMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_NFMPISS: TBCDField
      FieldName = 'PISS'
      Precision = 9
      Size = 2
    end
    object Dbx_NFMVISS: TFMTBCDField
      FieldName = 'VISS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFMCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_NFMPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_NFMVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_NFMCODNFE: TIntegerField
      FieldName = 'CODNFE'
    end
    object Dbx_NFMCODDMOBRA: TIntegerField
      FieldName = 'CODDMOBRA'
    end
    object Dbx_NFMCODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Dbx_NFMCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_NFM: TDataSetProvider
    DataSet = Dbx_NFM
    UpdateMode = upWhereKeyOnly
    Left = 138
    Top = 515
  end
  object Cds_NFM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_NFM'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 154
    Top = 531
    object IntegerField81: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_NFMCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Cds_NFMCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Cds_NFMNDESC: TStringField
      FieldName = 'NDESC'
      Size = 150
    end
    object Cds_NFMQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 2
    end
    object Cds_NFMVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Cds_NFMSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Cds_NFMPISS: TBCDField
      FieldName = 'PISS'
      Precision = 9
      Size = 2
    end
    object Cds_NFMVISS: TFMTBCDField
      FieldName = 'VISS'
      Precision = 18
      Size = 2
    end
    object Cds_NFMCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_NFMPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Cds_NFMVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Cds_NFMCODNFE: TIntegerField
      FieldName = 'CODNFE'
    end
    object Cds_NFMCODDMOBRA: TIntegerField
      FieldName = 'CODDMOBRA'
    end
    object Cds_NFMCODNF: TIntegerField
      FieldName = 'CODNF'
    end
    object Cds_NFMCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_NFM: TDataSource
    DataSet = Cds_NFM
    Left = 170
    Top = 547
  end
  object Dbx_dMobra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from dMobra')
    SQLConnection = Sql_Dados
    Left = 217
    Top = 502
    object IntegerField82: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_dMobraCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_dMobraCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Dbx_dMobraCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Dbx_dMobraNDESC: TStringField
      FieldName = 'NDESC'
      Size = 150
    end
    object Dbx_dMobraQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object Dbx_dMobraVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_dMobraSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_dMobraPISS: TBCDField
      FieldName = 'PISS'
      Precision = 9
      Size = 2
    end
    object Dbx_dMobraVISS: TFMTBCDField
      FieldName = 'VISS'
      Precision = 18
      Size = 2
    end
    object Dbx_dMobraCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_dMobraPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 9
      Size = 2
    end
    object Dbx_dMobraVCOM: TFMTBCDField
      FieldName = 'VCOM'
      Precision = 18
      Size = 2
    end
    object Dbx_dMobraCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Dbx_dMobraSELEC: TStringField
      FieldName = 'SELEC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dMobraCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_dMobraPAGO: TStringField
      FieldName = 'PAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dMobraLAN: TStringField
      FieldName = 'LAN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dMobraTEMPO: TTimeField
      FieldName = 'TEMPO'
    end
    object Dbx_dMobraTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Dbx_dMobraDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object Dbx_dMobraDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object Dbx_dMobraHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object Dbx_dMobraHORAFIM: TTimeField
      FieldName = 'HORAFIM'
    end
    object Dbx_dMobraCOMPLETO: TStringField
      FieldName = 'COMPLETO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_dMobraCFUNP: TIntegerField
      FieldName = 'CFUNP'
    end
    object Dbx_dMobraLANCOM: TStringField
      FieldName = 'LANCOM'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_dMobra: TDataSetProvider
    DataSet = Dbx_dMobra
    UpdateMode = upWhereKeyOnly
    Left = 233
    Top = 515
  end
  object Cds_dMobra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_dMobra'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_dMobraAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 249
    Top = 531
    object Cds_dMobraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_dMobraCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_dMobraCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Cds_dMobraCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Cds_dMobraNDESC: TStringField
      FieldName = 'NDESC'
      Size = 150
    end
    object Cds_dMobraQTDE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object Cds_dMobraVALOR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dMobraSUBTOTAL: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'SUBTOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dMobraPISS: TBCDField
      DefaultExpression = '0'
      FieldName = 'PISS'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_dMobraVISS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VISS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dMobraCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_dMobraPCOM: TBCDField
      DefaultExpression = '0'
      FieldName = 'PCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_dMobraVCOM: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_dMobranfunc: TStringField
      FieldKind = fkLookup
      FieldName = 'nfunc'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 40
      Lookup = True
    end
    object Cds_dMobraCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Cds_dMobraidmat_restaurar: TStringField
      FieldKind = fkLookup
      FieldName = 'idmat_restaurar'
      LookupDataSet = Cds_Mat_Restaurar
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ID'
      KeyFields = 'CODMAT_RESTAURAR'
      Size = 5
      Lookup = True
    end
    object Cds_dMobraSELEC: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'SELEC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dMobranmod: TStringField
      FieldKind = fkLookup
      FieldName = 'nmod'
      LookupDataSet = Cds_Modulo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CMOD'
      Size = 40
      Lookup = True
    end
    object Cds_dMobranlistaprod: TStringField
      FieldKind = fkLookup
      FieldName = 'nlistaprod'
      LookupDataSet = Cds_cmobra
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCR'
      KeyFields = 'CDESC'
      Size = 60
      Lookup = True
    end
    object Cds_dMobraCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_dMobraPAGO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'PAGO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dMobraLAN: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'LAN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dMobraTEMPO: TTimeField
      FieldName = 'TEMPO'
    end
    object Cds_dMobraTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Cds_dMobraDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_dMobraDATAFIM: TDateField
      FieldName = 'DATAFIM'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_dMobraHORAINICIO: TTimeField
      FieldName = 'HORAINICIO'
    end
    object Cds_dMobraHORAFIM: TTimeField
      FieldName = 'HORAFIM'
    end
    object Cds_dMobraCOMPLETO: TStringField
      FieldName = 'COMPLETO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_dMobraCFUNP: TIntegerField
      FieldName = 'CFUNP'
    end
    object Cds_dMobranfuncp: TStringField
      FieldKind = fkLookup
      FieldName = 'nfuncp'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUNP'
      Size = 80
      Lookup = True
    end
    object Cds_dMobraLANCOM: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'LANCOM'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dts_dMobra: TDataSource
    DataSet = Cds_dMobra
    OnDataChange = Dts_dMobraDataChange
    Left = 265
    Top = 547
  end
  object Dbx_SituNFE: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SituNFE')
    SQLConnection = Sql_Dados
    Left = 313
    Top = 499
    object IntegerField84: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SituNFEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Dbx_SituNFECEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SituNFE: TDataSetProvider
    DataSet = Dbx_SituNFE
    UpdateMode = upWhereKeyOnly
    Left = 329
    Top = 515
  end
  object Cds_SituNFE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SituNFE'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 345
    Top = 531
    object IntegerField90: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SituNFEDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object Cds_SituNFECEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SituNFE: TDataSource
    DataSet = Cds_SituNFE
    Left = 361
    Top = 547
  end
  object Dbx_NF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from nf')
    SQLConnection = Sql_Dados
    Left = 399
    Top = 498
    object IntegerField83: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_NFCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_NFCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_NFPDESC: TFMTBCDField
      FieldName = 'PDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_NFLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object Dbx_NFTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_NFFRETE: TFMTBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFDIN: TFMTBCDField
      FieldName = 'DIN'
      Precision = 18
      Size = 2
    end
    object Dbx_NFCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_NFTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Precision = 18
      Size = 2
    end
    object Dbx_NFTOTBRUTO: TFMTBCDField
      FieldName = 'TOTBRUTO'
      Precision = 18
      Size = 2
    end
    object Dbx_NFOUTROAVIST: TFMTBCDField
      FieldName = 'OUTROAVIST'
      Precision = 18
      Size = 2
    end
    object Dbx_NFPARC: TSmallintField
      FieldName = 'PARC'
    end
    object Dbx_NFNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Dbx_NFPRIPARC: TStringField
      FieldName = 'PRIPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_NFTOTE: TFMTBCDField
      FieldName = 'TOTE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Dbx_NFEM_CAIXA: TFMTBCDField
      FieldName = 'EM_CAIXA'
      Precision = 18
      Size = 2
    end
    object Dbx_NFCUSTOPECAS: TFMTBCDField
      FieldName = 'CUSTOPECAS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFCUSTOPECAE: TFMTBCDField
      FieldName = 'CUSTOPECAE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_NFTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
    end
    object Dbx_NFABSDESC: TFMTBCDField
      FieldName = 'ABSDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_NFTOTPAGAR: TFMTBCDField
      FieldName = 'TOTPAGAR'
      Precision = 18
      Size = 2
    end
    object Dbx_NFTOTGPAGAR: TFMTBCDField
      FieldName = 'TOTGPAGAR'
      Precision = 18
      Size = 2
    end
    object Dbx_NFTOTGPRODD: TFMTBCDField
      FieldName = 'TOTGPRODD'
      Precision = 18
      Size = 2
    end
    object Dbx_NFTPNF: TSmallintField
      FieldName = 'TPNF'
    end
    object Dbx_NFCNAT: TSmallintField
      FieldName = 'CNAT'
    end
    object Dbx_NFBASEICMS: TFMTBCDField
      FieldName = 'BASEICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVALORICMS: TFMTBCDField
      FieldName = 'VALORICMS'
      Precision = 18
      Size = 2
    end
    object Dbx_NFBASECALCICMSSUB: TFMTBCDField
      FieldName = 'BASECALCICMSSUB'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVLRICMSSUB: TFMTBCDField
      FieldName = 'VLRICMSSUB'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVLRFRETE: TFMTBCDField
      FieldName = 'VLRFRETE'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVLRSEGURO: TFMTBCDField
      FieldName = 'VLRSEGURO'
      Precision = 18
      Size = 2
    end
    object Dbx_NFOUTDESP: TFMTBCDField
      FieldName = 'OUTDESP'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVLRIPI: TFMTBCDField
      FieldName = 'VLRIPI'
      Precision = 18
      Size = 2
    end
    object Dbx_NFVLRTOTNF: TFMTBCDField
      FieldName = 'VLRTOTNF'
      Precision = 18
      Size = 2
    end
    object Dbx_NFQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object Dbx_NFESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object Dbx_NFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object Dbx_NFNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object Dbx_NFPESOB: TStringField
      FieldName = 'PESOB'
      Size = 15
    end
    object Dbx_NFPESOL: TStringField
      FieldName = 'PESOL'
      Size = 15
    end
    object Dbx_NFFRETEPOR: TStringField
      FieldName = 'FRETEPOR'
      Size = 1
    end
    object Dbx_NFPLACAVEI: TStringField
      FieldName = 'PLACAVEI'
      Size = 10
    end
    object Dbx_NFUFVEI: TStringField
      FieldName = 'UFVEI'
      Size = 2
    end
    object Dbx_NFFRETEP: TSmallintField
      FieldName = 'FRETEP'
    end
    object Dbx_NFDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Dbx_NFDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Dbx_NFDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Dbx_NFDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Dbx_NFDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Dbx_NFDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Dbx_NFDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Dbx_NFDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Dbx_NFCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Dbx_NFIMPDESTQCONT: TStringField
      FieldName = 'IMPDESTQCONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_NFLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object Dbx_NFORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Dbx_NFSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object Dbx_NFVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object Dbx_NFRESUNI: TStringField
      FieldName = 'RESUNI'
      Size = 30
    end
    object Dbx_NFPRAZO_VALIDADE: TDateField
      FieldName = 'PRAZO_VALIDADE'
    end
    object Dbx_NFNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Dbx_NFDATAS: TDateField
      FieldName = 'DATAS'
    end
    object Dbx_NFHORAS: TTimeField
      FieldName = 'HORAS'
    end
    object Dbx_NFDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_NFCNATNF: TIntegerField
      FieldName = 'CNATNF'
    end
    object Dbx_NFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_NFCTAB: TIntegerField
      FieldName = 'CTAB'
    end
  end
  object Dsp_NF: TDataSetProvider
    DataSet = Dbx_NF
    UpdateMode = upWhereKeyOnly
    Left = 415
    Top = 514
  end
  object Cds_NF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_NF'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnCalcFields = Cds_NFCalcFields
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 431
    Top = 531
    object IntegerField107: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cna: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_NFCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_NFPDESC: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'PDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVALDESC: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFLIQUIDO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFTOTAL: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFFRETE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'FRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFDIN: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'DIN'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_NFTROCO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TROCO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFTOTBRUTO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTBRUTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFOUTROAVIST: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'OUTROAVIST'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFPARC: TSmallintField
      FieldName = 'PARC'
    end
    object Cds_NFNPED: TIntegerField
      FieldName = 'NPED'
    end
    object Cds_NFPRIPARC: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'PRIPARC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_NFTOTE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object Cds_NFEM_CAIXA: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'EM_CAIXA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFCUSTOPECAS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'CUSTOPECAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFCUSTOPECAE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'CUSTOPECAE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_NFTIPOOP: TIntegerField
      FieldName = 'TIPOOP'
    end
    object Cds_NFABSDESC: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'ABSDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFTOTPAGAR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFTOTGPAGAR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTGPAGAR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFTOTGPRODD: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'TOTGPRODD'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFTPNF: TSmallintField
      FieldName = 'TPNF'
    end
    object Cds_NFCNAT: TSmallintField
      FieldName = 'CNAT'
    end
    object Cds_NFBASEICMS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'BASEICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVALORICMS: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALORICMS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFBASECALCICMSSUB: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'BASECALCICMSSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVLRICMSSUB: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VLRICMSSUB'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVLRFRETE: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VLRFRETE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVLRSEGURO: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VLRSEGURO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFOUTDESP: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'OUTDESP'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVLRIPI: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VLRIPI'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFVLRTOTNF: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VLRTOTNF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_NFQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object Cds_NFESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object Cds_NFMARCA: TStringField
      FieldName = 'MARCA'
      Size = 15
    end
    object Cds_NFNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object Cds_NFPESOB: TStringField
      FieldName = 'PESOB'
      Size = 15
    end
    object Cds_NFPESOL: TStringField
      FieldName = 'PESOL'
      Size = 15
    end
    object Cds_NFFRETEPOR: TStringField
      FieldName = 'FRETEPOR'
      Size = 1
    end
    object Cds_NFPLACAVEI: TStringField
      FieldName = 'PLACAVEI'
      Size = 10
    end
    object Cds_NFUFVEI: TStringField
      FieldName = 'UFVEI'
      Size = 2
    end
    object Cds_NFFRETEP: TSmallintField
      FieldName = 'FRETEP'
    end
    object Cds_NFDA1: TStringField
      FieldName = 'DA1'
      Size = 50
    end
    object Cds_NFDA2: TStringField
      FieldName = 'DA2'
      Size = 50
    end
    object Cds_NFDA3: TStringField
      FieldName = 'DA3'
      Size = 50
    end
    object Cds_NFDA4: TStringField
      FieldName = 'DA4'
      Size = 50
    end
    object Cds_NFDA5: TStringField
      FieldName = 'DA5'
      Size = 50
    end
    object Cds_NFDA6: TStringField
      FieldName = 'DA6'
      Size = 50
    end
    object Cds_NFDA7: TStringField
      FieldName = 'DA7'
      Size = 50
    end
    object Cds_NFDA8: TStringField
      FieldName = 'DA8'
      Size = 50
    end
    object Cds_NFCTRANSP: TIntegerField
      FieldName = 'CTRANSP'
    end
    object Cds_NFIMPDESTQCONT: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'IMPDESTQCONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_NFLANCADO: TIntegerField
      FieldName = 'LANCADO'
    end
    object Cds_NFORIGINADO: TSmallintField
      FieldName = 'ORIGINADO'
    end
    object Cds_NFnfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 80
      Lookup = True
    end
    object Cds_NFnrep: TStringField
      FieldKind = fkLookup
      FieldName = 'nrep'
      LookupDataSet = Cds_Representantes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CREP'
      Size = 80
      Lookup = True
    end
    object Cds_NFncli: TStringField
      FieldKind = fkLookup
      FieldName = 'ncli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CCLI'
      Size = 80
      Lookup = True
    end
    object Cds_NFnfan: TStringField
      FieldKind = fkLookup
      FieldName = 'nfan'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FANTASIA'
      KeyFields = 'CCLI'
      Size = 60
      Lookup = True
    end
    object Cds_NFSAIDA: TDateField
      FieldName = 'SAIDA'
    end
    object Cds_NFVOLUMES: TStringField
      FieldName = 'VOLUMES'
    end
    object Cds_NFRESUNI: TStringField
      FieldName = 'RESUNI'
      Size = 30
    end
    object Cds_NFPRAZO_VALIDADE: TDateField
      FieldName = 'PRAZO_VALIDADE'
    end
    object Cds_NFtotg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'totg'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Cds_NFnatureza: TStringField
      FieldKind = fkLookup
      FieldName = 'natureza'
      LookupDataSet = Cds_NatOp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CNAT'
      Size = 30
      Lookup = True
    end
    object Cds_NFcfop: TStringField
      FieldKind = fkLookup
      FieldName = 'cfop'
      LookupDataSet = Cds_NatOp
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CFOP'
      KeyFields = 'CNAT'
      Size = 5
      Lookup = True
    end
    object Cds_NFntransp: TStringField
      FieldKind = fkLookup
      FieldName = 'ntransp'
      LookupDataSet = Cds_Transportadores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CTRANSP'
      Size = 70
      Lookup = True
    end
    object Cds_NFNOS: TIntegerField
      FieldName = 'NOS'
    end
    object Cds_NFDATAS: TDateField
      FieldName = 'DATAS'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_NFHORAS: TTimeField
      DisplayWidth = 5
      FieldName = 'HORAS'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object Cds_NFDTE: TDateField
      FieldName = 'DTE'
    end
    object Cds_NFCNATNF: TIntegerField
      FieldName = 'CNATNF'
    end
    object Cds_NFnnatopnf: TStringField
      FieldKind = fkLookup
      FieldName = 'nnatopnf'
      LookupDataSet = Cds_NatOpNF
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CNATNF'
      Size = 30
      Lookup = True
    end
    object Cds_NFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_NFCTAB: TIntegerField
      FieldName = 'CTAB'
    end
  end
  object Dts_NF: TDataSource
    DataSet = Cds_NF
    Left = 447
    Top = 546
  end
  object Dbx_Comissao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from comissao'
      '')
    SQLConnection = Sql_Dados
    Left = 503
    Top = 498
    object IntegerField85: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ComissaoCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_ComissaoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_ComissaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Dbx_ComissaoSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object Dbx_ComissaoDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_ComissaoDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Dbx_ComissaoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_ComissaoPCOMF: TBCDField
      FieldName = 'PCOMF'
      Precision = 9
      Size = 3
    end
    object Dbx_ComissaoVCOMF: TFMTBCDField
      FieldName = 'VCOMF'
      Precision = 18
      Size = 2
    end
    object Dbx_ComissaoCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Dbx_ComissaoCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_ComissaoPCOMR: TBCDField
      FieldName = 'PCOMR'
      Precision = 9
      Size = 3
    end
    object Dbx_ComissaoVCOMR: TFMTBCDField
      FieldName = 'VCOMR'
      Precision = 18
      Size = 2
    end
    object Dbx_ComissaoST: TStringField
      FieldName = 'ST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ComissaoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_ComissaoCDMOBRA: TIntegerField
      FieldName = 'CDMOBRA'
    end
    object Dbx_ComissaoEHVENDA: TStringField
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dsp_Comissao: TDataSetProvider
    DataSet = Dbx_Comissao
    UpdateMode = upWhereKeyOnly
    Left = 519
    Top = 514
  end
  object Cds_Comissao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_comissao'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 535
    Top = 531
    object IntegerField88: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ComissaoCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_ComissaoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_ComissaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Cds_ComissaoSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object Cds_ComissaoDTE: TDateField
      FieldName = 'DTE'
    end
    object Cds_ComissaoDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Cds_ComissaoVALOR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_ComissaoPCOMF: TBCDField
      DefaultExpression = '0'
      FieldName = 'PCOMF'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_ComissaoVCOMF: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VCOMF'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_ComissaoCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Cds_Comissaonfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 60
      Lookup = True
    end
    object Cds_ComissaoCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_ComissaoPCOMR: TBCDField
      FieldName = 'PCOMR'
      Precision = 9
      Size = 3
    end
    object Cds_ComissaoVCOMR: TFMTBCDField
      FieldName = 'VCOMR'
      Precision = 18
      Size = 2
    end
    object Cds_ComissaoST: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_ComissaoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_Comissaonrep: TStringField
      FieldKind = fkLookup
      FieldName = 'nrep'
      LookupDataSet = Cds_Representantes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CREP'
      Size = 80
      Lookup = True
    end
    object Cds_ComissaoCDMOBRA: TIntegerField
      FieldName = 'CDMOBRA'
    end
    object Cds_ComissaoEHVENDA: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'EHVENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object Dts_Comissao: TDataSource
    DataSet = Cds_Comissao
    Left = 551
    Top = 546
  end
  object Dbx_ComissaoR: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from comissaoR'
      ''
      '')
    SQLConnection = Sql_Dados
    Left = 599
    Top = 498
    object IntegerField86: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ComissaoRCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_ComissaoRCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Dbx_ComissaoRDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Dbx_ComissaoRSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object Dbx_ComissaoRDTE: TDateField
      FieldName = 'DTE'
    end
    object Dbx_ComissaoRDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Dbx_ComissaoRVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_ComissaoRPCOMR: TBCDField
      FieldName = 'PCOMR'
      Precision = 9
      Size = 3
    end
    object Dbx_ComissaoRVCOMR: TFMTBCDField
      FieldName = 'VCOMR'
      Precision = 18
      Size = 2
    end
    object Dbx_ComissaoRCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Dbx_ComissaoRST: TStringField
      FieldName = 'ST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ComissaoRCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_ComissaoR: TDataSetProvider
    DataSet = Dbx_ComissaoR
    UpdateMode = upWhereKeyOnly
    Left = 615
    Top = 514
  end
  object Cds_ComissaoR: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_ComissaoR'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 631
    Top = 531
    object IntegerField87: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ComissaoRCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_ComissaoRCREP: TIntegerField
      FieldName = 'CREP'
    end
    object Cds_ComissaoRDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Cds_ComissaoRSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object Cds_ComissaoRDTE: TDateField
      FieldName = 'DTE'
    end
    object Cds_ComissaoRDATAFEC: TDateField
      FieldName = 'DATAFEC'
    end
    object Cds_ComissaoRVALOR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_ComissaoRPCOMR: TBCDField
      DefaultExpression = '0'
      FieldName = 'PCOMR'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 3
    end
    object Cds_ComissaoRVCOMR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VCOMR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_ComissaoRCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Cds_ComissaoRnrep: TStringField
      FieldKind = fkLookup
      FieldName = 'nrep'
      LookupDataSet = Cds_Representantes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CREP'
      Size = 60
      Lookup = True
    end
    object Cds_ComissaoRST: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_ComissaoRCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_ComissaoR: TDataSource
    DataSet = Cds_ComissaoR
    Left = 647
    Top = 546
  end
  object Dbx_Sangria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from sangria')
    SQLConnection = Sql_Dados
    Left = 707
    Top = 498
    object IntegerField89: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SangriaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_SangriaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_SangriaDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_SangriaHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object Dbx_SangriaORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
    object Dbx_SangriaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Sangria: TDataSetProvider
    DataSet = Dbx_Sangria
    UpdateMode = upWhereKeyOnly
    Left = 723
    Top = 514
  end
  object Cds_Sangria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Sangria'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 739
    Top = 531
    object IntegerField113: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SangriaVALOR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_SangriaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_SangriaDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_SangriaHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object Cds_SangriaORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
    object Cds_SangriaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_sangria: TDataSource
    DataSet = Cds_Sangria
    Left = 755
    Top = 546
  end
  object Dbx_Ingestao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ingestao')
    SQLConnection = Sql_Dados
    Left = 803
    Top = 498
    object IntegerField135: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_IngestaoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_IngestaoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_IngestaoDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_IngestaoHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object Dbx_IngestaoORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
    object Dbx_IngestaoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Ingestao: TDataSetProvider
    DataSet = Dbx_Ingestao
    UpdateMode = upWhereKeyOnly
    Left = 819
    Top = 514
  end
  object Cds_Ingestao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Ingestao'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 835
    Top = 531
    object IntegerField157: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_IngestaoVALOR: TFMTBCDField
      DefaultExpression = '0'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_IngestaoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_IngestaoDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_IngestaoHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object Cds_IngestaoORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
    object Cds_IngestaoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Ingestao: TDataSource
    DataSet = Cds_Ingestao
    Left = 851
    Top = 546
  end
  object Dbx_EnviaComando: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Sql_Dados
    Left = 946
    Top = 917
  end
  object cdsRanking: TClientDataSet
    Aggregates = <>
    FileName = 'C:\mybase.cds'
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'cpro'
        DataType = ftInteger
      end
      item
        Name = 'qtdet'
        DataType = ftFloat
      end
      item
        Name = 'nproqtdet'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 52
    Top = 955
    object cdsRankingcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsRankingdescricao: TStringField
      FieldName = 'descricao'
      Size = 150
    end
    object cdsRankingcpro: TIntegerField
      FieldName = 'cpro'
    end
    object cdsRankingqtdet: TFloatField
      FieldName = 'qtdet'
    end
    object cdsRankingnproqtdet: TStringField
      FieldName = 'nproqtdet'
      Size = 255
    end
  end
  object dtsRanking: TDataSource
    DataSet = cdsRanking
    Left = 66
    Top = 969
  end
  object cds_tabela_temps: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'cpro'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 116
    Top = 954
  end
  object Dbx_cmobra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from cmobra')
    SQLConnection = Sql_Dados
    Left = 907
    Top = 498
    object IntegerField91: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_cmobraDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object Dbx_cmobraCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Dbx_cmobraVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_cmobraCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object Dbx_cmobraCAUX: TStringField
      FieldName = 'CAUX'
      Size = 25
    end
    object Dbx_cmobraCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Dbx_cmobraCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_cmobraCTABPRPORC: TIntegerField
      FieldName = 'CTABPRPORC'
    end
    object Dbx_cmobraPCOM: TBCDField
      FieldName = 'PCOM'
      Precision = 4
      Size = 2
    end
  end
  object Dsp_cmobra: TDataSetProvider
    DataSet = Dbx_cmobra
    UpdateMode = upWhereKeyOnly
    Left = 923
    Top = 514
  end
  object Cds_cmobra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_cmobra'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_cmobraAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 939
    Top = 526
    object IntegerField115: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_cmobraDESCR: TStringField
      FieldName = 'DESCR'
      Size = 60
    end
    object Cds_cmobraCMOD: TIntegerField
      FieldName = 'CMOD'
    end
    object Cds_cmobraVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_cmobranmod: TStringField
      FieldKind = fkLookup
      FieldName = 'nmod'
      LookupDataSet = Cds_Modulo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CMOD'
      Size = 40
      Lookup = True
    end
    object Cds_cmobraCBAR: TStringField
      FieldName = 'CBAR'
      Size = 13
    end
    object Cds_cmobraCAUX: TStringField
      FieldName = 'CAUX'
      Size = 25
    end
    object Cds_cmobraCTIPOTAB: TIntegerField
      FieldName = 'CTIPOTAB'
    end
    object Cds_cmobrantipotab: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipotab'
      LookupDataSet = Cds_Tipotab
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTIPOTAB'
      Size = 30
      Lookup = True
    end
    object Cds_cmobraCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_cmobraCTABPRPORC: TIntegerField
      FieldName = 'CTABPRPORC'
    end
    object Cds_cmobraPCOM: TBCDField
      FieldName = 'PCOM'
      DisplayFormat = '###,###,##0.00'
      Precision = 4
      Size = 2
    end
  end
  object Dts_cmobra: TDataSource
    DataSet = Cds_cmobra
    Left = 955
    Top = 546
  end
  object Dbx_SituOs: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SituOs')
    SQLConnection = Sql_Dados
    Left = 33
    Top = 594
    object IntegerField92: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SituOsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_SituOsCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SituOs: TDataSetProvider
    DataSet = Dbx_SituOs
    UpdateMode = upWhereKeyOnly
    Left = 49
    Top = 610
  end
  object Cds_SituOs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SituOs'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 65
    Top = 626
    object IntegerField94: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SituOsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_SituOsCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SituOs: TDataSource
    DataSet = Cds_SituOs
    Left = 81
    Top = 642
  end
  object Dbx_Hist: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Hist')
    SQLConnection = Sql_Dados
    Left = 139
    Top = 594
    object IntegerField93: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_HistCODSITOS: TIntegerField
      FieldName = 'CODSITOS'
    end
    object Dbx_HistDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_HistHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object Dbx_HistCODCFUN: TIntegerField
      FieldName = 'CODCFUN'
    end
    object Dbx_HistCODOS: TIntegerField
      FieldName = 'CODOS'
    end
    object Dbx_HistTAG: TIntegerField
      FieldName = 'TAG'
    end
    object Dbx_HistCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Dbx_HistCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Hist: TDataSetProvider
    DataSet = Dbx_Hist
    UpdateMode = upWhereKeyOnly
    Left = 155
    Top = 610
  end
  object Cds_Hist: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Hist'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 171
    Top = 626
    object IntegerField95: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_HistCODSITOS: TIntegerField
      FieldName = 'CODSITOS'
    end
    object Cds_HistDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_HistHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object Cds_HistCODCFUN: TIntegerField
      FieldName = 'CODCFUN'
    end
    object Cds_HistCODOS: TIntegerField
      FieldName = 'CODOS'
    end
    object Cds_HistTAG: TIntegerField
      FieldName = 'TAG'
    end
    object Cds_HistCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Cds_HistCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Hist: TDataSource
    DataSet = Cds_Hist
    Left = 187
    Top = 642
  end
  object Dbx_EquipCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from EquipCli')
    SQLConnection = Sql_Dados
    Left = 227
    Top = 594
    object IntegerField96: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_EquipCliCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_EquipCliID1: TStringField
      FieldName = 'ID1'
      Size = 25
    end
    object Dbx_EquipCliID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Dbx_EquipCliDESC1: TStringField
      FieldName = 'DESC1'
      Size = 40
    end
    object Dbx_EquipCliDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object Dbx_EquipCliDESC3: TStringField
      FieldName = 'DESC3'
      Size = 40
    end
    object Dbx_EquipCliDESC4: TStringField
      FieldName = 'DESC4'
      Size = 40
    end
    object Dbx_EquipCliDESC5: TStringField
      FieldName = 'DESC5'
      Size = 40
    end
    object Dbx_EquipCliDESC6: TStringField
      FieldName = 'DESC6'
      Size = 40
    end
    object Dbx_EquipCliDESC7: TStringField
      FieldName = 'DESC7'
      Size = 40
    end
    object Dbx_EquipCliDESC8: TStringField
      FieldName = 'DESC8'
      Size = 40
    end
    object Dbx_EquipCliDESC9: TStringField
      FieldName = 'DESC9'
      Size = 40
    end
    object Dbx_EquipCliDESC10: TStringField
      FieldName = 'DESC10'
      Size = 40
    end
    object Dbx_EquipCliDESC11: TStringField
      FieldName = 'DESC11'
      Size = 40
    end
    object Dbx_EquipCliDESC12: TStringField
      FieldName = 'DESC12'
      Size = 40
    end
    object Dbx_EquipCliDESC13: TStringField
      FieldName = 'DESC13'
      Size = 40
    end
    object Dbx_EquipCliDESC14: TStringField
      FieldName = 'DESC14'
      Size = 40
    end
    object Dbx_EquipCliDESC15: TStringField
      FieldName = 'DESC15'
      Size = 40
    end
    object Dbx_EquipCliDESC16: TStringField
      FieldName = 'DESC16'
      Size = 40
    end
    object Dbx_EquipCliDESC17: TStringField
      FieldName = 'DESC17'
      Size = 40
    end
    object Dbx_EquipCliDESC18: TStringField
      FieldName = 'DESC18'
      Size = 40
    end
    object Dbx_EquipCliDESC19: TStringField
      FieldName = 'DESC19'
      Size = 40
    end
    object Dbx_EquipCliDESC20: TStringField
      FieldName = 'DESC20'
      Size = 40
    end
    object Dbx_EquipCliDESC21: TStringField
      FieldName = 'DESC21'
      Size = 40
    end
    object Dbx_EquipCliDESC22: TStringField
      FieldName = 'DESC22'
      Size = 40
    end
    object Dbx_EquipCliDESC23: TStringField
      FieldName = 'DESC23'
      Size = 40
    end
    object Dbx_EquipCliDESC24: TStringField
      FieldName = 'DESC24'
      Size = 40
    end
    object Dbx_EquipCliDESC25: TStringField
      FieldName = 'DESC25'
      Size = 40
    end
    object Dbx_EquipCliDESC26: TStringField
      FieldName = 'DESC26'
      Size = 40
    end
    object Dbx_EquipCliDESC27: TStringField
      FieldName = 'DESC27'
      Size = 40
    end
    object Dbx_EquipCliDESC28: TStringField
      FieldName = 'DESC28'
      Size = 40
    end
    object Dbx_EquipCliDESC29: TStringField
      FieldName = 'DESC29'
      Size = 40
    end
    object Dbx_EquipCliDESC30: TStringField
      FieldName = 'DESC30'
      Size = 40
    end
    object Dbx_EquipCliDESC31: TStringField
      FieldName = 'DESC31'
      Size = 40
    end
    object Dbx_EquipCliDESC32: TStringField
      FieldName = 'DESC32'
      Size = 40
    end
    object Dbx_EquipCliDESC33: TStringField
      FieldName = 'DESC33'
      Size = 40
    end
    object Dbx_EquipCliDESC34: TStringField
      FieldName = 'DESC34'
      Size = 40
    end
    object Dbx_EquipCliDESC35: TStringField
      FieldName = 'DESC35'
      Size = 40
    end
    object Dbx_EquipCliDESC36: TStringField
      FieldName = 'DESC36'
      Size = 40
    end
    object Dbx_EquipCliDESC37: TStringField
      FieldName = 'DESC37'
      Size = 40
    end
    object Dbx_EquipCliDESC38: TStringField
      FieldName = 'DESC38'
      Size = 40
    end
    object Dbx_EquipCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_EquipCli: TDataSetProvider
    DataSet = Dbx_EquipCli
    UpdateMode = upWhereKeyOnly
    Left = 243
    Top = 610
  end
  object Cds_EquipCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_EquipCli'
    AfterInsert = Cds_EquipCliAfterInsert
    AfterEdit = Cds_EquipCliAfterEdit
    BeforePost = Cds_EquipCliBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    OnPostError = Cds_EquipCliPostError
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 259
    Top = 626
    object IntegerField102: TIntegerField
      AutoGenerateValue = arAutoInc
      DefaultExpression = '0'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_EquipCliCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_EquipCliID1: TStringField
      FieldName = 'ID1'
      OnValidate = Cds_EquipCliID1Validate
      Size = 25
    end
    object Cds_EquipCliID2: TStringField
      FieldName = 'ID2'
      Size = 25
    end
    object Cds_EquipCliDESC1: TStringField
      FieldName = 'DESC1'
      Size = 40
    end
    object Cds_EquipCliDESC2: TStringField
      FieldName = 'DESC2'
      Size = 40
    end
    object Cds_EquipCliDESC3: TStringField
      FieldName = 'DESC3'
      Size = 40
    end
    object Cds_EquipCliDESC4: TStringField
      FieldName = 'DESC4'
      Size = 40
    end
    object Cds_EquipCliDESC5: TStringField
      FieldName = 'DESC5'
      Size = 40
    end
    object Cds_EquipCliDESC6: TStringField
      FieldName = 'DESC6'
      Size = 40
    end
    object Cds_EquipCliDESC7: TStringField
      FieldName = 'DESC7'
      Size = 40
    end
    object Cds_EquipCliDESC8: TStringField
      FieldName = 'DESC8'
      Size = 40
    end
    object Cds_EquipCliDESC9: TStringField
      FieldName = 'DESC9'
      Size = 40
    end
    object Cds_EquipCliDESC10: TStringField
      FieldName = 'DESC10'
      Size = 40
    end
    object Cds_EquipCliDESC11: TStringField
      FieldName = 'DESC11'
      Size = 40
    end
    object Cds_EquipCliDESC12: TStringField
      FieldName = 'DESC12'
      Size = 40
    end
    object Cds_EquipCliDESC13: TStringField
      FieldName = 'DESC13'
      Size = 40
    end
    object Cds_EquipCliDESC14: TStringField
      FieldName = 'DESC14'
      Size = 40
    end
    object Cds_EquipCliDESC15: TStringField
      FieldName = 'DESC15'
      Size = 40
    end
    object Cds_EquipCliDESC16: TStringField
      FieldName = 'DESC16'
      Size = 40
    end
    object Cds_EquipCliDESC17: TStringField
      FieldName = 'DESC17'
      Size = 40
    end
    object Cds_EquipCliDESC18: TStringField
      FieldName = 'DESC18'
      Size = 40
    end
    object Cds_EquipCliDESC19: TStringField
      FieldName = 'DESC19'
      Size = 40
    end
    object Cds_EquipCliDESC20: TStringField
      FieldName = 'DESC20'
      Size = 40
    end
    object Cds_EquipCliDESC21: TStringField
      FieldName = 'DESC21'
      Size = 40
    end
    object Cds_EquipCliDESC22: TStringField
      FieldName = 'DESC22'
      Size = 40
    end
    object Cds_EquipCliDESC23: TStringField
      FieldName = 'DESC23'
      Size = 40
    end
    object Cds_EquipCliDESC24: TStringField
      FieldName = 'DESC24'
      Size = 40
    end
    object Cds_EquipCliDESC25: TStringField
      FieldName = 'DESC25'
      Size = 40
    end
    object Cds_EquipCliDESC26: TStringField
      FieldName = 'DESC26'
      Size = 40
    end
    object Cds_EquipCliDESC27: TStringField
      FieldName = 'DESC27'
      Size = 40
    end
    object Cds_EquipCliDESC28: TStringField
      FieldName = 'DESC28'
      Size = 40
    end
    object Cds_EquipCliDESC29: TStringField
      FieldName = 'DESC29'
      Size = 40
    end
    object Cds_EquipCliDESC30: TStringField
      FieldName = 'DESC30'
      Size = 40
    end
    object Cds_EquipCliDESC31: TStringField
      FieldName = 'DESC31'
      Size = 40
    end
    object Cds_EquipCliDESC32: TStringField
      FieldName = 'DESC32'
      Size = 40
    end
    object Cds_EquipCliDESC33: TStringField
      FieldName = 'DESC33'
      Size = 40
    end
    object Cds_EquipCliDESC34: TStringField
      FieldName = 'DESC34'
      Size = 40
    end
    object Cds_EquipCliDESC35: TStringField
      FieldName = 'DESC35'
      Size = 40
    end
    object Cds_EquipCliDESC36: TStringField
      FieldName = 'DESC36'
      Size = 40
    end
    object Cds_EquipCliDESC37: TStringField
      FieldName = 'DESC37'
      Size = 40
    end
    object Cds_EquipCliDESC38: TStringField
      FieldName = 'DESC38'
      Size = 40
    end
    object Cds_EquipCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_EquipCli: TDataSource
    DataSet = Cds_EquipCli
    Left = 275
    Top = 642
  end
  object Dbx_SituCadCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from situcadcli')
    SQLConnection = Sql_Dados
    Left = 323
    Top = 594
    object IntegerField97: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_SituCadCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_SituCadCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_SituCadCli: TDataSetProvider
    DataSet = Dbx_SituCadCli
    UpdateMode = upWhereKeyOnly
    Left = 339
    Top = 610
  end
  object Cds_SituCadCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_SituCadCli'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 355
    Top = 626
    object IntegerField123: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_SituCadCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_SituCadCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_SituCadCli: TDataSource
    DataSet = Cds_SituCadCli
    Left = 371
    Top = 642
  end
  object Dbx_ImgEquipCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ImgEquipCli')
    SQLConnection = Sql_Dados
    Left = 434
    Top = 594
    object IntegerField98: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ImgEquipCliIMAGEM: TGraphicField
      FieldName = 'IMAGEM'
      BlobType = ftGraphic
    end
    object Dbx_ImgEquipCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_ImgEquipCliOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_ImgEquipCliCEQPCLI: TIntegerField
      FieldName = 'CEQPCLI'
    end
    object Dbx_ImgEquipCliCSVENDA: TIntegerField
      FieldName = 'CSVENDA'
    end
    object Dbx_ImgEquipCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_ImgEquipCliFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
  end
  object Dsp_ImgEquipCli: TDataSetProvider
    DataSet = Dbx_ImgEquipCli
    UpdateMode = upWhereKeyOnly
    Left = 450
    Top = 610
  end
  object Cds_ImgEquipCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_ImgEquipCli'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 466
    Top = 626
    object IntegerField125: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ImgEquipCliIMAGEM: TGraphicField
      FieldName = 'IMAGEM'
      BlobType = ftGraphic
    end
    object Cds_ImgEquipCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_ImgEquipCliOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_ImgEquipCliCEQPCLI: TIntegerField
      FieldName = 'CEQPCLI'
    end
    object Cds_ImgEquipCliCSVENDA: TIntegerField
      FieldName = 'CSVENDA'
    end
    object Cds_ImgEquipCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_ImgEquipCliFILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 200
    end
  end
  object Dts_ImgEquipCli: TDataSource
    DataSet = Cds_ImgEquipCli
    Left = 482
    Top = 642
  end
  object Dbx_Apontamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Apontamento')
    SQLConnection = Sql_Dados
    Left = 546
    Top = 595
    object IntegerField99: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ApontamentoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_ApontamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_ApontamentoHORA: TTimeField
      FieldName = 'HORA'
    end
    object Dbx_ApontamentoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_ApontamentoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Apontamento: TDataSetProvider
    DataSet = Dbx_Apontamento
    UpdateMode = upWhereKeyOnly
    Left = 562
    Top = 611
  end
  object Cds_Apontamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Apontamento'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 578
    Top = 627
    object IntegerField101: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ApontamentoCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_ApontamentoDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_ApontamentoHORA: TTimeField
      FieldName = 'HORA'
    end
    object Cds_ApontamentoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_ApontamentoCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Apontamento: TDataSource
    DataSet = Cds_Apontamento
    Left = 594
    Top = 643
  end
  object Dbx_PedCanc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from PedCanc')
    SQLConnection = Sql_Dados
    Left = 650
    Top = 595
    object IntegerField100: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_PedCancNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Dbx_PedCancNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Dbx_PedCancTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_PedCancJUST: TStringField
      FieldName = 'JUST'
      Size = 60
    end
    object Dbx_PedCancCSVENDA: TIntegerField
      FieldName = 'CSVENDA'
    end
    object Dbx_PedCancDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_PedCancHORA: TTimeField
      FieldName = 'HORA'
    end
    object Dbx_PedCancCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_PedCanc: TDataSetProvider
    DataSet = Dbx_PedCanc
    UpdateMode = upWhereKeyOnly
    Left = 666
    Top = 611
  end
  object Cds_PedCanc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_PedCanc'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 682
    Top = 627
    object IntegerField104: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_PedCancNCO: TIntegerField
      FieldName = 'NCO'
    end
    object Cds_PedCancNUMPED: TIntegerField
      FieldName = 'NUMPED'
    end
    object Cds_PedCancTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Cds_PedCancJUST: TStringField
      FieldName = 'JUST'
      Size = 60
    end
    object Cds_PedCancCSVENDA: TIntegerField
      FieldName = 'CSVENDA'
    end
    object Cds_PedCancDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_PedCancHORA: TTimeField
      FieldName = 'HORA'
    end
    object Cds_PedCancCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_PedCanc: TDataSource
    DataSet = Cds_PedCanc
    Left = 698
    Top = 643
  end
  object Dbx_Munic: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Munic')
    SQLConnection = Sql_Dados
    Left = 741
    Top = 595
    object IntegerField103: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_MunicNOME: TStringField
      FieldName = 'NOME'
    end
    object Dbx_MunicSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object Dbx_MunicCODMIBGE: TStringField
      FieldName = 'CODMIBGE'
      Size = 12
    end
    object Dbx_MunicCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object Dbx_MunicCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Munic: TDataSetProvider
    DataSet = Dbx_Munic
    UpdateMode = upWhereKeyOnly
    Left = 757
    Top = 611
  end
  object Cds_Munic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Munic'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 773
    Top = 627
    object IntegerField105: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_MunicNOME: TStringField
      FieldName = 'NOME'
    end
    object Cds_MunicSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 2
    end
    object Cds_MunicCODMIBGE: TStringField
      FieldName = 'CODMIBGE'
      Size = 12
    end
    object Cds_MunicCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object Cds_Municest: TStringField
      FieldKind = fkLookup
      FieldName = 'est'
      LookupDataSet = Cds_estados
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SIGLA'
      KeyFields = 'CODEST'
      Size = 2
      Lookup = True
    end
    object Cds_MunicCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Munic: TDataSource
    DataSet = Cds_Munic
    Left = 781
    Top = 643
  end
  object Dbx_Pais: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Pais')
    SQLConnection = Sql_Dados
    Left = 837
    Top = 595
    object IntegerField106: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_PaisNOME: TStringField
      FieldName = 'NOME'
    end
    object Dbx_PaisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object Dbx_PaisCODPIBGE: TStringField
      FieldName = 'CODPIBGE'
      Size = 12
    end
    object Dbx_PaisCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Pais: TDataSetProvider
    DataSet = Dbx_Pais
    UpdateMode = upWhereKeyOnly
    Left = 853
    Top = 611
  end
  object Cds_Pais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Pais'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 869
    Top = 627
    object IntegerField109: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_PaisNOME: TStringField
      FieldName = 'NOME'
    end
    object Cds_PaisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object Cds_PaisCODPIBGE: TStringField
      FieldName = 'CODPIBGE'
      Size = 12
    end
    object Cds_PaisCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Pais: TDataSource
    DataSet = Cds_Pais
    Left = 885
    Top = 643
  end
  object Dbx_NatOpNF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from NatOPNF'
      '')
    SQLConnection = Sql_Dados
    Left = 933
    Top = 595
    object IntegerField108: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_NatOpNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_NatOpNFOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Dbx_NatOpNFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_NatOpNF: TDataSetProvider
    DataSet = Dbx_NatOpNF
    UpdateMode = upWhereKeyOnly
    Left = 949
    Top = 611
  end
  object Cds_NatOpNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_NatOpNF'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 965
    Top = 627
    object IntegerField110: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_NatOpNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_NatOpNFOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object Cds_NatOpNFCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_NatOpNF: TDataSource
    DataSet = Cds_NatOpNF
    Left = 981
    Top = 643
  end
  object Dbx_modbcst: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from modbcst')
    SQLConnection = Sql_Dados
    Left = 984
    Top = 217
    object IntegerField111: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_modbcstDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_modbcstSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_modbcstCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_modbcst: TDataSetProvider
    DataSet = Dbx_modbcst
    UpdateMode = upWhereKeyOnly
    Left = 1000
    Top = 233
  end
  object cds_modbcst: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_modbcst'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1016
    Top = 249
    object IntegerField117: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_modbcstDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cds_modbcstSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cds_modbcstCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_modbcst: TDataSource
    DataSet = cds_modbcst
    Left = 1032
    Top = 265
  end
  object Dbx_pis: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from pis')
    SQLConnection = Sql_Dados
    Left = 1002
    Top = 314
    object IntegerField112: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_pisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_pisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_pisALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Dbx_pisREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_pisCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_pis: TDataSetProvider
    DataSet = Dbx_pis
    UpdateMode = upWhereKeyOnly
    Left = 1018
    Top = 330
  end
  object Cds_pis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_pis'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1034
    Top = 346
    object IntegerField119: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_pisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_pisSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_pisALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Cds_pisREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Cds_pisCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Pis: TDataSource
    DataSet = Cds_pis
    Left = 1050
    Top = 362
  end
  object Dbx_Cofins: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from cofins')
    SQLConnection = Sql_Dados
    Left = 998
    Top = 114
    object IntegerField114: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_CofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_CofinsSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_CofinsALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Dbx_CofinsREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_CofinsCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Cofins: TDataSetProvider
    DataSet = Dbx_Cofins
    UpdateMode = upWhereKeyOnly
    Left = 1017
    Top = 130
  end
  object Cds_Cofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_cofins'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1031
    Top = 146
    object IntegerField121: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_CofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_CofinsSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_CofinsALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Cds_CofinsREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Cds_CofinsCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Cofins: TDataSource
    DataSet = Cds_Cofins
    Left = 1043
    Top = 162
  end
  object Dbx_vii: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vii')
    SQLConnection = Sql_Dados
    Left = 1090
    Top = 114
    object IntegerField116: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_viiDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_viiSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_viiALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Dbx_viiREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_viiCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_vii: TDataSetProvider
    DataSet = Dbx_vii
    UpdateMode = upWhereKeyOnly
    Left = 1106
    Top = 130
  end
  object Cds_vii: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_vii'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1113
    Top = 146
    object IntegerField124: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_viiDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_viiSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_viiALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Cds_viiREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Cds_viiCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_vii: TDataSource
    DataSet = Cds_vii
    Left = 1125
    Top = 162
  end
  object Dbx_Oimp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from oimp')
    SQLConnection = Sql_Dados
    Left = 1104
    Top = 410
    object IntegerField118: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_OimpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_OimpSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_OimpALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Dbx_OimpREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_OimpCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Oimp: TDataSetProvider
    DataSet = Dbx_Oimp
    UpdateMode = upWhereKeyOnly
    Left = 1120
    Top = 426
  end
  object Cds_Oimp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Oimp'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1136
    Top = 442
    object IntegerField127: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_OimpDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_OimpSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_OimpALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Cds_OimpREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Cds_OimpCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Oimp: TDataSource
    DataSet = Cds_Oimp
    Left = 1152
    Top = 458
  end
  object Dbx_IR_II: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ir_ii')
    SQLConnection = Sql_Dados
    Left = 1009
    Top = 498
    object IntegerField120: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_IR_IIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_IR_IISIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_IR_IIALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Dbx_IR_IIREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Dbx_IR_IICEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_IR_II: TDataSetProvider
    DataSet = Dbx_IR_II
    UpdateMode = upWhereKeyOnly
    Left = 1025
    Top = 514
  end
  object Cds_IR_II: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_IR_II'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1041
    Top = 530
    object IntegerField129: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_IR_IIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_IR_IISIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_IR_IIALIQUOTA: TBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 3
    end
    object Cds_IR_IIREDUCAO: TFMTBCDField
      FieldName = 'REDUCAO'
      Precision = 18
      Size = 3
    end
    object Cds_IR_IICEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_IR_II: TDataSource
    DataSet = Cds_IR_II
    Left = 1057
    Top = 546
  end
  object Dbx_ModBc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ModBc'
      '')
    SQLConnection = Sql_Dados
    Left = 1121
    Top = 514
    object IntegerField122: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ModBcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_ModBcSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Dbx_ModBcCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_ModBc: TDataSetProvider
    DataSet = Dbx_ModBc
    UpdateMode = upWhereKeyOnly
    Left = 1137
    Top = 530
  end
  object Cds_ModBc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_ModBc'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1153
    Top = 546
    object IntegerField131: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_ModBcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_ModBcSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object Cds_ModBcCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_ModBc: TDataSource
    DataSet = Cds_ModBc
    Left = 1169
    Top = 562
  end
  object Dbx_Tgicms: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tgicms'
      '')
    SQLConnection = Sql_Dados
    Left = 1092
    Top = 315
    object IntegerField126: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TgicmsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 10
    end
    object Dbx_TgicmsPREVALOR: TFMTBCDField
      FieldName = 'PREVALOR'
      Precision = 18
      Size = 8
    end
    object Dbx_TgicmsCSITB: TIntegerField
      FieldName = 'CSITB'
    end
    object Dbx_TgicmsTABREF: TStringField
      FieldName = 'TABREF'
      Size = 25
    end
    object Dbx_TgicmsCAMPOREF: TStringField
      FieldName = 'CAMPOREF'
      Size = 25
    end
    object Dbx_TgicmsCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Tgicms: TDataSetProvider
    DataSet = Dbx_Tgicms
    UpdateMode = upWhereKeyOnly
    Left = 1108
    Top = 331
  end
  object Cds_Tgicms: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Tgicms'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1124
    Top = 347
    object IntegerField133: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TgicmsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 10
    end
    object Cds_TgicmsPREVALOR: TFMTBCDField
      FieldName = 'PREVALOR'
      Precision = 18
      Size = 8
    end
    object Cds_TgicmsCSITB: TIntegerField
      FieldName = 'CSITB'
    end
    object Cds_TgicmsTABREF: TStringField
      FieldName = 'TABREF'
      Size = 25
    end
    object Cds_TgicmsCAMPOREF: TStringField
      FieldName = 'CAMPOREF'
      Size = 25
    end
    object Cds_TgicmsCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Tgicms: TDataSource
    DataSet = Cds_Tgicms
    Left = 1140
    Top = 363
  end
  object Dbx_Tipotab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tipotab')
    SQLConnection = Sql_Dados
    Left = 1030
    Top = 418
    object IntegerField128: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TipotabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_TipotabCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Tipotab: TDataSetProvider
    DataSet = Dbx_Tipotab
    UpdateMode = upWhereKeyOnly
    Left = 1046
    Top = 434
  end
  object Cds_Tipotab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Tipotab'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1053
    Top = 450
    object IntegerField130: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TipotabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_TipotabCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Tipotab: TDataSource
    DataSet = Cds_Tipotab
    Left = 1065
    Top = 466
  end
  object Dbx_Mat_Restaurar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Mat_Restaurar')
    SQLConnection = Sql_Dados
    Left = 1248
    Top = 522
    object IntegerField132: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_Mat_RestaurarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_Mat_RestaurarID: TStringField
      FieldName = 'ID'
      Size = 5
    end
    object Dbx_Mat_RestaurarFOTO1: TGraphicField
      FieldName = 'FOTO1'
      BlobType = ftGraphic
    end
    object Dbx_Mat_RestaurarFOTO2: TGraphicField
      FieldName = 'FOTO2'
      BlobType = ftGraphic
    end
    object Dbx_Mat_RestaurarFOTO3: TGraphicField
      FieldName = 'FOTO3'
      BlobType = ftGraphic
    end
    object Dbx_Mat_RestaurarFOTO4: TGraphicField
      FieldName = 'FOTO4'
      BlobType = ftGraphic
    end
    object Dbx_Mat_RestaurarFILENAME1: TStringField
      FieldName = 'FILENAME1'
      Size = 100
    end
    object Dbx_Mat_RestaurarFILENAME2: TStringField
      FieldName = 'FILENAME2'
      Size = 100
    end
    object Dbx_Mat_RestaurarFILENAME3: TStringField
      FieldName = 'FILENAME3'
      Size = 100
    end
    object Dbx_Mat_RestaurarFILENAME4: TStringField
      FieldName = 'FILENAME4'
      Size = 100
    end
    object Dbx_Mat_RestaurarCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Mat_Restaurar: TDataSetProvider
    DataSet = Dbx_Mat_Restaurar
    UpdateMode = upWhereKeyOnly
    Left = 1264
    Top = 538
  end
  object Cds_Mat_Restaurar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Mat_Restaurar'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_Mat_RestaurarAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1271
    Top = 554
    object IntegerField134: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_Mat_RestaurarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_Mat_RestaurarID: TStringField
      FieldName = 'ID'
      Size = 5
    end
    object Cds_Mat_RestaurarFOTO1: TGraphicField
      FieldName = 'FOTO1'
      BlobType = ftGraphic
    end
    object Cds_Mat_RestaurarFOTO2: TGraphicField
      FieldName = 'FOTO2'
      BlobType = ftGraphic
    end
    object Cds_Mat_RestaurarFOTO3: TGraphicField
      FieldName = 'FOTO3'
      BlobType = ftGraphic
    end
    object Cds_Mat_RestaurarFOTO4: TGraphicField
      FieldName = 'FOTO4'
      BlobType = ftGraphic
    end
    object Cds_Mat_RestaurarFILENAME1: TStringField
      FieldName = 'FILENAME1'
      Size = 100
    end
    object Cds_Mat_RestaurarFILENAME2: TStringField
      FieldName = 'FILENAME2'
      Size = 100
    end
    object Cds_Mat_RestaurarFILENAME3: TStringField
      FieldName = 'FILENAME3'
      Size = 100
    end
    object Cds_Mat_RestaurarFILENAME4: TStringField
      FieldName = 'FILENAME4'
      Size = 100
    end
    object Cds_Mat_RestaurarCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Mat_Restaurar: TDataSource
    DataSet = Cds_Mat_Restaurar
    Left = 1283
    Top = 570
  end
  object Dbx_MatRep: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from MatRep')
    SQLConnection = Sql_Dados
    Left = 1248
    Top = 415
    object IntegerField136: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_MatRepCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Dbx_MatRepCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_MatRepSELEC: TStringField
      FieldName = 'SELEC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_MatRepCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_MatRep: TDataSetProvider
    DataSet = Dbx_MatRep
    UpdateMode = upWhereKeyOnly
    Left = 1264
    Top = 431
  end
  object Cds_MatRep: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_MatRep'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1271
    Top = 447
    object IntegerField137: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_MatRepCODMAT_RESTAURAR: TIntegerField
      FieldName = 'CODMAT_RESTAURAR'
    end
    object Cds_MatRepCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_MatRepidmat_restaurar: TStringField
      FieldKind = fkLookup
      FieldName = 'idmat_restaurar'
      LookupDataSet = Cds_Mat_Restaurar
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ID'
      KeyFields = 'CODMAT_RESTAURAR'
      Size = 5
      Lookup = True
    end
    object Cds_MatRepidmat_rest_id: TStringField
      FieldKind = fkLookup
      FieldName = 'idmat_rest_id'
      LookupDataSet = Cds_Mat_Rest_ID
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ID'
      KeyFields = 'CODMAT_RESTAURAR'
      Size = 5
      Lookup = True
    end
    object Cds_MatRepSELEC: TStringField
      FieldName = 'SELEC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_MatRepCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_MatRep: TDataSource
    DataSet = Cds_MatRep
    Left = 1283
    Top = 463
  end
  object Dbx_Procedimentos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from procedimentos')
    SQLConnection = Sql_Dados
    Left = 1090
    Top = 215
    object IntegerField138: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_ProcedimentosCSVENDA: TIntegerField
      FieldName = 'CSVENDA'
    end
    object Dbx_ProcedimentosDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_ProcedimentosCMAT_RESTAURAR: TIntegerField
      FieldName = 'CMAT_RESTAURAR'
    end
    object Dbx_ProcedimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Dbx_ProcedimentosTEMPO: TTimeField
      FieldName = 'TEMPO'
    end
    object Dbx_ProcedimentosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Dbx_ProcedimentosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Dbx_ProcedimentosCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_ProcedimentosDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
    end
    object Dbx_ProcedimentosDATAFIM: TDateField
      FieldName = 'DATAFIM'
    end
    object Dbx_ProcedimentosHORANICIO: TTimeField
      FieldName = 'HORANICIO'
    end
    object Dbx_ProcedimentosHORAFIM: TTimeField
      FieldName = 'HORAFIM'
    end
    object Dbx_ProcedimentosCOMPLETO: TStringField
      FieldName = 'COMPLETO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_ProcedimentosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Procedimentos: TDataSetProvider
    DataSet = Dbx_Procedimentos
    UpdateMode = upWhereKeyOnly
    Left = 1106
    Top = 231
  end
  object Cds_procedimentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Procedimentos'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1113
    Top = 247
    object IntegerField139: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_procedimentosCSVENDA: TIntegerField
      FieldName = 'CSVENDA'
    end
    object Cds_procedimentosDATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_procedimentosCMAT_RESTAURAR: TIntegerField
      FieldName = 'CMAT_RESTAURAR'
    end
    object Cds_procedimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object Cds_procedimentosTEMPO: TTimeField
      FieldName = 'TEMPO'
      DisplayFormat = 'hh:nn'
      EditMask = '!90:00;1;_'
    end
    object Cds_procedimentosVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Cds_procedimentosTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object Cds_procedimentosidmat_restaurar: TStringField
      FieldKind = fkLookup
      FieldName = 'idmat_restaurar'
      LookupDataSet = Cds_Mat_Restaurar
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ID'
      KeyFields = 'CMAT_RESTAURAR'
      Size = 5
      Lookup = True
    end
    object Cds_procedimentosCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_procedimentosidmat_rest_id: TStringField
      FieldKind = fkLookup
      FieldName = 'idmat_rest_id'
      LookupDataSet = Cds_Mat_Rest_ID
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ID'
      KeyFields = 'CMAT_RESTAURAR'
      Size = 5
      Lookup = True
    end
    object Cds_procedimentosnfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 80
      Lookup = True
    end
    object Cds_procedimentosDATAINICIO: TDateField
      FieldName = 'DATAINICIO'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_procedimentosDATAFIM: TDateField
      FieldName = 'DATAFIM'
      EditMask = '!99/99/0000;1;_'
    end
    object Cds_procedimentosHORANICIO: TTimeField
      FieldName = 'HORANICIO'
    end
    object Cds_procedimentosHORAFIM: TTimeField
      FieldName = 'HORAFIM'
    end
    object Cds_procedimentosCOMPLETO: TStringField
      FieldName = 'COMPLETO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_procedimentosCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Procedimentos: TDataSource
    DataSet = Cds_procedimentos
    Left = 1125
    Top = 263
  end
  object Dbx_Mat_Rest_ID: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from Mat_Restaurar')
    SQLConnection = Sql_Dados
    Left = 1366
    Top = 522
  end
  object Dsp_Mat_Rest_ID: TDataSetProvider
    DataSet = Dbx_Mat_Rest_ID
    UpdateMode = upWhereKeyOnly
    Left = 1382
    Top = 538
  end
  object Cds_Mat_Rest_ID: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Mat_Rest_ID'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_Mat_RestaurarAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1389
    Top = 554
  end
  object Dts_Mat_Rest_ID: TDataSource
    DataSet = Cds_Mat_Rest_ID
    Left = 1401
    Top = 570
  end
  object Dbx_totalcmdb: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from totalcmdb')
    SQLConnection = Sql_Dados
    Left = 1248
    Top = 309
    object Dbx_totalcmdbEHVENDA: TStringField
      FieldName = 'EHVENDA'
      FixedChar = True
      Size = 1
    end
    object Dbx_totalcmdbTOTALP: TFMTBCDField
      FieldName = 'TOTALP'
      Precision = 18
      Size = 3
    end
    object Dbx_totalcmdbCMDB: TSmallintField
      FieldName = 'CMDB'
    end
    object Dbx_totalcmdbTPCMDB: TStringField
      FieldName = 'TPCMDB'
      Size = 1
    end
    object Dbx_totalcmdbDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Dbx_totalcmdbHORA_OP: TTimeField
      FieldName = 'HORA_OP'
    end
  end
  object Dsp_totalcmdb: TDataSetProvider
    DataSet = Dbx_totalcmdb
    UpdateMode = upWhereKeyOnly
    Left = 1264
    Top = 325
  end
  object Cds_totalcmdb: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_totalcmdb'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1271
    Top = 341
    object Cds_totalcmdbEHVENDA: TStringField
      FieldName = 'EHVENDA'
      FixedChar = True
      Size = 1
    end
    object Cds_totalcmdbTOTALP: TFMTBCDField
      FieldName = 'TOTALP'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object Cds_totalcmdbCMDB: TSmallintField
      FieldName = 'CMDB'
    end
    object Cds_totalcmdbTPCMDB: TStringField
      FieldName = 'TPCMDB'
      Size = 1
    end
    object Cds_totalcmdbDATA_OP: TDateField
      FieldName = 'DATA_OP'
    end
    object Cds_totalcmdbHORA_OP: TTimeField
      FieldName = 'HORA_OP'
    end
  end
  object Dts_totalcmdb: TDataSource
    DataSet = Cds_totalcmdb
    Left = 1283
    Top = 357
  end
  object Dbx_livrocaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from livrocaixa')
    SQLConnection = Sql_Dados
    Left = 1284
    Top = 114
    object IntegerField140: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_livrocaixaCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Dbx_livrocaixaPDESC: TFMTBCDField
      FieldName = 'PDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_livrocaixaVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      Precision = 18
      Size = 2
    end
    object Dbx_livrocaixaLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      Precision = 18
      Size = 2
    end
    object Dbx_livrocaixaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_livrocaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_livrocaixaST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object Dbx_livrocaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Dbx_livrocaixaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_livrocaixaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_livrocaixaCSIT: TIntegerField
      FieldName = 'CSIT'
    end
  end
  object Dsp_livrocaixa: TDataSetProvider
    DataSet = Dbx_livrocaixa
    UpdateMode = upWhereKeyOnly
    Left = 1300
    Top = 130
  end
  object Cds_livrocaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_livrocaixa'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_livrocaixaAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1307
    Top = 146
    object IntegerField141: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_livrocaixaCODSVENDA: TIntegerField
      FieldName = 'CODSVENDA'
    end
    object Cds_livrocaixaPDESC: TFMTBCDField
      FieldName = 'PDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_livrocaixaVALDESC: TFMTBCDField
      FieldName = 'VALDESC'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_livrocaixaLIQUIDO: TFMTBCDField
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_livrocaixaTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_livrocaixaDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_livrocaixaST: TStringField
      FieldName = 'ST'
      FixedChar = True
      Size = 1
    end
    object Cds_livrocaixaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object Cds_livrocaixaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_livrocaixaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_livrocaixaCSIT: TIntegerField
      FieldName = 'CSIT'
    end
  end
  object Dts_livrocaixa: TDataSource
    DataSet = Cds_livrocaixa
    Left = 1319
    Top = 162
  end
  object Dbx_Agedodia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from agedodia')
    SQLConnection = Sql_Dados
    Left = 1202
    Top = 207
    object IntegerField142: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_AgedodiaDTCOMPROMI: TDateField
      FieldName = 'DTCOMPROMI'
    end
    object Dbx_AgedodiaHRCOMPROMI: TTimeField
      FieldName = 'HRCOMPROMI'
    end
    object Dbx_AgedodiaDTAVISO: TDateField
      FieldName = 'DTAVISO'
    end
    object Dbx_AgedodiaHRAVISO: TTimeField
      FieldName = 'HRAVISO'
    end
    object Dbx_AgedodiaASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 70
    end
    object Dbx_AgedodiaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
    end
    object Dbx_AgedodiaAVISA: TStringField
      FieldName = 'AVISA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Dbx_AgedodiaCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Dbx_AgedodiaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_AgedodiaCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Dbx_AgedodiaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Dbx_AgedodiaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_Agedodia: TDataSetProvider
    DataSet = Dbx_Agedodia
    UpdateMode = upWhereKeyOnly
    Left = 1218
    Top = 223
  end
  object Cds_Agedodia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_Agedodia'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1226
    Top = 239
    object IntegerField145: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_AgedodiaDTCOMPROMI: TDateField
      FieldName = 'DTCOMPROMI'
    end
    object Cds_AgedodiaHRCOMPROMI: TTimeField
      FieldName = 'HRCOMPROMI'
    end
    object Cds_AgedodiaDTAVISO: TDateField
      FieldName = 'DTAVISO'
    end
    object Cds_AgedodiaHRAVISO: TTimeField
      FieldName = 'HRAVISO'
    end
    object Cds_AgedodiaASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 70
    end
    object Cds_AgedodiaDESCRICAO: TMemoField
      FieldName = 'DESCRICAO'
      BlobType = ftMemo
    end
    object Cds_AgedodiaAVISA: TStringField
      FieldName = 'AVISA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Cds_AgedodiaCUSU: TIntegerField
      FieldName = 'CUSU'
    end
    object Cds_AgedodiaCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_AgedodiaCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Cds_AgedodiaCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object Cds_Agedodiancli: TStringField
      FieldKind = fkLookup
      FieldName = 'ncli'
      LookupDataSet = Cds_Clientes
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CCLI'
      Size = 80
      Lookup = True
    end
    object Cds_Agedodianforn: TStringField
      FieldKind = fkLookup
      FieldName = 'nforn'
      LookupDataSet = Cds_Fornecedores
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFOR'
      Size = 80
      Lookup = True
    end
    object Cds_Agedodianfun: TStringField
      FieldKind = fkLookup
      FieldName = 'nfun'
      LookupDataSet = Cds_Funcionarios
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CFUN'
      Size = 80
      Lookup = True
    end
    object Cds_AgedodiaCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_Agedodia: TDataSource
    DataSet = Cds_Agedodia
    Left = 1237
    Top = 255
  end
  object Dbx_HistTab: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from HistTab'
      '')
    SQLConnection = Sql_Dados
    Left = 1048
    Top = 595
    object IntegerField143: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_HistTabNTAB: TStringField
      FieldName = 'NTAB'
      Size = 150
    end
    object Dbx_HistTabOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object Dbx_HistTabCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object Dbx_HistTabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object Dbx_HistTabDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object Dbx_HistTabCUSU: TIntegerField
      FieldName = 'CUSU'
    end
  end
  object Dsp_HistTab: TDataSetProvider
    DataSet = Dbx_HistTab
    UpdateMode = upWhereKeyOnly
    Left = 1064
    Top = 610
  end
  object Cds_HistTab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_HistTab'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1080
    Top = 626
    object IntegerField146: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_HistTabNTAB: TStringField
      FieldName = 'NTAB'
      Size = 150
    end
    object Cds_HistTabOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object Cds_HistTabCODREG: TIntegerField
      FieldName = 'CODREG'
    end
    object Cds_HistTabDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 70
    end
    object Cds_HistTabDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object Cds_HistTabCUSU: TIntegerField
      FieldName = 'CUSU'
    end
  end
  object Dts_HistTab: TDataSource
    DataSet = Cds_HistTab
    Left = 1096
    Top = 642
  end
  object Dbx_TabPrS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from TabPrS')
    SQLConnection = Sql_Dados
    Left = 1414
    Top = 211
    object IntegerField144: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TabPrSPER: TBCDField
      DisplayWidth = 10
      FieldName = 'PER'
      Precision = 9
      Size = 2
    end
    object Dbx_TabPrSPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_TabPrSCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Dbx_TabPrSCTAB: TIntegerField
      FieldName = 'CTAB'
    end
  end
  object Dsp_TabPrS: TDataSetProvider
    DataSet = Dbx_TabPrS
    UpdateMode = upWhereKeyOnly
    Left = 1430
    Top = 227
  end
  object Cds_TabPrS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_TabPrS'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_ClientesBeforePost
    AfterPost = Cds_ClientesAfterPost
    AfterScroll = Cds_ClientesAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1444
    Top = 243
    object IntegerField156: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TabPrSPER: TBCDField
      DisplayWidth = 10
      FieldName = 'PER'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object Cds_TabPrSPRVE: TFMTBCDField
      FieldName = 'PRVE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_TabPrSCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Cds_TabPrSCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Cds_TabPrSntab: TStringField
      FieldKind = fkLookup
      FieldName = 'ntab'
      LookupDataSet = Cds_Tipotab
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTAB'
      Size = 30
      Lookup = True
    end
  end
  object Dts_TabPrS: TDataSource
    DataSet = Cds_TabPrS
    Left = 1454
    Top = 259
  end
  object Dbx_TabPrP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from TabPrP')
    SQLConnection = Sql_Dados
    Left = 1311
    Top = 211
    object IntegerField167: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TabPrPCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_TabPrPCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Dbx_TabPrPPER: TFMTBCDField
      FieldName = 'PER'
      Precision = 18
      Size = 7
    end
    object Dbx_TabPrPPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 7
    end
  end
  object Dsp_TabPrP: TDataSetProvider
    DataSet = Dbx_TabPrP
    UpdateMode = upWhereKeyOnly
    Left = 1327
    Top = 227
  end
  object Cds_TabPrP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_TabPrP'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_ClientesBeforePost
    AfterPost = Cds_ClientesAfterPost
    AfterScroll = Cds_ClientesAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1340
    Top = 243
    object IntegerField177: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TabPrPCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Cds_TabPrPCTAB: TIntegerField
      FieldName = 'CTAB'
    end
    object Cds_TabPrPntab: TStringField
      FieldKind = fkLookup
      FieldName = 'ntab'
      LookupDataSet = Cds_Tipotab
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTAB'
      Size = 30
      Lookup = True
    end
    object Cds_TabPrPPER: TFMTBCDField
      FieldName = 'PER'
      Precision = 18
      Size = 7
    end
    object Cds_TabPrPPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 7
    end
  end
  object Dts_TabPrP: TDataSource
    DataSet = Cds_TabPrP
    Left = 1351
    Top = 259
  end
  object Dbx_tipotab_porcentagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tipotab_porcentagem')
    SQLConnection = Sql_Dados
    Left = 1625
    Top = 403
    object IntegerField147: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_tipotab_porcentagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Dbx_tipotab_porcentagemCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_tipotab_porcentagem: TDataSetProvider
    DataSet = Dbx_tipotab_porcentagem
    UpdateMode = upWhereKeyOnly
    Left = 1642
    Top = 419
  end
  object Cds_tipotab_porcentagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_tipotab_porcentagem'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1658
    Top = 435
    object IntegerField149: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_tipotab_porcentagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object Cds_tipotab_porcentagemCEMP: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_tipotab_porcentagem: TDataSource
    DataSet = Cds_tipotab_porcentagem
    Left = 1674
    Top = 451
  end
  object Dbx_TabPrProc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tabprproc')
    SQLConnection = Sql_Dados
    Left = 1814
    Top = 403
    object IntegerField151: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TabPrProcPER: TBCDField
      FieldName = 'PER'
      Precision = 4
      Size = 2
    end
    object Dbx_TabPrProcPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_TabPrProcCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Dbx_TabPrProcCTIPOTAB_PORCENTAGEM: TIntegerField
      FieldName = 'CTIPOTAB_PORCENTAGEM'
    end
  end
  object Dsp_TabPrProc: TDataSetProvider
    DataSet = Dbx_TabPrProc
    UpdateMode = upWhereKeyOnly
    Left = 1830
    Top = 419
  end
  object Cds_TabPrProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_TabPrProc'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1846
    Top = 435
    object IntegerField153: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TabPrProcPER: TBCDField
      FieldName = 'PER'
      Precision = 4
      Size = 2
    end
    object Cds_TabPrProcPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Cds_TabPrProcCDESC: TIntegerField
      FieldName = 'CDESC'
    end
    object Cds_TabPrProcCTIPOTAB_PORCENTAGEM: TIntegerField
      FieldName = 'CTIPOTAB_PORCENTAGEM'
    end
  end
  object Dts_TabPrProc: TDataSource
    DataSet = Cds_TabPrProc
    Left = 1862
    Top = 451
  end
  object Dbx_RelPorGrupo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from RelPorGrupo')
    SQLConnection = Sql_Dados
    Left = 1696
    Top = 305
    object Dbx_RelPorGrupoCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Dbx_RelPorGrupoCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Dbx_RelPorGrupoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Dbx_RelPorGrupoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object Dsp_RelPorGrupo: TDataSetProvider
    DataSet = Dbx_RelPorGrupo
    UpdateMode = upWhereKeyOnly
    Left = 1712
    Top = 321
  end
  object Cds_RelPorGrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_RelPorGrupo'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_vVendaAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1728
    Top = 337
    object Cds_RelPorGrupoCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Cds_RelPorGrupoCCLI: TIntegerField
      FieldName = 'CCLI'
    end
    object Cds_RelPorGrupoSUBTOTAL: TFMTBCDField
      FieldName = 'SUBTOTAL'
      Precision = 18
      Size = 2
    end
    object Cds_RelPorGrupoDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object Dts_RelPorGrupo: TDataSource
    DataSet = Cds_RelPorGrupo
    Left = 1744
    Top = 353
  end
  object cdsrelatorio: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'campo1'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo2'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo3'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo4'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo5'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo6'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo7'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo8'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo9'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'campo10'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'icampo1'
        DataType = ftInteger
      end
      item
        Name = 'icampo2'
        DataType = ftInteger
      end
      item
        Name = 'icampo3'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'codigo'
        Fields = 'codigo'
      end>
    Params = <>
    StoreDefs = True
    Left = 310
    Top = 708
    object cdsrelatoriocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsrelatoriocampo1: TStringField
      FieldName = 'campo1'
      Size = 200
    end
    object cdsrelatoriocampo2: TStringField
      FieldName = 'campo2'
      Size = 200
    end
    object cdsrelatoriocampo3: TStringField
      FieldName = 'campo3'
      Size = 200
    end
    object cdsrelatoriocampo4: TStringField
      FieldName = 'campo4'
      Size = 200
    end
    object cdsrelatoriocampo5: TStringField
      FieldName = 'campo5'
      Size = 200
    end
    object cdsrelatoriocampo6: TStringField
      FieldName = 'campo6'
      Size = 200
    end
    object cdsrelatoriocampo7: TStringField
      FieldName = 'campo7'
      Size = 200
    end
    object cdsrelatoriocampo8: TStringField
      FieldName = 'campo8'
      Size = 200
    end
    object cdsrelatoriocampo9: TStringField
      FieldName = 'campo9'
      Size = 200
    end
    object cdsrelatoriocampo10: TStringField
      FieldName = 'campo10'
      Size = 200
    end
    object cdsrelatorioicampo1: TIntegerField
      FieldName = 'icampo1'
    end
    object cdsrelatorioicampo2: TIntegerField
      FieldName = 'icampo2'
    end
    object cdsrelatorioicampo3: TIntegerField
      FieldName = 'icampo3'
    end
  end
  object cdsagenda: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'datacompromisso'
        DataType = ftDateTime
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'compromisso'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'telefones'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'dentista'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'men'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'men2'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'realizado'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'pago'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'hora'
        DataType = ftTime
      end>
    IndexDefs = <
      item
        Name = 'datacompromisso'
        Fields = 'datacompromisso'
      end>
    Params = <>
    StoreDefs = True
    Left = 260
    Top = 800
    object cdsagendacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsagendadatacompromisso: TDateTimeField
      FieldName = 'datacompromisso'
    end
    object cdsagendanome: TStringField
      FieldName = 'nome'
      Size = 70
    end
    object cdsagendacompromisso: TStringField
      FieldName = 'compromisso'
      Size = 70
    end
    object cdsagendatelefones: TStringField
      FieldName = 'telefones'
      Size = 40
    end
    object cdsagendadentista: TStringField
      FieldName = 'dentista'
      Size = 70
    end
    object cdsagendamen: TStringField
      FieldName = 'men'
      Size = 70
    end
    object cdsagendamen2: TStringField
      FieldName = 'men2'
      Size = 70
    end
    object cdsagendarealizado: TStringField
      FieldName = 'realizado'
      Size = 70
    end
    object cdsagendapago: TStringField
      FieldName = 'pago'
      Size = 70
    end
    object cdsagendahora: TTimeField
      FieldName = 'hora'
    end
  end
  object Dbx_OutInfCli: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from OutInfCli')
    SQLConnection = Sql_Dados
    Left = 1365
    Top = 402
    object IntegerField148: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_OutInfCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_OutInfCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_OutInfCliID: TIntegerField
      FieldName = 'ID'
    end
  end
  object Dsp_OutInfCli: TDataSetProvider
    DataSet = Dbx_OutInfCli
    UpdateMode = upWhereKeyOnly
    Left = 1381
    Top = 418
  end
  object Cds_OutInfCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_OutInfCli'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_ModuloAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1397
    Top = 434
    object IntegerField152: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_OutInfCliDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_OutInfCliCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_OutInfCliID: TIntegerField
      FieldName = 'ID'
    end
  end
  object Dts_OutInfCli: TDataSource
    DataSet = Cds_OutInfCli
    Left = 1413
    Top = 450
  end
  object Dbx_TabDesc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from TABDESC')
    SQLConnection = Sql_Dados
    Left = 1474
    Top = 402
    object IntegerField155: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Dbx_TabDescDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Dbx_TabDescCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Dbx_TabDescID: TIntegerField
      FieldName = 'ID'
    end
  end
  object Dsp_TabDesc: TDataSetProvider
    DataSet = Dbx_TabDesc
    UpdateMode = upWhereKeyOnly
    Left = 1490
    Top = 418
  end
  object Cds_TabDesc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_TabDesc'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_ModuloAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1506
    Top = 434
    object IntegerField159: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cds_TabDescDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object Cds_TabDescCEMP: TIntegerField
      FieldName = 'CEMP'
    end
    object Cds_TabDescID: TIntegerField
      FieldName = 'ID'
    end
  end
  object Dts_TabDesc: TDataSource
    DataSet = Cds_TabDesc
    Left = 1522
    Top = 450
  end
  object cdsetiq: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'empresa1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa3'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa4'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa5'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa6'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa7'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa8'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'empresa9'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'cbar1'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar2'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar3'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar4'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar5'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar6'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar7'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar8'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'cbar9'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'valor1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor3'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor4'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor5'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor6'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor7'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor8'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor9'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nome1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome2'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome3'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome4'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome5'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome6'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome7'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome8'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'nome9'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 1168
    Top = 318
    object cdsetiqempresa1: TStringField
      FieldName = 'empresa1'
      Size = 60
    end
    object cdsetiqempresa2: TStringField
      FieldName = 'empresa2'
      Size = 60
    end
    object cdsetiqempresa3: TStringField
      FieldName = 'empresa3'
      Size = 60
    end
    object cdsetiqempresa4: TStringField
      FieldName = 'empresa4'
      Size = 60
    end
    object cdsetiqempresa5: TStringField
      FieldName = 'empresa5'
      Size = 60
    end
    object cdsetiqempresa6: TStringField
      FieldName = 'empresa6'
      Size = 60
    end
    object cdsetiqempresa7: TStringField
      FieldName = 'empresa7'
      Size = 60
    end
    object cdsetiqempresa8: TStringField
      FieldName = 'empresa8'
      Size = 60
    end
    object cdsetiqempresa9: TStringField
      FieldName = 'empresa9'
      Size = 60
    end
    object cdsetiqcbar1: TStringField
      FieldName = 'cbar1'
      Size = 13
    end
    object cdsetiqcbar2: TStringField
      FieldName = 'cbar2'
      Size = 13
    end
    object cdsetiqcbar3: TStringField
      FieldName = 'cbar3'
      Size = 13
    end
    object cdsetiqcbar4: TStringField
      FieldName = 'cbar4'
      Size = 13
    end
    object cdsetiqcbar5: TStringField
      FieldName = 'cbar5'
      Size = 13
    end
    object cdsetiqcbar6: TStringField
      FieldName = 'cbar6'
      Size = 13
    end
    object cdsetiqcbar7: TStringField
      FieldName = 'cbar7'
      Size = 13
    end
    object cdsetiqcbar8: TStringField
      FieldName = 'cbar8'
      Size = 13
    end
    object cdsetiqcbar9: TStringField
      FieldName = 'cbar9'
      Size = 13
    end
    object cdsetiqvalor1: TStringField
      FieldName = 'valor1'
    end
    object cdsetiqvalor2: TStringField
      FieldName = 'valor2'
    end
    object cdsetiqvalor3: TStringField
      FieldName = 'valor3'
    end
    object cdsetiqvalor4: TStringField
      FieldName = 'valor4'
    end
    object cdsetiqvalor5: TStringField
      FieldName = 'valor5'
    end
    object cdsetiqvalor6: TStringField
      FieldName = 'valor6'
    end
    object cdsetiqvalor7: TStringField
      FieldName = 'valor7'
    end
    object cdsetiqvalor8: TStringField
      FieldName = 'valor8'
    end
    object cdsetiqvalor9: TStringField
      FieldName = 'valor9'
    end
    object cdsetiqnome1: TStringField
      FieldName = 'nome1'
      Size = 60
    end
    object cdsetiqnome2: TStringField
      FieldName = 'nome2'
      Size = 60
    end
    object cdsetiqnome3: TStringField
      FieldName = 'nome3'
      Size = 60
    end
    object cdsetiqnome4: TStringField
      FieldName = 'nome4'
      Size = 60
    end
    object cdsetiqnome5: TStringField
      FieldName = 'nome5'
      Size = 60
    end
    object cdsetiqnome6: TStringField
      FieldName = 'nome6'
      Size = 60
    end
    object cdsetiqnome7: TStringField
      FieldName = 'nome7'
      Size = 60
    end
    object cdsetiqnome8: TStringField
      FieldName = 'nome8'
      Size = 60
    end
    object cdsetiqnome9: TStringField
      FieldName = 'nome9'
      Size = 60
    end
  end
  object Dbx_rel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from SituOs')
    SQLConnection = Sql_Dados
    Left = 63
    Top = 786
    object IntegerField150: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField22: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object IntegerField154: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dsp_rel: TDataSetProvider
    DataSet = Dbx_rel
    UpdateMode = upWhereKeyOnly
    Left = 79
    Top = 802
  end
  object Cds_rel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_rel'
    Left = 95
    Top = 818
    object IntegerField158: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField23: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object IntegerField160: TIntegerField
      FieldName = 'CEMP'
    end
  end
  object Dts_rel: TDataSource
    DataSet = Cds_rel
    Left = 111
    Top = 834
  end
  object Dbx_vProdForn: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from vprodforn where qtde_comprada = 0')
    SQLConnection = Sql_Dados
    Left = 50
    Top = 697
    object Dbx_vProdFornNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Dbx_vProdFornCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Dbx_vProdFornQUA_ESTQ: TFMTBCDField
      FieldName = 'QUA_ESTQ'
      Precision = 18
      Size = 3
    end
    object Dbx_vProdFornCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Dbx_vProdFornDATA: TDateField
      FieldName = 'DATA'
    end
    object Dbx_vProdFornPRCU: TFMTBCDField
      FieldName = 'PRCU'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdFornQTDE_COMPRADA: TBCDField
      FieldName = 'QTDE_COMPRADA'
      Precision = 9
      Size = 3
    end
    object Dbx_vProdFornEHENTREGA: TStringField
      FieldName = 'EHENTREGA'
      FixedChar = True
      Size = 1
    end
    object Dbx_vProdFornCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Dbx_vProdFornCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Dbx_vProdFornCTIPO_PROD: TIntegerField
      FieldName = 'CTIPO_PROD'
    end
    object Dbx_vProdFornPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Dbx_vProdFornNFOR: TStringField
      FieldName = 'NFOR'
      Size = 80
    end
  end
  object Dsp_vProdForn: TDataSetProvider
    DataSet = Dbx_vProdForn
    UpdateMode = upWhereKeyOnly
    Left = 66
    Top = 713
  end
  object Cds_vProdForn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_vProdForn'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    AfterScroll = Cds_vProdFornAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 82
    Top = 729
    object Cds_vProdFornNPRO: TStringField
      FieldName = 'NPRO'
      Size = 150
    end
    object Cds_vProdFornCPRO: TIntegerField
      FieldName = 'CPRO'
    end
    object Cds_vProdFornQUA_ESTQ: TFMTBCDField
      FieldName = 'QUA_ESTQ'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 3
    end
    object Cds_vProdFornCFOR: TIntegerField
      FieldName = 'CFOR'
    end
    object Cds_vProdFornDATA: TDateField
      FieldName = 'DATA'
    end
    object Cds_vProdFornPRCU: TFMTBCDField
      FieldName = 'PRCU'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object Cds_vProdFornQTDE_COMPRADA: TBCDField
      FieldName = 'QTDE_COMPRADA'
      DisplayFormat = '###,##0.000'
      Precision = 9
      Size = 3
    end
    object Cds_vProdFornEHENTREGA: TStringField
      FieldName = 'EHENTREGA'
      FixedChar = True
      Size = 1
    end
    object Cds_vProdFornCGRU: TIntegerField
      FieldName = 'CGRU'
    end
    object Cds_vProdFornCMAR: TIntegerField
      FieldName = 'CMAR'
    end
    object Cds_vProdFornCTIPO_PROD: TIntegerField
      FieldName = 'CTIPO_PROD'
    end
    object Cds_vProdFornPRVE: TFMTBCDField
      FieldName = 'PRVE'
      Precision = 18
      Size = 2
    end
    object Cds_vProdFornNFOR: TStringField
      FieldName = 'NFOR'
      Size = 80
    end
    object Cds_vProdFornngrup: TStringField
      FieldKind = fkLookup
      FieldName = 'ngrup'
      LookupDataSet = Cds_Grupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CGRU'
      Size = 60
      Lookup = True
    end
    object Cds_vProdFornnmarca: TStringField
      FieldKind = fkLookup
      FieldName = 'nmarca'
      LookupDataSet = Cds_Marca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CMAR'
      Size = 60
      Lookup = True
    end
    object Cds_vProdFornntipo_prod: TStringField
      FieldKind = fkLookup
      FieldName = 'ntipo_prod'
      LookupDataSet = Cds_Tipo_Prod
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CTIPO_PROD'
      Size = 60
      Lookup = True
    end
  end
  object Dts_vProdForn: TDataSource
    DataSet = Cds_vProdForn
    Left = 98
    Top = 745
  end
  object Dbx_vvendprodbalcaocom: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from procedimentos')
    SQLConnection = Sql_Dados
    Left = 182
    Top = 698
  end
  object Dsp_vvendprodbalcaocom: TDataSetProvider
    DataSet = Dbx_vvendprodbalcaocom
    UpdateMode = upWhereKeyOnly
    Left = 198
    Top = 714
  end
  object Cds_vvendprodbalcaocom: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Dsp_relatorios'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 205
    Top = 730
  end
  object Dts_vvendprodbalcaocom: TDataSource
    DataSet = Cds_vvendprodbalcaocom
    Left = 217
    Top = 746
  end
  object cds_temporario: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'figura'
        DataType = ftBlob
      end
      item
        Name = 'filename'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 424
    Top = 697
    object cds_temporariofigura: TBlobField
      FieldName = 'figura'
    end
    object cds_temporariofilename: TStringField
      FieldName = 'filename'
      Size = 200
    end
  end
  object cds_caixa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'data'
        DataType = ftDate
      end
      item
        Name = 'valor'
        DataType = ftFloat
        Precision = 2
      end
      item
        Name = 'codformapgto'
        DataType = ftInteger
      end
      item
        Name = 'formapgto'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'historico'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'cusu'
        DataType = ftInteger
      end
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'op'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nped'
        DataType = ftInteger
      end
      item
        Name = 'cusub'
        DataType = ftInteger
      end
      item
        Name = 'cusuma'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'data'
      end>
    Params = <>
    StoreDefs = True
    Left = 528
    Top = 705
    object cds_caixadata: TDateField
      FieldName = 'data'
    end
    object cds_caixavalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,###,##0.00'
    end
    object cds_caixaformapgto: TStringField
      FieldName = 'formapgto'
      Size = 40
    end
    object cds_caixacodformapgto: TIntegerField
      FieldName = 'codformapgto'
    end
    object cds_caixahistorico: TStringField
      FieldName = 'historico'
      Size = 40
    end
    object cds_caixacusu: TIntegerField
      FieldName = 'cusu'
    end
    object cds_caixaid: TIntegerField
      FieldName = 'id'
    end
    object cds_caixastatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object cds_caixaop: TStringField
      FieldName = 'op'
      Size = 1
    end
    object cds_caixanped: TIntegerField
      FieldName = 'nped'
    end
    object cds_caixacusub: TIntegerField
      FieldName = 'cusub'
    end
    object cds_caixacusuma: TIntegerField
      FieldName = 'cusuma'
    end
  end
  object cds_id: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 696
    Top = 577
    object cds_idid: TIntegerField
      FieldName = 'id'
    end
  end
  object dts_caixa: TDataSource
    DataSet = cds_caixa
    Left = 984
    Top = 344
  end
  object dbx_cond_pgto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from condpgto')
    SQLConnection = Sql_Dados
    Left = 1016
    Top = 14
    object IntegerField14: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_cond_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object dbx_cond_pgtoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
  end
  object dsp_cond_pgto: TDataSetProvider
    DataSet = dbx_cond_pgto
    UpdateMode = upWhereKeyOnly
    Left = 1024
    Top = 30
  end
  object cds_cond_pgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_cond_pgto'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = cds_Tipo_PgtoAfterPost
    AfterScroll = cds_cond_pgtoAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1039
    Top = 46
    object IntegerField161: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_cond_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cds_cond_pgtoQTDE: TIntegerField
      FieldName = 'QTDE'
    end
  end
  object Dts_cond_pgto: TDataSource
    DataSet = cds_cond_pgto
    Left = 1055
    Top = 62
  end
  object dbx_conddetalhe_pgto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from conddetalhepgto')
    SQLConnection = Sql_Dados
    Left = 1128
    Top = 22
    object IntegerField15: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_conddetalhe_pgtoNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object dbx_conddetalhe_pgtoDIAS: TSmallintField
      FieldName = 'DIAS'
    end
    object dbx_conddetalhe_pgtoPERC: TFloatField
      FieldName = 'PERC'
    end
    object dbx_conddetalhe_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object dbx_conddetalhe_pgtoCCONDPGTO: TIntegerField
      FieldName = 'CCONDPGTO'
    end
    object dbx_conddetalhe_pgtoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 3
    end
  end
  object dsp_conddetalhe_pgto: TDataSetProvider
    DataSet = dbx_conddetalhe_pgto
    UpdateMode = upWhereKeyOnly
    Left = 1136
    Top = 38
  end
  object cds_conddetalhe_pgto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_conddetalhe_pgto'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = cds_Tipo_PgtoAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1151
    Top = 54
    object IntegerField162: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_conddetalhe_pgtoNUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object cds_conddetalhe_pgtoDIAS: TSmallintField
      FieldName = 'DIAS'
    end
    object cds_conddetalhe_pgtoPERC: TFloatField
      FieldName = 'PERC'
    end
    object cds_conddetalhe_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cds_conddetalhe_pgtoCCONDPGTO: TIntegerField
      FieldName = 'CCONDPGTO'
    end
    object cds_conddetalhe_pgtoJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 3
    end
  end
  object dts_conddetalhe_pgto: TDataSource
    DataSet = cds_conddetalhe_pgto
    Left = 1167
    Top = 70
  end
  object dbx_tipo_embalagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from tipo_embalagem')
    SQLConnection = Sql_Dados
    Left = 47
    Top = 853
    object IntegerField163: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_tipo_embalagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object dbx_tipo_embalagemCPROD: TIntegerField
      FieldName = 'CPROD'
    end
    object dbx_tipo_embalagemREFERENCIA: TFMTBCDField
      FieldName = 'REFERENCIA'
      Precision = 18
      Size = 3
    end
    object dbx_tipo_embalagemCUNIDADE: TIntegerField
      FieldName = 'CUNIDADE'
    end
    object dbx_tipo_embalagemDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      Precision = 18
      Size = 3
    end
  end
  object dsp_tipo_embalagem: TDataSetProvider
    DataSet = dbx_tipo_embalagem
    UpdateMode = upWhereKeyOnly
    Left = 63
    Top = 869
  end
  object cds_tipo_embalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_tipo_embalagem'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_MarcaAfterPost
    AfterScroll = cds_tipo_embalagemAfterScroll
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 79
    Top = 885
    object IntegerField165: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_tipo_embalagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cds_tipo_embalagemCPROD: TIntegerField
      FieldName = 'CPROD'
    end
    object cds_tipo_embalagemREFERENCIA: TFMTBCDField
      FieldName = 'REFERENCIA'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
    object cds_tipo_embalagemCUNIDADE: TIntegerField
      FieldName = 'CUNIDADE'
    end
    object cds_tipo_embalagemDESPESAS: TFMTBCDField
      FieldName = 'DESPESAS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object dts_tipo_embalagem: TDataSource
    DataSet = cds_tipo_embalagem
    Left = 95
    Top = 901
  end
  object dbx_comp_embalagem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from comp_embalagem')
    SQLConnection = Sql_Dados
    Left = 171
    Top = 853
    object IntegerField164: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_comp_embalagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object dbx_comp_embalagemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object dbx_comp_embalagemVLR_UNITARIO: TFMTBCDField
      FieldName = 'VLR_UNITARIO'
      Precision = 18
      Size = 3
    end
    object dbx_comp_embalagemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object dbx_comp_embalagemCTIPO_EMB: TIntegerField
      FieldName = 'CTIPO_EMB'
    end
  end
  object dsp_comp_embalagem: TDataSetProvider
    DataSet = dbx_comp_embalagem
    UpdateMode = upWhereKeyOnly
    Left = 187
    Top = 869
  end
  object cds_comp_embalagem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_comp_embalagem'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_MarcaAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 203
    Top = 885
    object IntegerField166: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_comp_embalagemDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cds_comp_embalagemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object cds_comp_embalagemVLR_UNITARIO: TFMTBCDField
      FieldName = 'VLR_UNITARIO'
      Precision = 18
      Size = 3
    end
    object cds_comp_embalagemTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object cds_comp_embalagemCTIPO_EMB: TIntegerField
      FieldName = 'CTIPO_EMB'
    end
  end
  object dts_comp_embalagem: TDataSource
    DataSet = cds_comp_embalagem
    Left = 219
    Top = 901
  end
  object dbx_composicao_prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from composicao_prod')
    SQLConnection = Sql_Dados
    Left = 301
    Top = 853
    object IntegerField168: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_composicao_prodDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object dbx_composicao_prodQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object dbx_composicao_prodVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Precision = 18
      Size = 3
    end
    object dbx_composicao_prodTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object dbx_composicao_prodCPROD: TIntegerField
      FieldName = 'CPROD'
    end
  end
  object dsp_composicao_prod: TDataSetProvider
    DataSet = dbx_composicao_prod
    UpdateMode = upWhereKeyOnly
    Left = 317
    Top = 869
  end
  object cds_composicao_prod: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_composicao_prod'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_MarcaAfterPost
    OnCalcFields = cds_composicao_prodCalcFields
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 333
    Top = 885
    object IntegerField169: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_composicao_prodDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cds_composicao_prodQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 3
    end
    object cds_composicao_prodVLR_UNIT: TFMTBCDField
      FieldName = 'VLR_UNIT'
      Precision = 18
      Size = 3
    end
    object cds_composicao_prodTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 3
    end
    object cds_composicao_prodCPROD: TIntegerField
      FieldName = 'CPROD'
    end
    object cds_composicao_prodsubtotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      Calculated = True
    end
  end
  object dts_composicao_prod: TDataSource
    DataSet = cds_composicao_prod
    Left = 349
    Top = 901
  end
  object dbx_matprima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from matprima')
    SQLConnection = Sql_Dados
    Left = 417
    Top = 814
    object IntegerField170: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_matprimaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object dsp_matprima: TDataSetProvider
    DataSet = dbx_matprima
    UpdateMode = upWhereKeyOnly
    Left = 435
    Top = 829
  end
  object cds_matprima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_matprima'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_MarcaAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 451
    Top = 838
    object cds_matprimaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cds_matprimaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object dts_matprima: TDataSource
    DataSet = cds_matprima
    Left = 467
    Top = 854
  end
  object dbx_aliqinter: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from aliqinter')
    SQLConnection = Sql_Dados
    Left = 1273
    Top = 22
    object IntegerField171: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_aliqinterCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object dbx_aliqinterCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object dbx_aliqinterALIQ: TBCDField
      FieldName = 'ALIQ'
      Precision = 9
      Size = 2
    end
    object dbx_aliqinterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 2
    end
  end
  object dsp_aliqinter: TDataSetProvider
    DataSet = dbx_aliqinter
    UpdateMode = upWhereKeyOnly
    Left = 1281
    Top = 38
  end
  object cds_aliqinter: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_aliqinter'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = cds_Tipo_PgtoAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1296
    Top = 54
    object IntegerField173: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_aliqinterCODEST: TIntegerField
      FieldName = 'CODEST'
    end
    object cds_aliqinterCODPROD: TIntegerField
      FieldName = 'CODPROD'
    end
    object cds_aliqinterALIQ: TBCDField
      FieldName = 'ALIQ'
      Precision = 9
      Size = 2
    end
    object cds_aliqinterIVA: TFMTBCDField
      FieldName = 'IVA'
      Precision = 18
      Size = 2
    end
  end
  object dts_aliqinter: TDataSource
    DataSet = cds_aliqinter
    Left = 1312
    Top = 70
  end
  object dbx_ibpt: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ibpt'
      '')
    SQLConnection = Sql_Dados
    Left = 1187
    Top = 114
    object IntegerField172: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_ibptCODNCMNBS: TStringField
      FieldName = 'CODNCMNBS'
      Size = 10
    end
    object dbx_ibptEX: TStringField
      FieldName = 'EX'
      Size = 30
    end
    object dbx_ibptTABELA: TSmallintField
      FieldName = 'TABELA'
    end
    object dbx_ibptALIQNAC: TFMTBCDField
      FieldName = 'ALIQNAC'
      Precision = 18
      Size = 2
    end
    object dbx_ibptALIQIMP: TFMTBCDField
      FieldName = 'ALIQIMP'
      Precision = 18
      Size = 2
    end
    object dbx_ibptVERSAO: TStringField
      FieldName = 'VERSAO'
    end
  end
  object dsp_ibpt: TDataSetProvider
    DataSet = dbx_ibpt
    UpdateMode = upWhereKeyOnly
    Left = 1203
    Top = 130
  end
  object cds_ibpt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_ibpt'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = Cds_IndiceBeforePost
    AfterPost = Cds_IndiceAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1210
    Top = 146
    object IntegerField175: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_ibptCODNCMNBS: TStringField
      FieldName = 'CODNCMNBS'
      Size = 10
    end
    object cds_ibptEX: TStringField
      FieldName = 'EX'
      Size = 30
    end
    object cds_ibptTABELA: TSmallintField
      FieldName = 'TABELA'
    end
    object cds_ibptALIQNAC: TFMTBCDField
      FieldName = 'ALIQNAC'
      Precision = 18
      Size = 2
    end
    object cds_ibptALIQIMP: TFMTBCDField
      FieldName = 'ALIQIMP'
      Precision = 18
      Size = 2
    end
    object cds_ibptVERSAO: TStringField
      FieldName = 'VERSAO'
    end
  end
  object dts_ibpt: TDataSource
    DataSet = cds_ibpt
    Left = 1222
    Top = 162
  end
  object dbx_consulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from ibpt'
      '')
    SQLConnection = Sql_Dados
    Left = 1219
    Top = 10
  end
  object dbx_logtable: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from logtable')
    SQLConnection = Sql_Dados
    Left = 1207
    Top = 619
    object IntegerField174: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dbx_logtableTABELA: TStringField
      FieldName = 'TABELA'
      Size = 30
    end
    object dbx_logtableCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object dbx_logtableOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object dbx_logtableDATA: TDateField
      FieldName = 'DATA'
    end
    object dbx_logtableHORA: TTimeField
      FieldName = 'HORA'
    end
    object dbx_logtableHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
    end
  end
  object dsp_logtable: TDataSetProvider
    DataSet = dbx_logtable
    UpdateMode = upWhereKeyOnly
    Left = 1199
    Top = 611
  end
  object cds_logtable: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_logtable'
    AfterInsert = Cds_IndiceAfterInsert
    AfterEdit = Cds_IndiceAfterEdit
    BeforePost = cds_logtableBeforePost
    AfterPost = Cds_ClientesAfterPost
    OnNewRecord = Cds_IndiceNewRecord
    AfterApplyUpdates = Cds_IndiceAfterApplyUpdates
    Left = 1197
    Top = 635
    object IntegerField179: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_logtableTABELA: TStringField
      FieldName = 'TABELA'
      Size = 30
    end
    object cds_logtableCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object cds_logtableOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 1
    end
    object cds_logtableDATA: TDateField
      FieldName = 'DATA'
    end
    object cds_logtableHORA: TTimeField
      FieldName = 'HORA'
    end
    object cds_logtableHISTORICO: TMemoField
      FieldName = 'HISTORICO'
      BlobType = ftMemo
    end
  end
  object dts_logtable: TDataSource
    DataSet = cds_logtable
    Left = 1183
    Top = 619
  end
  object lHTTP: TIdHTTP
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
    Left = 1208
    Top = 474
  end
  object XMLEnvio: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 792
    Top = 362
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
    Left = 1192
    Top = 404
  end
  object XMLDocument1: TXMLDocument
    XML.Strings = (
      '<?xml version="1.0" encoding="utf-8" ?><response>'
      
        '<cep>69960-000</cep><uf>AC</uf><cidade>feijo</cidade><bairro></b' +
        'airro><tipo_logradouro></tipo_logradouro><logradouro></logradour' +
        'o><resultado></resultado><resultado_txt></resultado_txt><ibge_uf' +
        '>12</ibge_uf><ibge_municipio>1200302</ibge_municipio><erro>0</er' +
        'ro><msgerro></msgerro></response>')
    Left = 904
    Top = 300
    DOMVendorDesc = 'MSXML'
  end
end
