unit UDados;
                                                              
interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr, Dialogs,DBGrids;

type
  TFrmDados = class(TDataModule)
    SQL_Dados: TSQLConnection;
    DBX_Projeto: TSQLQuery;
    DSP_Projeto: TDataSetProvider;
    CDS_Projeto: TClientDataSet;
    DTS_Projeto: TDataSource;
    DBX_Curso: TSQLQuery;
    DSP_Curso: TDataSetProvider;
    CDS_Curso: TClientDataSet;
    DTS_Curso: TDataSource;
    DBX_CadAluno: TSQLQuery;
    DSP_CadAluno: TDataSetProvider;
    CDS_CadAluno: TClientDataSet;
    DTS_CadAluno: TDataSource;
    DBX_DP: TSQLQuery;
    DSP_DP: TDataSetProvider;
    CDS_DP: TClientDataSet;
    DTS_DP: TDataSource;
    DBX_Trabalhos: TSQLQuery;
    DSP_Trabalhos: TDataSetProvider;
    CDS_Trabalhos: TClientDataSet;
    DTS_Trabalhos: TDataSource;
    DBX_Turma: TSQLQuery;
    DSP_Turma: TDataSetProvider;
    CDS_Turma: TClientDataSet;
    DTS_Turma: TDataSource;
    DBX_Serie: TSQLQuery;
    DSP_Serie: TDataSetProvider;
    CDS_Serie: TClientDataSet;
    DTS_Serie: TDataSource;
    DBX_RelTurmaSerieAlu: TSQLQuery;
    DSP_RelTurmaSerieAlu: TDataSetProvider;
    CDS_RelTurmaSerieAlu: TClientDataSet;
    DTS_RelTurmaSerieAlu: TDataSource;
    DBX_Avaliacoes: TSQLQuery;
    DSP_Avaliacoes: TDataSetProvider;
    CDS_Avaliacoes: TClientDataSet;
    DTS_Avaliacoes: TDataSource;
    DBX_Assiduidade: TSQLQuery;
    DSP_Assiduidade: TDataSetProvider;
    CDS_Assiduidade: TClientDataSet;
    DTS_Assiduidade: TDataSource;
    DBX_CadMateria: TSQLQuery;
    DSP_CadMateria: TDataSetProvider;
    CDS_CadMateria: TClientDataSet;
    DTS_CadMateria: TDataSource;
    DBX_CadAlunoCODIGO: TIntegerField;
    DBX_CadAlunoNOME_PAI: TStringField;
    DBX_CadAlunoNOME_MAE: TStringField;
    DBX_CadAlunoNOME: TStringField;
    DBX_CadAlunoENDERECO: TStringField;
    DBX_CadAlunoCEP: TStringField;
    DBX_CadAlunoBAIRRO: TStringField;
    DBX_CadAlunoTELEFONE: TStringField;
    DBX_CadAlunoEMAIL: TStringField;
    DBX_CadAlunoDATA_NASC: TDateField;
    DBX_CadAlunoLOC_NASC: TStringField;
    DBX_CadAlunoOBSERVACAO: TMemoField;
    DBX_CadAlunoOBS_MAE: TStringField;
    DBX_CadAlunoOBS_PAI: TStringField;
    DBX_CadAlunoDOC_PENDENTES: TStringField;
    DBX_CadAlunoDATA_MATRICULA: TDateField;
    DBX_CadAlunoDATA_CANCEL: TDateField;
    DBX_CadAlunoVALOR: TFloatField;
    DBX_CadAlunoMOTIVO_DESC: TStringField;
    DBX_CadAlunoMOTIVO_CANCEL: TStringField;
    DBX_CadAlunoDATA_PGMTO: TStringField;
    DBX_CadAlunoRESP_FINANCEIRO: TStringField;
    DBX_CadAlunoRECIBO: TStringField;
    DBX_CadAlunoNOTA_FISCAL: TStringField;
    DBX_CadAlunoDP: TStringField;
    DBX_CadAlunoPROJETO: TStringField;
    CDS_CadAlunoCODIGO: TIntegerField;
    CDS_CadAlunoNOME_PAI: TStringField;
    CDS_CadAlunoNOME_MAE: TStringField;
    CDS_CadAlunoNOME: TStringField;
    CDS_CadAlunoENDERECO: TStringField;
    CDS_CadAlunoCEP: TStringField;
    CDS_CadAlunoBAIRRO: TStringField;
    CDS_CadAlunoTELEFONE: TStringField;
    CDS_CadAlunoEMAIL: TStringField;
    CDS_CadAlunoDATA_NASC: TDateField;
    CDS_CadAlunoLOC_NASC: TStringField;
    CDS_CadAlunoOBSERVACAO: TMemoField;
    CDS_CadAlunoOBS_MAE: TStringField;
    CDS_CadAlunoOBS_PAI: TStringField;
    CDS_CadAlunoDOC_PENDENTES: TStringField;
    CDS_CadAlunoDATA_MATRICULA: TDateField;
    CDS_CadAlunoDATA_CANCEL: TDateField;
    CDS_CadAlunoVALOR: TFloatField;
    CDS_CadAlunoMOTIVO_DESC: TStringField;
    CDS_CadAlunoMOTIVO_CANCEL: TStringField;
    CDS_CadAlunoDATA_PGMTO: TStringField;
    CDS_CadAlunoRESP_FINANCEIRO: TStringField;
    CDS_CadAlunoRECIBO: TStringField;
    CDS_CadAlunoNOTA_FISCAL: TStringField;
    CDS_CadAlunoDP: TStringField;
    CDS_CadAlunoPROJETO: TStringField;
    DBX_SerieCODIGO: TIntegerField;
    DBX_SerieSERIE: TStringField;
    CDS_SerieCODIGO: TIntegerField;
    CDS_SerieSERIE: TStringField;
    DBX_SerieGRAU: TStringField;
    DBX_SerieTURMA: TStringField;
    DBX_SeriePERIODO: TStringField;
    CDS_SerieGRAU: TStringField;
    CDS_SerieTURMA: TStringField;
    CDS_SeriePERIODO: TStringField;
    DBX_RelTurmaSerieAluCODIGO: TIntegerField;
    DBX_RelTurmaSerieAluCODSERIE: TIntegerField;
    DBX_RelTurmaSerieAluCODALUNO: TIntegerField;
    DBX_RelTurmaSerieAluNUMERO: TIntegerField;
    CDS_RelTurmaSerieAluCODIGO: TIntegerField;
    CDS_RelTurmaSerieAluCODSERIE: TIntegerField;
    CDS_RelTurmaSerieAluCODALUNO: TIntegerField;
    CDS_RelTurmaSerieAluNUMERO: TIntegerField;
    CDS_RelTurmaSerieAluSerie: TStringField;
    CDS_RelTurmaSerieAluTurma: TStringField;
    CDS_RelTurmaSerieAluPeriodo: TStringField;
    CDS_RelTurmaSerieAluGrau: TStringField;
    CDS_RelTurmaSerieAluNomeAluno: TStringField;
    DBX_Indices: TSQLQuery;
    DSP_Indices: TDataSetProvider;
    CDS_Indices: TClientDataSet;
    DTS_Indices: TDataSource;
    DBX_IndicesCODIGO: TIntegerField;
    DBX_IndicesANO: TIntegerField;
    CDS_IndicesCODIGO: TIntegerField;
    CDS_IndicesANO: TIntegerField;
    DBX_RelTurmaSerieAluANOLETIVO: TSmallintField;
    CDS_RelTurmaSerieAluANOLETIVO: TSmallintField;
    DBX_SerieMat: TSQLQuery;
    DSP_SerieMat: TDataSetProvider;
    CDS_SerieMat: TClientDataSet;
    DTS_SerieMat: TDataSource;
    DBX_SerieMatCODIGO: TIntegerField;
    DBX_SerieMatCODSERIE: TIntegerField;
    DBX_SerieMatCODMAT: TIntegerField;
    CDS_SerieMatCODIGO: TIntegerField;
    CDS_SerieMatCODSERIE: TIntegerField;
    CDS_SerieMatCODMAT: TIntegerField;
    CDS_SerieMatNomeMat: TStringField;
    DBX_CadMateriaCODIGO: TIntegerField;
    DBX_CadMateriaNOME: TStringField;
    DBX_CadMateriaDESCRICAO: TStringField;
    CDS_CadMateriaCODIGO: TIntegerField;
    CDS_CadMateriaNOME: TStringField;
    CDS_CadMateriaDESCRICAO: TStringField;
    DBX_Teste: TSQLQuery;
    DBX_CadAlunoRGM: TStringField;
    CDS_CadAlunoRGM: TStringField;
    DBX_CadAlunoRA: TStringField;
    CDS_CadAlunoRA: TStringField;
    DBX_ProjetoCODIGO: TIntegerField;
    DBX_ProjetoDESCRICAO: TStringField;
    DBX_ProjetoINICIO: TTimeField;
    DBX_ProjetoTERMINO: TTimeField;
    DBX_ProjetoVALOR: TFMTBCDField;
    CDS_ProjetoCODIGO: TIntegerField;
    CDS_ProjetoDESCRICAO: TStringField;
    CDS_ProjetoINICIO: TTimeField;
    CDS_ProjetoTERMINO: TTimeField;
    CDS_ProjetoVALOR: TFMTBCDField;
    DBX_DPCODIGO: TIntegerField;
    DBX_DPCODALUNO: TIntegerField;
    DBX_DPVALOR: TFMTBCDField;
    DBX_DPCODMAT: TIntegerField;
    CDS_DPCODIGO: TIntegerField;
    CDS_DPCODALUNO: TIntegerField;
    CDS_DPVALOR: TFMTBCDField;
    CDS_DPCODMAT: TIntegerField;
    DBX_SerieMatQNTD_AULAS: TIntegerField;
    CDS_SerieMatQNTD_AULAS: TIntegerField;
    DBX_Mensalidade: TSQLQuery;
    DSP_Mensalidade: TDataSetProvider;
    CDS_Mensalidade: TClientDataSet;
    DTS_Mensalidade: TDataSource;
    DBX_MensalidadeCODIGO: TIntegerField;
    DBX_MensalidadeCODALUNO: TIntegerField;
    DBX_MensalidadeANOLETIVO: TSmallintField;
    DBX_MensalidadeJAN: TStringField;
    DBX_MensalidadeFEV: TStringField;
    DBX_MensalidadeMAR: TStringField;
    DBX_MensalidadeABR: TStringField;
    DBX_MensalidadeMAI: TStringField;
    DBX_MensalidadeJUN: TStringField;
    DBX_MensalidadeJUL: TStringField;
    DBX_MensalidadeAGO: TStringField;
    DBX_MensalidadeSETE: TStringField;
    DBX_MensalidadeOUT: TStringField;
    DBX_MensalidadeNOV: TStringField;
    DBX_MensalidadeDEZ: TStringField;
    CDS_MensalidadeCODIGO: TIntegerField;
    CDS_MensalidadeCODALUNO: TIntegerField;
    CDS_MensalidadeANOLETIVO: TSmallintField;
    CDS_MensalidadeJAN: TStringField;
    CDS_MensalidadeFEV: TStringField;
    CDS_MensalidadeMAR: TStringField;
    CDS_MensalidadeABR: TStringField;
    CDS_MensalidadeMAI: TStringField;
    CDS_MensalidadeJUN: TStringField;
    CDS_MensalidadeJUL: TStringField;
    CDS_MensalidadeAGO: TStringField;
    CDS_MensalidadeSETE: TStringField;
    CDS_MensalidadeOUT: TStringField;
    CDS_MensalidadeNOV: TStringField;
    CDS_MensalidadeDEZ: TStringField;
    DBX_CadAlunoDESCONTO: TStringField;
    CDS_CadAlunoDESCONTO: TStringField;
    DBX_MensalidadeCODDP: TIntegerField;
    DBX_MensalidadeCODPROJETO: TIntegerField;
    CDS_MensalidadeCODDP: TIntegerField;
    CDS_MensalidadeCODPROJETO: TIntegerField;
    DBX_AvaliacoesCODIGO: TIntegerField;
    DBX_AvaliacoesCODRELALUSER: TIntegerField;
    DBX_AvaliacoesCODMAT: TIntegerField;
    DBX_AvaliacoesDESCRICAO: TStringField;
    DBX_AvaliacoesNOTA: TFloatField;
    DBX_AvaliacoesBIM: TStringField;
    DBX_AvaliacoesOBS: TStringField;
    CDS_AvaliacoesCODIGO: TIntegerField;
    CDS_AvaliacoesCODRELALUSER: TIntegerField;
    CDS_AvaliacoesCODMAT: TIntegerField;
    CDS_AvaliacoesDESCRICAO: TStringField;
    CDS_AvaliacoesNOTA: TFloatField;
    CDS_AvaliacoesBIM: TStringField;
    CDS_AvaliacoesOBS: TStringField;
    DBX_TrabalhosCODIGO: TIntegerField;
    DBX_TrabalhosCODRELALUSER: TIntegerField;
    DBX_TrabalhosCODMAT: TIntegerField;
    DBX_TrabalhosDESCRICAO: TStringField;
    DBX_TrabalhosNOTA: TFloatField;
    DBX_TrabalhosBIM: TStringField;
    DBX_TrabalhosOBS: TStringField;
    CDS_TrabalhosCODIGO: TIntegerField;
    CDS_TrabalhosCODRELALUSER: TIntegerField;
    CDS_TrabalhosCODMAT: TIntegerField;
    CDS_TrabalhosDESCRICAO: TStringField;
    CDS_TrabalhosNOTA: TFloatField;
    CDS_TrabalhosBIM: TStringField;
    CDS_TrabalhosOBS: TStringField;
    DBX_AssiduidadeCODIGO: TIntegerField;
    DBX_AssiduidadeCODRELALUSER: TIntegerField;
    DBX_AssiduidadeCODMAT: TIntegerField;
    DBX_AssiduidadeDESCRICAO: TStringField;
    DBX_AssiduidadeFALTAS: TIntegerField;
    DBX_AssiduidadeBIM: TStringField;
    DBX_AssiduidadeOBS: TStringField;
    CDS_AssiduidadeCODIGO: TIntegerField;
    CDS_AssiduidadeCODRELALUSER: TIntegerField;
    CDS_AssiduidadeCODMAT: TIntegerField;
    CDS_AssiduidadeDESCRICAO: TStringField;
    CDS_AssiduidadeFALTAS: TIntegerField;
    CDS_AssiduidadeBIM: TStringField;
    CDS_AssiduidadeOBS: TStringField;
    DBX_IndicesDT_BOLETIM: TDateField;
    CDS_IndicesDT_BOLETIM: TDateField;
    DBX_SerieMaster: TSQLQuery;
    DSP_SerieMaster: TDataSetProvider;
    CDS_SerieMaster: TClientDataSet;
    DTS_SerieMaster: TDataSource;
    DBX_SerieMatCODMASTER: TIntegerField;
    CDS_SerieMatCODMASTER: TIntegerField;
    DBX_SerieMasterCODIGO: TIntegerField;
    DBX_SerieMasterDESCRICAO: TStringField;
    DBX_SerieMasterNOME: TStringField;
    CDS_SerieMasterCODIGO: TIntegerField;
    CDS_SerieMasterDESCRICAO: TStringField;
    CDS_SerieMasterNOME: TStringField;
    CDS_SerieMatNomeMaster: TStringField;
    Sqp_Dados: TSQLStoredProc;
    DBX_Exec: TSQLQuery;
    DBX_Usuario: TSQLQuery;
    DSP_Usuario: TDataSetProvider;
    CDS_Usuario: TClientDataSet;
    DTS_Usuario: TDataSource;
    DBX_InvSysP: TSQLQuery;
    DSP_InvSysP: TDataSetProvider;
    CDS_InvSysP: TClientDataSet;
    DTS_InvSysP: TDataSource;
    DBX_InvSys: TSQLQuery;
    DSP_InvSys: TDataSetProvider;
    CDS_InvSys: TClientDataSet;
    DTS_InvSys: TDataSource;
    DBX_InvSysF: TSQLQuery;
    DSP_InvSysF: TDataSetProvider;
    CDS_InvSysF: TClientDataSet;
    DTS_InvSysF: TDataSource;
    DBX_InvSysPCODIGO: TIntegerField;
    DBX_InvSysPDESCRICAO: TStringField;
    CDS_InvSysPCODIGO: TIntegerField;
    CDS_InvSysPDESCRICAO: TStringField;
    DBX_InvSysCODIGO: TIntegerField;
    DBX_InvSysDESCRICAO: TStringField;
    DBX_InvSysCODSYSP: TIntegerField;
    CDS_InvSysCODIGO: TIntegerField;
    CDS_InvSysDESCRICAO: TStringField;
    CDS_InvSysCODSYSP: TIntegerField;
    DBX_InvSysFCODIGO: TIntegerField;
    DBX_InvSysFCODSYS: TIntegerField;
    DBX_InvSysFCODUSU: TIntegerField;
    DBX_InvSysFNEGA: TStringField;
    DBX_InvSysFINS: TStringField;
    DBX_InvSysFUPDT: TStringField;
    DBX_InvSysFDEL: TStringField;
    DBX_InvSysFLOOKFOR: TStringField;
    DBX_InvSysFRESTRITO: TStringField;
    DBX_InvSysFCONFIDENCIAL: TStringField;
    DBX_InvSysFNCOMP: TStringField;
    CDS_InvSysFCODIGO: TIntegerField;
    CDS_InvSysFCODSYS: TIntegerField;
    CDS_InvSysFCODUSU: TIntegerField;
    CDS_InvSysFNEGA: TStringField;
    CDS_InvSysFINS: TStringField;
    CDS_InvSysFUPDT: TStringField;
    CDS_InvSysFDEL: TStringField;
    CDS_InvSysFLOOKFOR: TStringField;
    CDS_InvSysFRESTRITO: TStringField;
    CDS_InvSysFCONFIDENCIAL: TStringField;
    CDS_InvSysFNCOMP: TStringField;
    DBX_UsuarioCODIGO: TIntegerField;
    DBX_UsuarioNOME: TStringField;
    DBX_UsuarioSENHA: TStringField;
    DBX_UsuarioCFUN: TIntegerField;
    CDS_UsuarioCODIGO: TIntegerField;
    CDS_UsuarioNOME: TStringField;
    CDS_UsuarioSENHA: TStringField;
    CDS_UsuarioCFUN: TIntegerField;
    CDS_InvSysFdesc: TStringField;
    DBX_CadAlunoPER_ESPECIAL: TStringField;
    DBX_CadAlunoPERIODO: TIntegerField;
    CDS_CadAlunoPER_ESPECIAL: TStringField;
    CDS_CadAlunoPERIODO: TIntegerField;
    CDS_DPNomeMateria: TStringField;
    DBX_DPCODTURMA: TStringField;
    CDS_DPCODTURMA: TStringField;
    DBX_AluProjeto: TSQLQuery;
    IntegerField1: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    DSP_AluProjeto: TDataSetProvider;
    CDS_AluProjeto: TClientDataSet;
    IntegerField3: TIntegerField;
    FMTBCDField2: TFMTBCDField;
    DTS_AluProjeto: TDataSource;
    DBX_AluProjetoCODALU: TIntegerField;
    DBX_AluProjetoCODPRO: TIntegerField;
    CDS_AluProjetoCODALU: TIntegerField;
    CDS_AluProjetoCODPRO: TIntegerField;
    CDS_AluProjetoNomeAluno: TStringField;
    CDS_AluProjetoNomeProjeto: TStringField;
    CDS_CadAlunoValorCDesc: TFloatField;
    DBX_AluPedInf: TSQLQuery;
    DSP_AluPedInf: TDataSetProvider;
    CDS_AluPedInf: TClientDataSet;
    DTS_AluPedInf: TDataSource;
    DBX_AluPedInfCODIGO: TIntegerField;
    DBX_AluPedInfNOMEALU: TStringField;
    DBX_AluPedInfDT_NASC: TDateField;
    DBX_AluPedInfTELEFONE: TStringField;
    DBX_AluPedInfENDERECO: TStringField;
    DBX_AluPedInfBAIRRO: TStringField;
    DBX_AluPedInfCEP: TStringField;
    DBX_AluPedInfESC_ATUAL: TStringField;
    DBX_AluPedInfEMAIL: TStringField;
    DBX_AluPedInfPER_INTERESSE: TStringField;
    DBX_AluPedInfSERIE: TStringField;
    DBX_AluPedInfFOLHETO: TStringField;
    DBX_AluPedInfINTERNET: TStringField;
    DBX_AluPedInfFACHADA: TStringField;
    DBX_AluPedInfFAIXA_RUA: TStringField;
    DBX_AluPedInfREVISTA: TStringField;
    DBX_AluPedInfNOME_REV: TStringField;
    DBX_AluPedInfJORNAL: TStringField;
    DBX_AluPedInfNOME_JORNAL: TStringField;
    DBX_AluPedInfPLACA: TStringField;
    DBX_AluPedInfINDICADO: TStringField;
    DBX_AluPedInfNOME_INDICOU: TStringField;
    DBX_AluPedInfINSCRICAO: TStringField;
    DBX_AluPedInfDATA: TDateField;
    DBX_AluPedInfNUMERO: TStringField;
    DBX_AluPedInfATENDENTE: TStringField;
    DBX_AluPedInfTEL: TStringField;
    DBX_AluPedInfVISITA: TStringField;
    DBX_AluPedInfDT_1CONT: TDateField;
    DBX_AluPedInfATENDENTE_1CONT: TStringField;
    DBX_AluPedInfOBS_1CONT: TMemoField;
    DBX_AluPedInfDT_2CONT: TDateField;
    DBX_AluPedInfATENDENTE_2CONT: TStringField;
    DBX_AluPedInfOBS_2CONT: TMemoField;
    CDS_AluPedInfCODIGO: TIntegerField;
    CDS_AluPedInfNOMEALU: TStringField;
    CDS_AluPedInfDT_NASC: TDateField;
    CDS_AluPedInfTELEFONE: TStringField;
    CDS_AluPedInfENDERECO: TStringField;
    CDS_AluPedInfBAIRRO: TStringField;
    CDS_AluPedInfCEP: TStringField;
    CDS_AluPedInfESC_ATUAL: TStringField;
    CDS_AluPedInfEMAIL: TStringField;
    CDS_AluPedInfPER_INTERESSE: TStringField;
    CDS_AluPedInfSERIE: TStringField;
    CDS_AluPedInfFOLHETO: TStringField;
    CDS_AluPedInfINTERNET: TStringField;
    CDS_AluPedInfFACHADA: TStringField;
    CDS_AluPedInfFAIXA_RUA: TStringField;
    CDS_AluPedInfREVISTA: TStringField;
    CDS_AluPedInfNOME_REV: TStringField;
    CDS_AluPedInfJORNAL: TStringField;
    CDS_AluPedInfNOME_JORNAL: TStringField;
    CDS_AluPedInfPLACA: TStringField;
    CDS_AluPedInfINDICADO: TStringField;
    CDS_AluPedInfNOME_INDICOU: TStringField;
    CDS_AluPedInfINSCRICAO: TStringField;
    CDS_AluPedInfDATA: TDateField;
    CDS_AluPedInfNUMERO: TStringField;
    CDS_AluPedInfATENDENTE: TStringField;
    CDS_AluPedInfTEL: TStringField;
    CDS_AluPedInfVISITA: TStringField;
    CDS_AluPedInfDT_1CONT: TDateField;
    CDS_AluPedInfATENDENTE_1CONT: TStringField;
    CDS_AluPedInfOBS_1CONT: TMemoField;
    CDS_AluPedInfDT_2CONT: TDateField;
    CDS_AluPedInfATENDENTE_2CONT: TStringField;
    CDS_AluPedInfOBS_2CONT: TMemoField;
    DBX_AluPedInfNOMEMAE: TStringField;
    DBX_AluPedInfNOMEPAI: TStringField;
    CDS_AluPedInfNOMEMAE: TStringField;
    CDS_AluPedInfNOMEPAI: TStringField;
    DBX_FichaIndAlu: TSQLQuery;
    DSP_FichaIndAlu: TDataSetProvider;
    CDS_FichaIndAlu: TClientDataSet;
    DTS_FichaIndAlu: TDataSource;
    DBX_FichaIndAluCODIGO: TIntegerField;
    DBX_FichaIndAluCODALUNO: TIntegerField;
    DBX_FichaIndAluCODMAT: TIntegerField;
    DBX_FichaIndAluPROFESSOR: TStringField;
    DBX_FichaIndAluN_ENT_COM: TStringField;
    DBX_FichaIndAluN_FAZ_LICAO_CASA: TStringField;
    DBX_FichaIndAluN_ANOTA_DEV: TStringField;
    DBX_FichaIndAluN_FAZ_LICAO_CLASSE: TStringField;
    DBX_FichaIndAluCONVERSA_MT: TStringField;
    DBX_FichaIndAluDESATENCIOSO: TStringField;
    DBX_FichaIndAluAPATICO: TStringField;
    DBX_FichaIndAluN_ENTREGA_TRAB: TStringField;
    DBX_FichaIndAluFALTA_EXCESSO: TStringField;
    DBX_FichaIndAluATRASA_FREQUENCIA: TStringField;
    DBX_FichaIndAluBRINCA_INOPORTUNA: TStringField;
    DBX_FichaIndAluLENT_ESCREVER: TStringField;
    DBX_FichaIndAluASSIM_CONTEUDO: TStringField;
    DBX_FichaIndAluCONCENTRACAO: TStringField;
    DBX_FichaIndAluDISLEXIA: TStringField;
    DBX_FichaIndAluEQUIL_EMOCIONAL: TStringField;
    DBX_FichaIndAluINTERPRE_TEXTO: TStringField;
    DBX_FichaIndAluCALIGRAFIA: TStringField;
    DBX_FichaIndAluRAC_LOGICO: TStringField;
    DBX_FichaIndAluCOORD_MOTORA: TStringField;
    DBX_FichaIndAluREL_PROF_COL: TStringField;
    DBX_FichaIndAluATENCAO: TStringField;
    DBX_FichaIndAluFAZ_DEV_CASA: TStringField;
    DBX_FichaIndAluEST_ATENTO_ATIV_PROP: TStringField;
    DBX_FichaIndAluN_FALTAR_AULAS: TStringField;
    DBX_FichaIndAluMAIOR_CONS_PESSOAS: TStringField;
    DBX_FichaIndAluREC_CONT: TStringField;
    DBX_FichaIndAluREC_PAR_TRAB_ORIENTACAO: TStringField;
    DBX_FichaIndAluREC_PAR_AULAS_EXT: TStringField;
    DBX_FichaIndAluREFORCO_LICOES_CASA: TStringField;
    DBX_FichaIndAluCOM_PAIS: TStringField;
    DBX_FichaIndAluACOM_DIA_EST: TStringField;
    DBX_FichaIndAluFAZ_LICOES_COR_TEMPO: TStringField;
    DBX_FichaIndAluVER_COM_ENVIAR_ASS: TStringField;
    DBX_FichaIndAluN_DXA_FALTAR: TStringField;
    DBX_FichaIndAluENTRAR_CONTATO_SEM: TStringField;
    CDS_FichaIndAluCODIGO: TIntegerField;
    CDS_FichaIndAluCODALUNO: TIntegerField;
    CDS_FichaIndAluCODMAT: TIntegerField;
    CDS_FichaIndAluPROFESSOR: TStringField;
    CDS_FichaIndAluN_ENT_COM: TStringField;
    CDS_FichaIndAluN_FAZ_LICAO_CASA: TStringField;
    CDS_FichaIndAluN_ANOTA_DEV: TStringField;
    CDS_FichaIndAluN_FAZ_LICAO_CLASSE: TStringField;
    CDS_FichaIndAluCONVERSA_MT: TStringField;
    CDS_FichaIndAluDESATENCIOSO: TStringField;
    CDS_FichaIndAluAPATICO: TStringField;
    CDS_FichaIndAluN_ENTREGA_TRAB: TStringField;
    CDS_FichaIndAluFALTA_EXCESSO: TStringField;
    CDS_FichaIndAluATRASA_FREQUENCIA: TStringField;
    CDS_FichaIndAluBRINCA_INOPORTUNA: TStringField;
    CDS_FichaIndAluLENT_ESCREVER: TStringField;
    CDS_FichaIndAluASSIM_CONTEUDO: TStringField;
    CDS_FichaIndAluCONCENTRACAO: TStringField;
    CDS_FichaIndAluDISLEXIA: TStringField;
    CDS_FichaIndAluEQUIL_EMOCIONAL: TStringField;
    CDS_FichaIndAluINTERPRE_TEXTO: TStringField;
    CDS_FichaIndAluCALIGRAFIA: TStringField;
    CDS_FichaIndAluRAC_LOGICO: TStringField;
    CDS_FichaIndAluCOORD_MOTORA: TStringField;
    CDS_FichaIndAluREL_PROF_COL: TStringField;
    CDS_FichaIndAluATENCAO: TStringField;
    CDS_FichaIndAluFAZ_DEV_CASA: TStringField;
    CDS_FichaIndAluEST_ATENTO_ATIV_PROP: TStringField;
    CDS_FichaIndAluN_FALTAR_AULAS: TStringField;
    CDS_FichaIndAluMAIOR_CONS_PESSOAS: TStringField;
    CDS_FichaIndAluREC_CONT: TStringField;
    CDS_FichaIndAluREC_PAR_TRAB_ORIENTACAO: TStringField;
    CDS_FichaIndAluREC_PAR_AULAS_EXT: TStringField;
    CDS_FichaIndAluREFORCO_LICOES_CASA: TStringField;
    CDS_FichaIndAluCOM_PAIS: TStringField;
    CDS_FichaIndAluACOM_DIA_EST: TStringField;
    CDS_FichaIndAluFAZ_LICOES_COR_TEMPO: TStringField;
    CDS_FichaIndAluVER_COM_ENVIAR_ASS: TStringField;
    CDS_FichaIndAluN_DXA_FALTAR: TStringField;
    CDS_FichaIndAluENTRAR_CONTATO_SEM: TStringField;
    CDS_FichaIndAluNomeAluno: TStringField;
    CDS_FichaIndAluNomeDisciplina: TStringField;
    DBX_FichaIndAluBIM: TStringField;
    DBX_FichaIndAluNOTA: TFMTBCDField;
    CDS_FichaIndAluBIM: TStringField;
    CDS_FichaIndAluNOTA: TFMTBCDField;
    DBX_FichaIndAluSERIE: TStringField;
    CDS_FichaIndAluSERIE: TStringField;
    DBX_CursoCODIGO: TIntegerField;
    DBX_CursoNOME: TStringField;
    DBX_CursoDURA_AULAS: TStringField;
    CDS_CursoCODIGO: TIntegerField;
    CDS_CursoNOME: TStringField;
    CDS_CursoDURA_AULAS: TStringField;
    DBX_GradCur: TSQLQuery;
    DSP_GradCur: TDataSetProvider;
    CDS_GradCur: TClientDataSet;
    DTS_GradCur: TDataSource;
    DBX_GradCurCODIGO: TIntegerField;
    DBX_GradCurCODCURSO: TIntegerField;
    DBX_GradCurANO: TStringField;
    DBX_GradCurAREA_CONHEC: TStringField;
    DBX_GradCurQNTD_AULAS: TIntegerField;
    DBX_GradCurSERIE: TStringField;
    CDS_GradCurCODIGO: TIntegerField;
    CDS_GradCurCODCURSO: TIntegerField;
    CDS_GradCurANO: TStringField;
    CDS_GradCurAREA_CONHEC: TStringField;
    CDS_GradCurQNTD_AULAS: TIntegerField;
    CDS_GradCurSERIE: TStringField;
    CDS_GradCurNomeCurso: TStringField;
    DBX_GradCurCODMAT: TIntegerField;
    CDS_GradCurCODMAT: TIntegerField;
    CDS_GradCurNomeMat: TStringField;
    DBX_Calendario: TSQLQuery;
    DSP_Calendario: TDataSetProvider;
    CDS_Calendario: TClientDataSet;
    DTS_Calendario: TDataSource;
    DBX_CalendarioCODIGO: TIntegerField;
    DBX_CalendarioCODCURSO: TIntegerField;
    DBX_CalendarioANO: TStringField;
    DBX_CalendarioMES: TStringField;
    DBX_CalendarioN1: TStringField;
    DBX_CalendarioN2: TStringField;
    DBX_CalendarioN3: TStringField;
    DBX_CalendarioN4: TStringField;
    DBX_CalendarioN5: TStringField;
    DBX_CalendarioN6: TStringField;
    DBX_CalendarioN7: TStringField;
    DBX_CalendarioN8: TStringField;
    DBX_CalendarioN9: TStringField;
    DBX_CalendarioN10: TStringField;
    DBX_CalendarioN11: TStringField;
    DBX_CalendarioN12: TStringField;
    DBX_CalendarioN13: TStringField;
    DBX_CalendarioN14: TStringField;
    DBX_CalendarioN15: TStringField;
    DBX_CalendarioN16: TStringField;
    DBX_CalendarioN17: TStringField;
    DBX_CalendarioN18: TStringField;
    DBX_CalendarioN19: TStringField;
    DBX_CalendarioN20: TStringField;
    DBX_CalendarioN21: TStringField;
    DBX_CalendarioN22: TStringField;
    DBX_CalendarioN23: TStringField;
    DBX_CalendarioN24: TStringField;
    DBX_CalendarioN25: TStringField;
    DBX_CalendarioN26: TStringField;
    DBX_CalendarioN27: TStringField;
    DBX_CalendarioN28: TStringField;
    DBX_CalendarioN29: TStringField;
    DBX_CalendarioN30: TStringField;
    DBX_CalendarioN31: TStringField;
    CDS_CalendarioCODIGO: TIntegerField;
    CDS_CalendarioCODCURSO: TIntegerField;
    CDS_CalendarioANO: TStringField;
    CDS_CalendarioMES: TStringField;
    CDS_CalendarioN1: TStringField;
    CDS_CalendarioN2: TStringField;
    CDS_CalendarioN3: TStringField;
    CDS_CalendarioN4: TStringField;
    CDS_CalendarioN5: TStringField;
    CDS_CalendarioN6: TStringField;
    CDS_CalendarioN7: TStringField;
    CDS_CalendarioN8: TStringField;
    CDS_CalendarioN9: TStringField;
    CDS_CalendarioN10: TStringField;
    CDS_CalendarioN11: TStringField;
    CDS_CalendarioN12: TStringField;
    CDS_CalendarioN13: TStringField;
    CDS_CalendarioN14: TStringField;
    CDS_CalendarioN15: TStringField;
    CDS_CalendarioN16: TStringField;
    CDS_CalendarioN17: TStringField;
    CDS_CalendarioN18: TStringField;
    CDS_CalendarioN19: TStringField;
    CDS_CalendarioN20: TStringField;
    CDS_CalendarioN21: TStringField;
    CDS_CalendarioN22: TStringField;
    CDS_CalendarioN23: TStringField;
    CDS_CalendarioN24: TStringField;
    CDS_CalendarioN25: TStringField;
    CDS_CalendarioN26: TStringField;
    CDS_CalendarioN27: TStringField;
    CDS_CalendarioN28: TStringField;
    CDS_CalendarioN29: TStringField;
    CDS_CalendarioN30: TStringField;
    CDS_CalendarioN31: TStringField;
    CDS_CalendarioNomeCurso: TStringField;
    DBX_ContasRec: TSQLQuery;
    DSP_ContasRec: TDataSetProvider;
    CDS_ContasRec: TClientDataSet;
    DTS_ContasRec: TDataSource;
    DBX_ContasRecCODIGO: TIntegerField;
    DBX_ContasRecVALOR: TFMTBCDField;
    DBX_ContasRecDATA: TDateField;
    DBX_ContasRecCODALU: TIntegerField;
    DBX_ContasRecPAGO: TDateField;
    DBX_ContasRecEMISSAO: TDateField;
    CDS_ContasRecCODIGO: TIntegerField;
    CDS_ContasRecVALOR: TFMTBCDField;
    CDS_ContasRecDATA: TDateField;
    CDS_ContasRecCODALU: TIntegerField;
    CDS_ContasRecPAGO: TDateField;
    CDS_ContasRecEMISSAO: TDateField;
    CDS_ContasRecNomeAlu: TStringField;
    DBX_MensalidadeCONTASREC: TStringField;
    CDS_MensalidadeCONTASREC: TStringField;
    DBX_ContasRecTIPO: TStringField;
    CDS_ContasRecTIPO: TStringField;
    DBX_CadAlunoASSEJT: TStringField;
    CDS_CadAlunoASSEJT: TStringField;
    DBX_Historico: TSQLQuery;
    DSP_Historico: TDataSetProvider;
    CDS_Historico: TClientDataSet;
    DTS_Historico: TDataSource;
    DBX_NotasAnteriores: TSQLQuery;
    DSP_NotasAnteriores: TDataSetProvider;
    CDS_NotasAnteriores: TClientDataSet;
    DTS_NotasAnteriores: TDataSource;
    DBX_NotasAnterioresCODIGO: TIntegerField;
    DBX_NotasAnterioresCODHIST: TIntegerField;
    DBX_NotasAnterioresCODMAT: TIntegerField;
    DBX_NotasAnterioresNOTA: TFMTBCDField;
    CDS_NotasAnterioresCODIGO: TIntegerField;
    CDS_NotasAnterioresCODHIST: TIntegerField;
    CDS_NotasAnterioresCODMAT: TIntegerField;
    CDS_NotasAnterioresNOTA: TFMTBCDField;
    CDS_HistoricoNomeAlu: TStringField;
    CDS_NotasAnterioresNomeMat: TStringField;
    DBX_HistoricoCODIGO: TIntegerField;
    DBX_HistoricoCODALU: TIntegerField;
    DBX_HistoricoSERIE: TStringField;
    DBX_HistoricoANO: TStringField;
    DBX_HistoricoESTABELECIMENTO: TStringField;
    DBX_HistoricoMUNICIPIO: TStringField;
    DBX_HistoricoESTADO: TStringField;
    DBX_HistoricoCODCURSO: TIntegerField;
    CDS_HistoricoCODIGO: TIntegerField;
    CDS_HistoricoCODALU: TIntegerField;
    CDS_HistoricoSERIE: TStringField;
    CDS_HistoricoANO: TStringField;
    CDS_HistoricoESTABELECIMENTO: TStringField;
    CDS_HistoricoMUNICIPIO: TStringField;
    CDS_HistoricoESTADO: TStringField;
    CDS_HistoricoCODCURSO: TIntegerField;
    CDS_HistoricoNomeCurso: TStringField;
    DBX_ContasRecTIPOPGTO: TStringField;
    CDS_ContasRecTIPOPGTO: TStringField;
    DBX_RelTurmaSerieAluCANCEL_MATRICULA: TStringField;
    CDS_RelTurmaSerieAluCANCEL_MATRICULA: TStringField;
    DBX_SerieNUMMAXALU: TIntegerField;
    CDS_SerieNUMMAXALU: TIntegerField;
    DBX_DadosCheque: TSQLQuery;
    DSP_DadosCheque: TDataSetProvider;
    CDS_DadosCheque: TClientDataSet;
    DTS_DadosCheque: TDataSource;
    DBX_SerieANO: TStringField;
    CDS_SerieANO: TStringField;
    DBX_Evento: TSQLQuery;
    DSP_Evento: TDataSetProvider;
    CDS_Evento: TClientDataSet;
    DTS_Evento: TDataSource;
    CDS_EventoCODIGO: TIntegerField;
    CDS_EventoNOME: TStringField;
    CDS_EventoDATA: TDateField;
    CDS_EventoVALOR: TFMTBCDField;
    DBX_EventoCODIGO: TIntegerField;
    DBX_EventoNOME: TStringField;
    DBX_EventoDATA: TDateField;
    DBX_EventoVALOR: TFMTBCDField;
    DBX_EventoOBS: TMemoField;
    CDS_EventoOBS: TMemoField;
    DBX_ContasRecCODEVENTO: TIntegerField;
    CDS_ContasRecCODEVENTO: TIntegerField;
    CDS_ContasRecNomeEvento: TStringField;
    DBX_CadAluAnual: TSQLQuery;
    DSP_CadAluAnual: TDataSetProvider;
    CDS_CadAluAnual: TClientDataSet;
    DTS_CadAluAnual: TDataSource;
    DBX_CadAluAnualCODIGO: TIntegerField;
    DBX_CadAluAnualCODALU: TIntegerField;
    DBX_CadAluAnualVALOR: TFMTBCDField;
    DBX_CadAluAnualDT_MATRICULA: TDateField;
    DBX_CadAluAnualDT_CANCEL: TDateField;
    DBX_CadAluAnualMOTIVOCANCEL: TStringField;
    DBX_CadAluAnualDESCONTO: TStringField;
    DBX_CadAluAnualMOTIVODESC: TStringField;
    DBX_CadAluAnualANO: TStringField;
    DBX_CadAluAnualDT_PGMTO: TIntegerField;
    CDS_CadAluAnualCODIGO: TIntegerField;
    CDS_CadAluAnualCODALU: TIntegerField;
    CDS_CadAluAnualVALOR: TFMTBCDField;
    CDS_CadAluAnualDT_MATRICULA: TDateField;
    CDS_CadAluAnualDT_CANCEL: TDateField;
    CDS_CadAluAnualMOTIVOCANCEL: TStringField;
    CDS_CadAluAnualDESCONTO: TStringField;
    CDS_CadAluAnualMOTIVODESC: TStringField;
    CDS_CadAluAnualANO: TStringField;
    CDS_CadAluAnualDT_PGMTO: TIntegerField;
    DBX_Recibo: TSQLQuery;
    DSP_Recibo: TDataSetProvider;
    CDS_Recibo: TClientDataSet;
    DTS_Recibo: TDataSource;
    DBX_ContasRecNubia: TSQLQuery;
    DSP_ContasRecNubia: TDataSetProvider;
    CDS_ContasRecNubia: TClientDataSet;
    StringField6: TStringField;
    DTS_ContasRecNubia: TDataSource;
    DBX_ReciboCODIGO: TIntegerField;
    DBX_ReciboCODALU: TIntegerField;
    DBX_ReciboVALOR: TFMTBCDField;
    DBX_ReciboNUM: TIntegerField;
    DBX_ReciboNOME: TStringField;
    DBX_ReciboTIPO: TStringField;
    DBX_ReciboACORDO: TStringField;
    DBX_ReciboDATA: TDateField;
    DBX_ReciboTIPO2: TStringField;
    DBX_ReciboTIPO3: TStringField;
    CDS_ReciboCODIGO: TIntegerField;
    CDS_ReciboCODALU: TIntegerField;
    CDS_ReciboVALOR: TFMTBCDField;
    CDS_ReciboNUM: TIntegerField;
    CDS_ReciboNOME: TStringField;
    CDS_ReciboTIPO: TStringField;
    CDS_ReciboACORDO: TStringField;
    CDS_ReciboDATA: TDateField;
    CDS_ReciboTIPO2: TStringField;
    CDS_ReciboTIPO3: TStringField;
    CDS_ReciboNomeAlu: TStringField;
    DBX_DadosChequeCODIGO: TIntegerField;
    DBX_DadosChequeCODCONTA: TIntegerField;
    DBX_DadosChequeNUMERO: TStringField;
    DBX_DadosChequeDATA: TDateField;
    DBX_DadosChequeBANCO: TStringField;
    DBX_DadosChequeCODCONTANUBIA: TIntegerField;
    CDS_DadosChequeCODIGO: TIntegerField;
    CDS_DadosChequeCODCONTA: TIntegerField;
    CDS_DadosChequeNUMERO: TStringField;
    CDS_DadosChequeDATA: TDateField;
    CDS_DadosChequeBANCO: TStringField;
    CDS_DadosChequeCODCONTANUBIA: TIntegerField;
    CDS_ContasRecNubiaVALOR: TFMTBCDField;
    CDS_ContasRecNubiaCODALU: TIntegerField;
    CDS_ContasRecNubiaEMISSAO: TDateField;
    CDS_ContasRecNubiaTIPO: TStringField;
    CDS_ContasRecNubiaNomeAlu: TStringField;
    DBX_ContasRecNubiaVALOR: TFMTBCDField;
    DBX_ContasRecNubiaCODALU: TIntegerField;
    DBX_ContasRecNubiaEMISSAO: TDateField;
    DBX_ContasRecNubiaTIPO: TStringField;
    DBX_ContasRecNubiaCODEVENTO: TIntegerField;
    CDS_ContasRecNubiaCODEVENTO: TIntegerField;
    DSP_Exec2: TDataSetProvider;
    CDS_Exec2: TClientDataSet;
    DTS_Exec2: TDataSource;
    DBX_ContasRecNubiaCODIGO: TIntegerField;
    DBX_ContasRecNubiaDATA: TDateField;
    DBX_ContasRecNubiaPAGO: TDateField;
    DBX_ContasRecNubiaTIPOPGTO: TStringField;
    DBX_ContasRecNubiaRECIBO: TStringField;
    DBX_ContasRecNubiaOBS: TMemoField;
    CDS_ContasRecNubiaCODIGO: TIntegerField;
    CDS_ContasRecNubiaDATA: TDateField;
    CDS_ContasRecNubiaPAGO: TDateField;
    CDS_ContasRecNubiaTIPOPGTO: TStringField;
    CDS_ContasRecNubiaRECIBO: TStringField;
    CDS_ContasRecNubiaOBS: TMemoField;
    DBX_Exec2: TSQLQuery;
    DBX_Exec2CODALU: TIntegerField;
    DBX_Exec2VALOR: TFMTBCDField;
    DBX_Exec2EMISSAO: TDateField;
    DBX_Exec2CODEVENTO: TIntegerField;
    CDS_Exec2CODALU: TIntegerField;
    CDS_Exec2VALOR: TFMTBCDField;
    CDS_Exec2EMISSAO: TDateField;
    CDS_Exec2CODEVENTO: TIntegerField;
    DBX_ContasRecNubiaANO: TStringField;
    CDS_ContasRecNubiaANO: TStringField;
    DBX_ContasRecNubiaETAPA: TStringField;
    CDS_ContasRecNubiaETAPA: TStringField;
    DBX_SerieORDEM: TIntegerField;
    CDS_SerieORDEM: TIntegerField;
    DBX_ContasRecANO: TStringField;
    CDS_ContasRecANO: TStringField;
    DBX_ContasRecNubiaENTRADA: TFMTBCDField;
    DBX_ContasRecNubiaSAIDA: TFMTBCDField;
    CDS_ContasRecNubiaENTRADA: TFMTBCDField;
    CDS_ContasRecNubiaSAIDA: TFMTBCDField;
    DBX_SANGRIA: TSQLQuery;
    IntegerField2: TIntegerField;
    DSP_SANGRIA: TDataSetProvider;
    CDS_SANGRIA: TClientDataSet;
    IntegerField4: TIntegerField;
    DTS_SANGRIA: TDataSource;
    DBX_SANGRIAVALOR: TFMTBCDField;
    DBX_SANGRIACFUN: TIntegerField;
    DBX_SANGRIADATA: TDateField;
    DBX_SANGRIAHORA: TStringField;
    DBX_SANGRIAORIGEM: TSmallintField;
    CDS_SANGRIAVALOR: TFMTBCDField;
    CDS_SANGRIACFUN: TIntegerField;
    CDS_SANGRIADATA: TDateField;
    CDS_SANGRIAHORA: TStringField;
    CDS_SANGRIAORIGEM: TSmallintField;
    DBX_INGESTAO: TSQLQuery;
    IntegerField5: TIntegerField;
    DSP_INGESTAO: TDataSetProvider;
    CDS_INGESTAO: TClientDataSet;
    IntegerField7: TIntegerField;
    DTS_INGESTAO: TDataSource;
    DBX_INGESTAOVALOR: TFMTBCDField;
    DBX_INGESTAOCFUN: TIntegerField;
    DBX_INGESTAODATA: TDateField;
    DBX_INGESTAOHORA: TStringField;
    DBX_INGESTAOORIGEM: TSmallintField;
    CDS_INGESTAOVALOR: TFMTBCDField;
    CDS_INGESTAOCFUN: TIntegerField;
    CDS_INGESTAODATA: TDateField;
    CDS_INGESTAOHORA: TStringField;
    CDS_INGESTAOORIGEM: TSmallintField;
    DBX_SANGRIAMOTIVO: TStringField;
    CDS_SANGRIAMOTIVO: TStringField;
    DBX_RelTurmaSerieAluNOME: TStringField;
    CDS_RelTurmaSerieAluNOME: TStringField;
    dbx_listamatricula: TSQLQuery;
    dsp_listamatricula: TDataSetProvider;
    cds_listamatricula: TClientDataSet;
    dts_listamatricula: TDataSource;
    DBX_CadAluAnualDESCONTOATE: TStringField;
    DBX_CadAluAnualPORCDESCONTO: TBCDField;
    DBX_CadAluAnualVLRDESCONTO: TBCDField;
    DBX_CadAluAnualVLRNORMAL: TBCDField;
    CDS_CadAluAnualDESCONTOATE: TStringField;
    CDS_CadAluAnualPORCDESCONTO: TBCDField;
    CDS_CadAluAnualVLRDESCONTO: TBCDField;
    CDS_CadAluAnualVLRNORMAL: TBCDField;
    dbx_rel: TSQLQuery;
    dsp_rel: TDataSetProvider;
    cds_rel: TClientDataSet;
    dts_rel: TDataSource;
    dbx_reldet: TSQLQuery;
    dsp_reldet: TDataSetProvider;
    cds_reldet: TClientDataSet;
    dts_reldet: TDataSource;
    procedure Projeto(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure CDS_ProjetoAfterPost(DataSet: TDataSet);
    procedure CDS_CadAlunoNewRecord(DataSet: TDataSet);
    procedure CDS_CadAlunoAfterPost(DataSet: TDataSet);
    procedure CDS_DPAfterPost(DataSet: TDataSet);
    procedure CDS_DPNewRecord(DataSet: TDataSet);
    procedure CDS_CursoNewRecord(DataSet: TDataSet);
    procedure CDS_CursoAfterPost(DataSet: TDataSet);
    procedure CDS_CadBuscAfterPost(DataSet: TDataSet);
    procedure CDS_CadAlunoAfterDelete(DataSet: TDataSet);
    procedure CDS_CursoAfterDelete(DataSet: TDataSet);
    procedure CDS_DPAfterDelete(DataSet: TDataSet);
    procedure CDS_ProjetoAfterDelete(DataSet: TDataSet);
    procedure CDS_TrabalhosNewRecord(DataSet: TDataSet);
    procedure CDS_SerieNewRecord(DataSet: TDataSet);
    procedure CDS_RelTurmaSerieAluNewRecord(DataSet: TDataSet);
    procedure CDS_TrabalhosAfterDelete(DataSet: TDataSet);
    procedure CDS_TrabalhosAfterPost(DataSet: TDataSet);
    procedure CDS_SerieAfterPost(DataSet: TDataSet);
    procedure CDS_SerieAfterDelete(DataSet: TDataSet);
    procedure CDS_TurmaAfterDelete(DataSet: TDataSet);
    procedure CDS_TurmaAfterPost(DataSet: TDataSet);
    procedure CDS_RelTurmaSerieAluAfterDelete(DataSet: TDataSet);
    procedure CDS_RelTurmaSerieAluAfterInsert(DataSet: TDataSet);
    procedure CDS_TurmaNewRecord(DataSet: TDataSet);
    procedure CDS_AvaliacoesAfterDelete(DataSet: TDataSet);
    procedure CDS_AvaliacoesAfterPost(DataSet: TDataSet);
    procedure CDS_AvaliacoesNewRecord(DataSet: TDataSet);
    procedure CDS_AssiduidadeAfterDelete(DataSet: TDataSet);
    procedure CDS_AssiduidadeAfterPost(DataSet: TDataSet);
    procedure CDS_AssiduidadeNewRecord(DataSet: TDataSet);
    procedure CDS_CadMateriaAfterDelete(DataSet: TDataSet);
    procedure CDS_CadMateriaAfterPost(DataSet: TDataSet);
    procedure CDS_CadMateriaNewRecord(DataSet: TDataSet);
    procedure CDS_RelTurmaSerieAluAfterPost(DataSet: TDataSet);
    procedure CDS_IndicesAfterEdit(DataSet: TDataSet);
    procedure CDS_IndicesNewRecord(DataSet: TDataSet);
    procedure CDS_IndicesAfterPost(DataSet: TDataSet);
    procedure CDS_SerieMatAfterDelete(DataSet: TDataSet);
    procedure CDS_SerieMatAfterPost(DataSet: TDataSet);
    procedure CDS_SerieMatNewRecord(DataSet: TDataSet);
    procedure DTS_SerieMatDataChange(Sender: TObject; Field: TField);
    procedure CDS_MensalidadeAfterPost(DataSet: TDataSet);
    procedure CDS_MensalidadeAfterDelete(DataSet: TDataSet);
    procedure CDS_MensalidadeNewRecord(DataSet: TDataSet);
    procedure CDS_RelTurmaSerieAluAfterScroll(DataSet: TDataSet);
    procedure CDS_AvaliacoesAfterScroll(DataSet: TDataSet);
    procedure CDS_AssiduidadeAfterScroll(DataSet: TDataSet);
    procedure CDS_TrabalhosAfterScroll(DataSet: TDataSet);
    procedure CDS_SerieMasterAfterDelete(DataSet: TDataSet);
    procedure CDS_SerieMasterAfterPost(DataSet: TDataSet);
    procedure CDS_SerieMasterNewRecord(DataSet: TDataSet);
    procedure CDS_UsuarioNewRecord(DataSet: TDataSet);
    procedure CDS_UsuarioAfterPost(DataSet: TDataSet);
    procedure CDS_UsuarioAfterDelete(DataSet: TDataSet);
    procedure CDS_InvSysPAfterDelete(DataSet: TDataSet);
    procedure CDS_InvSysPAfterPost(DataSet: TDataSet);
    procedure CDS_InvSysAfterPost(DataSet: TDataSet);
    procedure CDS_InvSysAfterDelete(DataSet: TDataSet);
    procedure CDS_InvSysFAfterDelete(DataSet: TDataSet);
    procedure CDS_InvSysFAfterPost(DataSet: TDataSet);
    procedure CDS_InvSysPNewRecord(DataSet: TDataSet);
    procedure CDS_InvSysNewRecord(DataSet: TDataSet);
    procedure CDS_InvSysFNewRecord(DataSet: TDataSet);
    procedure AtualizaDados;
    procedure CDS_InvSysPAfterScroll(DataSet: TDataSet);
    procedure CDS_SerieAfterScroll(DataSet: TDataSet);
    procedure CDS_UsuarioAfterScroll(DataSet: TDataSet);
    procedure CDS_CadAlunoAfterInsert(DataSet: TDataSet);
    procedure CDS_CadAlunoAfterEdit(DataSet: TDataSet);
    procedure CDS_SerieAfterEdit(DataSet: TDataSet);
    procedure CDS_SerieAfterInsert(DataSet: TDataSet);
    procedure CDS_CadMateriaAfterEdit(DataSet: TDataSet);
    procedure CDS_CadMateriaAfterInsert(DataSet: TDataSet);
    procedure CDS_SerieMatAfterEdit(DataSet: TDataSet);
    procedure CDS_SerieMatAfterInsert(DataSet: TDataSet);
    procedure CDS_AssiduidadeAfterEdit(DataSet: TDataSet);
    procedure CDS_AssiduidadeAfterInsert(DataSet: TDataSet);
    procedure CDS_AvaliacoesAfterEdit(DataSet: TDataSet);
    procedure CDS_AvaliacoesAfterInsert(DataSet: TDataSet);
    procedure CDS_TrabalhosAfterEdit(DataSet: TDataSet);
    procedure CDS_TrabalhosAfterInsert(DataSet: TDataSet);
    procedure CDS_IndicesAfterDelete(DataSet: TDataSet);
    procedure CDS_IndicesAfterInsert(DataSet: TDataSet);
    procedure CDS_MensalidadeAfterInsert(DataSet: TDataSet);
    procedure CDS_MensalidadeAfterEdit(DataSet: TDataSet);
    procedure CDS_UsuarioAfterEdit(DataSet: TDataSet);
    procedure CDS_UsuarioAfterInsert(DataSet: TDataSet);
    procedure CDS_InvSysFAfterEdit(DataSet: TDataSet);
    procedure CDS_InvSysFAfterInsert(DataSet: TDataSet);
    procedure CDS_DPAfterEdit(DataSet: TDataSet);
    procedure CDS_DPAfterInsert(DataSet: TDataSet);
    procedure CDS_ProjetoAfterEdit(DataSet: TDataSet);
    procedure CDS_ProjetoAfterInsert(DataSet: TDataSet);
    procedure CDS_AvaliacoesBeforePost(DataSet: TDataSet);
    procedure CDS_AvaliacoesBeforeDelete(DataSet: TDataSet);
    procedure CDS_AssiduidadeBeforeDelete(DataSet: TDataSet);
    procedure CDS_AssiduidadeBeforePost(DataSet: TDataSet);
    procedure CDS_TrabalhosBeforePost(DataSet: TDataSet);
    procedure CDS_TrabalhosBeforeDelete(DataSet: TDataSet);
    procedure CDS_AluProjetoAfterDelete(DataSet: TDataSet);
    procedure CDS_AluProjetoAfterPost(DataSet: TDataSet);
    procedure CDS_AluProjetoNewRecord(DataSet: TDataSet);
    procedure CDS_AluProjetoAfterInsert(DataSet: TDataSet);
    procedure CDS_AluProjetoAfterEdit(DataSet: TDataSet);
    procedure CDS_CadAlunoCalcFields(DataSet: TDataSet);
    procedure CDS_AluPedInfAfterDelete(DataSet: TDataSet);
    procedure CDS_AluPedInfAfterPost(DataSet: TDataSet);
    procedure CDS_AluPedInfNewRecord(DataSet: TDataSet);
    procedure CDS_AluPedInfAfterEdit(DataSet: TDataSet);
    procedure CDS_AluPedInfAfterInsert(DataSet: TDataSet);
    procedure CDS_FichaIndAluAfterPost(DataSet: TDataSet);
    procedure CDS_FichaIndAluAfterDelete(DataSet: TDataSet);
    procedure CDS_FichaIndAluNewRecord(DataSet: TDataSet);
    procedure CDS_FichaIndAluAfterInsert(DataSet: TDataSet);
    procedure CDS_FichaIndAluAfterEdit(DataSet: TDataSet);
    procedure CDS_GradCurAfterDelete(DataSet: TDataSet);
    procedure CDS_GradCurAfterPost(DataSet: TDataSet);
    procedure CDS_GradCurNewRecord(DataSet: TDataSet);
    procedure CDS_CalendarioAfterPost(DataSet: TDataSet);
    procedure CDS_CalendarioAfterDelete(DataSet: TDataSet);
    procedure CDS_CalendarioNewRecord(DataSet: TDataSet);
    procedure CDS_CalendarioAfterInsert(DataSet: TDataSet);
    procedure CDS_CalendarioAfterEdit(DataSet: TDataSet);
    procedure CDS_ContasRecAfterPost(DataSet: TDataSet);
    procedure CDS_ContasRecAfterDelete(DataSet: TDataSet);
    procedure CDS_ContasRecNewRecord(DataSet: TDataSet);
    procedure CDS_ContasRecAfterEdit(DataSet: TDataSet);
    procedure CDS_ContasRecAfterInsert(DataSet: TDataSet);
    procedure CDS_HistoricoAfterDelete(DataSet: TDataSet);
    procedure CDS_HistoricoAfterPost(DataSet: TDataSet);
    procedure CDS_HistoricoNewRecord(DataSet: TDataSet);
    procedure CDS_NotasAnterioresNewRecord(DataSet: TDataSet);
    procedure CDS_NotasAnterioresAfterDelete(DataSet: TDataSet);
    procedure CDS_NotasAnterioresAfterPost(DataSet: TDataSet);
    procedure CDS_HistoricoAfterScroll(DataSet: TDataSet);
    procedure CDS_HistoricoAfterEdit(DataSet: TDataSet);
    procedure CDS_HistoricoAfterInsert(DataSet: TDataSet);
    procedure CDS_NotasAnterioresAfterEdit(DataSet: TDataSet);
    procedure CDS_NotasAnterioresAfterInsert(DataSet: TDataSet);
    procedure CDS_DadosChequeNewRecord(DataSet: TDataSet);
    procedure CDS_DadosChequeAfterPost(DataSet: TDataSet);
    procedure CDS_DadosChequeAfterDelete(DataSet: TDataSet);
    procedure CDS_EventoAfterDelete(DataSet: TDataSet);
    procedure CDS_EventoAfterPost(DataSet: TDataSet);
    procedure CDS_EventoNewRecord(DataSet: TDataSet);
    procedure CDS_EventoAfterEdit(DataSet: TDataSet);
    procedure CDS_EventoAfterInsert(DataSet: TDataSet);
    procedure iniciaTransacao;
    procedure finalizaTransacao;
    procedure CDS_ProjetoBeforePost(DataSet: TDataSet);
    procedure CDS_ProjetoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure CDS_ProjetoBeforeDelete(DataSet: TDataSet);
    procedure CDS_CadAlunoAfterScroll(DataSet: TDataSet);
    procedure CDS_CadAluAnualAfterDelete(DataSet: TDataSet);
    procedure CDS_CadAluAnualAfterPost(DataSet: TDataSet);
    procedure CDS_CadAluAnualNewRecord(DataSet: TDataSet);
    procedure CDS_CadAluAnualAfterEdit(DataSet: TDataSet);
    procedure CDS_CadAluAnualAfterInsert(DataSet: TDataSet);
    procedure CDS_ReciboAfterDelete(DataSet: TDataSet);
    procedure CDS_ReciboAfterPost(DataSet: TDataSet);
    procedure CDS_ReciboNewRecord(DataSet: TDataSet);
    procedure CDS_ReciboAfterEdit(DataSet: TDataSet);
    procedure CDS_ReciboAfterInsert(DataSet: TDataSet);
    procedure CDS_ReciboAfterScroll(DataSet: TDataSet);
    procedure CDS_ContasRecNubiaAfterDelete(DataSet: TDataSet);
    procedure CDS_ContasRecNubiaAfterEdit(DataSet: TDataSet);
    procedure CDS_ContasRecNubiaAfterInsert(DataSet: TDataSet);
    procedure CDS_ContasRecNubiaAfterPost(DataSet: TDataSet);
    procedure CDS_ContasRecNubiaNewRecord(DataSet: TDataSet);
    procedure CDS_ContasRecNubiaAfterScroll(DataSet: TDataSet);
    procedure CDS_SANGRIANewRecord(DataSet: TDataSet);
    procedure CDS_INGESTAONewRecord(DataSet: TDataSet);
    procedure CDS_SANGRIAAfterPost(DataSet: TDataSet);
    procedure CDS_INGESTAOAfterPost(DataSet: TDataSet);
    procedure CDS_SANGRIAAfterDelete(DataSet: TDataSet);
    procedure CDS_INGESTAOAfterDelete(DataSet: TDataSet);
//    procedure DTS_SerieMatUpdateData(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sSqlAnt:String;
  end;

var
  FrmDados: TFrmDados;
  TD:TtransactionDesc;

implementation

uses UFiltrarAluno, URelAluTurma, uGeral, UPesqUsuEAcesso, UPesqSerie,
  UIndices, UPesqHistorico, UPesqAluno, uPesqRecibo,
  UFrmPesqContasRecNubia;

{$R *.dfm}

procedure TFrmDados.Projeto(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  begin
    SqlStMt := 'Select gen_id(Gen_Projeto_ID,1) as Valor from RDB$DATABASE;';
    ResultSet := nil;
    try
      Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
      if Assigned(ResultSet) then
         CDS_Projeto.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
      //endi
    finally
  ResultSet.Free;
  end;
end;


procedure TFrmDados.DataModuleCreate(Sender: TObject);
var
  vardir,
  sDataBase,
  sUser_Name,
  sUserPass:String;
  log:textfile;
begin
  SQL_Dados.Connected:=false;
    if not FileExists(vardir+'DataBaseName.inf') then
     begin
       AssignFile(log, vardir+'DataBaseName.inf');
       Rewrite(log,vardir+'DataBaseName.inf');
       Append(log);
       WriteLn(log, vardir+'fbdados.fdb');
       CloseFile(log);
    end;
  //endi

  if not FileExists(vardir+'User.inf') then
    begin
      AssignFile(log, vardir+'User.inf');
      Rewrite(log,vardir+'User.inf');
      Append(log);
      WriteLn(log, frmdados.Sql_Dados.Params.Values['User_Name']);
      CloseFile(log);
    end;
  //endi

  if not FileExists(vardir+'UserPass.inf') then
    begin
      AssignFile(log, vardir+'UserPass.inf');
      Rewrite(log,vardir+'UserPass.inf');
      Append(log);
      WriteLn(log, EnDecryptString(frmdados.Sql_Dados.Params.Values['Password'],236));
      CloseFile(log);
    end;
  //endi

  try


    sDataBase := lerarqtexto(vardir + 'DataBaseName.inf');
    sUser_Name := lerarqtexto(vardir + 'User.inf');
    sUserPass := EnDecryptString(lerarqtexto(vardir+'UserPass.inf'),236);

    Sql_Dados.ConnectionName := 'UIB FireBird15 Connection';
    //Sql_Dados.ConnectionName := 'IBConnection';

    Sql_Dados.DriverName := 'UIB FireBird15';
    //Sql_Dados.DriverName := 'Interbase';


    Sql_Dados.GetDriverFunc := 'getSQLDriverINTERBASE';

    Sql_Dados.LibraryName := 'dbexpUIBfire15.dll';
    //Sql_Dados.LibraryName := 'dbexpint.dll';


    Sql_Dados.VendorLib := 'fbclient.dll';
    //Sql_Dados.VendorLib := 'gds32.dll';



    Sql_Dados.Params.Values['DriverName'] := 'UIB FireBird15';
    //Sql_Dados.Params.Values['DriverName'] := 'Interbase';


    Sql_Dados.Params.Values['DataBase'] := sDataBase;
    Sql_Dados.Params.Values['User_Name'] := sUser_Name;
    Sql_Dados.Params.Values['Password'] := sUserPass;
    Sql_Dados.Params.Values['SQLDialect'] := '3';
    Sql_Dados.Params.Values['ServerCharSet'] := 'WIN1252';
    Sql_Dados.Connected := true;
  except
    Sql_Dados.Connected := false;
  end;

  TD.TransactionId := 1;
  TD.IsolationLevel := xilReadCommitted;
end;

procedure TFrmDados.CDS_ProjetoAfterPost(DataSet: TDataSet);
begin
  if Cds_Projeto.ChangeCount <> 0 then
   begin
     Cds_Projeto.ApplyUpdates(0);
   end;
  //endi
end;

procedure TFrmDados.CDS_CadAlunoNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_CadAluno_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_CadAluno.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
      ResultSet.Free;
  end;
end;


procedure TFrmDados.CDS_CadAlunoAfterPost(DataSet: TDataSet);
begin
  if Cds_CadAluno.ChangeCount <> 0 then
   begin
     Cds_CadAluno.ApplyUpdates(0);
   end;
  //endi
end;

procedure TFrmDados.CDS_DPAfterPost(DataSet: TDataSet);
begin
  if Cds_DP.ChangeCount <> 0 then
  begin
    Cds_DP.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_DPNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_DP_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_DP.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_CursoNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Curso_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Curso.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_CursoAfterPost(DataSet: TDataSet);
begin
  if Cds_Curso.ChangeCount <> 0 then
  begin
    Cds_Curso.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_CadBuscAfterPost(DataSet: TDataSet);
begin
{  if Cds_CadMae.ChangeCount <> 0 then
  begin
    Cds_CadMae.ApplyUpdates(0);
  end;
  //endi}
end;

procedure TFrmDados.CDS_CadAlunoAfterDelete(DataSet: TDataSet);
begin
  if Cds_CadAluno.ChangeCount <> 0 then
  begin
    Cds_CadAluno.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_CursoAfterDelete(DataSet: TDataSet);
begin
  if Cds_Curso.ChangeCount <> 0 then
  begin
    Cds_Curso.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_DPAfterDelete(DataSet: TDataSet);
begin
  if Cds_DP.ChangeCount <> 0 then
  begin
    Cds_DP.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_ProjetoAfterDelete(DataSet: TDataSet);
begin
  if Cds_Projeto.ChangeCount <> 0 then
  begin
    Cds_Projeto.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_TrabalhosNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Trabalhos_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_TRabalhos.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_SerieNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Serie_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Serie.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_RelTurmaSerieAluNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_RelTurmaSerieAlu_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_RelTurmaSerieAlu.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_TrabalhosAfterDelete(DataSet: TDataSet);
begin
  if Cds_Trabalhos.ChangeCount <> 0 then
  begin
    Cds_Trabalhos.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_TrabalhosAfterPost(DataSet: TDataSet);
begin
  if Cds_Trabalhos.ChangeCount <> 0 then
  begin
    Cds_Trabalhos.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieAfterPost(DataSet: TDataSet);
begin
  if Cds_Serie.ChangeCount <> 0 then
  begin
    Cds_Serie.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieAfterDelete(DataSet: TDataSet);
begin
  if Cds_Serie.ChangeCount <> 0 then
  begin
    Cds_Serie.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_TurmaAfterDelete(DataSet: TDataSet);
begin
  if Cds_Turma.ChangeCount <> 0 then
  begin
    Cds_Turma.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_TurmaAfterPost(DataSet: TDataSet);
begin
  if Cds_Turma.ChangeCount <> 0 then
  begin
    Cds_Turma.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_RelTurmaSerieAluAfterDelete(DataSet: TDataSet);
begin
  if Cds_RelTurmaSerieAlu.ChangeCount <> 0 then
  begin
    Cds_RelTurmaSerieAlu.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_RelTurmaSerieAluAfterInsert(DataSet: TDataSet);
begin
  if Cds_RelTurmaSerieAlu.ChangeCount <> 0 then
  begin
    Cds_RelTurmaSerieAlu.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_TurmaNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Turma_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Turma.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_AvaliacoesAfterDelete(DataSet: TDataSet);
begin
  if Cds_Avaliacoes.ChangeCount<>0 then
  begin
    CDS_Avaliacoes.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_AvaliacoesAfterPost(DataSet: TDataSet);
begin  
  if Cds_Avaliacoes.ChangeCount<>0 then
  begin
    CDS_Avaliacoes.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_AvaliacoesNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Avaliacoes_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Avaliacoes.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_AssiduidadeAfterDelete(DataSet: TDataSet);
begin
  if CDS_Assiduidade.ChangeCount<>0 then
  begin
    CDS_Assiduidade.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_AssiduidadeAfterPost(DataSet: TDataSet);
begin
  if CDS_Assiduidade.ChangeCount<>0 then
  begin
    CDS_Assiduidade.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_AssiduidadeNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Assiduidade_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Assiduidade.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_CadMateriaAfterDelete(DataSet: TDataSet);
begin
  if CDS_CadMateria.ChangeCount<>0 then
  begin
    CDS_CadMateria.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_CadMateriaAfterPost(DataSet: TDataSet);
begin
  if CDS_CadMateria.ChangeCount<>0 then
  begin
    CDS_CadMateria.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_CadMateriaNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_CadMaterias_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_CadMateria.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_RelTurmaSerieAluAfterPost(DataSet: TDataSet);
begin
  if Cds_RelTurmaSerieAlu.ChangeCount <> 0 then
  begin
    Cds_RelTurmaSerieAlu.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_IndicesAfterEdit(DataSet: TDataSet);
begin
if FrmIndices <> nil then
begin
  with FrmIndices do
  begin
    if (Edano.Visible = True) then
    begin
      if not bAnoLetivoA then
      begin
        CDS_Indices.Cancel;
      end;
      //endi
    end
    else
    begin
      if not bDataA then
      begin
        CDS_Indices.Cancel;
      end;
      //endi
    end;
    //endi
  end;
  //endth
end;
//endi
end;

procedure TFrmDados.CDS_IndicesNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Indices_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Indices.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_IndicesAfterPost(DataSet: TDataSet);
begin
  if CDS_Indices.ChangeCount <> 0 then
  begin
    CDS_Indices.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieMatAfterDelete(DataSet: TDataSet);
begin
  if CDS_SerieMat.ChangeCount <> 0 then
  begin
    CDS_SerieMat.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieMatAfterPost(DataSet: TDataSet);
begin
  if CDS_SerieMat.ChangeCount <> 0 then
  begin
    CDS_SerieMat.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieMatNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_SerieMat_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_SerieMat.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.DTS_SerieMatDataChange(Sender: TObject; Field: TField);
begin
  CDS_SerieMatCODSERIE.DefaultExpression:=CDS_Serie.fieldByName('CODIGO').AsString;
end;



procedure TFrmDados.CDS_MensalidadeAfterPost(DataSet: TDataSet);
begin
  if(CDS_Mensalidade.ChangeCount <> 0) then
  begin
    CDS_Mensalidade.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_MensalidadeAfterDelete(DataSet: TDataSet);
begin
  if(CDS_Mensalidade.ChangeCount <> 0) then
  begin
    CDS_Mensalidade.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_MensalidadeNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Mensalidade_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Mensalidade.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_RelTurmaSerieAluAfterScroll(DataSet: TDataSet);
begin
if(FrmPesqSerie <> nil) then
begin
  with FrmPesqSerie do
  begin
    atualizaNotasEFaltas;
    calculaMediaEAssiduidade;
    if PnlMaterias.Visible = True then
    begin
      FrmDados.CDS_SerieMat.Active:=False;
      FrmDados.DBX_SerieMat.Active:=False;
      FrmDados.DBX_SerieMat.SQL.Clear;
      FrmDados.DBX_SerieMat.SQL.Add('SELECT * FROM SERIEMAT WHERE CODSERIE = '+ FrmDados.CDS_Serie.FieldByName('CODIGO').AsString);
      FrmDados.DBX_SerieMat.Active:=True;
      FrmDados.CDS_SerieMat.Active:=True;
    end;
    //endi
  end;
  //endth
end;
//endi
end;

procedure TFrmDados.CDS_AvaliacoesAfterScroll(DataSet: TDataSet);
begin
//  calculaMediaEAssiduidade;
end;

procedure TFrmDados.CDS_AssiduidadeAfterScroll(DataSet: TDataSet);
begin
//  calculaMediaEAssiduidade;
end;

procedure TFrmDados.CDS_TrabalhosAfterScroll(DataSet: TDataSet);
begin
//  calculaMediaEAssiduidade;
end;

procedure TFrmDados.CDS_SerieMasterAfterDelete(DataSet: TDataSet);
begin
  if CDS_SerieMaster.ChangeCount <> 0 then
  begin
    CDS_SerieMaster.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieMasterAfterPost(DataSet: TDataSet);
begin
  if CDS_SerieMaster.ChangeCount <> 0 then
  begin
    CDS_SerieMaster.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieMasterNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_SerieMaster_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_SerieMaster.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;
procedure TFrmDados.CDS_UsuarioNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Usuario_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Usuario.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_UsuarioAfterPost(DataSet: TDataSet);
begin
  if CDS_Usuario.ChangeCount <> 0 then
  begin
    CDS_Usuario.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_UsuarioAfterDelete(DataSet: TDataSet);
begin
  if CDS_Usuario.ChangeCount <> 0 then
  begin
    CDS_Usuario.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysPAfterDelete(DataSet: TDataSet);
begin
  if CDS_InvSysP.ChangeCount <> 0 then
  begin
    CDS_InvSysP.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysPAfterPost(DataSet: TDataSet);
begin
  if CDS_InvSysP.ChangeCount <> 0 then
  begin
    CDS_InvSysP.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysAfterPost(DataSet: TDataSet);
begin
  if CDS_InvSys.ChangeCount <> 0 then
  begin
    CDS_InvSys.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysAfterDelete(DataSet: TDataSet);
begin
  if CDS_InvSys.ChangeCount <> 0 then
  begin
    CDS_InvSys.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysFAfterDelete(DataSet: TDataSet);
begin
  if CDS_InvSysF.ChangeCount <> 0 then
  begin
    CDS_InvSysF.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysFAfterPost(DataSet: TDataSet);
begin
  if CDS_InvSysF.ChangeCount <> 0 then
  begin
    CDS_InvSysF.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_InvSysPNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_IncSysP_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_InvSysP.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_InvSysNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_InvSys_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_InvSys.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_InvSysFNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_InvSysF_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_InvSysF.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
     //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.AtualizaDados;
begin
//lala
end;

procedure TFrmDados.CDS_InvSysPAfterScroll(DataSet: TDataSet);
begin
  sSqlAnt := DBX_InvSys.SQL.Text;

  if Frmpnivelace = nil then
  begin
    with DBX_InvSys do
    begin
      CDS_InvSys.Active := False;
      Active := False;
      SQL.Clear;
      SQL.Add('SELECT * FROM INVSYS WHERE CODSYSP = '+CDS_InvSYSp.FieldByName('CODIGO').AsString);
      Active := True;
      CDS_InvSys.Active := True;
    end;
    //endth
  end;
  //endi
end;

procedure TFrmDados.CDS_SerieAfterScroll(DataSet: TDataSet);
begin
if FrmPesqSerie <> nil then
begin
  with FrmPesqSerie do
  begin
    DBX_Indices.active:=True;
    CDS_Indices.active:=True;

    CDS_RELTURMASERIEALU.Active:=False;
    DBX_RelTurmaSerieAlu.Active:=False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    if CBXAluCancel.Checked = False then
       begin
       DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = 0'+ CDS_Serie.fieldByName('CODIGO').AsString+' AND R.ANOLETIVO = '+FrmPesqSerie.EDGeralAno.Text + ' AND R.CANCEL_MATRICULA <> '+ QUOTEDSTR('V') + 'ORDER BY R.NUMERO')
       end
    else
       begin
         DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = 0'+ CDS_Serie.fieldByName('CODIGO').AsString+' AND R.ANOLETIVO = '+FrmPesqSerie.EDGeralAno.Text + 'ORDER BY R.NUMERO');
       end;
    //endi
    DBX_RelTurmaSerieAlu.Active:=True;
    CDS_RelTurmaSerieAlu.Active:=True;

    CDS_SerieMat.Active:=False;
    DBX_SerieMat.Active:=False;
    DBX_SerieMat.SQL.Clear;
    DBX_SerieMat.SQL.Add('SELECT * FROM SERIEMAT WHERE CODSERIE = 0'+ FrmDados.CDS_Serie.FieldByName('CODIGO').AsString);
    DBX_SerieMat.Active:=True;
    CDS_SerieMat.Active:=True;

    DBLookupComboBox1.ListFieldIndex:=CDS_SerieMat.fieldByName('CODIGO').AsInteger;
    DBLookupComboBox1.Refresh;

    if DBLookupComboBox1.Text = '' then
    begin
      GridProvas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridTrabalho.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridFaltas.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end
    else
    begin
      GridProvas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridTrabalho.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      GridFaltas.Options:=[dgEditing,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
    end;
    //endi
  end;
  //endth
end;
//endi
end;

procedure TFrmDados.CDS_UsuarioAfterScroll(DataSet: TDataSet);
begin
  sSqlAnt := frmdados.Dbx_invsysf.SQL.Text;
  Cds_invsysf.Active := false;

  with Dbx_invsysf do
    begin
      active := false;
      sql.Clear;
      if Cds_Usuario.RecordCount > 0 then
         begin
           sql.add('select * from invsysf where codusu = '+Cds_Usuario.fieldbyname('codigo').asString);
         end
      else
         begin
           sql.add('select * from invsysf where codusu = 0');
         end;
      //endi
      active := true;
    end;
  //endi

  Cds_invsysf.Active := true;
end;

procedure TFrmDados.CDS_CadAlunoAfterInsert(DataSet: TDataSet);
begin
  if not bAlunosI then
    CDS_CadAluno.Cancel;
end;

procedure TFrmDados.CDS_CadAlunoAfterEdit(DataSet: TDataSet);
begin
  if not bAlunosA then
    CDS_CadAluno.Cancel;
end;

procedure TFrmDados.CDS_SerieAfterEdit(DataSet: TDataSet);
begin
  if not bSeriesA then
    CDS_Serie.Cancel;
end;

procedure TFrmDados.CDS_SerieAfterInsert(DataSet: TDataSet);
begin
  if not bSeriesI then
    CDS_Serie.Cancel;
end;

procedure TFrmDados.CDS_CadMateriaAfterEdit(DataSet: TDataSet);
begin
  if not bMateriasA then
    CDS_CadMateria.Cancel;
end;

procedure TFrmDados.CDS_CadMateriaAfterInsert(DataSet: TDataSet);
begin
  if not bMateriasI then
    CDS_CadMateria.Cancel;
end;

procedure TFrmDados.CDS_SerieMatAfterEdit(DataSet: TDataSet);
begin
  if not bRelMatA then
    CDS_SerieMat.Cancel;
end;

procedure TFrmDados.CDS_SerieMatAfterInsert(DataSet: TDataSet);
begin
  if not bRelMAtI then
    CDS_SerieMat.Cancel;
end;

procedure TFrmDados.CDS_AssiduidadeAfterEdit(DataSet: TDataSet);
begin
  if not bNOtasA then
    CDS_Assiduidade.Cancel;
end;

procedure TFrmDados.CDS_AssiduidadeAfterInsert(DataSet: TDataSet);
begin
  if not bNOtasI then
    CDS_Assiduidade.Cancel;
end;

procedure TFrmDados.CDS_AvaliacoesAfterEdit(DataSet: TDataSet);
begin
  if not bNOtasA then
    CDS_Avaliacoes.Cancel;
end;

procedure TFrmDados.CDS_AvaliacoesAfterInsert(DataSet: TDataSet);
begin
  if not bNOtasI then
    CDS_Avaliacoes.Cancel;
end;

procedure TFrmDados.CDS_TrabalhosAfterEdit(DataSet: TDataSet);
begin
  if not bNOtasA then
    CDS_Trabalhos.Cancel;
end;

procedure TFrmDados.CDS_TrabalhosAfterInsert(DataSet: TDataSet);
begin
  if not bNOtasI then
    CDS_Trabalhos.Cancel;
end;

procedure TFrmDados.CDS_IndicesAfterDelete(DataSet: TDataSet);
begin
  if CDS_Indices.ChangeCount <> 0 then
  begin
    CDS_Indices.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_IndicesAfterInsert(DataSet: TDataSet);
begin
if FrmIndices <> nil then
begin
  with FrmIndices do
  begin
    if (Edano.Visible = False) then
    begin
      if not bAnoLetivoI then
      begin
        CDS_Indices.Cancel;
      end;
      //endi
    end
    else
    begin
      if not bDataI then
      begin
        CDS_Indices.Cancel;
      end;
      //endi
    end;
    //endi
  end;
  //endth
end;
//endi
end;

procedure TFrmDados.CDS_MensalidadeAfterInsert(DataSet: TDataSet);
begin
  if not bAlunosI then
    CDS_Mensalidade.Cancel;
  //endi
end;

procedure TFrmDados.CDS_MensalidadeAfterEdit(DataSet: TDataSet);
begin
  if FrmPesqAluno <> nil then
  begin
    if not (bAlunosA)then
      CDS_Mensalidade.cancel;
    //endi
  end;
  //endi
end;

procedure TFrmDados.CDS_UsuarioAfterEdit(DataSet: TDataSet);
begin
  if not bUsuariosA then
    CDS_Usuario.Cancel;
  //endi
end;

procedure TFrmDados.CDS_UsuarioAfterInsert(DataSet: TDataSet);
begin
  if not bUsuariosA then
    CDS_Usuario.Cancel;
  //endi
end;

procedure TFrmDados.CDS_InvSysFAfterEdit(DataSet: TDataSet);
begin
  if not bUsuariosA then
    CDS_InvSysF.Cancel;
  //endi
end;

procedure TFrmDados.CDS_InvSysFAfterInsert(DataSet: TDataSet);
begin
  if not bUsuariosI then
    CDS_InvSysF.Cancel;
  //endi
end;

procedure TFrmDados.CDS_DPAfterEdit(DataSet: TDataSet);
begin
  if not bAlunosA then
    CDS_DP.Cancel;
  //endi
end;

procedure TFrmDados.CDS_DPAfterInsert(DataSet: TDataSet);
begin
  if not bAlunosI then
    CDS_DP.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ProjetoAfterEdit(DataSet: TDataSet);
begin
  if not bProjetoA then
    CDS_Projeto.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ProjetoAfterInsert(DataSet: TDataSet);
begin
  if not bProjetoI then
    CDS_Projeto.Cancel;
  //endi
end;

procedure TFrmDados.CDS_AvaliacoesBeforePost(DataSet: TDataSet);
begin
  calculaMediaEAssiduidade;
  verificaAvaliacoes;
  iniciaTransacao;
end;

procedure TFrmDados.CDS_AvaliacoesBeforeDelete(DataSet: TDataSet);
begin
  calculaMediaEAssiduidade;
  iniciaTransacao;
end;

procedure TFrmDados.CDS_AssiduidadeBeforeDelete(DataSet: TDataSet);
begin
  calculaMediaEAssiduidade;
  iniciaTransacao;
end;

procedure TFrmDados.CDS_AssiduidadeBeforePost(DataSet: TDataSet);
begin
  calculaMediaEAssiduidade;
  verificaAssiduidade;
  iniciaTransacao;
end;

procedure TFrmDados.CDS_TrabalhosBeforePost(DataSet: TDataSet);
begin
  calculaMediaEAssiduidade;
  verificaTrabalhos;
  iniciaTransacao;
end;

procedure TFrmDados.CDS_TrabalhosBeforeDelete(DataSet: TDataSet);
begin
  calculaMediaEAssiduidade;
  iniciaTransacao;
end;

procedure TFrmDados.CDS_AluProjetoAfterDelete(DataSet: TDataSet);
begin
  if CDS_AluProjeto.ChangeCount <> 0 then
    CDS_AluProjeto.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_AluProjetoAfterPost(DataSet: TDataSet);
begin
  if CDS_AluProjeto.RecordCount <> 0 then
    CDS_AluProjeto.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_AluProjetoNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_AluProjeto_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_AluProjeto.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_AluProjetoAfterInsert(DataSet: TDataSet);
begin
  if not bAlunosI then
    CDS_AluProjeto.Cancel;
  //endi
end;

procedure TFrmDados.CDS_AluProjetoAfterEdit(DataSet: TDataSet);
begin
  if not bAlunosA then
    CDS_AluProjeto.Cancel;
  //endi
end;

procedure TFrmDados.CDS_CadAlunoCalcFields(DataSet: TDataSet);
var
  sValor,
  sDesconto:String;
  iQntd : integer;
  dValorFinal:double;
begin
TRY
begin
  if (CDS_CadAluno.FieldByName('Valor').AsString <> '') and (CDS_CadAluno.FieldByName('DESCONTO').AsString <> '') then
  begin
    try
      sDesconto := CDS_CadAluno.FieldByName('DESCONTO').AsString;
    except
      sDesconto := '0';
    end;
    sValor := CDS_CadAluno.FieldByName('Valor').AsString;
    sDesconto := trim(sDesconto);
    iQntd := length(sDesconto);

    dValorFinal := strtofloat(sValor) - (strtofloat(copy(sDesconto,0,2))/100)* strtofloat(sValor);

    if iQntd = 5 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
    end;
    //endi

    if iQntd = 8 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,7,2))/100) * dValorFinal;
    end;
    //endi

    if iQntd = 11 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,7,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,10,2))/100) * dValorFinal;
    end;
    //endi

    if iQntd = 14 then
    begin
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,4,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,7,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,10,2))/100) * dValorFinal;
      dValorFinal := dValorFinal - (strtofloat(copy(sDesconto,13,2))/100) * dValorFinal;
    end;
    //endi

    CDS_CadAlunoValorCDesc.Value := strtofloat(formatfloat('###,###,##0.00',dValorFinal));
  end
  else
  begin
    CDS_CadAlunoValorCDesc.Value := CDS_CadAluno.FieldByName('Valor').AsFloat;
  end;
  //endi
