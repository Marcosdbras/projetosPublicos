object FrmDados: TFrmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 174
  Top = 42
  Height = 696
  Width = 849
  object SQL_Dados: TSQLConnection
    ConnectionName = 'UIB FireBird15 Connection'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=C:\iga\banco de dados\Integracao\FBDADOS.FDB'
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
    Left = 18
    Top = 8
  end
  object DBX_Projeto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from Projeto')
    SQLConnection = SQL_Dados
    Left = 90
    Top = 8
    object DBX_ProjetoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_ProjetoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object DBX_ProjetoINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object DBX_ProjetoTERMINO: TTimeField
      FieldName = 'TERMINO'
    end
    object DBX_ProjetoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object DSP_Projeto: TDataSetProvider
    DataSet = DBX_Projeto
    UpdateMode = upWhereKeyOnly
    Left = 106
    Top = 24
  end
  object CDS_Projeto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Projeto'
    AfterInsert = CDS_ProjetoAfterInsert
    AfterEdit = CDS_ProjetoAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_ProjetoAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_ProjetoAfterDelete
    OnNewRecord = Projeto
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 122
    Top = 40
    object CDS_ProjetoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_ProjetoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CDS_ProjetoINICIO: TTimeField
      FieldName = 'INICIO'
    end
    object CDS_ProjetoTERMINO: TTimeField
      FieldName = 'TERMINO'
    end
    object CDS_ProjetoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object DTS_Projeto: TDataSource
    DataSet = CDS_Projeto
    Left = 138
    Top = 56
  end
  object DBX_Curso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CURSO')
    SQLConnection = SQL_Dados
    Left = 274
    Top = 8
    object DBX_CursoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_CursoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DBX_CursoDURA_AULAS: TStringField
      FieldName = 'DURA_AULAS'
      Size = 30
    end
  end
  object DSP_Curso: TDataSetProvider
    DataSet = DBX_Curso
    UpdateMode = upWhereKeyOnly
    Left = 290
    Top = 24
  end
  object CDS_Curso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Curso'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_CursoAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_CursoAfterDelete
    OnNewRecord = CDS_CursoNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 306
    Top = 40
    object CDS_CursoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CursoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CDS_CursoDURA_AULAS: TStringField
      FieldName = 'DURA_AULAS'
      Size = 30
    end
  end
  object DTS_Curso: TDataSource
    DataSet = CDS_Curso
    Left = 322
    Top = 56
  end
  object DBX_CadAluno: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from CADALUNO')
    SQLConnection = SQL_Dados
    Left = 472
    Top = 8
    object DBX_CadAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_CadAlunoNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object DBX_CadAlunoNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object DBX_CadAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DBX_CadAlunoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object DBX_CadAlunoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object DBX_CadAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object DBX_CadAlunoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 200
    end
    object DBX_CadAlunoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object DBX_CadAlunoDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
    end
    object DBX_CadAlunoLOC_NASC: TStringField
      FieldName = 'LOC_NASC'
      Size = 30
    end
    object DBX_CadAlunoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object DBX_CadAlunoOBS_MAE: TStringField
      FieldName = 'OBS_MAE'
      Size = 100
    end
    object DBX_CadAlunoOBS_PAI: TStringField
      FieldName = 'OBS_PAI'
      Size = 100
    end
    object DBX_CadAlunoDOC_PENDENTES: TStringField
      FieldName = 'DOC_PENDENTES'
      Size = 100
    end
    object DBX_CadAlunoDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
    end
    object DBX_CadAlunoDATA_CANCEL: TDateField
      FieldName = 'DATA_CANCEL'
    end
    object DBX_CadAlunoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object DBX_CadAlunoMOTIVO_DESC: TStringField
      FieldName = 'MOTIVO_DESC'
      Size = 80
    end
    object DBX_CadAlunoMOTIVO_CANCEL: TStringField
      FieldName = 'MOTIVO_CANCEL'
      Size = 80
    end
    object DBX_CadAlunoDATA_PGMTO: TStringField
      FieldName = 'DATA_PGMTO'
      Size = 10
    end
    object DBX_CadAlunoRESP_FINANCEIRO: TStringField
      FieldName = 'RESP_FINANCEIRO'
      Size = 50
    end
    object DBX_CadAlunoRECIBO: TStringField
      FieldName = 'RECIBO'
      FixedChar = True
      Size = 1
    end
    object DBX_CadAlunoNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object DBX_CadAlunoDP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 1
    end
    object DBX_CadAlunoPROJETO: TStringField
      FieldName = 'PROJETO'
      FixedChar = True
      Size = 1
    end
    object DBX_CadAlunoRGM: TStringField
      FieldName = 'RGM'
      Size = 10
    end
    object DBX_CadAlunoRA: TStringField
      FieldName = 'RA'
      Size = 15
    end
    object DBX_CadAlunoDESCONTO: TStringField
      FieldName = 'DESCONTO'
      Size = 30
    end
    object DBX_CadAlunoPER_ESPECIAL: TStringField
      FieldName = 'PER_ESPECIAL'
    end
    object DBX_CadAlunoPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
    object DBX_CadAlunoASSEJT: TStringField
      FieldName = 'ASSEJT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DSP_CadAluno: TDataSetProvider
    DataSet = DBX_CadAluno
    UpdateMode = upWhereKeyOnly
    Left = 488
    Top = 24
  end
  object CDS_CadAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CadAluno'
    AfterInsert = CDS_CadAlunoAfterInsert
    AfterEdit = CDS_CadAlunoAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_CadAlunoAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_CadAlunoAfterDelete
    AfterScroll = CDS_CadAlunoAfterScroll
    OnCalcFields = CDS_CadAlunoCalcFields
    OnNewRecord = CDS_CadAlunoNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 504
    Top = 40
    object CDS_CadAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CadAlunoNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object CDS_CadAlunoNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object CDS_CadAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CDS_CadAlunoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object CDS_CadAlunoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object CDS_CadAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CDS_CadAlunoTELEFONE: TStringField
      DisplayWidth = 200
      FieldName = 'TELEFONE'
      Size = 200
    end
    object CDS_CadAlunoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object CDS_CadAlunoDATA_NASC: TDateField
      FieldName = 'DATA_NASC'
      EditMask = '00/00/0000;1;_'
    end
    object CDS_CadAlunoLOC_NASC: TStringField
      FieldName = 'LOC_NASC'
      Size = 30
    end
    object CDS_CadAlunoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
    end
    object CDS_CadAlunoOBS_MAE: TStringField
      FieldName = 'OBS_MAE'
      Size = 100
    end
    object CDS_CadAlunoOBS_PAI: TStringField
      FieldName = 'OBS_PAI'
      Size = 100
    end
    object CDS_CadAlunoDOC_PENDENTES: TStringField
      FieldName = 'DOC_PENDENTES'
      Size = 100
    end
    object CDS_CadAlunoDATA_MATRICULA: TDateField
      FieldName = 'DATA_MATRICULA'
      EditMask = '00/00/0000;1;_'
    end
    object CDS_CadAlunoDATA_CANCEL: TDateField
      FieldName = 'DATA_CANCEL'
    end
    object CDS_CadAlunoVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object CDS_CadAlunoMOTIVO_DESC: TStringField
      FieldName = 'MOTIVO_DESC'
      Size = 80
    end
    object CDS_CadAlunoMOTIVO_CANCEL: TStringField
      FieldName = 'MOTIVO_CANCEL'
      Size = 80
    end
    object CDS_CadAlunoDATA_PGMTO: TStringField
      FieldName = 'DATA_PGMTO'
      Size = 10
    end
    object CDS_CadAlunoRESP_FINANCEIRO: TStringField
      FieldName = 'RESP_FINANCEIRO'
      Size = 50
    end
    object CDS_CadAlunoRECIBO: TStringField
      FieldName = 'RECIBO'
      FixedChar = True
      Size = 1
    end
    object CDS_CadAlunoNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      FixedChar = True
      Size = 1
    end
    object CDS_CadAlunoDP: TStringField
      FieldName = 'DP'
      FixedChar = True
      Size = 1
    end
    object CDS_CadAlunoPROJETO: TStringField
      FieldName = 'PROJETO'
      FixedChar = True
      Size = 1
    end
    object CDS_CadAlunoRGM: TStringField
      FieldName = 'RGM'
      Size = 10
    end
    object CDS_CadAlunoRA: TStringField
      FieldName = 'RA'
      Size = 15
    end
    object CDS_CadAlunoDESCONTO: TStringField
      FieldName = 'DESCONTO'
      Size = 30
    end
    object CDS_CadAlunoPER_ESPECIAL: TStringField
      FieldName = 'PER_ESPECIAL'
    end
    object CDS_CadAlunoPERIODO: TIntegerField
      FieldName = 'PERIODO'
    end
    object CDS_CadAlunoValorCDesc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorCDesc'
      Calculated = True
    end
    object CDS_CadAlunoASSEJT: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'ASSEJT'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DTS_CadAluno: TDataSource
    DataSet = CDS_CadAluno
    Left = 520
    Top = 56
  end
  object DBX_DP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM DP')
    SQLConnection = SQL_Dados
    Left = 186
    Top = 8
    object DBX_DPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_DPCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object DBX_DPVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_DPCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_DPCODTURMA: TStringField
      FieldName = 'CODTURMA'
      Size = 10
    end
  end
  object DSP_DP: TDataSetProvider
    DataSet = DBX_DP
    UpdateMode = upWhereKeyOnly
    Left = 202
    Top = 24
  end
  object CDS_DP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_DP'
    AfterInsert = CDS_DPAfterInsert
    AfterEdit = CDS_DPAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_DPAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_DPAfterDelete
    OnNewRecord = CDS_DPNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 217
    Top = 40
    object CDS_DPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_DPCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object CDS_DPVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_DPCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_DPNomeMateria: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMateria'
      LookupDataSet = CDS_CadMateria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMAT'
      Size = 30
      Lookup = True
    end
    object CDS_DPCODTURMA: TStringField
      FieldName = 'CODTURMA'
      Size = 10
    end
  end
  object DTS_DP: TDataSource
    DataSet = CDS_DP
    Left = 234
    Top = 56
  end
  object DBX_Trabalhos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from trabalhos')
    SQLConnection = SQL_Dados
    Left = 24
    Top = 120
    object DBX_TrabalhosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_TrabalhosCODRELALUSER: TIntegerField
      FieldName = 'CODRELALUSER'
    end
    object DBX_TrabalhosCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_TrabalhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object DBX_TrabalhosNOTA: TFloatField
      FieldName = 'NOTA'
    end
    object DBX_TrabalhosBIM: TStringField
      FieldName = 'BIM'
      Size = 10
    end
    object DBX_TrabalhosOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object DSP_Trabalhos: TDataSetProvider
    DataSet = DBX_Trabalhos
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 136
  end
  object CDS_Trabalhos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Trabalhos'
    AfterInsert = CDS_TrabalhosAfterInsert
    AfterEdit = CDS_TrabalhosAfterEdit
    BeforePost = CDS_TrabalhosBeforePost
    AfterPost = CDS_TrabalhosAfterPost
    BeforeDelete = CDS_TrabalhosBeforeDelete
    AfterDelete = CDS_TrabalhosAfterDelete
    AfterScroll = CDS_TrabalhosAfterScroll
    OnNewRecord = CDS_TrabalhosNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 56
    Top = 152
    object CDS_TrabalhosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_TrabalhosCODRELALUSER: TIntegerField
      FieldName = 'CODRELALUSER'
    end
    object CDS_TrabalhosCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_TrabalhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CDS_TrabalhosNOTA: TFloatField
      FieldName = 'NOTA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object CDS_TrabalhosBIM: TStringField
      FieldName = 'BIM'
      Size = 10
    end
    object CDS_TrabalhosOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object DTS_Trabalhos: TDataSource
    DataSet = CDS_Trabalhos
    Left = 72
    Top = 168
  end
  object DBX_Turma: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TURMA')
    SQLConnection = SQL_Dados
    Left = 381
    Top = 8
  end
  object DSP_Turma: TDataSetProvider
    DataSet = DBX_Turma
    UpdateMode = upWhereKeyOnly
    Left = 397
    Top = 24
  end
  object CDS_Turma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Turma'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_TurmaAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_TurmaAfterDelete
    OnNewRecord = CDS_TurmaNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 413
    Top = 40
  end
  object DTS_Turma: TDataSource
    DataSet = CDS_Turma
    Left = 429
    Top = 56
  end
  object DBX_Serie: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SERIE ')
    SQLConnection = SQL_Dados
    Left = 320
    Top = 120
    object DBX_SerieCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_SerieSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object DBX_SerieGRAU: TStringField
      FieldName = 'GRAU'
      Size = 40
    end
    object DBX_SerieTURMA: TStringField
      FieldName = 'TURMA'
      Size = 10
    end
    object DBX_SeriePERIODO: TStringField
      FieldName = 'PERIODO'
    end
    object DBX_SerieNUMMAXALU: TIntegerField
      FieldName = 'NUMMAXALU'
    end
    object DBX_SerieANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object DBX_SerieORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object DSP_Serie: TDataSetProvider
    DataSet = DBX_Serie
    UpdateMode = upWhereKeyOnly
    Left = 336
    Top = 136
  end
  object CDS_Serie: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Serie'
    AfterInsert = CDS_SerieAfterInsert
    AfterEdit = CDS_SerieAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_SerieAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_SerieAfterDelete
    AfterScroll = CDS_SerieAfterScroll
    OnNewRecord = CDS_SerieNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 352
    Top = 152
    object CDS_SerieCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_SerieSERIE: TStringField
      FieldName = 'SERIE'
      Size = 10
    end
    object CDS_SerieGRAU: TStringField
      FieldName = 'GRAU'
      Size = 40
    end
    object CDS_SerieTURMA: TStringField
      FieldName = 'TURMA'
      Size = 10
    end
    object CDS_SeriePERIODO: TStringField
      FieldName = 'PERIODO'
    end
    object CDS_SerieNUMMAXALU: TIntegerField
      FieldName = 'NUMMAXALU'
    end
    object CDS_SerieANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object CDS_SerieORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
  end
  object DTS_Serie: TDataSource
    DataSet = CDS_Serie
    Left = 368
    Top = 168
  end
  object DBX_RelTurmaSerieAlu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ' +
        'ON R.codaluno = A.codigo')
    SQLConnection = SQL_Dados
    Left = 432
    Top = 128
    object DBX_RelTurmaSerieAluCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_RelTurmaSerieAluCODSERIE: TIntegerField
      FieldName = 'CODSERIE'
    end
    object DBX_RelTurmaSerieAluCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object DBX_RelTurmaSerieAluNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object DBX_RelTurmaSerieAluANOLETIVO: TSmallintField
      FieldName = 'ANOLETIVO'
    end
    object DBX_RelTurmaSerieAluCANCEL_MATRICULA: TStringField
      FieldName = 'CANCEL_MATRICULA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_RelTurmaSerieAluNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object DSP_RelTurmaSerieAlu: TDataSetProvider
    DataSet = DBX_RelTurmaSerieAlu
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 136
  end
  object CDS_RelTurmaSerieAlu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_RelTurmaSerieAlu'
    AfterInsert = CDS_RelTurmaSerieAluAfterInsert
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_RelTurmaSerieAluAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_RelTurmaSerieAluAfterDelete
    AfterScroll = CDS_RelTurmaSerieAluAfterScroll
    OnNewRecord = CDS_RelTurmaSerieAluNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 464
    Top = 152
    object CDS_RelTurmaSerieAluCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_RelTurmaSerieAluCODSERIE: TIntegerField
      FieldName = 'CODSERIE'
    end
    object CDS_RelTurmaSerieAluCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object CDS_RelTurmaSerieAluNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object CDS_RelTurmaSerieAluSerie: TStringField
      FieldKind = fkLookup
      FieldName = 'Serie'
      LookupDataSet = CDS_Serie
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SERIE'
      KeyFields = 'CODSERIE'
      Size = 10
      Lookup = True
    end
    object CDS_RelTurmaSerieAluTurma: TStringField
      FieldKind = fkLookup
      FieldName = 'Turma'
      LookupDataSet = CDS_Serie
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TURMA'
      KeyFields = 'CODSERIE'
      Size = 10
      Lookup = True
    end
    object CDS_RelTurmaSerieAluPeriodo: TStringField
      FieldKind = fkLookup
      FieldName = 'Periodo'
      LookupDataSet = CDS_Serie
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PERIODO'
      KeyFields = 'CODSERIE'
      Lookup = True
    end
    object CDS_RelTurmaSerieAluGrau: TStringField
      FieldKind = fkLookup
      FieldName = 'Grau'
      LookupDataSet = CDS_Serie
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRAU'
      KeyFields = 'CODSERIE'
      Size = 40
      Lookup = True
    end
    object CDS_RelTurmaSerieAluNomeAluno: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAluno'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALUNO'
      Size = 50
      Lookup = True
    end
    object CDS_RelTurmaSerieAluANOLETIVO: TSmallintField
      FieldName = 'ANOLETIVO'
    end
    object CDS_RelTurmaSerieAluCANCEL_MATRICULA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CANCEL_MATRICULA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_RelTurmaSerieAluNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object DTS_RelTurmaSerieAlu: TDataSource
    DataSet = CDS_RelTurmaSerieAlu
    Left = 480
    Top = 168
  end
  object DBX_Avaliacoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM AVALIACOES')
    SQLConnection = SQL_Dados
    Left = 131
    Top = 120
    object DBX_AvaliacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_AvaliacoesCODRELALUSER: TIntegerField
      FieldName = 'CODRELALUSER'
    end
    object DBX_AvaliacoesCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_AvaliacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object DBX_AvaliacoesNOTA: TFloatField
      FieldName = 'NOTA'
    end
    object DBX_AvaliacoesBIM: TStringField
      FieldName = 'BIM'
      Size = 10
    end
    object DBX_AvaliacoesOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object DSP_Avaliacoes: TDataSetProvider
    DataSet = DBX_Avaliacoes
    UpdateMode = upWhereKeyOnly
    Left = 147
    Top = 136
  end
  object CDS_Avaliacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Avaliacoes'
    AfterInsert = CDS_AvaliacoesAfterInsert
    AfterEdit = CDS_AvaliacoesAfterEdit
    BeforePost = CDS_AvaliacoesBeforePost
    AfterPost = CDS_AvaliacoesAfterPost
    BeforeDelete = CDS_AvaliacoesBeforeDelete
    AfterDelete = CDS_AvaliacoesAfterDelete
    AfterScroll = CDS_AvaliacoesAfterScroll
    OnNewRecord = CDS_AvaliacoesNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 163
    Top = 152
    object CDS_AvaliacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_AvaliacoesCODRELALUSER: TIntegerField
      FieldName = 'CODRELALUSER'
    end
    object CDS_AvaliacoesCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_AvaliacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CDS_AvaliacoesNOTA: TFloatField
      FieldName = 'NOTA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
    end
    object CDS_AvaliacoesBIM: TStringField
      FieldName = 'BIM'
      Size = 10
    end
    object CDS_AvaliacoesOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object DTS_Avaliacoes: TDataSource
    DataSet = CDS_Avaliacoes
    Left = 179
    Top = 168
  end
  object DBX_Assiduidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM ASSIDUIDADE')
    SQLConnection = SQL_Dados
    Left = 234
    Top = 120
    object DBX_AssiduidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_AssiduidadeCODRELALUSER: TIntegerField
      FieldName = 'CODRELALUSER'
    end
    object DBX_AssiduidadeCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_AssiduidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object DBX_AssiduidadeFALTAS: TIntegerField
      FieldName = 'FALTAS'
    end
    object DBX_AssiduidadeBIM: TStringField
      FieldName = 'BIM'
      Size = 5
    end
    object DBX_AssiduidadeOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object DSP_Assiduidade: TDataSetProvider
    DataSet = DBX_Assiduidade
    UpdateMode = upWhereKeyOnly
    Left = 250
    Top = 136
  end
  object CDS_Assiduidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Assiduidade'
    AfterInsert = CDS_AssiduidadeAfterInsert
    AfterEdit = CDS_AssiduidadeAfterEdit
    BeforePost = CDS_AssiduidadeBeforePost
    AfterPost = CDS_AssiduidadeAfterPost
    BeforeDelete = CDS_AssiduidadeBeforeDelete
    AfterDelete = CDS_AssiduidadeAfterDelete
    AfterScroll = CDS_AssiduidadeAfterScroll
    OnNewRecord = CDS_AssiduidadeNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 266
    Top = 152
    object CDS_AssiduidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_AssiduidadeCODRELALUSER: TIntegerField
      FieldName = 'CODRELALUSER'
    end
    object CDS_AssiduidadeCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_AssiduidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CDS_AssiduidadeFALTAS: TIntegerField
      FieldName = 'FALTAS'
    end
    object CDS_AssiduidadeBIM: TStringField
      FieldName = 'BIM'
      Size = 5
    end
    object CDS_AssiduidadeOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
  end
  object DTS_Assiduidade: TDataSource
    DataSet = CDS_Assiduidade
    Left = 282
    Top = 168
  end
  object DBX_CadMateria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CADMATERIAS')
    SQLConnection = SQL_Dados
    Left = 26
    Top = 231
    object DBX_CadMateriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_CadMateriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object DBX_CadMateriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object DSP_CadMateria: TDataSetProvider
    DataSet = DBX_CadMateria
    UpdateMode = upWhereKeyOnly
    Left = 42
    Top = 247
  end
  object CDS_CadMateria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CadMateria'
    AfterInsert = CDS_CadMateriaAfterInsert
    AfterEdit = CDS_CadMateriaAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_CadMateriaAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_CadMateriaAfterDelete
    OnNewRecord = CDS_CadMateriaNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 58
    Top = 263
    object CDS_CadMateriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CadMateriaNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object CDS_CadMateriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object DTS_CadMateria: TDataSource
    DataSet = CDS_CadMateria
    Left = 74
    Top = 279
  end
  object DBX_Indices: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM INDICES')
    SQLConnection = SQL_Dados
    Left = 122
    Top = 231
    object DBX_IndicesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_IndicesANO: TIntegerField
      FieldName = 'ANO'
    end
    object DBX_IndicesDT_BOLETIM: TDateField
      FieldName = 'DT_BOLETIM'
    end
  end
  object DSP_Indices: TDataSetProvider
    DataSet = DBX_Indices
    UpdateMode = upWhereKeyOnly
    Left = 138
    Top = 247
  end
  object CDS_Indices: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Indices'
    AfterInsert = CDS_IndicesAfterInsert
    AfterEdit = CDS_IndicesAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_IndicesAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_IndicesAfterDelete
    OnNewRecord = CDS_IndicesNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 154
    Top = 263
    object CDS_IndicesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_IndicesANO: TIntegerField
      FieldName = 'ANO'
    end
    object CDS_IndicesDT_BOLETIM: TDateField
      FieldName = 'DT_BOLETIM'
    end
  end
  object DTS_Indices: TDataSource
    DataSet = CDS_Indices
    Left = 170
    Top = 279
  end
  object DBX_SerieMat: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SERIEMAT')
    SQLConnection = SQL_Dados
    Left = 226
    Top = 231
    object DBX_SerieMatCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_SerieMatCODSERIE: TIntegerField
      FieldName = 'CODSERIE'
    end
    object DBX_SerieMatCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_SerieMatQNTD_AULAS: TIntegerField
      FieldName = 'QNTD_AULAS'
    end
    object DBX_SerieMatCODMASTER: TIntegerField
      FieldName = 'CODMASTER'
    end
  end
  object DSP_SerieMat: TDataSetProvider
    DataSet = DBX_SerieMat
    UpdateMode = upWhereKeyOnly
    Left = 242
    Top = 247
  end
  object CDS_SerieMat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_SerieMat'
    AfterInsert = CDS_SerieMatAfterInsert
    AfterEdit = CDS_SerieMatAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_SerieMatAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_SerieMatAfterDelete
    OnNewRecord = CDS_SerieMatNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 258
    Top = 263
    object CDS_SerieMatCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_SerieMatCODSERIE: TIntegerField
      FieldName = 'CODSERIE'
    end
    object CDS_SerieMatCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_SerieMatNomeMat: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMat'
      LookupDataSet = CDS_CadMateria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMAT'
      Size = 30
      Lookup = True
    end
    object CDS_SerieMatQNTD_AULAS: TIntegerField
      FieldName = 'QNTD_AULAS'
    end
    object CDS_SerieMatCODMASTER: TIntegerField
      FieldName = 'CODMASTER'
    end
    object CDS_SerieMatNomeMaster: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMaster'
      LookupDataSet = CDS_SerieMaster
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMASTER'
      Size = 30
      Lookup = True
    end
  end
  object DTS_SerieMat: TDataSource
    DataSet = CDS_SerieMat
    OnDataChange = DTS_SerieMatDataChange
    Left = 274
    Top = 279
  end
  object DBX_Teste: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_Dados
    Left = 733
    Top = 72
  end
  object DBX_Mensalidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM MENSALIDADE')
    SQLConnection = SQL_Dados
    Left = 330
    Top = 231
    object DBX_MensalidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_MensalidadeCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object DBX_MensalidadeANOLETIVO: TSmallintField
      FieldName = 'ANOLETIVO'
    end
    object DBX_MensalidadeJAN: TStringField
      FieldName = 'JAN'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeFEV: TStringField
      FieldName = 'FEV'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeMAR: TStringField
      FieldName = 'MAR'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeABR: TStringField
      FieldName = 'ABR'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeMAI: TStringField
      FieldName = 'MAI'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeJUN: TStringField
      FieldName = 'JUN'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeJUL: TStringField
      FieldName = 'JUL'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeAGO: TStringField
      FieldName = 'AGO'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeSETE: TStringField
      FieldName = 'SETE'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeOUT: TStringField
      FieldName = 'OUT'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeNOV: TStringField
      FieldName = 'NOV'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeDEZ: TStringField
      FieldName = 'DEZ'
      FixedChar = True
      Size = 1
    end
    object DBX_MensalidadeCODDP: TIntegerField
      FieldName = 'CODDP'
    end
    object DBX_MensalidadeCODPROJETO: TIntegerField
      FieldName = 'CODPROJETO'
    end
    object DBX_MensalidadeCONTASREC: TStringField
      FieldName = 'CONTASREC'
      FixedChar = True
      Size = 1
    end
  end
  object DSP_Mensalidade: TDataSetProvider
    DataSet = DBX_Mensalidade
    UpdateMode = upWhereKeyOnly
    Left = 346
    Top = 247
  end
  object CDS_Mensalidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Mensalidade'
    AfterInsert = CDS_MensalidadeAfterInsert
    AfterEdit = CDS_MensalidadeAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_MensalidadeAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_MensalidadeAfterDelete
    OnNewRecord = CDS_MensalidadeNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 362
    Top = 263
    object CDS_MensalidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_MensalidadeCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object CDS_MensalidadeANOLETIVO: TSmallintField
      FieldName = 'ANOLETIVO'
    end
    object CDS_MensalidadeJAN: TStringField
      FieldName = 'JAN'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeFEV: TStringField
      FieldName = 'FEV'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeMAR: TStringField
      FieldName = 'MAR'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeABR: TStringField
      FieldName = 'ABR'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeMAI: TStringField
      FieldName = 'MAI'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeJUN: TStringField
      FieldName = 'JUN'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeJUL: TStringField
      FieldName = 'JUL'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeAGO: TStringField
      FieldName = 'AGO'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeSETE: TStringField
      FieldName = 'SETE'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeOUT: TStringField
      FieldName = 'OUT'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeNOV: TStringField
      FieldName = 'NOV'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeDEZ: TStringField
      FieldName = 'DEZ'
      FixedChar = True
      Size = 1
    end
    object CDS_MensalidadeCODDP: TIntegerField
      FieldName = 'CODDP'
    end
    object CDS_MensalidadeCODPROJETO: TIntegerField
      FieldName = 'CODPROJETO'
    end
    object CDS_MensalidadeCONTASREC: TStringField
      FieldName = 'CONTASREC'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_Mensalidade: TDataSource
    DataSet = CDS_Mensalidade
    Left = 378
    Top = 279
  end
  object DBX_SerieMaster: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SERIEMASTER')
    SQLConnection = SQL_Dados
    Left = 29
    Top = 336
    object DBX_SerieMasterCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_SerieMasterDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object DBX_SerieMasterNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object DSP_SerieMaster: TDataSetProvider
    DataSet = DBX_SerieMaster
    UpdateMode = upWhereKeyOnly
    Left = 45
    Top = 352
  end
  object CDS_SerieMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_SerieMaster'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_SerieMasterAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_SerieMasterAfterDelete
    OnNewRecord = CDS_SerieMasterNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 61
    Top = 368
    object CDS_SerieMasterCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_SerieMasterDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object CDS_SerieMasterNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object DTS_SerieMaster: TDataSource
    DataSet = CDS_SerieMaster
    Left = 77
    Top = 384
  end
  object Sqp_Dados: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_Dados
    Left = 18
    Top = 56
  end
  object DBX_Exec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQL_Dados
    Left = 613
    Top = 8
  end
  object DBX_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    SQLConnection = SQL_Dados
    Left = 136
    Top = 336
    object DBX_UsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_UsuarioNOME: TStringField
      FieldName = 'NOME'
    end
    object DBX_UsuarioSENHA: TStringField
      FieldName = 'SENHA'
    end
    object DBX_UsuarioCFUN: TIntegerField
      FieldName = 'CFUN'
    end
  end
  object DSP_Usuario: TDataSetProvider
    DataSet = DBX_Usuario
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 352
  end
  object CDS_Usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Usuario'
    AfterInsert = CDS_UsuarioAfterInsert
    AfterEdit = CDS_UsuarioAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_UsuarioAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_UsuarioAfterDelete
    AfterScroll = CDS_UsuarioAfterScroll
    OnNewRecord = CDS_UsuarioNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 168
    Top = 368
    object CDS_UsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_UsuarioNOME: TStringField
      FieldName = 'NOME'
    end
    object CDS_UsuarioSENHA: TStringField
      FieldName = 'SENHA'
    end
    object CDS_UsuarioCFUN: TIntegerField
      FieldName = 'CFUN'
    end
  end
  object DTS_Usuario: TDataSource
    DataSet = CDS_Usuario
    Left = 184
    Top = 384
  end
  object DBX_InvSysP: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM INCSYSP')
    SQLConnection = SQL_Dados
    Left = 232
    Top = 336
    object DBX_InvSysPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_InvSysPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object DSP_InvSysP: TDataSetProvider
    DataSet = DBX_InvSysP
    UpdateMode = upWhereKeyOnly
    Left = 248
    Top = 352
  end
  object CDS_InvSysP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_InvSysP'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_InvSysPAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_InvSysPAfterDelete
    AfterScroll = CDS_InvSysPAfterScroll
    OnNewRecord = CDS_InvSysPNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 264
    Top = 368
    object CDS_InvSysPCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_InvSysPDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object DTS_InvSysP: TDataSource
    DataSet = CDS_InvSysP
    Left = 280
    Top = 384
  end
  object DBX_InvSys: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM INVSYS')
    SQLConnection = SQL_Dados
    Left = 328
    Top = 336
    object DBX_InvSysCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_InvSysDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object DBX_InvSysCODSYSP: TIntegerField
      FieldName = 'CODSYSP'
    end
  end
  object DSP_InvSys: TDataSetProvider
    DataSet = DBX_InvSys
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 352
  end
  object CDS_InvSys: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_InvSys'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_InvSysAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_InvSysAfterDelete
    OnNewRecord = CDS_InvSysNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 360
    Top = 368
    object CDS_InvSysCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_InvSysDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object CDS_InvSysCODSYSP: TIntegerField
      FieldName = 'CODSYSP'
    end
  end
  object DTS_InvSys: TDataSource
    DataSet = CDS_InvSys
    Left = 376
    Top = 384
  end
  object DBX_InvSysF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM INVSYSF')
    SQLConnection = SQL_Dados
    Left = 424
    Top = 336
    object DBX_InvSysFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_InvSysFCODSYS: TIntegerField
      FieldName = 'CODSYS'
    end
    object DBX_InvSysFCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object DBX_InvSysFNEGA: TStringField
      FieldName = 'NEGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFINS: TStringField
      FieldName = 'INS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFUPDT: TStringField
      FieldName = 'UPDT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFDEL: TStringField
      FieldName = 'DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFLOOKFOR: TStringField
      FieldName = 'LOOKFOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFRESTRITO: TStringField
      FieldName = 'RESTRITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFCONFIDENCIAL: TStringField
      FieldName = 'CONFIDENCIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_InvSysFNCOMP: TStringField
      FieldName = 'NCOMP'
      Size = 150
    end
  end
  object DSP_InvSysF: TDataSetProvider
    DataSet = DBX_InvSysF
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 352
  end
  object CDS_InvSysF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_InvSysF'
    AfterInsert = CDS_InvSysFAfterInsert
    AfterEdit = CDS_InvSysFAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_InvSysFAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_InvSysFAfterDelete
    OnNewRecord = CDS_InvSysFNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 456
    Top = 368
    object CDS_InvSysFCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_InvSysFCODSYS: TIntegerField
      FieldName = 'CODSYS'
    end
    object CDS_InvSysFCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object CDS_InvSysFNEGA: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'NEGA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFINS: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'INS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFUPDT: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'UPDT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFDEL: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'DEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFLOOKFOR: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'LOOKFOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFRESTRITO: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'RESTRITO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFCONFIDENCIAL: TStringField
      DefaultExpression = #39'F'#39
      FieldName = 'CONFIDENCIAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_InvSysFNCOMP: TStringField
      FieldName = 'NCOMP'
      Size = 150
    end
    object CDS_InvSysFdesc: TStringField
      FieldKind = fkLookup
      FieldName = 'desc'
      LookupDataSet = CDS_InvSys
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODSYS'
      Size = 60
      Lookup = True
    end
  end
  object DTS_InvSysF: TDataSource
    DataSet = CDS_InvSysF
    Left = 472
    Top = 384
  end
  object DBX_AluProjeto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from AluProjeto')
    SQLConnection = SQL_Dados
    Left = 520
    Top = 336
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_AluProjetoCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_AluProjetoCODPRO: TIntegerField
      FieldName = 'CODPRO'
    end
  end
  object DSP_AluProjeto: TDataSetProvider
    DataSet = DBX_AluProjeto
    UpdateMode = upWhereKeyOnly
    Left = 536
    Top = 352
  end
  object CDS_AluProjeto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_AluProjeto'
    AfterInsert = CDS_AluProjetoAfterInsert
    AfterEdit = CDS_AluProjetoAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_AluProjetoAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_AluProjetoAfterDelete
    OnNewRecord = CDS_AluProjetoNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 552
    Top = 368
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_AluProjetoCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_AluProjetoCODPRO: TIntegerField
      FieldName = 'CODPRO'
    end
    object CDS_AluProjetoNomeAluno: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAluno'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALU'
      Size = 50
      Lookup = True
    end
    object CDS_AluProjetoNomeProjeto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProjeto'
      LookupDataSet = CDS_Projeto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODPRO'
      Size = 50
      Lookup = True
    end
  end
  object DTS_AluProjeto: TDataSource
    DataSet = CDS_AluProjeto
    Left = 568
    Top = 384
  end
  object DBX_AluPedInf: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from AluPedInf')
    SQLConnection = SQL_Dados
    Left = 616
    Top = 336
    object DBX_AluPedInfCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_AluPedInfNOMEALU: TStringField
      FieldName = 'NOMEALU'
      Size = 50
    end
    object DBX_AluPedInfDT_NASC: TDateField
      FieldName = 'DT_NASC'
    end
    object DBX_AluPedInfTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object DBX_AluPedInfENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object DBX_AluPedInfBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object DBX_AluPedInfCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object DBX_AluPedInfESC_ATUAL: TStringField
      FieldName = 'ESC_ATUAL'
      Size = 50
    end
    object DBX_AluPedInfEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object DBX_AluPedInfPER_INTERESSE: TStringField
      FieldName = 'PER_INTERESSE'
      Size = 40
    end
    object DBX_AluPedInfSERIE: TStringField
      FieldName = 'SERIE'
    end
    object DBX_AluPedInfFOLHETO: TStringField
      FieldName = 'FOLHETO'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfINTERNET: TStringField
      FieldName = 'INTERNET'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfFACHADA: TStringField
      FieldName = 'FACHADA'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfFAIXA_RUA: TStringField
      FieldName = 'FAIXA_RUA'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfREVISTA: TStringField
      FieldName = 'REVISTA'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfNOME_REV: TStringField
      FieldName = 'NOME_REV'
      Size = 40
    end
    object DBX_AluPedInfJORNAL: TStringField
      FieldName = 'JORNAL'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfNOME_JORNAL: TStringField
      FieldName = 'NOME_JORNAL'
      Size = 40
    end
    object DBX_AluPedInfPLACA: TStringField
      FieldName = 'PLACA'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfINDICADO: TStringField
      FieldName = 'INDICADO'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfNOME_INDICOU: TStringField
      FieldName = 'NOME_INDICOU'
      Size = 50
    end
    object DBX_AluPedInfINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      FixedChar = True
      Size = 1
    end
    object DBX_AluPedInfDATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_AluPedInfNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object DBX_AluPedInfATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object DBX_AluPedInfTEL: TStringField
      FieldName = 'TEL'
      Size = 10
    end
    object DBX_AluPedInfVISITA: TStringField
      FieldName = 'VISITA'
      Size = 10
    end
    object DBX_AluPedInfDT_1CONT: TDateField
      FieldName = 'DT_1CONT'
    end
    object DBX_AluPedInfATENDENTE_1CONT: TStringField
      FieldName = 'ATENDENTE_1CONT'
      Size = 30
    end
    object DBX_AluPedInfOBS_1CONT: TMemoField
      FieldName = 'OBS_1CONT'
      BlobType = ftMemo
    end
    object DBX_AluPedInfDT_2CONT: TDateField
      FieldName = 'DT_2CONT'
    end
    object DBX_AluPedInfATENDENTE_2CONT: TStringField
      FieldName = 'ATENDENTE_2CONT'
      Size = 30
    end
    object DBX_AluPedInfOBS_2CONT: TMemoField
      FieldName = 'OBS_2CONT'
      BlobType = ftMemo
    end
    object DBX_AluPedInfNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object DBX_AluPedInfNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
  end
  object DSP_AluPedInf: TDataSetProvider
    DataSet = DBX_AluPedInf
    UpdateMode = upWhereKeyOnly
    Left = 632
    Top = 352
  end
  object CDS_AluPedInf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_AluPedInf'
    AfterInsert = CDS_AluPedInfAfterInsert
    AfterEdit = CDS_AluPedInfAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_AluPedInfAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_AluPedInfAfterDelete
    OnNewRecord = CDS_AluPedInfNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 648
    Top = 368
    object CDS_AluPedInfCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_AluPedInfNOMEALU: TStringField
      FieldName = 'NOMEALU'
      Size = 50
    end
    object CDS_AluPedInfDT_NASC: TDateField
      FieldName = 'DT_NASC'
    end
    object CDS_AluPedInfTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 15
    end
    object CDS_AluPedInfENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object CDS_AluPedInfBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object CDS_AluPedInfCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object CDS_AluPedInfESC_ATUAL: TStringField
      FieldName = 'ESC_ATUAL'
      Size = 50
    end
    object CDS_AluPedInfEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object CDS_AluPedInfPER_INTERESSE: TStringField
      FieldName = 'PER_INTERESSE'
      Size = 40
    end
    object CDS_AluPedInfSERIE: TStringField
      FieldName = 'SERIE'
    end
    object CDS_AluPedInfFOLHETO: TStringField
      FieldName = 'FOLHETO'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfINTERNET: TStringField
      FieldName = 'INTERNET'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfFACHADA: TStringField
      FieldName = 'FACHADA'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfFAIXA_RUA: TStringField
      FieldName = 'FAIXA_RUA'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfREVISTA: TStringField
      FieldName = 'REVISTA'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfNOME_REV: TStringField
      FieldName = 'NOME_REV'
      Size = 40
    end
    object CDS_AluPedInfJORNAL: TStringField
      FieldName = 'JORNAL'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfNOME_JORNAL: TStringField
      FieldName = 'NOME_JORNAL'
      Size = 40
    end
    object CDS_AluPedInfPLACA: TStringField
      FieldName = 'PLACA'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfINDICADO: TStringField
      FieldName = 'INDICADO'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfNOME_INDICOU: TStringField
      FieldName = 'NOME_INDICOU'
      Size = 50
    end
    object CDS_AluPedInfINSCRICAO: TStringField
      FieldName = 'INSCRICAO'
      FixedChar = True
      Size = 1
    end
    object CDS_AluPedInfDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_AluPedInfNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object CDS_AluPedInfATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 30
    end
    object CDS_AluPedInfTEL: TStringField
      FieldName = 'TEL'
      Size = 10
    end
    object CDS_AluPedInfVISITA: TStringField
      FieldName = 'VISITA'
      Size = 10
    end
    object CDS_AluPedInfDT_1CONT: TDateField
      FieldName = 'DT_1CONT'
    end
    object CDS_AluPedInfATENDENTE_1CONT: TStringField
      FieldName = 'ATENDENTE_1CONT'
      Size = 30
    end
    object CDS_AluPedInfOBS_1CONT: TMemoField
      FieldName = 'OBS_1CONT'
      BlobType = ftMemo
    end
    object CDS_AluPedInfDT_2CONT: TDateField
      FieldName = 'DT_2CONT'
    end
    object CDS_AluPedInfATENDENTE_2CONT: TStringField
      FieldName = 'ATENDENTE_2CONT'
      Size = 30
    end
    object CDS_AluPedInfOBS_2CONT: TMemoField
      FieldName = 'OBS_2CONT'
      BlobType = ftMemo
    end
    object CDS_AluPedInfNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object CDS_AluPedInfNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
  end
  object DTS_AluPedInf: TDataSource
    DataSet = CDS_AluPedInf
    Left = 664
    Top = 384
  end
  object DBX_FichaIndAlu: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from FichaIndAlu')
    SQLConnection = SQL_Dados
    Left = 29
    Top = 440
    object DBX_FichaIndAluCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_FichaIndAluCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object DBX_FichaIndAluCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_FichaIndAluPROFESSOR: TStringField
      FieldName = 'PROFESSOR'
      Size = 50
    end
    object DBX_FichaIndAluN_ENT_COM: TStringField
      FieldName = 'N_ENT_COM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluN_FAZ_LICAO_CASA: TStringField
      FieldName = 'N_FAZ_LICAO_CASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluN_ANOTA_DEV: TStringField
      FieldName = 'N_ANOTA_DEV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluN_FAZ_LICAO_CLASSE: TStringField
      FieldName = 'N_FAZ_LICAO_CLASSE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluCONVERSA_MT: TStringField
      FieldName = 'CONVERSA_MT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluDESATENCIOSO: TStringField
      FieldName = 'DESATENCIOSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluAPATICO: TStringField
      FieldName = 'APATICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluN_ENTREGA_TRAB: TStringField
      FieldName = 'N_ENTREGA_TRAB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluFALTA_EXCESSO: TStringField
      FieldName = 'FALTA_EXCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluATRASA_FREQUENCIA: TStringField
      FieldName = 'ATRASA_FREQUENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluBRINCA_INOPORTUNA: TStringField
      FieldName = 'BRINCA_INOPORTUNA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluLENT_ESCREVER: TStringField
      FieldName = 'LENT_ESCREVER'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluASSIM_CONTEUDO: TStringField
      FieldName = 'ASSIM_CONTEUDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluCONCENTRACAO: TStringField
      FieldName = 'CONCENTRACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluDISLEXIA: TStringField
      FieldName = 'DISLEXIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluEQUIL_EMOCIONAL: TStringField
      FieldName = 'EQUIL_EMOCIONAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluINTERPRE_TEXTO: TStringField
      FieldName = 'INTERPRE_TEXTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluCALIGRAFIA: TStringField
      FieldName = 'CALIGRAFIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluRAC_LOGICO: TStringField
      FieldName = 'RAC_LOGICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluCOORD_MOTORA: TStringField
      FieldName = 'COORD_MOTORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluREL_PROF_COL: TStringField
      FieldName = 'REL_PROF_COL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluATENCAO: TStringField
      FieldName = 'ATENCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluFAZ_DEV_CASA: TStringField
      FieldName = 'FAZ_DEV_CASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluEST_ATENTO_ATIV_PROP: TStringField
      FieldName = 'EST_ATENTO_ATIV_PROP'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluN_FALTAR_AULAS: TStringField
      FieldName = 'N_FALTAR_AULAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluMAIOR_CONS_PESSOAS: TStringField
      FieldName = 'MAIOR_CONS_PESSOAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluREC_CONT: TStringField
      FieldName = 'REC_CONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluREC_PAR_TRAB_ORIENTACAO: TStringField
      FieldName = 'REC_PAR_TRAB_ORIENTACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluREC_PAR_AULAS_EXT: TStringField
      FieldName = 'REC_PAR_AULAS_EXT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluREFORCO_LICOES_CASA: TStringField
      FieldName = 'REFORCO_LICOES_CASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluCOM_PAIS: TStringField
      FieldName = 'COM_PAIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluACOM_DIA_EST: TStringField
      FieldName = 'ACOM_DIA_EST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluFAZ_LICOES_COR_TEMPO: TStringField
      FieldName = 'FAZ_LICOES_COR_TEMPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluVER_COM_ENVIAR_ASS: TStringField
      FieldName = 'VER_COM_ENVIAR_ASS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluN_DXA_FALTAR: TStringField
      FieldName = 'N_DXA_FALTAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluENTRAR_CONTATO_SEM: TStringField
      FieldName = 'ENTRAR_CONTATO_SEM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_FichaIndAluBIM: TStringField
      FieldName = 'BIM'
      Size = 11
    end
    object DBX_FichaIndAluNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Precision = 18
      Size = 2
    end
    object DBX_FichaIndAluSERIE: TStringField
      FieldName = 'SERIE'
      Size = 100
    end
  end
  object DSP_FichaIndAlu: TDataSetProvider
    DataSet = DBX_FichaIndAlu
    UpdateMode = upWhereKeyOnly
    Left = 45
    Top = 456
  end
  object CDS_FichaIndAlu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_FichaIndAlu'
    AfterInsert = CDS_FichaIndAluAfterInsert
    AfterEdit = CDS_FichaIndAluAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_FichaIndAluAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_FichaIndAluAfterDelete
    OnNewRecord = CDS_FichaIndAluNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 61
    Top = 472
    object CDS_FichaIndAluCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_FichaIndAluCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object CDS_FichaIndAluCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_FichaIndAluPROFESSOR: TStringField
      FieldName = 'PROFESSOR'
      Size = 50
    end
    object CDS_FichaIndAluN_ENT_COM: TStringField
      FieldName = 'N_ENT_COM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluN_FAZ_LICAO_CASA: TStringField
      FieldName = 'N_FAZ_LICAO_CASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluN_ANOTA_DEV: TStringField
      FieldName = 'N_ANOTA_DEV'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluN_FAZ_LICAO_CLASSE: TStringField
      FieldName = 'N_FAZ_LICAO_CLASSE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluCONVERSA_MT: TStringField
      FieldName = 'CONVERSA_MT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluDESATENCIOSO: TStringField
      FieldName = 'DESATENCIOSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluAPATICO: TStringField
      FieldName = 'APATICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluN_ENTREGA_TRAB: TStringField
      FieldName = 'N_ENTREGA_TRAB'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluFALTA_EXCESSO: TStringField
      FieldName = 'FALTA_EXCESSO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluATRASA_FREQUENCIA: TStringField
      FieldName = 'ATRASA_FREQUENCIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluBRINCA_INOPORTUNA: TStringField
      FieldName = 'BRINCA_INOPORTUNA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluLENT_ESCREVER: TStringField
      FieldName = 'LENT_ESCREVER'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluASSIM_CONTEUDO: TStringField
      FieldName = 'ASSIM_CONTEUDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluCONCENTRACAO: TStringField
      FieldName = 'CONCENTRACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluDISLEXIA: TStringField
      FieldName = 'DISLEXIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluEQUIL_EMOCIONAL: TStringField
      FieldName = 'EQUIL_EMOCIONAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluINTERPRE_TEXTO: TStringField
      FieldName = 'INTERPRE_TEXTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluCALIGRAFIA: TStringField
      FieldName = 'CALIGRAFIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluRAC_LOGICO: TStringField
      FieldName = 'RAC_LOGICO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluCOORD_MOTORA: TStringField
      FieldName = 'COORD_MOTORA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluREL_PROF_COL: TStringField
      FieldName = 'REL_PROF_COL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluATENCAO: TStringField
      FieldName = 'ATENCAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluFAZ_DEV_CASA: TStringField
      FieldName = 'FAZ_DEV_CASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluEST_ATENTO_ATIV_PROP: TStringField
      FieldName = 'EST_ATENTO_ATIV_PROP'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluN_FALTAR_AULAS: TStringField
      FieldName = 'N_FALTAR_AULAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluMAIOR_CONS_PESSOAS: TStringField
      FieldName = 'MAIOR_CONS_PESSOAS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluREC_CONT: TStringField
      FieldName = 'REC_CONT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluREC_PAR_TRAB_ORIENTACAO: TStringField
      FieldName = 'REC_PAR_TRAB_ORIENTACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluREC_PAR_AULAS_EXT: TStringField
      FieldName = 'REC_PAR_AULAS_EXT'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluREFORCO_LICOES_CASA: TStringField
      FieldName = 'REFORCO_LICOES_CASA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluCOM_PAIS: TStringField
      FieldName = 'COM_PAIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluACOM_DIA_EST: TStringField
      FieldName = 'ACOM_DIA_EST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluFAZ_LICOES_COR_TEMPO: TStringField
      FieldName = 'FAZ_LICOES_COR_TEMPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluVER_COM_ENVIAR_ASS: TStringField
      FieldName = 'VER_COM_ENVIAR_ASS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluN_DXA_FALTAR: TStringField
      FieldName = 'N_DXA_FALTAR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluENTRAR_CONTATO_SEM: TStringField
      FieldName = 'ENTRAR_CONTATO_SEM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_FichaIndAluNomeAluno: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAluno'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALUNO'
      Size = 50
      Lookup = True
    end
    object CDS_FichaIndAluNomeDisciplina: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeDisciplina'
      LookupDataSet = CDS_CadMateria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMAT'
      Size = 50
      Lookup = True
    end
    object CDS_FichaIndAluBIM: TStringField
      FieldName = 'BIM'
      Size = 11
    end
    object CDS_FichaIndAluNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Precision = 18
      Size = 2
    end
    object CDS_FichaIndAluSERIE: TStringField
      FieldName = 'SERIE'
      Size = 100
    end
  end
  object DTS_FichaIndAlu: TDataSource
    DataSet = CDS_FichaIndAlu
    Left = 77
    Top = 488
  end
  object DBX_GradCur: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM grade_curricular')
    SQLConnection = SQL_Dados
    Left = 128
    Top = 440
    object DBX_GradCurCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_GradCurCODCURSO: TIntegerField
      FieldName = 'CODCURSO'
    end
    object DBX_GradCurANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object DBX_GradCurAREA_CONHEC: TStringField
      FieldName = 'AREA_CONHEC'
      Size = 50
    end
    object DBX_GradCurQNTD_AULAS: TIntegerField
      FieldName = 'QNTD_AULAS'
    end
    object DBX_GradCurSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object DBX_GradCurCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
  end
  object DSP_GradCur: TDataSetProvider
    DataSet = DBX_GradCur
    UpdateMode = upWhereKeyOnly
    Left = 144
    Top = 456
  end
  object CDS_GradCur: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_GradCur'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_GradCurAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_GradCurAfterDelete
    OnNewRecord = CDS_GradCurNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 160
    Top = 472
    object CDS_GradCurCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_GradCurCODCURSO: TIntegerField
      FieldName = 'CODCURSO'
    end
    object CDS_GradCurANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object CDS_GradCurAREA_CONHEC: TStringField
      FieldName = 'AREA_CONHEC'
      Size = 50
    end
    object CDS_GradCurQNTD_AULAS: TIntegerField
      FieldName = 'QNTD_AULAS'
    end
    object CDS_GradCurSERIE: TStringField
      FieldName = 'SERIE'
      Size = 30
    end
    object CDS_GradCurNomeCurso: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCurso'
      LookupDataSet = CDS_Curso
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCURSO'
      Size = 50
      Lookup = True
    end
    object CDS_GradCurCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_GradCurNomeMat: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMat'
      LookupDataSet = CDS_CadMateria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMAT'
      Size = 50
      Lookup = True
    end
  end
  object DTS_GradCur: TDataSource
    DataSet = CDS_GradCur
    Left = 176
    Top = 488
  end
  object DBX_Calendario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CALENDARIO')
    SQLConnection = SQL_Dados
    Left = 224
    Top = 440
    object DBX_CalendarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_CalendarioCODCURSO: TIntegerField
      FieldName = 'CODCURSO'
    end
    object DBX_CalendarioANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object DBX_CalendarioMES: TStringField
      FieldName = 'MES'
      Size = 9
    end
    object DBX_CalendarioN1: TStringField
      FieldName = 'N1'
      Size = 30
    end
    object DBX_CalendarioN2: TStringField
      FieldName = 'N2'
      Size = 30
    end
    object DBX_CalendarioN3: TStringField
      FieldName = 'N3'
      Size = 30
    end
    object DBX_CalendarioN4: TStringField
      FieldName = 'N4'
      Size = 30
    end
    object DBX_CalendarioN5: TStringField
      FieldName = 'N5'
      Size = 30
    end
    object DBX_CalendarioN6: TStringField
      FieldName = 'N6'
      Size = 30
    end
    object DBX_CalendarioN7: TStringField
      FieldName = 'N7'
      Size = 30
    end
    object DBX_CalendarioN8: TStringField
      FieldName = 'N8'
      Size = 30
    end
    object DBX_CalendarioN9: TStringField
      FieldName = 'N9'
      Size = 30
    end
    object DBX_CalendarioN10: TStringField
      FieldName = 'N10'
      Size = 30
    end
    object DBX_CalendarioN11: TStringField
      FieldName = 'N11'
      Size = 30
    end
    object DBX_CalendarioN12: TStringField
      FieldName = 'N12'
      Size = 30
    end
    object DBX_CalendarioN13: TStringField
      FieldName = 'N13'
      Size = 30
    end
    object DBX_CalendarioN14: TStringField
      FieldName = 'N14'
      Size = 30
    end
    object DBX_CalendarioN15: TStringField
      FieldName = 'N15'
      Size = 30
    end
    object DBX_CalendarioN16: TStringField
      FieldName = 'N16'
      Size = 30
    end
    object DBX_CalendarioN17: TStringField
      FieldName = 'N17'
      Size = 30
    end
    object DBX_CalendarioN18: TStringField
      FieldName = 'N18'
      Size = 30
    end
    object DBX_CalendarioN19: TStringField
      FieldName = 'N19'
      Size = 30
    end
    object DBX_CalendarioN20: TStringField
      FieldName = 'N20'
      Size = 30
    end
    object DBX_CalendarioN21: TStringField
      FieldName = 'N21'
      Size = 30
    end
    object DBX_CalendarioN22: TStringField
      FieldName = 'N22'
      Size = 30
    end
    object DBX_CalendarioN23: TStringField
      FieldName = 'N23'
      Size = 30
    end
    object DBX_CalendarioN24: TStringField
      FieldName = 'N24'
      Size = 30
    end
    object DBX_CalendarioN25: TStringField
      FieldName = 'N25'
      Size = 30
    end
    object DBX_CalendarioN26: TStringField
      FieldName = 'N26'
      Size = 30
    end
    object DBX_CalendarioN27: TStringField
      FieldName = 'N27'
      Size = 30
    end
    object DBX_CalendarioN28: TStringField
      FieldName = 'N28'
      Size = 30
    end
    object DBX_CalendarioN29: TStringField
      FieldName = 'N29'
      Size = 30
    end
    object DBX_CalendarioN30: TStringField
      FieldName = 'N30'
      Size = 30
    end
    object DBX_CalendarioN31: TStringField
      FieldName = 'N31'
      Size = 30
    end
  end
  object DSP_Calendario: TDataSetProvider
    DataSet = DBX_Calendario
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 456
  end
  object CDS_Calendario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Calendario'
    AfterInsert = CDS_CalendarioAfterInsert
    AfterEdit = CDS_CalendarioAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_CalendarioAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_CalendarioAfterDelete
    OnNewRecord = CDS_CalendarioNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 256
    Top = 472
    object CDS_CalendarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CalendarioCODCURSO: TIntegerField
      FieldName = 'CODCURSO'
    end
    object CDS_CalendarioANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object CDS_CalendarioMES: TStringField
      FieldName = 'MES'
      Size = 9
    end
    object CDS_CalendarioN1: TStringField
      FieldName = 'N1'
      Size = 30
    end
    object CDS_CalendarioN2: TStringField
      FieldName = 'N2'
      Size = 30
    end
    object CDS_CalendarioN3: TStringField
      FieldName = 'N3'
      Size = 30
    end
    object CDS_CalendarioN4: TStringField
      FieldName = 'N4'
      Size = 30
    end
    object CDS_CalendarioN5: TStringField
      FieldName = 'N5'
      Size = 30
    end
    object CDS_CalendarioN6: TStringField
      FieldName = 'N6'
      Size = 30
    end
    object CDS_CalendarioN7: TStringField
      FieldName = 'N7'
      Size = 30
    end
    object CDS_CalendarioN8: TStringField
      FieldName = 'N8'
      Size = 30
    end
    object CDS_CalendarioN9: TStringField
      FieldName = 'N9'
      Size = 30
    end
    object CDS_CalendarioN10: TStringField
      FieldName = 'N10'
      Size = 30
    end
    object CDS_CalendarioN11: TStringField
      FieldName = 'N11'
      Size = 30
    end
    object CDS_CalendarioN12: TStringField
      FieldName = 'N12'
      Size = 30
    end
    object CDS_CalendarioN13: TStringField
      FieldName = 'N13'
      Size = 30
    end
    object CDS_CalendarioN14: TStringField
      FieldName = 'N14'
      Size = 30
    end
    object CDS_CalendarioN15: TStringField
      FieldName = 'N15'
      Size = 30
    end
    object CDS_CalendarioN16: TStringField
      FieldName = 'N16'
      Size = 30
    end
    object CDS_CalendarioN17: TStringField
      FieldName = 'N17'
      Size = 30
    end
    object CDS_CalendarioN18: TStringField
      FieldName = 'N18'
      Size = 30
    end
    object CDS_CalendarioN19: TStringField
      FieldName = 'N19'
      Size = 30
    end
    object CDS_CalendarioN20: TStringField
      FieldName = 'N20'
      Size = 30
    end
    object CDS_CalendarioN21: TStringField
      FieldName = 'N21'
      Size = 30
    end
    object CDS_CalendarioN22: TStringField
      FieldName = 'N22'
      Size = 30
    end
    object CDS_CalendarioN23: TStringField
      FieldName = 'N23'
      Size = 30
    end
    object CDS_CalendarioN24: TStringField
      FieldName = 'N24'
      Size = 30
    end
    object CDS_CalendarioN25: TStringField
      FieldName = 'N25'
      Size = 30
    end
    object CDS_CalendarioN26: TStringField
      FieldName = 'N26'
      Size = 30
    end
    object CDS_CalendarioN27: TStringField
      FieldName = 'N27'
      Size = 30
    end
    object CDS_CalendarioN28: TStringField
      FieldName = 'N28'
      Size = 30
    end
    object CDS_CalendarioN29: TStringField
      FieldName = 'N29'
      Size = 30
    end
    object CDS_CalendarioN30: TStringField
      FieldName = 'N30'
      Size = 30
    end
    object CDS_CalendarioN31: TStringField
      FieldName = 'N31'
      Size = 30
    end
    object CDS_CalendarioNomeCurso: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCurso'
      LookupDataSet = CDS_Curso
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCURSO'
      Size = 30
      Lookup = True
    end
  end
  object DTS_Calendario: TDataSource
    DataSet = CDS_Calendario
    Left = 272
    Top = 488
  end
  object DBX_ContasRec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CONTASARECEBER')
    SQLConnection = SQL_Dados
    Left = 328
    Top = 440
    object DBX_ContasRecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_ContasRecVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_ContasRecDATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_ContasRecCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_ContasRecPAGO: TDateField
      FieldName = 'PAGO'
    end
    object DBX_ContasRecEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object DBX_ContasRecTIPO: TStringField
      FieldName = 'TIPO'
    end
    object DBX_ContasRecTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 30
    end
    object DBX_ContasRecCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
    end
    object DBX_ContasRecANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
  end
  object DSP_ContasRec: TDataSetProvider
    DataSet = DBX_ContasRec
    UpdateMode = upWhereKeyOnly
    Left = 344
    Top = 456
  end
  object CDS_ContasRec: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_ContasRec'
    AfterInsert = CDS_ContasRecAfterInsert
    AfterEdit = CDS_ContasRecAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_ContasRecAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_ContasRecAfterDelete
    OnNewRecord = CDS_ContasRecNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 360
    Top = 472
    object CDS_ContasRecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_ContasRecVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_ContasRecDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_ContasRecCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_ContasRecPAGO: TDateField
      FieldName = 'PAGO'
    end
    object CDS_ContasRecEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object CDS_ContasRecNomeAlu: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAlu'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALU'
      Size = 50
      Lookup = True
    end
    object CDS_ContasRecTIPO: TStringField
      FieldName = 'TIPO'
    end
    object CDS_ContasRecTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 30
    end
    object CDS_ContasRecCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
    end
    object CDS_ContasRecNomeEvento: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEvento'
      LookupDataSet = CDS_Evento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODEVENTO'
      Size = 50
      Lookup = True
    end
    object CDS_ContasRecANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
  end
  object DTS_ContasRec: TDataSource
    DataSet = CDS_ContasRec
    Left = 376
    Top = 488
  end
  object DBX_Historico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM historico')
    SQLConnection = SQL_Dados
    Left = 424
    Top = 440
    object DBX_HistoricoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_HistoricoCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_HistoricoSERIE: TStringField
      FieldName = 'SERIE'
    end
    object DBX_HistoricoANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object DBX_HistoricoESTABELECIMENTO: TStringField
      FieldName = 'ESTABELECIMENTO'
      Size = 80
    end
    object DBX_HistoricoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object DBX_HistoricoESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object DBX_HistoricoCODCURSO: TIntegerField
      FieldName = 'CODCURSO'
    end
  end
  object DSP_Historico: TDataSetProvider
    DataSet = DBX_Historico
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 456
  end
  object CDS_Historico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Historico'
    AfterInsert = CDS_HistoricoAfterInsert
    AfterEdit = CDS_HistoricoAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_HistoricoAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_HistoricoAfterDelete
    AfterScroll = CDS_HistoricoAfterScroll
    OnNewRecord = CDS_HistoricoNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 456
    Top = 472
    object CDS_HistoricoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_HistoricoNomeAlu: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAlu'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALU'
      Size = 50
      Lookup = True
    end
    object CDS_HistoricoCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_HistoricoSERIE: TStringField
      FieldName = 'SERIE'
    end
    object CDS_HistoricoANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object CDS_HistoricoESTABELECIMENTO: TStringField
      FieldName = 'ESTABELECIMENTO'
      Size = 80
    end
    object CDS_HistoricoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Size = 30
    end
    object CDS_HistoricoESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 2
    end
    object CDS_HistoricoCODCURSO: TIntegerField
      FieldName = 'CODCURSO'
    end
    object CDS_HistoricoNomeCurso: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeCurso'
      LookupDataSet = CDS_Curso
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCURSO'
      Size = 50
      Lookup = True
    end
  end
  object DTS_Historico: TDataSource
    DataSet = CDS_Historico
    Left = 472
    Top = 488
  end
  object DBX_NotasAnteriores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM NotasAnterirores')
    SQLConnection = SQL_Dados
    Left = 544
    Top = 440
    object DBX_NotasAnterioresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_NotasAnterioresCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object DBX_NotasAnterioresCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object DBX_NotasAnterioresNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Precision = 18
      Size = 2
    end
  end
  object DSP_NotasAnteriores: TDataSetProvider
    DataSet = DBX_NotasAnteriores
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 456
  end
  object CDS_NotasAnteriores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_NotasAnteriores'
    AfterInsert = CDS_NotasAnterioresAfterInsert
    AfterEdit = CDS_NotasAnterioresAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_NotasAnterioresAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_NotasAnterioresAfterDelete
    OnNewRecord = CDS_NotasAnterioresNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 576
    Top = 472
    object CDS_NotasAnterioresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_NotasAnterioresCODHIST: TIntegerField
      FieldName = 'CODHIST'
    end
    object CDS_NotasAnterioresCODMAT: TIntegerField
      FieldName = 'CODMAT'
    end
    object CDS_NotasAnterioresNOTA: TFMTBCDField
      FieldName = 'NOTA'
      Precision = 18
      Size = 2
    end
    object CDS_NotasAnterioresNomeMat: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeMat'
      LookupDataSet = CDS_CadMateria
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMAT'
      Size = 30
      Lookup = True
    end
  end
  object DTS_NotasAnteriores: TDataSource
    DataSet = CDS_NotasAnteriores
    Left = 592
    Top = 488
  end
  object DBX_DadosCheque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM DADOS_CHEQUE')
    SQLConnection = SQL_Dados
    Left = 672
    Top = 440
    object DBX_DadosChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_DadosChequeCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object DBX_DadosChequeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object DBX_DadosChequeDATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_DadosChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object DBX_DadosChequeCODCONTANUBIA: TIntegerField
      FieldName = 'CODCONTANUBIA'
    end
  end
  object DSP_DadosCheque: TDataSetProvider
    DataSet = DBX_DadosCheque
    UpdateMode = upWhereKeyOnly
    Left = 688
    Top = 456
  end
  object CDS_DadosCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_DadosCheque'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_DadosChequeAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_DadosChequeAfterDelete
    OnNewRecord = CDS_DadosChequeNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 704
    Top = 472
    object CDS_DadosChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_DadosChequeCODCONTA: TIntegerField
      FieldName = 'CODCONTA'
    end
    object CDS_DadosChequeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object CDS_DadosChequeDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_DadosChequeBANCO: TStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object CDS_DadosChequeCODCONTANUBIA: TIntegerField
      FieldName = 'CODCONTANUBIA'
    end
  end
  object DTS_DadosCheque: TDataSource
    DataSet = CDS_DadosCheque
    Left = 720
    Top = 488
  end
  object DBX_Evento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM EVENTOS')
    SQLConnection = SQL_Dados
    Left = 424
    Top = 232
    object DBX_EventoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_EventoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object DBX_EventoDATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_EventoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_EventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
  end
  object DSP_Evento: TDataSetProvider
    DataSet = DBX_Evento
    UpdateMode = upWhereKeyOnly
    Left = 440
    Top = 248
  end
  object CDS_Evento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Evento'
    AfterInsert = CDS_EventoAfterInsert
    AfterEdit = CDS_EventoAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_EventoAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_EventoAfterDelete
    OnNewRecord = CDS_EventoNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 456
    Top = 264
    object CDS_EventoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_EventoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object CDS_EventoDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_EventoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_EventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
  end
  object DTS_Evento: TDataSource
    DataSet = CDS_Evento
    Left = 472
    Top = 280
  end
  object DBX_CadAluAnual: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CADALUNOANUAL')
    SQLConnection = SQL_Dados
    Left = 552
    Top = 232
    object DBX_CadAluAnualCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_CadAluAnualCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_CadAluAnualVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_CadAluAnualDT_MATRICULA: TDateField
      FieldName = 'DT_MATRICULA'
    end
    object DBX_CadAluAnualDT_CANCEL: TDateField
      FieldName = 'DT_CANCEL'
    end
    object DBX_CadAluAnualMOTIVOCANCEL: TStringField
      FieldName = 'MOTIVOCANCEL'
      Size = 100
    end
    object DBX_CadAluAnualDESCONTO: TStringField
      FieldName = 'DESCONTO'
    end
    object DBX_CadAluAnualMOTIVODESC: TStringField
      FieldName = 'MOTIVODESC'
      Size = 100
    end
    object DBX_CadAluAnualANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object DBX_CadAluAnualDT_PGMTO: TIntegerField
      FieldName = 'DT_PGMTO'
    end
    object DBX_CadAluAnualDESCONTOATE: TStringField
      FieldName = 'DESCONTOATE'
    end
    object DBX_CadAluAnualPORCDESCONTO: TBCDField
      FieldName = 'PORCDESCONTO'
      Precision = 9
      Size = 2
    end
    object DBX_CadAluAnualVLRDESCONTO: TBCDField
      FieldName = 'VLRDESCONTO'
      Precision = 9
      Size = 2
    end
    object DBX_CadAluAnualVLRNORMAL: TBCDField
      FieldName = 'VLRNORMAL'
      Precision = 9
      Size = 2
    end
  end
  object DSP_CadAluAnual: TDataSetProvider
    DataSet = DBX_CadAluAnual
    Left = 568
    Top = 248
  end
  object CDS_CadAluAnual: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_CadAluAnual'
    AfterInsert = CDS_CadAluAnualAfterInsert
    AfterEdit = CDS_CadAluAnualAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_CadAluAnualAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_CadAluAnualAfterDelete
    OnNewRecord = CDS_CadAluAnualNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 584
    Top = 264
    object CDS_CadAluAnualCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_CadAluAnualCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_CadAluAnualVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object CDS_CadAluAnualDT_MATRICULA: TDateField
      FieldName = 'DT_MATRICULA'
    end
    object CDS_CadAluAnualDT_CANCEL: TDateField
      FieldName = 'DT_CANCEL'
    end
    object CDS_CadAluAnualMOTIVOCANCEL: TStringField
      FieldName = 'MOTIVOCANCEL'
      Size = 100
    end
    object CDS_CadAluAnualDESCONTO: TStringField
      FieldName = 'DESCONTO'
    end
    object CDS_CadAluAnualMOTIVODESC: TStringField
      FieldName = 'MOTIVODESC'
      Size = 100
    end
    object CDS_CadAluAnualANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object CDS_CadAluAnualDT_PGMTO: TIntegerField
      FieldName = 'DT_PGMTO'
      EditFormat = '!99/99/0000;1;_'
    end
    object CDS_CadAluAnualDESCONTOATE: TStringField
      FieldName = 'DESCONTOATE'
    end
    object CDS_CadAluAnualPORCDESCONTO: TBCDField
      DefaultExpression = '0'
      FieldName = 'PORCDESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object CDS_CadAluAnualVLRDESCONTO: TBCDField
      DefaultExpression = '0'
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
    object CDS_CadAluAnualVLRNORMAL: TBCDField
      DefaultExpression = '0'
      FieldName = 'VLRNORMAL'
      DisplayFormat = '###,###,##0.00'
      Precision = 9
      Size = 2
    end
  end
  object DTS_CadAluAnual: TDataSource
    DataSet = CDS_CadAluAnual
    Left = 600
    Top = 280
  end
  object DBX_Recibo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM RECIBO')
    SQLConnection = SQL_Dados
    Left = 552
    Top = 120
    object DBX_ReciboCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_ReciboCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_ReciboVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_ReciboNUM: TIntegerField
      FieldName = 'NUM'
    end
    object DBX_ReciboNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object DBX_ReciboTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object DBX_ReciboACORDO: TStringField
      FieldName = 'ACORDO'
      Size = 30
    end
    object DBX_ReciboDATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_ReciboTIPO2: TStringField
      FieldName = 'TIPO2'
      Size = 120
    end
    object DBX_ReciboTIPO3: TStringField
      FieldName = 'TIPO3'
      Size = 120
    end
  end
  object DSP_Recibo: TDataSetProvider
    DataSet = DBX_Recibo
    UpdateMode = upWhereKeyOnly
    Left = 568
    Top = 136
  end
  object CDS_Recibo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Recibo'
    AfterInsert = CDS_ReciboAfterInsert
    AfterEdit = CDS_ReciboAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_ReciboAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_ReciboAfterDelete
    AfterScroll = CDS_ReciboAfterScroll
    OnNewRecord = CDS_ReciboNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 584
    Top = 152
    object CDS_ReciboCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_ReciboCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_ReciboVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_ReciboNUM: TIntegerField
      FieldName = 'NUM'
    end
    object CDS_ReciboNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object CDS_ReciboTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object CDS_ReciboACORDO: TStringField
      FieldName = 'ACORDO'
      Size = 30
    end
    object CDS_ReciboDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_ReciboTIPO2: TStringField
      FieldName = 'TIPO2'
      Size = 120
    end
    object CDS_ReciboTIPO3: TStringField
      FieldName = 'TIPO3'
      Size = 120
    end
    object CDS_ReciboNomeAlu: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAlu'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALU'
      Size = 50
      Lookup = True
    end
  end
  object DTS_Recibo: TDataSource
    DataSet = CDS_Recibo
    Left = 600
    Top = 168
  end
  object DBX_ContasRecNubia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CONTASARECEBERNUBIA')
    SQLConnection = SQL_Dados
    Left = 664
    Top = 232
    object DBX_ContasRecNubiaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_ContasRecNubiaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_ContasRecNubiaCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_ContasRecNubiaEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object DBX_ContasRecNubiaTIPO: TStringField
      FieldName = 'TIPO'
    end
    object DBX_ContasRecNubiaCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
    end
    object DBX_ContasRecNubiaDATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_ContasRecNubiaPAGO: TDateField
      FieldName = 'PAGO'
    end
    object DBX_ContasRecNubiaTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 30
    end
    object DBX_ContasRecNubiaRECIBO: TStringField
      FieldName = 'RECIBO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_ContasRecNubiaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object DBX_ContasRecNubiaANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object DBX_ContasRecNubiaETAPA: TStringField
      FieldName = 'ETAPA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DBX_ContasRecNubiaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 2
    end
    object DBX_ContasRecNubiaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      Precision = 18
      Size = 2
    end
  end
  object DSP_ContasRecNubia: TDataSetProvider
    DataSet = DBX_ContasRecNubia
    UpdateMode = upWhereKeyOnly
    Left = 680
    Top = 248
  end
  object CDS_ContasRecNubia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_ContasRecNubia'
    AfterInsert = CDS_ContasRecNubiaAfterInsert
    AfterEdit = CDS_ContasRecNubiaAfterEdit
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_ContasRecNubiaAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_ContasRecNubiaAfterDelete
    AfterScroll = CDS_ContasRecNubiaAfterScroll
    OnNewRecord = CDS_ContasRecNubiaNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 696
    Top = 264
    object CDS_ContasRecNubiaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_ContasRecNubiaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_ContasRecNubiaCODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_ContasRecNubiaEMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object CDS_ContasRecNubiaTIPO: TStringField
      FieldName = 'TIPO'
    end
    object CDS_ContasRecNubiaNomeAlu: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeAlu'
      LookupDataSet = CDS_CadAluno
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODALU'
      Size = 50
      Lookup = True
    end
    object StringField6: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeEvento'
      LookupDataSet = CDS_Evento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODEVENTO'
      Size = 50
      Lookup = True
    end
    object CDS_ContasRecNubiaCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
    end
    object CDS_ContasRecNubiaDATA: TDateField
      FieldName = 'DATA'
    end
    object CDS_ContasRecNubiaPAGO: TDateField
      FieldName = 'PAGO'
    end
    object CDS_ContasRecNubiaTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 30
    end
    object CDS_ContasRecNubiaRECIBO: TStringField
      DefaultExpression = #39'T'#39
      FieldName = 'RECIBO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_ContasRecNubiaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object CDS_ContasRecNubiaANO: TStringField
      FieldName = 'ANO'
      FixedChar = True
      Size = 4
    end
    object CDS_ContasRecNubiaETAPA: TStringField
      FieldName = 'ETAPA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object CDS_ContasRecNubiaENTRADA: TFMTBCDField
      FieldName = 'ENTRADA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_ContasRecNubiaSAIDA: TFMTBCDField
      FieldName = 'SAIDA'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object DTS_ContasRecNubia: TDataSource
    DataSet = CDS_ContasRecNubia
    Left = 712
    Top = 280
  end
  object DSP_Exec2: TDataSetProvider
    DataSet = DBX_Exec2
    Left = 664
    Top = 128
  end
  object CDS_Exec2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Exec2'
    Left = 680
    Top = 144
    object CDS_Exec2CODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object CDS_Exec2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object CDS_Exec2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object CDS_Exec2CODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
    end
  end
  object DTS_Exec2: TDataSource
    DataSet = CDS_Exec2
    Left = 696
    Top = 160
  end
  object DBX_Exec2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT distinct c.codalu,c.tipo,c.valor,c.emissao,c.codevento fr' +
        'om contasarecebernubia c inner join (select a.codigo from cadalu' +
        'no a inner join relturmaseriealu r on a.codigo = r.codaluno wher' +
        'e r.codserie = 35)as a on a.codigo = c.codalu order by codalu, d' +
        'ata')
    SQLConnection = SQL_Dados
    Left = 648
    Top = 112
    object DBX_Exec2CODALU: TIntegerField
      FieldName = 'CODALU'
    end
    object DBX_Exec2VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_Exec2EMISSAO: TDateField
      FieldName = 'EMISSAO'
    end
    object DBX_Exec2CODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
    end
  end
  object DBX_SANGRIA: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SANGRIA')
    SQLConnection = SQL_Dados
    Left = 27
    Top = 546
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_SANGRIAVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_SANGRIACFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object DBX_SANGRIADATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_SANGRIAHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object DBX_SANGRIAORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
    object DBX_SANGRIAMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
  end
  object DSP_SANGRIA: TDataSetProvider
    DataSet = DBX_SANGRIA
    UpdateMode = upWhereKeyOnly
    Left = 43
    Top = 562
  end
  object CDS_SANGRIA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_SANGRIA'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_SANGRIAAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_SANGRIAAfterDelete
    OnNewRecord = CDS_SANGRIANewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 59
    Top = 578
    object IntegerField4: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_SANGRIAVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_SANGRIACFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object CDS_SANGRIADATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDS_SANGRIAHORA: TStringField
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
      Size = 5
    end
    object CDS_SANGRIAORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
    object CDS_SANGRIAMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
  end
  object DTS_SANGRIA: TDataSource
    DataSet = CDS_SANGRIA
    Left = 75
    Top = 594
  end
  object DBX_INGESTAO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM INGESTAO'
      '')
    SQLConnection = SQL_Dados
    Left = 137
    Top = 546
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DBX_INGESTAOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object DBX_INGESTAOCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object DBX_INGESTAODATA: TDateField
      FieldName = 'DATA'
    end
    object DBX_INGESTAOHORA: TStringField
      FieldName = 'HORA'
      Size = 5
    end
    object DBX_INGESTAOORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
  end
  object DSP_INGESTAO: TDataSetProvider
    DataSet = DBX_INGESTAO
    UpdateMode = upWhereKeyOnly
    Left = 153
    Top = 562
  end
  object CDS_INGESTAO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_INGESTAO'
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_INGESTAOAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_INGESTAOAfterDelete
    OnNewRecord = CDS_INGESTAONewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 169
    Top = 578
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CDS_INGESTAOVALOR: TFMTBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object CDS_INGESTAOCFUN: TIntegerField
      FieldName = 'CFUN'
    end
    object CDS_INGESTAODATA: TDateField
      FieldName = 'DATA'
      EditMask = '!99/99/0000;1;_'
    end
    object CDS_INGESTAOHORA: TStringField
      FieldName = 'HORA'
      EditMask = '!90:00;1;_'
      Size = 5
    end
    object CDS_INGESTAOORIGEM: TSmallintField
      FieldName = 'ORIGEM'
    end
  end
  object DTS_INGESTAO: TDataSource
    DataSet = CDS_INGESTAO
    Left = 185
    Top = 594
  end
  object dbx_listamatricula: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM LISTAMATRICULA'
      ''
      '')
    SQLConnection = SQL_Dados
    Left = 257
    Top = 546
  end
  object dsp_listamatricula: TDataSetProvider
    DataSet = dbx_listamatricula
    UpdateMode = upWhereKeyOnly
    Left = 273
    Top = 562
  end
  object cds_listamatricula: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_listamatricula'
    Left = 289
    Top = 578
  end
  object dts_listamatricula: TDataSource
    DataSet = cds_listamatricula
    Left = 305
    Top = 594
  end
  object dbx_rel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ' +
        'ON R.codaluno = A.codigo')
    SQLConnection = SQL_Dados
    Left = 368
    Top = 552
  end
  object dsp_rel: TDataSetProvider
    DataSet = dbx_rel
    UpdateMode = upWhereKeyOnly
    Left = 384
    Top = 560
  end
  object cds_rel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_rel'
    AfterInsert = CDS_RelTurmaSerieAluAfterInsert
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_RelTurmaSerieAluAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_RelTurmaSerieAluAfterDelete
    AfterScroll = CDS_RelTurmaSerieAluAfterScroll
    OnNewRecord = CDS_RelTurmaSerieAluNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 400
    Top = 576
  end
  object dts_rel: TDataSource
    DataSet = cds_rel
    Left = 416
    Top = 592
  end
  object dbx_reldet: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ' +
        'ON R.codaluno = A.codigo')
    SQLConnection = SQL_Dados
    Left = 456
    Top = 544
  end
  object dsp_reldet: TDataSetProvider
    DataSet = dbx_reldet
    UpdateMode = upWhereKeyOnly
    Left = 472
    Top = 552
  end
  object cds_reldet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_reldet'
    AfterInsert = CDS_RelTurmaSerieAluAfterInsert
    BeforePost = CDS_ProjetoBeforePost
    AfterPost = CDS_RelTurmaSerieAluAfterPost
    BeforeDelete = CDS_ProjetoBeforeDelete
    AfterDelete = CDS_RelTurmaSerieAluAfterDelete
    AfterScroll = CDS_RelTurmaSerieAluAfterScroll
    OnNewRecord = CDS_RelTurmaSerieAluNewRecord
    AfterApplyUpdates = CDS_ProjetoAfterApplyUpdates
    Left = 488
    Top = 568
  end
  object dts_reldet: TDataSource
    DataSet = cds_reldet
    Left = 504
    Top = 584
  end
end