end
EXCEPT
  showmessage('O aluno '+CDS_CadAluno.FieldByName('Nome').AsString+' esta com dados incorretos no campo desconto!');
  Exit;
end;
end;

procedure TFrmDados.CDS_AluPedInfAfterDelete(DataSet: TDataSet);
begin
  if not bAluPedInfE then
    Exit;
  //endi

  if CDS_AluPedInf.ChangeCount <> 0 then
    CDS_AluPedInf.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_AluPedInfAfterPost(DataSet: TDataSet);
begin
  if CDS_AluPedInf.ChangeCount <> 0 then
    CDS_AluPedInf.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_AluPedInfNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_AluPedInf_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_AluPedInf.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_AluPedInfAfterEdit(DataSet: TDataSet);
begin
  if not bAluPedInfA then
    CDS_AluPedInf.Cancel;
end;

procedure TFrmDados.CDS_AluPedInfAfterInsert(DataSet: TDataSet);
begin
  if not bAluPedInfI then
    CDS_AluPedInf.Cancel;
  //endi
end;

procedure TFrmDados.CDS_FichaIndAluAfterPost(DataSet: TDataSet);
begin
  if CDS_FichaIndAlu.ChangeCount <> 0 then
  begin
    CDS_FichaIndAlu.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_FichaIndAluAfterDelete(DataSet: TDataSet);
begin
  if not bFichaIndAluE then
    Exit;
  if CDS_FichaIndAlu.ChangeCount <> 0 then
  begin
    CDS_FichaIndAlu.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_FichaIndAluNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_FichaIndAlu_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_FichaIndAlu.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_FichaIndAluAfterInsert(DataSet: TDataSet);
begin
  if not bFichaIndAluI then
    CDS_FichaIndAlu.Cancel;
  //endi
end;

procedure TFrmDados.CDS_FichaIndAluAfterEdit(DataSet: TDataSet);
begin
  if not bFichaIndAluA then
    CDS_FichaIndAlu.Cancel;
  //endi
end;

procedure TFrmDados.CDS_GradCurAfterDelete(DataSet: TDataSet);
begin
  if CDS_GradCur.ChangeCount <> 0 then
    CDS_GradCur.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_GradCurAfterPost(DataSet: TDataSet);
begin
  if CDS_GradCur.ChangeCount <> 0 then
    CDS_GradCur.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_GradCurNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Grade_Curricular_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_GradCur.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_CalendarioAfterPost(DataSet: TDataSet);
begin
  if CDS_Calendario.ChangeCount <> 0 then
    CDS_Calendario.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_CalendarioAfterDelete(DataSet: TDataSet);
begin
  if not bCalendarioE then
    Exit;
  //endi
  
  if CDS_Calendario.ChangeCount <> 0 then
    CDS_Calendario.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_CalendarioNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Calendario_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_Calendario.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_CalendarioAfterInsert(DataSet: TDataSet);
begin
  if not bCalendarioI then
    CDS_Calendario.Cancel;
end;

procedure TFrmDados.CDS_CalendarioAfterEdit(DataSet: TDataSet);
begin
  if not bCalendarioA then
    CDS_Calendario.Cancel;
end;

procedure TFrmDados.CDS_ContasRecAfterPost(DataSet: TDataSet);
begin
  if CDS_ContasRec.RecordCount <> 0 then
    CDS_ContasRec.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_ContasRecAfterDelete(DataSet: TDataSet);
begin
  if not bContasRecE then
    Exit;
  //endi
  
  if CDS_ContasRec.ChangeCount <> 0 then
    CDS_ContasRec.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_ContasRecNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_CONTASARECEBER_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_ContasRec.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_ContasRecAfterEdit(DataSet: TDataSet);
begin
  if not bContasRecA then
    CDS_ContasRec.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ContasRecAfterInsert(DataSet: TDataSet);
begin
  if not bContasRecI then
    CDS_ContasRec.Cancel;
  //endi
end;

procedure TFrmDados.CDS_HistoricoAfterDelete(DataSet: TDataSet);
begin
  if not bHistoricoE then
    Exit;
  //endi
  
  if CDS_Historico.ChangeCount <> 0 then
  begin
    CDS_Historico.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_HistoricoAfterPost(DataSet: TDataSet);
begin
  if CDS_Historico.ChangeCount <> 0 then
  begin
    CDS_Historico.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_HistoricoNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_historico_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_Historico.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_NotasAnterioresNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_NotasAnterirores_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_NotasAnteriores.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_NotasAnterioresAfterDelete(DataSet: TDataSet);
begin
  if not bHistoricoE then
  begin
    Exit;
  end;
  //endi
  
  if CDS_NotasAnteriores.ChangeCount <> 0 then
  begin
    CDS_NotasAnteriores.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_NotasAnterioresAfterPost(DataSet: TDataSet);
begin
  if CDS_NotasAnteriores.ChangeCount <> 0 then
  begin
    CDS_NotasAnteriores.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_HistoricoAfterScroll(DataSet: TDataSet);
begin
if FrmPesqHistorico <> nil then
begin
  try
    CDS_NotasAnteriores.Active := False;
    CDS_NotasAnterioresCODHIST.DefaultExpression := CDS_Historico.FieldByName('Codigo').AsString;
    DBX_NotasAnteriores.Active := False;
    DBX_NotasAnteriores.SQL.Clear;
    DBX_NotasAnteriores.SQL.Add('Select * from NotasAnterirores where codhist = 0' + CDS_Historico.FieldByName('CODIGO').AsString);
    DBX_NotasAnteriores.Active := True;
    CDS_NotasAnteriores.Active := True;
  except
  end;
  //endtry
end;
//endi
end;

procedure TFrmDados.CDS_HistoricoAfterEdit(DataSet: TDataSet);
begin
  if not bHistoricoA then
    CDS_Historico.Cancel;
  //endi
end;

procedure TFrmDados.CDS_HistoricoAfterInsert(DataSet: TDataSet);
begin
  if not bHistoricoI then
    CDS_Historico.Cancel;
  //endi
end;

procedure TFrmDados.CDS_NotasAnterioresAfterEdit(DataSet: TDataSet);
begin
  if not bHistoricoA then
    CDS_NotasAnteriores.Cancel;
  //endi
end;

procedure TFrmDados.CDS_NotasAnterioresAfterInsert(DataSet: TDataSet);
begin
  if not bHistoricoI then
    CDS_NotasAnteriores.Cancel;
  //endi
end;

procedure TFrmDados.CDS_DadosChequeNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_DADOS_CHEQUE_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_DadosCheque.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;
procedure TFrmDados.CDS_DadosChequeAfterPost(DataSet: TDataSet);
begin
  if CDS_DadosCheque.ChangeCount <> 0 then
    CDS_DadosCheque.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_DadosChequeAfterDelete(DataSet: TDataSet);
begin
  if CDS_DadosCheque.ChangeCount <> 0 then
    CDS_DadosCheque.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_EventoAfterDelete(DataSet: TDataSet);
begin
  if CDS_Evento.ChangeCount <> 0 then
    CDS_Evento.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_EventoAfterPost(DataSet: TDataSet);
begin
  if CDS_Evento.ChangeCount <> 0 then
    CDS_Evento.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_EventoNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Eventos_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_Evento.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_EventoAfterEdit(DataSet: TDataSet);
begin
  if not bEventoA then
    CDS_Evento.Cancel;
  //endi
end;

procedure TFrmDados.CDS_EventoAfterInsert(DataSet: TDataSet);
begin
  if not bEventoI then
    CDS_Evento.Cancel;
  //endi
end;

procedure TfrmDados.IniciaTransacao;
begin
  Sql_Dados.StartTransaction(TD);
end;

procedure TfrmDados.finalizaTransacao;
begin
  Sql_Dados.Commit(TD);
end;

procedure TFrmDados.CDS_ProjetoBeforePost(DataSet: TDataSet);
begin
  iniciaTransacao;
end;

procedure TFrmDados.CDS_ProjetoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  finalizaTransacao;
end;

procedure TFrmDados.CDS_ProjetoBeforeDelete(DataSet: TDataSet);
begin
  iniciaTransacao;
end;

procedure TFrmDados.CDS_CadAlunoAfterScroll(DataSet: TDataSet);
begin
 if FrmPesqAluno <> nil then
 begin
  //showmessage('Entrei');
  CDS_CadAluAnual.Active := False;
  CDS_CadAluAnualCODALU.DefaultExpression := CDS_CadAluno.FieldByName('codigo').AsString;
  DBX_CadAluAnual.Active := False;
  DBX_CadAluAnual.SQL.Clear;
  DBX_CadAluAnual.SQL.Add('SELECT * FROM CADALUNOANUAL WHERE CODALU = ' + CDS_CadAluno.FieldByName('codigo').AsString + ' order by ANO');
  DBX_CadAluAnual.Active := True;
  CDS_CadAluAnual.Active := True;

  FrmPesqAluno.EdAno.Text := CDS_CadAluAnual.FieldByName('ANO').AsString;
  FrmPEsqAluno.verificaBtn;
 end;
 //endi
end;

procedure TFrmDados.CDS_CadAluAnualAfterDelete(DataSet: TDataSet);
begin
  if CDS_CadAluAnual.ChangeCount <> 0 then
    CDS_CadAluAnual.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_CadAluAnualAfterPost(DataSet: TDataSet);
begin
  if CDS_CadAluAnual.ChangeCount <> 0 then
    CDS_CadAluAnual.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_CadAluAnualNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_CadAlunoAnual_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_CadAluAnual.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_CadAluAnualAfterEdit(DataSet: TDataSet);
begin
  if not bAlunosA then
    CDS_CadAluAnual.Cancel;
  //endi
end;

procedure TFrmDados.CDS_CadAluAnualAfterInsert(DataSet: TDataSet);
begin
  if not bAlunosI then
    CDS_CadAluAnual.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ReciboAfterDelete(DataSet: TDataSet);
begin
  if not bReciboE then
  begin
    Exit;
  end;
  //endi

  if CDS_Recibo.ChangeCount <> 0 then
  begin
    CDS_Recibo.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_ReciboAfterPost(DataSet: TDataSet);
begin
  if CDS_Recibo.ChangeCount <> 0 then
  begin
    CDS_Recibo.ApplyUpdates(0);
  end;
  //endi
end;

procedure TFrmDados.CDS_ReciboNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_Recibo_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Recibo.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
      ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_ReciboAfterEdit(DataSet: TDataSet);
begin
  if not bReciboA then
  begin
    CDS_Recibo.Cancel;
  end;
  //endi
end;

procedure TFrmDados.CDS_ReciboAfterInsert(DataSet: TDataSet);
begin
  if not bReciboI then
    CDS_Recibo.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ReciboAfterScroll(DataSet: TDataSet);
begin
  if FrmPesqRecibo <> nil then
  begin
    with FrmPesqRecibo do
    begin
      LblValor.Caption := extenso(FrmDados.CDS_Recibo.FieldByName('VALOR').AsCurrency);
    end;
    //endth
  end;
  //endi
end;

procedure TFrmDados.CDS_ContasRecNubiaAfterDelete(DataSet: TDataSet);
begin
  if not bContasRecNubiaE then
    Exit;
  //endi

  if CDS_ContasRecNubia.ChangeCount <> 0 then
    CDS_ContasRecNubia.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_ContasRecNubiaAfterEdit(DataSet: TDataSet);
begin
  if not bContasRecNubiaA then
    CDS_ContasRecNubia.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ContasRecNubiaAfterInsert(DataSet: TDataSet);
begin
  if not bContasRecNubiaI then
    CDS_ContasRecNubia.Cancel;
  //endi
end;

procedure TFrmDados.CDS_ContasRecNubiaAfterPost(DataSet: TDataSet);
begin
  if CDS_ContasRecNubia.RecordCount <> 0 then
    CDS_ContasRecNubia.ApplyUpdates(0);
  //endi
end;

procedure TFrmDados.CDS_ContasRecNubiaNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_CONTASARECEBERNUBIA_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       CDS_ContasRecNubia.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_ContasRecNubiaAfterScroll(DataSet: TDataSet);
begin
  if FrmPesqContasRecNubia <> nil then
  begin
    if CDS_ContasRecNubia.FieldByName('OBS').AsString = '' then
      FrmPesqContasRecNubia.BtnObs.Visible := False
    else
      FrmPesqContasRecNubia.BtnObs.Visible := True;
    //endi
  end;
  //endi
end;

procedure TFrmDados.CDS_SANGRIANewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_SANGRIA_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_SANGRIA.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_INGESTAONewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_INGESTAO_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_INGESTAO.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
    //endi
  finally
    ResultSet.Free;
  end;
end;

procedure TFrmDados.CDS_SANGRIAAfterPost(DataSet: TDataSet);
begin
  if Cds_SANGRIA.ChangeCount <> 0 then
  begin
    Cds_SANGRIA.ApplyUpdates(0);
  end;
  //endi

end;

procedure TFrmDados.CDS_INGESTAOAfterPost(DataSet: TDataSet);
begin
  if Cds_INGESTAO.ChangeCount <> 0 then
  begin
    Cds_INGESTAO.ApplyUpdates(0);
  end;
  //endi

end;

procedure TFrmDados.CDS_SANGRIAAfterDelete(DataSet: TDataSet);
begin
  if Cds_SANGRIA.ChangeCount <> 0 then
  begin
    Cds_SANGRIA.ApplyUpdates(0);
  end;
  //endi

end;

procedure TFrmDados.CDS_INGESTAOAfterDelete(DataSet: TDataSet);
begin
  if Cds_INGESTAO.ChangeCount <> 0 then
  begin
    Cds_INGESTAO.ApplyUpdates(0);
  end;
  //endi

end;

end.
