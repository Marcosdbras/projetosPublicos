unit uGeral;

interface

uses
  Windows, Messages, DBTables, Db, SysUtils, Classes, Graphics ,
  Controls, Forms, Dialogs, Menus,  ExtCtrls ,WinProcs, uSplash,
  StdCtrls, Buttons, DBCtrls, Mask, ComCtrls, Grids, DBGrids,
  SqlExpr, ImgList, dbcgrids, strUtils, math, ShellAPI, IniFiles,
  Dbclient,Winsock,  IdStack, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;


Type

  TThreadLeStatus = class(TThread)
    Tempo : boolean;
    Private
      ThreadMemo : Tmemo;
    Published
       constructor Inicia( Memo : TMemo);
    Protected
      procedure Execute; override;
  end;

  Function  Botoes(P:TPanel;B:Boolean):Boolean;
  Function  Estado(sUF:string;Mensagem:Boolean):Boolean;
  Function  SM(Mensagem:String):Boolean;
  Function  tirapontos(pValor:string):string;
  Function  tiratracos(pValor:string):string;
  Function  tirabarras(pValor:string):string;
  Function  tirafimarq(pValor:string):string;

  Function  tira(pValor:string; retira:pchar):string;

  Function  cript(senha,chave,operacao : string) : string;
  Function  Extenso(mNum:Currency):String;
  Function  SerialNum(FDrive:String) :String;
  Function  MesExtenso(mDt:tDateTime):String;
  Function  DataPorExtenso(mDt:tDateTime):String;
  Function  Arred0dec(pValor:real):real;
  Function  Arre1dec(pValor:real):real;
  function TrataAcentos(Dados : String) : String;
  Procedure le_ecf;
  Procedure Atualizar;
  Procedure bloqueio(arquivo:String);
  Procedure desbloqueio(arquivo:String);
  procedure EnDecryptFile(INFName, OutFName : String; Chave : Word);
  procedure fechatodos;
  function FindReplace (Var Enc:String; Var subs: String; Var Texto: String): string;
  function Decimal_Is_Point(var Valor:String):String;
  function Decimal_Is_Pointf(var Valor:String):String;
  function Decimal_Is_Coma(var Valor:String):String;

  function Bar_Is_Point(var sData:string):string;
  function datainvertida(var sData:string):string;
  function EnDecryptString(StrValue : String; Chave: Word) : String;
  function LerArqTexto ( nomeDoArquivo: String ):string;
  function Localiza_Itens_Usuario(MenuItem:tMenuItem;cUsu:String):Integer;
  function Localiza_DetItens_Usuario(AcesTag:integer;cUsu:integer;Op:string):Integer;
  function AlinNumD(iEspaco:integer;fValor:real):String;
  function Locaiza_ItensUsuS(iAc:Integer;cUsu:String):Integer;
  Function JanelaExiste(Classe,Janela:String) :Boolean;
  Function DelphiCarregado : Boolean;
  function NetSend(dest, source, msg: string): longint;
  function replicar(sCaracter:string;iVezes:integer):String;
  function AlinNumD3(iEspaco:integer;fValor:real):String;
  procedure PostKeyEx32(Key: Word; const Shift: TShiftState; SpecialKey: boolean);
  procedure  iniciavarglobal;
  Function Arredondar(value: double;casas : integer): double;
  Function ArredondarMaior(value: double;casas : integer): double;
  function AlinNumD0(iEspaco:integer;fValor:real):String;
  function calc_data(sDataI:String;iPrazo:Integer):String;
  function calc_prazo(sDataI:String;sDataF:String):real;
  function ExRound(Value: Extended; Decimals: Integer): Extended;
  function GetBuildInfo(prog: String): String;
  function DSiFileSize(const fileName: string): int64;
  procedure Atualiza_Versao_Aplicacao;
  function Grid_Ordena_e_PintaTitulo(xGrid: DBGrids.TDBGrid; Column: TColumn; CDS: TClientDataSet): boolean;
  procedure criatb(aColunas:array of string);
  FUNCTION ChecaCEP(cEstado:STRING;cCep:STRING): Boolean;
  function ipexterno(IP: TIdHTTP):string;
  procedure atuabase(sArquivo:string);

  procedure restaura(OpenDialog1:tOpenDialog);
  procedure backup(SaveDialog1:tSaveDialog);
  function DiaSemana(Data:TDateTime): String;
  function SetScreenResolution(Width, Height: integer): Longint;
  function ValidaCPF(numCPF: string): boolean;
  function ValidaCNPJ(numCNPJ: string): boolean;
  function TestaCpf( xCPF:String ):Boolean;
  function TestaCgc(xCGC: String):Boolean;
  function SystemDateTime(tDate: TDateTime; tTime: TDateTime): Boolean;
  function validapis(Dado : String) : boolean;
  function ValiData(Data: String):Boolean;
  function ChecaEstado(Dado : string) : boolean;
  function FileCopy(source,dest: String): Boolean;
  function ArredontaFloat(x : Real): Real;
  Function clasifica(J:tStringgrid):boolean;
  procedure histtab(ntab:string; operacao:string; codreg:integer; descricao:string; cusu:integer);
  function fnumD(Objeto: TEdit; Texto, VKey: String; Espaco, Decimal: Integer): String;
  function DigitoCidade( Codigo : String ) : String;
  Procedure CopiArq( Const sourcefilename, targetfilename: String );
  function localizanumero(descricao:string):integer;
  function FileAgeCreate(const FileName: string): Integer;
  function datacriexe:string;
  function datamodexe:string;
  function VerificaCNPJ(I:string): Boolean;



 {vari�veis globais}

 Var

   sversao,
   svigenciainicio,
   svigenciafim,
   schave,
   sfonte,
   sufpadrao:string;



   hfile:thandle = Invalid_Handle_Value;



   form_ativo           : string = '';
   Tabela               : String = '';
   Tabela_Ant           : String = '';
   sMsg                 : String = '';
   iretornogav          : integer = 0;
   iaborta              : integer = 0;
   sImpF                : String = '';
   sImpFg               : String = '';
   sgDataI              : string = '';
   sgDataF              : string = '';
   sgDataIb             : string = '';
   sgDatafb             : string = '';
   sNumSerieHD          : string = '';
   bbloqueado            : boolean = true;
   itipoimpf            : integer;
   texto_retorno_gaveta : string;
   iultcod              : integer;

   ilegal1, ilegal2, ilegal3:boolean;

   abloqueio: array of string;


   iNIvelUsuario:Integer;
   iResposta:integer;
   blogin:boolean;
   icusu, iTag:integer;
   exec:integer;
   bEofBaixa:boolean;

   bAltDesc,
   bAltVend,
   bAltP,
   bLanDesc,
   bVenda,
   bConfInt,
   bLimiteDesc,
   bVSEstq,
   bVSAtend,
   bfechavendab,
   bPgtoOrc,
   bFvb,
   bPerA,
   bPerS,

   bIndiceI,
   bComissaoI,
   bComissaorI,
   bSangriaI,
   bIngestaoI,
   bcmobraI,
   bSituOsI,
   bHistI,
   bEquipCliI,
   bImgEquipCliI,
   bNFEI,
   bNFI,
   bSituNFEI,
   bModuloI,
   bNFPI,
   bNFMI,
   bdMobraI,
   bConf_NFI,
   bNatOpI,
   bNatOpNFI,
   bTipoCliI,
   bCaixaApaI,
   bCaixaApsI,
   bTransportadoresI,
   bCFI,
   bSITAI,
   bSITBI,
   bIPII,
   bAliqImpFisI,
   bEstadosI,
   bMunicI,
   bPaisI,
   bImpRecAntI,
   bvEnt_EstqI,
   bTipo_ProdI,
   bvDvendasI,
   bConfigI,
   bVendabI,
   bConfIntI,
   bMovRegI,
   bsVendaI,
   bdVendaI,
   btipo_pgtoI,
   bVencimentosI,
   bVencimentos_NFI,
   bProdutosI,
   bvProdutosI,
   bvVendasI,
   bFornecedoresI,
   bModbcstI,
   bPisI,
   bTipoTabI,
   bMat_RestaurarI,
   bMat_Rest_IDI,
   bMatRepI,
   bCofinsI,
   bViiI,
   bprocedimentosI,
   bOimpI,
   bIr_iiI,
   bModbcI,
   bTgicmsI,
   bComprasI,
   bClientesI,
   bTipoTab_PorcentagemI,
   bTabPrProcI,
   bTabPrPI,
   bTabPrSI,
   bHistTabI,
   bAgedodiaI,
   blivrocaixaI,
   bAgendaI,
   btotalcmdbI,
   bApontamentoI,
   bPedCancI,
   bPedidoI,
   bEnt_ProdI,
   bdProdutosI,
   bUsuariosI,
   bInvsysI,
   bInvsysfI,
   bInvsysfconI,
   bInvsyspI,
   bGrupoI,
   bTempI,
   bSituRecI,
   bSituCadCliI,
   bSituPagarI,
   bClassepI,
   bClasseI,
   bPagarI,
   bMarcaI,
   bRepresentantesI,
   bFuncionariosI,
   bUnidadeI,
   bOSI,
   bOSTI,
   bIndiceA,
   bComissaoA,
   bComissaorA,
   bSangriaA,
   bIngestaoA,
   bcmobraA,
   bSituOsA,
   bHistA,
   bEquipCliA,
   bImgEquipCliA,
   bNFEA,
   bNFA,
   bSituNFEA,
   bModuloA,
   bNFPA,
   bNFMA,
   bdMobraA,
   bConf_NFA,
   bNatOpA,
   bNatOpNFA,
   bTipoCliA,
   bCaixaApaA,
   bCaixaApsA,
   bTransportadoresA,
   bCFA,
   bSITAA,
   bSITBA,
   bIPIA,
   bAliqImpFisA,
   bEstadosA,
   bMunicA,
   bPaisA,
   bImpRecAntA,
   bvEnt_EstqA,
   bTipo_ProdA,
   bvDvendasA,
   bConfigA,
   bVendabA,
   bConfIntA,
   bMovRegA,
   bsVendaA,
   bdVendaA,
   btipo_pgtoA,
   bVencimentosA,
   bVencimentos_NFA,
   bProdutosA,
   bvProdutosA,
   bvVendasA,
   bFornecedoresA,
   bModbcstA,
   bPisA,
   bTipoTabA,
   bMat_RestaurarA,
   bMat_Rest_IDA,
   bMatRepA,
   bCofinsA,
   bViiA,
   bprocedimentosA,
   bOimpA,
   bIr_iiA,
   bModbcA,
   bTgicmsA,
   bComprasA,
   bClientesA,
   bTipoTab_PorcentagemA,
   bTabPrProcA,
   bTabPrPA,
   bTabPrSA,
   bHistTabA,
   bAgedodiaA,
   blivrocaixaA,
   bAgendaA,
   btradentaA,
   btotalcmdbA,
   bApontamentoA,
   bPedCancA,
   bPedidoA,
   bEnt_ProdA,
   bdProdutosA,
   bUsuariosA,
   bInvsysA,
   bInvsysfA,
   bInvsysfconA,
   bInvsyspA,
   bGrupoA,
   bTempA,
   bSituRecA,
   bSituCadCliA,
   bSituPagarA,
   bClassepA,
   bClasseA,
   bPagarA,
   bMarcaA,
   bRepresentantesA,
   bFuncionariosA,
   bUnidadeA,
   bOSA,
   bOSTA,
   bIndiceV,
   bComissaoV,
   bComissaorV,
   bSangriaV,
   bIngestaov,
   bcmobraV,
   bSituOsV,
   bHistV,
   bEquipCliV,
   bImgEquipCliV,
   bNFEV,
   bNFV,
   bSituNFEV,
   bModuloV,
   bNFPV,
   bNFMV,
   bdMobraV,
   bConf_NFV,
   bNatOpV,
   bNatOpNFV,
   bTipoCliV,
   bCaixaApaV,
   bCaixaApsV,
   bTransportadoresV,
   bCFV,
   bSITAV,
   bSITBV,
   bIPIV,
   bAliqImpFisV,
   bEstadosV,
   bMunicV,
   bPaisV,
   bImpRecAntV,
   bvEnt_EstqV,
   bTipo_ProdV,
   bvDvendasV,
   bConfigV,
   bVendabV,
   bConfIntV,
   bMovRegV,
   bsVendaV,
   bdVendaV,
   btipo_pgtoV,
   bVencimentosV,
   bVencimentos_NFV,
   bProdutosV,
   bvProdutosV,
   bvVendasV,
   bFornecedoresV,
   bModbcstV,
   bPisV,
   bTipoTabV,
   bMat_RestaurarV,
   bMat_Rest_IDV,
   bMatRepV,
   bCofinsV,
   bViiV,
   bprocedimentosV,
   bOimpV,
   bIr_iiV,
   bModbcV,
   bTgicmsV,
   bComprasV,
   bClientesV,
   bTipoTab_PorcentagemV,
   bTabPrProcV,
   bTabPrPV,
   bTabPrSV,
   bHistTabV,
   bAgedodiaV,
   blivrocaixaV,
   bAgendaV,
   btotalcmdbV,
   bApontamentoV,
   bPedCancV,
   bPedidoV,
   bEnt_ProdV,
   bdProdutosV,
   bUsuariosV,
   bInvsysV,
   bInvsysfV,
   bInvsysfconV,
   bInvsyspV,
   bGrupoV,
   bTempV,
   bSituRecV,
   bSituCadCliV,
   bSituPagarV,
   bClassepV,
   bClasseV,
   bPagarV,
   bMarcaV,
   bRepresentantesV,
   bFuncionariosV,
   bUnidadeV,
   bOSV,
   bOSTV,
   bIndiceE,
   bComissaoE,
   bComissaorE,
   bSangriaE,
   bIngestaoE,
   bcmobraE,
   bSituOsE,
   bHistE,
   bEquipCliE,
   bImgEquipCliE,
   bNFEE,
   bNFE,
   bSituNFEE,
   bModuloE,
   bNFPE,
   bNFME,
   bdMobraE,
   bConf_NFE,
   bNatOpE,
   bNatOpNFE,
   bTipoCliE,
   bCaixaApaE,
   bCaixaApsE,
   bTransportadoresE,
   bCFE,
   bSITAE,
   bSITBE,
   bIPIE,
   bAliqImpFisE,
   bEstadosE,
   bMunicE,
   bPaisE,
   bImpRecAntE,
   bvEnt_EstqE,
   bTipo_ProdE,
   bvDvendasE,
   bConfigE,
   bVendabE,
   bConfIntE,
   bMovRegE,
   bsVendaE,
   bdVendaE,
   btipo_pgtoE,
   bVencimentosE,
   bVencimentos_NFE,
   bProdutosE,
   bvProdutosE,
   bvVendasE,
   bFornecedoresE,
   bModbcstE,
   bPisE,
   bTipoTabE,
   bMat_RestaurarE,
   bMat_Rest_IDE,
   bMatRepE,
   bCofinsE,
   bViiE,
   bprocedimentosE,
   bOimpE,
   bIr_iiE,
   bModbcE,
   bTgicmsE,
   bComprasE,
   bClientesE,
   bTipoTab_PorcentagemE,
   bTabPrProcE,
   bTabPrPE,
   bTabPrSE,
   bHistTabE,
   bAgedodiaE,
   blivrocaixaE,
   bAgendaE,
   btotalcmdbE,
   bApontamentoE,
   bPedCancE,
   bPedidoE,
   bEnt_ProdE,
   bdProdutosE,
   bUsuariosE,
   bInvsysE,
   bInvsysfE,
   bInvsysfconE,
   bInvsyspE,
   bGrupoE,
   bTempE,
   bSituRecE,
   bSituCadCliE,
   bSituPagarE,
   bClassepE,
   bClasseE,
   bPagarE,
   bMarcaE,
   bRepresentantesE,
   bFuncionariosE,
   bUnidadeE,
   bOSE,
   bOSTE,
   bIndiceN,
   bComissaoN,
   bComissaorN,
   bSangriaN,
   bIngestaoN,
   bcmobraN,
   bSituOsN,
   bHistN,
   bEquipCliN,
   bImgEquipCliN,
   bNFEN,
   bNFN,
   bSituNFEN,
   bModuloN,
   bNFPN,
   bNFMN,
   bdMobraN,
   bConf_NFN,
   bNatOpN,
   bNatOpNFN,
   bTipoCliN,
   bCaixaApaN,
   bCaixaApsN,
   bTransportadoresN,
   bCFN,
   bSITAN,
   bSITBN,
   bIPIN,
   bAliqImpFisN,
   bEstadosN,
   bMunicN,
   bPaisN,
   bImpRecAntN,
   bvEnt_EstqN,
   bTipo_ProdN,
   bvDvendasN,
   bConfigN,
   bVendabN,
   bConfIntN,
   bMovRegN,
   bsVendaN,
   bdVendaN,
   btipo_pgtoN,
   bVencimentosN,
   bVencimentos_NFN,
   bProdutosN,
   bvProdutosN,
   bvVendasN,
   bFornecedoresN,
   bModbcstN,
   bPisN,
   bTipoTabN,
   bMat_RestaurarN,
   bMat_Rest_IDN,
   bMatRepN,
   bCofinsN,
   bViiN,
   bprocedimentosN,
   bOimpN,
   bIr_iiN,
   bModbcN,
   bTgicmsN,
   bComprasN,
   bClientesN,
   bTipoTab_PorcentagemN,
   bTabPrProcN,
   bTabPrPN,
   bTabPrSN,
   bHistTabN,
   bAgedodiaN,
   blivrocaixaN,
   bAgendaN,
   btotalcmdbN,
   bApontamentoN,
   bPedCancN,
   bPedidoN,
   bEnt_ProdN,
   bdProdutosN,
   bUsuariosN,
   bInvsysN,
   bInvsysfN,
   bInvsysfconN,
   bInvsyspN,
   bGrupoN,
   bTempN,
   bSituRecN,
   bSituCadCliN,
   bSituPagarN,
   bClassepN,
   bClasseN,
   bPagarN,
   bMarcaN,
   bRepresentantesN,
   bFuncionariosN,
   bUnidadeN,
   bOSN,
   bOSTN,
   bIndiceR,
   bComissaoR,
   bComissaorR,
   bSangriaR,
   bIngestaoR,
   bcmobraR,
   bSituOsR,
   bHistR,
   bEquipCliR,
   bImgEquipCliR,
   bNFER,
   bNFR,
   bSituNFER,
   bModuloR,
   bNFPR,
   bNFMR,
   bdMobraR,
   bConf_NFR,
   bNatOpR,
   bNatOpNFR,
   bTipoCliR,
   bCaixaApaR,
   bCaixaApsR,
   bTransportadoresR,
   bCFR,
   bSITAR,
   bSITBR,
   bIPIR,
   bAliqImpFisR,
   bEstadosR,
   bMunicR,
   bPaisR,
   bImpRecAntR,
   bvEnt_EstqR,
   bTipo_ProdR,
   bvDvendasR,
   bConfigR,
   bVendabR,
   bConfIntR,
   bMovRegR,
   bsVendaR,
   bdVendaR,
   btipo_pgtoR,
   bVencimentosR,
   bVencimentos_NFR,
   bProdutosR,
   bvProdutosR,
   bvVendasR,
   bFornecedoresR,
   bModbcstR,
   bPisR,
   bTipoTabR,
   bMat_RestaurarR,
   bMat_Rest_IDR,
   bMatRepR,
   bCofinsR,
   bViiR,
   bprocedimentosR,
   bOimpR,
   bIr_iiR,
   bModbcR,
   bTgicmsR,
   bComprasR,
   bClientesR,
   bTipoTab_PorcentagemR,
   bTabPrProcR,
   bTabPrPR,
   bTabPrSR,
   bHisttabR,
   bAgedodiaR,
   blivrocaixaR,
   bAgendaR,
   btotalcmdbR,
   bApontamentoR,
   bPedCancR,
   bPedidoR,
   bEnt_ProdR,
   bdProdutosR,
   bUsuariosR,
   bInvsysR,
   bInvsysfR,
   bInvsysfconR,
   bInvsyspR,
   bGrupoR,
   bTempR,
   bSituRecR,
   bSituCadCliR,
   bSituPagarR,
   bClassepR,
   bClasseR,
   bPagarR,
   bMarcaR,
   bRepresentantesR,
   bFuncionariosR,
   bUnidadeR,
   bOSR,
   bOSTR,
   bIndiceCf,
   bComissaoCf,
   bComissaorCf,
   bSangriaCf,
   bIngestaoCf,
   bcmobraCf,
   bSituOsCf,
   bHistCf,
   bEquipCliCf,
   bImgEquipCliCf,
   bNFECf,
   bNFCf,
   bSituNFECf,
   bModuloCf,
   bNFPCf,
   bNFMCf,
   bdMobraCf,
   bConf_NFCf,
   bNatOpCf,
   bNatOpNFCf,
   bTipoCliCf,
   bCaixaApaCf,
   bCaixaApsCf,
   bTransportadoresCf,
   bCFCf,
   bSITACf,
   bSITBCf,
   bIPICf,
   bAliqImpFisCf,
   bEstadosCf,
   bMunicCf,
   bPaisCf,
   bImpRecAntCf,
   bvEnt_EstqCf,
   bTipo_ProdCf,
   bvDvendasCf,
   bConfigCf,
   bVendabCf,
   bConfIntCf,
   bMovRegCf,
   bsVendaCf,
   bdVendaCf,
   btipo_pgtoCf,
   bVencimentosCf,
   bVencimentos_NFCf,
   bProdutosCf,
   bvProdutosCf,
   bvVendasCf,
   bFornecedoresCf,
   bModbcstCf,
   bPisCf,
   bTipoTabCf,
   bMat_RestaurarCf,
   bMat_Rest_IDCf,
   bMatRepCf,
   bCofinsCf,
   bViiCf,
   bprocedimentosCf,
   bOimpCf,
   bIr_iiCf,
   bModbcCf,
   bTgicmsCf,
   bComprasCf,
   bClientesCf,
   bTipoTab_PorcentagemCf,
   bTabPrProcCf,
   bTabPrPCf,
   bTabPrSCf,
   bHistTabCf,
   bAgedodiaCf,
   blivrocaixaCf,
   bAgendaCf,
   btotalcmdbCf,
   bApontamentoCf,
   bPedCancCf,
   bPedidoCf,
   bEnt_ProdCf,
   bdProdutosCf,
   bUsuariosCf,
   bInvsysCf,
   bInvsysfCf,
   bInvsysfconCf,
   bInvsyspCf,
   bGrupoCf,
   bTempCf,
   bSituRecCf,
   bSituCadCliCf,
   bSituPagarCf,
   bClassepCf,
   bClasseCf,
   bPagarCf,
   bMarcaCf,
   bRepresentantesCf,
   bFuncionariosCf,
   bOSCf,
   bOSTCf,
   bUnidadeCf:boolean;


   buffer,
   cmd: String;
   comunica, cnpjemitente: String;
   retornoimp,

   envia,
   porta,
   comando,
   fecha,
   modo: Integer;

   negrito,
   italico,
   sublinhado,
   expandido: Integer;

   PGAltura,
   PGLargura : Integer;

   ThreadStatus : TThreadLeStatus;

   DLLG2Handle,
   iRet,
   CodErro : Longint;
   NomeErro,
   Circunstancia : PChar;
   ValorRetorno : String;




implementation
uses baixarncm,
     upesqcf,
     upesqcfop,
     upesqclientes,
     upesqcmobra,
     upesqcofins,
     upesqcsosn,
     upesqemitente,
     upesqest,
     upesqfornecedores,
     upesqicms,
     upesqimpostoi,
     upesqimpostoii,
     upesqimpostoiii,
     upesqipi,
     upesqmodbc,
     upesqmodbcst,
     upesqmunic,
     upesqnatop,
     upesqnf,
     upesqpaises,
     upesqpis,
     upesqprodnf,
     upesqprodutos,
     upesqrcserv,
     upesqregtrib,
     upesqsita,
     upesqsitb,
     upesqtiposerv,
     upesqtransportadora,
     upesqunidade,
     uindice,
     upesqnfemi,
     uprincipal,
     udados;


procedure EnDecryptFile(INFName, OutFName : String; Chave : Word);
var
InMS, OutMS : TMemoryStream;
I : Integer;
C : byte;
begin
  {Como usar
  EnDecryptFile(vardir+'cliente.dbf', vardir+'cliente.dbf', 15);
  }
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;
  try
    InMS.LoadFromFile(INFName);
    InMS.Position := 0;
    for I := 0 to InMS.Size - 1 do
       begin
         InMS.Read(C, 1);
         C := (C xor not(ord(chave shr I)));
         OutMS.Write(C,1);
       end;
    //endfor
    OutMS.SaveToFile(OutFName);
  finally
    InMS.Free;
    OutMS.Free;
  end;

end;


Procedure Bloqueio(Arquivo:String);
begin
//hfile := createfile(pchar(Arquivo),Generic_Read,File_Share_Read,nil,Open_Existing,0,0);
hfile := createfile(pchar('Arquivo.doc'),Generic_Read,File_Share_Read,nil,Open_Existing,0,0);
end;

Procedure desBloqueio(Arquivo:String);
begin
if hfile <> Invalid_Handle_Value then
   CloseHandle(hfile);
//endi
end;

function TrataAcentos(Dados : String) : String;
var
Retorno : String;
i, y : Integer;
const
Codigos: array[1..29] of String = (#160,#133,#198,#131,#181,#183,#199,
#182,#130,#136,#144,#210,#161,#214,#162,#111,#228,#229,#224,#174,#163,
#129,#233,#154,#135,#128,#167,#166,#248);
begin // Teclado 850 Multilingua
for i := 1 to Length(Dados) do
begin
y := Pos(Dados[i], '�������������������������Ǻ��');
if y > 0 then
Retorno := Retorno + Codigos[y]
else
Retorno := Retorno + Dados[i];
end;
Result := Retorno;
end;

//Para us�-la, basta fazer a chamada da seguinte maneira:
//Writeln(Arqtxt, TrataAcentos(string_acentuada));

//Func�o p/ Mover p/ o Proximo registro
Function  SM(Mensagem:String):Boolean;
begin
    ShowMessage(Mensagem);
    SM:=True;
end;

Function  Botoes(P:TPanel;B:Boolean):Boolean;
var
  I: Integer;
Begin
  For I:= 0 to P.ControlCount - 1 do    // o for e de zero a numero total de botoes.
      P.Controls[I].Enabled:=B;
 Botoes:=True;
End;

Function Estado(sUF:string;Mensagem:Boolean):Boolean ;
Begin
     If (suf <> 'RS') and
        (suf <> 'PR') and
        (suf <> 'SC') and
        (suf <> 'SP') and
        (suf <> 'Rj') and
        (suf <> 'ES') and
        (suf <> 'MG') and
        (suf <> 'SE') and
        (suf <> 'AL') and
        (suf <> 'PE') and
        (suf <> 'RN') and
        (suf <> 'BA') and
        (suf <> 'PI') and
        (suf <> 'MA') and
        (suf <> 'PB') and
        (suf <> 'PA') and
        (suf <> 'AC') and
        (suf <> 'AM') and
        (suf <> 'TO') and
        (suf <> 'AP') and
        (suf <> 'RR') and
        (suf <> 'RO') and
        (suf <> 'MT') and
        (suf <> 'MS') and
        (suf <> 'DF') and
        (suf <> 'GO') Then

        begin
           Estado:=False ;
           If Mensagem = True then
              ShowMessage('Este Estado n�o Existe');
       end
  Else
    Estado:=True;
End;

function tira(pValor:string; retira:pchar):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos(retira,pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;


function tirapontos(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos('.',pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;

function tiratracos(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos('-',pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;


function tirabarras(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos('/',pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;



function tirafimarq(pValor:string):string;
var pPosI:integer;
var pPosF:integer;
var pNovoValor:string;
begin
   result := '';
   pNovoValor:='';
   pPosI:=1;
   while true do
     begin
       pPosF := pos(#3,pValor);
       if pPosF > 0 then
          begin
            pNovoValor:=pNovoValor+copy(pValor,pPosI,pPosF - 1);
            pValor:=copy(pValor,pPosF+1,length(pValor));
          end
       else
          begin
            result:=pNovoValor+pValor;
            exit;
          end;
     end;
 //endw
end;





function Cript(senha,chave,operacao: string) : string;
var
   i, tamanhostring, pos, posletra, tamanhochave : integer;
begin
   result := '';
   result := senha;
   tamanhostring := length(senha);
   tamanhochave  := length(chave);
   for i := 1 to tamanhostring do
      begin
         pos := (i mod tamanhochave);
         if pos = 0 then pos := tamanhochave;
         pos := pos + 7;
         if operacao = 'descript' then
            begin
               posLetra := ord(result[i]) + pos;
            end
         else
            begin
               posLetra := ord(result[i]) - pos;
            end;
         //endif
         result[i] := chr(posletra);
      end;
   //endfor
end;

Function Extenso(mNum:Currency):String;

  Function NrBaixos(mNumB:Integer):String;
    Const mStrNumB : Array[0..18] of pChar = ('um', 'dois', 'tr�s', 'quatro', 'cinco', 'seis', 'sete',
          'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito',
          'dezenove');
    begin
      result := '';
      result := mStrNumb[mNumb -1]+' ';
    end;
  //endfunction

  Function NrMedios(mNumM:Integer):String;
    Var
      mStrNumM,
      mStrDig : String;
    begin
      mStrNumM := '';
      mStrDig := '';
      result := '';

      if mNumM < 20 then
         Result := NrBaixos(mNumM)
      else
         begin
           Result := '';
           mStrDig := '00'+IntToStr(mNumM);
           mStrDig := Copy (mStrDig,length(mStrDig)-1,2);
           mStrNumM := 'vinte    trinta   quarenta '+'cinquenta sessenta setenta  '+'oitenta  noventa  ';
           Result := TrimRight( Copy( mStrNumM,((StrToInt(mStrDig[1])-2)*9)+1,9))+' ';
           if StrtoInt(mStrDig[2]) > 0 then
              Result := Result + 'e '+NrBaixos(StrtoInt(mStrDig[2]));
           //endi
         end;
      //endi
    end;
  //endfunction

  Function NrAltos(mNumA:Integer):String;
    Var
      mStrNumA,
      mStrDig:String;
    begin

      mStrNumA := '';
      mStrDig := '';
      result := '';

      if mNumA = 100 then
         Result := 'Cem '
      else
         begin
           Result := '';
           mStrDig := '00'+IntToStr(mNumA);
           mStrDig := Copy(mStrDig,length(mStrDig)-2,3);
           mStrNumA := 'cento        duzentos   '+'trezentos   quatrocentos '+'quinhetos  seiscentos  setecentos  '+'oitocentos  novecentos  ';
           if StrtoInt(mStrDig[1]) > 0 then
              Result := TrimRight(Copy(mStrNumA,((StrToInt(mStrDig[1])-1)*12)+1,12))+' ';
           //endi
           if StrToInt(Copy(mStrDig,2,2)) > 0 then
              begin
                if Length(Result) > 0 then
                   Result := Result + 'e ';
                //endi
                Result := Result + NrMedios(StrToInt(Copy(mStrDig,2,2)));
              end;
           //endi
         end;
      //endi
    end;
  //endfunction

  var
    mStrNomes, StrPart, mNumString : String;
    i, numpart, mPos: Integer; partDec:Real;
  begin
    mStrNomes := '';
    StrPart := '';
    mNumString := '';
    result := '';
    i := 0;
    numpart := 0;
    mPos := 0;
    partDec := 0;

    mNumString := FormatFloat('00000000000000',mNum*100);
    mStrNomes := 'bilh�o  bilh�es milh�o  milh�es '+'mil     mil     ';
    for i := 1 to 4 do
       begin
         strPart := Copy(mNumString,((i-1)*3)+1,3);
         numPart := StrToInt(StrPart);
         if NumPart = 1 then
            mPos := 1
         else
            mPos := 8;
         //endi
         if NumPart > 0 then
            begin
              if length(Result) > 0 then
                 Result := Result + ', ';
              //endi
              Result := Result + NrAltos(NumPart);
              Result := Result + TrimRight( Copy ( mStrNomes,( (i - 1) * 16) + mPos,8) );
              if not i = 4 then
                 Result := Result + ' ';
              //endi
            end;
         //endi
       end;
    //endf
    if length(Result) > 0 then
       begin
         if int(mNum) = 1 then
            Result := Result + ' real'
         else
            Result := Result + ' reais ';
         //endi
       end;
    //endi
    if frac(mNum) > 0 then
      begin
        if Length(Result) > 0 then
           Result := Result + 'e ';
        //endi
        PartDec := (mNum - int(mNum))*100;
        NumPart := trunc(PartDec);
        if PartDec = 1 then
           Result := Result + 'um centavo'
        else
           Result := Result + NrMedios(NumPart)+'centavos';
        //endi
      end;
    //endi
  end;

Function SerialNum(FDrive:String) :String;
Var Serial:DWord;
    DirLen,Flags: DWord;
    DLabel : Array[0..11] of Char;
begin
  Try GetVolumeInformation(PChar(FDrive+':\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
    Result := IntToHex(Serial,8);
  Except
    Result :='';
  end;
end;

Function MesExtenso(mDt:tDateTime):String;
var ano, mes, dia :word;
const meses : array [0..11] of pchar = ('Janeiro','Fevereiro','Mar�o','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
begin
  DecodeDate(mDt,ano,mes,dia);
  result := meses[mes-1];
end;

Function DataPorExtenso(mDt:tDateTime):String;
var ano, mes, dia :word;
begin
  DecodeDate(mDt,ano,mes,dia);
  result := Inttostr(dia)+' de '+MesExtenso(mDt)+' de '+InttoStr(ano);
end;

Function Arred0dec(pValor:real):real;
var pMult:real;
begin
  pMult := Round(pValor*100);
  result := Round(pMult/100);
end;

Function Arre1Dec(pValor:real):real;
begin
  Result := strtofloat(formatfloat('0.0',pValor));
end;


procedure Atualizar;
var
  vardir, pArq, pOrcaAnt, data : String;
  ano, mes, dia, idia, imes, iano:word;
  pValorTotal, totcustopecas, totcustopecase : Real;
  pCont, x : Integer;
begin
  vardir := extractfilepath(application.exename);

  {

  atuabase(  vardir + 'inst\at1.txt' );
  atuabase(  vardir + 'inst\at2.txt' );
  atuabase(  vardir + 'inst\at3.txt' );
  atuabase(  vardir + 'inst\at4.txt' );
  atuabase(  vardir + 'inst\at5.txt' );
  atuabase(  vardir + 'inst\at6.txt' );
  atuabase(  vardir + 'inst\at7.txt' );
  atuabase(  vardir + 'inst\at8.txt' );
  atuabase(  vardir + 'inst\at9.txt' );
  atuabase(  vardir + 'inst\at10.txt' );
  atuabase(  vardir + 'inst\at11.txt' );
  atuabase(  vardir + 'inst\at12.txt' );
  atuabase(  vardir + 'inst\at13.txt' );
  atuabase(  vardir + 'inst\at14.txt' );
  atuabase(  vardir + 'inst\at15.txt' );
  atuabase(  vardir + 'inst\at16.txt' );
  atuabase(  vardir + 'inst\at17.txt' );
  atuabase(  vardir + 'inst\at18.txt' );

  }


  //atuabase(  vardir + 'inst 0504\ct1.txt' );
  //atuabase(  vardir + 'inst 0504\at1.txt' );
  //atuabase(  vardir + 'inst 0504\cs1.txt' );
  //atuabase(  vardir + 'inst 0504\ctr1.txt' );
  //atuabase(  vardir + 'inst 0504\ctr11.txt' );
  //atuabase(  vardir + 'inst 0504\ctr12.txt' );



  with frmprincipal do
    begin
       



    end;




  with frmSplash do
  begin



  end;
end;

Procedure le_ecf;
var
  vardir : String;
begin

end;

procedure fechatodos;
begin
 if Frmbaixarncm <> nil then
    Frmbaixarncm.close;
 //endi

 if Frmpesqcf <> nil then
    Frmpesqcf.close;
 //endi
 if Frmpesqcfop <> nil then
    Frmpesqcfop.close;
 //endi
 if Frmpesqclientes <> nil then
    Frmpesqclientes.close;
 //endi
 if Frmpesqcmobra <> nil then
    Frmpesqcmobra.close;
 //endi
 if Frmpesqcofins <> nil then
    Frmpesqcofins.close;
 //endi
 if Frmpesqcsosn <> nil then
    Frmpesqcsosn.close;
 //endi
 if Frmpesqemitente <> nil then
    Frmpesqemitente.close;
 //endi
 if Frmpesqest <> nil then
    Frmpesqest.close;
 //endi
 if Frmpesqfornecedores <> nil then
    Frmpesqfornecedores.close;
 //endi
 if Frmpesqicms <> nil then
    Frmpesqicms.close;
 //endi
 if Frmpesqimpostoi <> nil then
    Frmpesqimpostoi.close;
 //endi
 if Frmpesqimpostoii <> nil then
    Frmpesqimpostoii.close;
 //endi
 if Frmpesqimpostoiii <> nil then
    Frmpesqimpostoiii.close;
 //endi
 if Frmpesqipi <> nil then
    Frmpesqipi.close;
 //endi
 if Frmpesqmodbc <> nil then
    Frmpesqmodbc.close;
 //endi
 if Frmpesqmodbcst <> nil then
    Frmpesqmodbcst.close;
 //endi
 if Frmpesqmunic <> nil then
    Frmpesqmunic.close;
 //endi
 if Frmpesqnatop <> nil then
    Frmpesqnatop.close;
 //endi
 if Frmpesqnf <> nil then
    Frmpesqnf.close;
 //endi
 if Frmpesqpaises <> nil then
    Frmpesqpaises.close;
 //endi
 if Frmpesqpis <> nil then
    Frmpesqpis.close;
 //endi
 if Frmpesqprodnf <> nil then
    Frmpesqprodnf.close;
 //endi
 if Frmpesqprodutos <> nil then
    Frmpesqprodutos.close;
 //endi
 if Frmpesqrcserv <> nil then
    Frmpesqrcserv.close;
 //endi
 if Frmpesqregtrib <> nil then
    Frmpesqregtrib.close;
 //endi
 if Frmpesqsita <> nil then
    Frmpesqsita.close;
 //endi
 if Frmpesqsitb <> nil then
    Frmpesqsitb.close;
 //endi
 if Frmpesqtiposerv <> nil then
    Frmpesqtiposerv.close;
 //endi
 if Frmpesqtransportadora <> nil then
    Frmpesqtransportadora.close;
 //endi
 if Frmpesqunidade <> nil then
    Frmpesqunidade.close;
 //endi
 if Frmindice <> nil then
    Frmindice.close;
 //endi
 if frmpesqnfemi <> nil then
    frmpesqnfemi.close;
 //endi




 with frmdados do
   begin
     //cds_config.Active := true;
     //if cds_config.FieldByName('dataatual').asdatetime > cds_config.FieldByName('dataexpira').AsDateTime then
     //   frmprincipal.pnlcentral.Visible := true;
     //endi
     //cds_config.Active := false;
   end;
 //endth




end;

function FindReplace (Var Enc:String; Var subs: String; Var Texto: String): string;
Var
i, Posicao: Integer;
Linha: string;
Begin
For i:= 0 to length(texto) do
begin
Linha := Texto;
Repeat
Posicao:=Pos(Enc,Linha);
If Posicao > 0 then
Begin
Delete(Linha,Posicao,Length(Enc));
Insert(Subs,Linha,Posicao);
Texto:=Linha;
end;
until Posicao = 0;
end;

result := texto;
end;

function Decimal_Is_Point(var Valor:String):String;
var sEnc, sSubs, sInfAnt:string;
begin
  try
    sEnc := ',';
    sSubs := '.';
    sInfAnt := formatfloat('0.00',strtofloat(Valor));
    result := findreplace(sEnc,sSubs,sinfAnt);
  except
    result := Valor;
  end;
end;


function Decimal_Is_Pointf(var Valor:String):String;
var sEnc, sSubs, sInfAnt:string;
begin
  try
    sEnc := ',';
    sSubs := '.';
    sInfAnt := Valor;
    result := findreplace(sEnc,sSubs,sinfAnt);
  except
    result := Valor;
  end;
end;


function Decimal_Is_Coma(var Valor:String):String;
var sEnc, sSubs, sInfAnt:string;
begin
  try
    sEnc := '.';
    sSubs := ',';
    sInfAnt := Valor;
    result := findreplace(sEnc,sSubs,sinfAnt);
  except
    result := Valor;
  end;
end;



function Bar_Is_Point(var sData:string):string;
var sEnc, sSubs, sInfAnt, sdatasys:string;
    idia, imes, iano:word;
begin
  try
    strtodatetime(sData);
    sEnc := '/';
    sSubs := '.';
    decodedate(strtodate(sData),iano,imes,idia);
    sdatasys := formatfloat('00',idia)+'/'+formatfloat('00',imes)+'/'+formatfloat('00',iano);
    sInfAnt := sDataSys;
    result := findreplace(sEnc,sSubs,sInfAnt);
  except
    result := sData;
  end;
end;

function datainvertida(var sData:string):string;
var
  iDia, iMes, iAno:Word;
begin
  try
    decodedate(strtodate(sData),iAno,iMes,idia);
    result := formatfloat('00',imes)+'/'+formatfloat('00',idia)+'/'+formatfloat('00',iano);
  except
    result := sData;
  end;

end;


function EnDecryptString(StrValue : String; Chave: Word) : String;
{
Edit2.text:=EnDecryptString(Edit1.text, 236);
}
var
I: Integer;
OutValue : String;
begin
OutValue := '';
for I := 1 to Length(StrValue) do
OutValue := OutValue + char(Not(ord(StrValue[I])-Chave));
Result := OutValue;
end;

function LerArqTexto ( nomeDoArquivo: String ):string;
var arq: TextFile;
linha: String;
begin
AssignFile ( arq, nomeDoArquivo );
Reset ( arq );
ReadLn ( arq, linha );
result := result + linha;
while not Eof ( arq ) do
begin
{ Processe a linha lida aqui. }
{ Para particionar a linha lida em peda�os, use a fun��o Copy. }
ReadLn ( arq, linha );
result := result + linha;
end;

CloseFile ( arq );
end;


function Localiza_Itens_Usuario(MenuItem:tMenuItem;cUsu:String):Integer;
begin
end;


function Localiza_DetItens_Usuario(AcesTag:integer;cUsu:integer;Op:String):Integer;
begin
end;


function AlinNumD3(iEspaco:integer;fValor:real):String;
var
  pLen, pDif, x:integer;
  s0:string;
begin
s0 := '';
pLen := length(formatfloat('###,##0.000',fvalor));
pDif := iEspaco - pLen;
for x := 1 to pDif do
    begin
      s0 := (s0 + ' ');
   end;
//endfor
result := s0+formatfloat('###,##0.000',fvalor);
end;


function AlinNumD0(iEspaco:integer;fValor:real):String;
var
  pLen, pDif, x:integer;
  s0:string;
begin
s0 := '';
pLen := length(formatfloat('#########0',fvalor));
pDif := iEspaco - pLen;
for x := 1 to pDif do
    begin
      s0 := (s0 + ' ');
   end;
//endfor
result := s0+formatfloat('#########0',fvalor);
end;



function AlinNumD(iEspaco:integer;fValor:real):String;
var
  pLen, pDif, x:integer;
  s0:string;
begin
s0 := '';
pLen := length(formatfloat('###,##0.00',fvalor));
pDif := iEspaco - pLen;
for x := 1 to pDif do
    begin
      s0 := (s0 + ' ');
   end;
//endfor
result := s0+formatfloat('###,##0.00',fvalor);
end;

function Locaiza_ItensUsuS(iAc:Integer;cUsu:String):Integer;
begin
end;

Function JanelaExiste(Classe,Janela:String) :Boolean;
var
  PClasse,PJanela : array[0..79] of char;
begin
  if Classe = '' then
  PClasse[0] := #0
  else
  StrPCopy(PClasse,Classe);
  if Janela = '' then
  PJanela[0] := #0
  else
  StrPCopy(PJanela,Janela);
  if FindWindow(PClasse,PJAnela) <> 0 then
  result := true
  else
  Result := false;
end;

Function DelphiCarregado : Boolean;
begin
  Result := False;
  if JanelaExiste('TPropertyInspector','Object Inspector') then
  result := True
end;

function NetSend(dest, source, msg: string): longint;
type
  TNetMessageBufferSendFunction = function(servername, msgname, fromname:
  PWideChar; buf: PWideChar; buflen: Cardinal): longint; stdcall;
var
  NetMessageBufferSend: TNetMessageBufferSendFunction;
  SourceWideChar: PWideChar;
  DestWideChar: PWideChar;
  MessagetextWideChar: PWideChar;
  Handle: THandle;
begin

  Handle := LoadLibrary('NETAPI32.DLL');
  if Handle = 0 then
  begin
  Result := GetLastError;
  exit;
  end;

  @NetMessageBufferSend := GetProcAddress(Handle, 'NetMessageBufferSend');
  if @NetMessageBufferSend = nil then
  begin
  Result := GetLastError;
  exit;
  end;

  MessagetextWideChar := nil;
  SourceWideChar := nil;
  DestWideChar := nil;

  try
  GetMem(MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
  GetMem(DestWideChar, 20 * SizeOf(WideChar) + 1);
  StringToWideChar(msg, MessagetextWideChar, Length(msg) *
  SizeOf(WideChar) + 1);
  StringToWideChar(Dest, DestWideChar, 20 * SizeOf(WideChar) + 1);
  if source = '' then
  result := NetMessageBufferSend(nil, DestWideChar, nil,
  MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1)
  else
  begin
  GetMem(SourceWideChar, 20 * SizeOf(WideChar) + 1);
  StringToWideChar(source, SourceWideChar, 20 * SizeOf(WideChar) + 1);
  result := NetMessageBufferSend(nil, DestWideChar, SourceWideChar,
  MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
  freemem(SourceWideChar);
  end;
  finally
  FreeMem(MessagetextWideChar);
  FreeLibrary(Handle);
  end;
end;

function replicar(sCaracter:string;iVezes:integer):String;
var x:integer;

begin
  for x  := 1 to iVezes do
     begin
       result := result + sCaracter;
     end;
  //endf

end;


procedure PostKeyEx32(Key: Word; const Shift: TShiftState; SpecialKey: boolean); 
type 
TShiftKeyInfo = Record 
shift: Byte;
vkey : Byte;
End;
byteset = Set of 0..7;
const
ShiftKeys: array [1..3] of TShiftKeyInfo =
((shift: Ord(ssCtrl); vkey: VK_CONTROL ),
(shift: Ord(ssShift); vkey: VK_SHIFT ),
(shift: Ord(ssAlt); vkey: VK_MENU ));
var
Flag: DWORD;
bShift: ByteSet absolute shift;
i: Integer;
begin
for i := 1 to 3 do begin
if shiftkeys[i].shift in bShift then
Keybd_Event(ShiftKeys[i].vkey,
MapVirtualKey(ShiftKeys[i].vkey, 0), 0, 0);
end; // for
if SpecialKey Then
Flag := KEYEVENTF_EXTENDEDKEY
else
Flag := 0;
Keybd_Event(Key, MapvirtualKey(Key, 0), Flag, 0);
Flag := Flag or KEYEVENTF_KEYUP;
Keybd_Event(Key, MapvirtualKey(Key, 0), Flag, 0);
for i := 3 DownTo 1 do
begin
if ShiftKeys[i].shift in bShift then
Keybd_Event(shiftkeys[i].vkey,
MapVirtualKey(ShiftKeys[i].vkey, 0),
KEYEVENTF_KEYUP, 0);
end; // for
end; // PostKeyEx32

procedure iniciavarglobal;
begin
   bAltDesc := false;
   bAltVend := false;
   bAltP := false;
   bLanDesc := false;
   bVenda := false;
   bConfInt := false;
   bLimiteDesc := false;
   bVSEstq := false;
   bVSAtend := false;
   bfechavendab := false;
   bPgtoOrc := false;
   bFvb := false;
   bPerA := false;
   bPerS := false;
   bIndiceI := false;
   bComissaoI := false;
   bComissaorI := false;
   bSangriaI := false;
   bIngestaoI := false;
   bcmobraI := false;
   bSituOsI := false;
   bHistI := false;
   bEquipCliI := false;
   bImgEquipCliI := false;
   bNFEI := false;
   bNFI := false;
   bSituNFEI := false;
   bModuloI  := false;
   bNFPI  := false;
   bNFMI  := false;
   bdMobraI  := false;
   bConf_NFI := false;
   bNatOpI := false;
   bNatOpNFI := false;
   bTipoCliI := false;
   bCaixaApaI := false;
   bCaixaApsI := false;
   bTransportadoresI := false;
   bCFI := false;
   bSITAI := false;
   bSITBI := false;
   bIPII := false;
   bAliqImpFisI := false;
   bEstadosI := false;
   bMunicI := false;
   bPaisI := false;
   bImpRecAntI := false;
   bTipo_ProdI := false;
   bvDvendasI := false;
   bConfigI := false;
   bVendabI := false;
   bConfIntI := false;
   bMovRegI := false;
   bsVendaI := false;
   bdVendaI := false;
   btipo_pgtoI := false;
   bVencimentosI := false;
   bVencimentos_NFI := false;
   bProdutosI := false;
   bvProdutosI := false;
   bvVendasI := false;
   bFornecedoresI := false;
   bModbcstI := false;
   bPisI := false;
   bTipoTabI := false;
   bMat_RestaurarI := false;
   bMat_Rest_IDI := false;
   bMatRepI := false;
   bCofinsI := false;
   bViiI := false;
   bProcedimentosI := false;
   bOimpI := false;
   bIr_iiI := false;
   bModbcI := false;
   bTgicmsI := false;
   bComprasI := false;
   bClientesI := false;
   bTipoTab_PorcentagemI := false;
   bTabPrProcI := false;
   bTabPrPI := false;
   bTabPrSI := false;
   bHistTabI := false;
   bAgedodiaI := false;
   blivrocaixaI := false;
   bAgendaI := false;
   btotalcmdbI := false;
   bApontamentoI := false;
   bPedCancI := false;
   bPedidoI := false;
   bEnt_ProdI := false;
   bdProdutosI := false;
   bUsuariosI := false;
   bInvsysI := false;
   bInvsysfI := false;
   bInvsysfconI := false;
   bInvsyspI := false;
   bGrupoI := false;
   bTempI := false;
   bSituRecI := false;
   bSituCadCliI := false;
   bSituPagarI := false;
   bClassepI := false;
   bClasseI := false;
   bPagarI := false;
   bMarcaI := false;
   bRepresentantesI := false;
   bFuncionariosI := false;
   bUnidadeI := false;
   bOSI := false;
   bOSTI := false;
   bIndiceA := false;
   bComissaoA := false;
   bComissaorA := false;
   bSangriaA := false;
   bIngestaoA := false;
   bcmobraA := false;
   bSituOsA := false;
   bHistA := false;
   bEquipCliA := false;
   bImgEquipCliA := false;
   bNFEA := false;
   bNFEA := false;
   bSituNFEA := false;
   bModuloA  := false;
   bNFPA  := false;
   bNFMA  := false;
   bdMobraA  := false;
   bConf_NFA := false;
   bNatOpA := false;
   bNatOpNFA := false;
   bTipoCliA := false;
   bCaixaApaA := false;
   bCaixaApsA := false;
   bTransportadoresA := false;
   bCFA := false;
   bSITAA := false;
   bSITBA := false;
   bIPIA := false;
   bAliqImpFisA := false;
   bEstadosA := false;
   bMunicA := false;
   bPaisA := false;
   bImpRecAntA := false;
   bTipo_ProdA := false;
   bvDvendasA := false;
   bConfigA := false;
   bVendabA := false;
   bConfIntA := false;
   bMovRegA := false;
   bsVendaA := false;
   bdVendaA := false;
   btipo_pgtoA := false;
   bVencimentosA := false;
   bVencimentos_NFA := false;
   bProdutosA := false;
   bvProdutosA := false;
   bvVendasA := false;
   bFornecedoresA := false;
   bModbcstA := false;
   bPisA := false;
   bTipoTabA := false;
   bMat_RestaurarA := false;
   bMat_Rest_IDA := false;
   bMatRepA := false;
   bCofinsA := false;
   bViiA := false;
   bProcedimentosA := false;
   bOimpA := false;
   bIr_iiA := false;
   bModbcA := false;
   bTgicmsA := false;
   bComprasA := false;
   bClientesA := false;
   bTipoTab_PorcentagemA := false;
   bTabPrProcA := false;
   bTabPrPA := false;
   bTabPrSA := false;
   bHistTabA := false;
   bAgedodiaA := false;
   blivrocaixaA := false;
   bAgendaA := false;
   btotalcmdbA := false;
   bApontamentoA := false;
   bPedCancA := false;
   bPedidoA := false;
   bEnt_ProdA := false;
   bdProdutosA := false;
   bUsuariosA := false;
   bInvsysA := false;
   bInvsysfA := false;
   bInvsysfconA := false;
   bInvsyspA := false;
   bGrupoA := false;
   bTempA := false;
   bSituRecA := false;
   bSituCadCliA := false;
   bSituPagarA := false;
   bClassepA := false;
   bClasseA := false;
   bPagarA := false;
   bMarcaA := false;
   bRepresentantesA := false;
   bFuncionariosA := false;
   bUnidadeA := false;
   bOSA := false;
   bOSTA := false;
   bIndiceV := false;
   bComissaoV := false;
   bComissaorV := false;
   bSangriaV := false;
   bIngestaoV := false;
   bcmobraV := false;
   bSituOsV := false;
   bHistV := false;
   bEquipCliV := false;
   bImgEquipCliV := false;
   bNFEV := false;
   bNFV := false;
   bSituNFEV := false;
   bModuloV  := false;
   bNFPV  := false;
   bNFMV  := false;
   bdMobraV  := false;
   bConf_NFV := false;
   bNatOpV := false;
   bNatOpNFV := false;
   bTipoCliV := false;
   bCaixaApaV := false;
   bCaixaApsV := false;
   bTransportadoresV := false;
   bCFV := false;
   bSITAV := false;
   bSITBV := false;
   bIPIV := false;
   bAliqImpFisV := false;
   bEstadosV := false;
   bMunicV := false;
   bPaisV := false;
   bImpRecAntV := false;
   bTipo_ProdV := false;
   bvDvendasV := false;
   bConfigV := false;
   bVendabV := false;
   bConfIntV := false;
   bMovRegV := false;
   bsVendaV := false;
   bdVendaV := false;
   btipo_pgtoV := false;
   bVencimentosV := false;
   bVencimentos_NFV := false;
   bProdutosV := false;
   bvProdutosV := false;
   bvVendasV := false;
   bFornecedoresV := false;
   bModbcstV := false;
   bPisV := false;
   bTipoTabV := false;
   bMat_RestaurarV := false;
   bMat_Rest_IDV := false;
   bMatRepV := false;
   bCofinsV := false;
   bViiV := false;
   bProcedimentosV := false;
   bOimpV := false;
   bIr_iiV := false;
   bModbcV := false;
   bTgicmsV := false;
   bComprasV := false;
   bClientesV := false;
   bTipoTab_PorcentagemV := false;
   bTabPrProcV := false;
   bTabPrPV := false;
   bTabPrSV := false;
   bHistTabV := false;
   bAgedodiaV := false;
   blivrocaixaV := false;
   bAgendaV := false;
   btotalcmdbV := false;
   bApontamentoV := false;
   bPedCancV := false;
   bPedidoV := false;
   bEnt_ProdV := false;
   bdProdutosV := false;
   bUsuariosV := false;
   bInvsysV := false;
   bInvsysfV := false;
   bInvsysfconV := false;
   bInvsyspV := false;
   bGrupoV := false;
   bTempV := false;
   bSituRecV := false;
   bSituCadCliV := false;
   bSituPagarV := false;
   bClassepV := false;
   bClasseV := false;
   bPagarV := false;
   bMarcaV := false;
   bRepresentantesV := false;
   bFuncionariosV := false;
   bUnidadeV := false;
   bOSV := false;
   bOSTV := false;
   bIndiceE := false;
   bComissaoE := false;
   bComissaorE := false;
   bSangriaE := false;
   bIngestaoE := false;
   bcmobraE := false;
   bSituOsE := false;
   bHistE := false;
   bEquipCliE := false;
   bImgEquipCliE := false;
   bNFEE := false;
   bNFE := false;
   bSituNFEE := false;
   bModuloE  := false;
   bNFPE  := false;
   bNFME  := false;
   bdMobraE  := false;
   bConf_NFE := false;
   bNatOpE := false;
   bNatOpNFE := false;
   bTipoCliE := false;
   bCaixaApaE := false;
   bCaixaApsE := false;
   bTransportadoresE := false;
   bCFE := false;
   bSITAE := false;
   bSITBE := false;
   bIPIE := false;
   bAliqImpFisE := false;
   bEstadosE := false;
   bMunicE := false;
   bPaisE := false;
   bImpRecAntE := false;
   bTipo_ProdE := false;
   bvDvendasE := false;
   bConfigE := false;
   bVendabE := false;
   bConfIntE := false;
   bMovRegE := false;
   bsVendaE := false;
   bdVendaE := false;
   btipo_pgtoE := false;
   bVencimentosE := false;
   bVencimentos_NFE := false;
   bProdutosE := false;
   bvProdutosE := false;
   bvVendasE := false;
   bFornecedoresE := false;
   bModbcstE := false;
   bPisE := false;
   bTipoTabE := false;
   bMat_RestaurarE := false;
   bMat_Rest_IDE := false;
   bMatRepE := false;
   bCofinsE := false;
   bViiE := false;
   bProcedimentosE := false;
   bOimpE := false;
   bIr_iiE := false;
   bModbcE := false;
   bTgicmsE := false;
   bComprasE := false;
   bClientesE := false;
   bTipoTab_PorcentagemE := false;
   bTabPrProcE := false;
   bTabPrPE := false;
   bTabPrSE := false;
   bHistTabE := false;
   bAgedodiaE := false;
   blivrocaixaE := false;
   bAgendaE := false;
   btotalcmdbE := false;
   bApontamentoE := false;
   bPedCancE := false;
   bPedidoE := false;
   bEnt_ProdE := false;
   bdProdutosE := false;
   bUsuariosE := false;
   bInvsysE := false;
   bInvsysfE := false;
   bInvsysfconE := false;
   bInvsyspE := false;
   bGrupoE := false;
   bTempE := false;
   bSituCadCliE := false;
   bSituRecE := false;
   bSituPagarE := false;
   bClassepE := false;
   bClasseE := false;
   bPagarE := false;
   bMarcaE := false;
   bRepresentantesE := false;
   bFuncionariosE := false;
   bUnidadeE := false;
   bOSE := false;
   bOSTE := false;
   bIndiceN := false;
   bComissaoN := false;
   bComissaorN := false;
   bSangriaN := false;
   bIngestaoN := false;
   bcmobraN := false;
   bSituOsN := false;
   bHistN := false;
   bEquipCliN := false;
   bImgEquipCliN := false;
   bNFEN := false;
   bNFN := false;
   bSituNFEN := false;
   bModuloN  := false;
   bNFPN  := false;
   bNFMN  := false;
   bdMobraN  := false;
   bConf_NFN := false;
   bNatOpN := false;
   bNatOpNFN := false;
   bTipoCliN := false;
   bCaixaApaN := false;
   bCaixaApsN := false;
   bTransportadoresN := false;
   bCFN := false;
   bSITAN := false;
   bSITBN := false;
   bIPIN := false;
   bAliqImpFisN := false;
   bEstadosN := false;
   bMunicN := false;
   bPaisN := false;
   bImpRecAntN := false;
   bTipo_ProdN := false;
   bvDvendasN := false;
   bConfigN := false;
   bVendabN := false;
   bConfIntN := false;
   bMovRegN := false;
   bsVendaN := false;
   bdVendaN := false;
   btipo_pgtoN := false;
   bVencimentosN := false;
   bVencimentos_NFN := false;
   bProdutosN := false;
   bvProdutosN := false;
   bvVendasN := false;
   bFornecedoresN := false;
   bModbcstN := false;
   bPisN := false;
   bTipoTabN := false;
   bMat_RestaurarN := false;
   bMat_Rest_IDN := false;
   bMatRepN := false;
   bcofinsN := false;
   bViiN := false;
   bProcedimentosN := false;
   bOimpN := false;
   bIr_iiN := false;
   bModbcN := false;
   bTgicmsN := false;
   bComprasN := false;
   bClientesN := false;
   bTipoTab_PorcentagemN := false;
   bTabPrProcN := false;
   bTabPrPN := false;
   bTabPrSN := false;
   bHistTabN := false;
   bAgedodiaN := false;
   blivrocaixaN := false;
   bAgendaN := false;
   btotalcmdbN := false;
   bApontamentoN := false;
   bPedCancN := false;
   bPedidoN := false;
   bEnt_ProdN := false;
   bdProdutosN := false;
   bUsuariosN := false;
   bInvsysN := false;
   bInvsysfN := false;
   bInvsysfconN := false;
   bInvsyspN := false;
   bGrupoN := false;
   bTempN := false;
   bSituRecN := false;
   bSituCadCliN := false;
   bSituPagarN := false;
   bClassepN := false;
   bClasseN := false;
   bPagarN := false;
   bMarcaN := false;
   bRepresentantesN := false;
   bFuncionariosN := false;
   bUnidadeN := false;
   bOSN := false;
   bOSTN := false;
   bIndiceR := false;
   bComissaoR := false;
   bComissaorR := false;
   bSangriaR := false;
   bIngestaoR := false;
   bcmobraR := false;
   bSituOsR := false;
   bHistR := false;
   bEquipCliR := false;
   bImgEquipCliR := false;
   bNFER := false;
   bNFR := false;
   bSituNFER := false;
   bModuloR  := false;
   bNFPR  := false;
   bNFMR  := false;
   bdMobraR  := false;
   bConf_NFR := false;
   bNatOpR := false;
   bNatOpNFR := false;
   bTipoCliR := false;
   bCaixaApaR := false;
   bCaixaApsR := false;
   bTransportadoresR := false;
   bCFR := false;
   bSITAR := false;
   bSITBR := false;
   bIPIR := false;
   bAliqImpFisR := false;
   bEstadosR := false;
   bMunicR := false;
   bPaisR := false;
   bImpRecAntR := false;
   bTipo_ProdR := false;
   bvDvendasR := false;
   bConfigR := false;
   bVendabR := false;
   bConfIntR := false;
   bMovRegR := false;
   bsVendaR := false;
   bdVendaR := false;
   btipo_pgtoR := false;
   bVencimentosR := false;
   bVencimentos_NFR := false;
   bProdutosR := false;
   bvProdutosR := false;
   bvVendasR := false;
   bFornecedoresR := false;
   bModbcstR := false;
   bPisR := false;
   bTipoTabR := false;
   bMat_RestaurarR := false;
   bMat_Rest_IDR := false;
   bMatRepR := false;
   bCofinsR := false;
   bViiR := false;
   bProcedimentosR := false;
   bOimpR := false;
   bIr_iiR := false;
   bModbcR := false;
   bTgicmsR := false;
   bComprasR := false;
   bClientesR := false;
   bTipoTab_PorcentagemR := false;
   bTabPrProcR := false;
   bTabPrPR := false;
   bTabPrSR := false;
   bHIstTabR := false;
   bAgedodiaR := false;
   blivrocaixaR := false;
   bAgendaR := false;


   btotalcmdbR := false;
   bApontamentoR := false;
   bPedCancR := false;
   bPedidoR := false;
   bEnt_ProdR := false;
   bdProdutosR := false;
   bUsuariosR := false;
   bInvsysR := false;
   bInvsysfR := false;
   bInvsysfconR := false;
   bInvsyspR := false;
   bGrupoR := false;
   bTempR := false;
   bSituRecR := false;
   bSituCadCliR := false;
   bSituPagarR := false;
   bClassepR := false;
   bClasseR := false;
   bPagarR := false;
   bMarcaR := false;
   bRepresentantesR := false;
   bFuncionariosR := false;
   bUnidadeR := false;
   bOSR := false;
   bOSTR := false;
   bIndiceCf := false;
   bComissaoCf := false;
   bComissaorCf := false;
   bSangriaCf := false;
   bIngestaoCf := false;
   bcmobraCf := false;
   bSituOsCf := false;
   bHistCf := false;
   bEquipCliCf := false;
   bImgEquipCliCf := false;
   bNFECf := false;
   bNFCf := false;
   bSituNFECf := false;
   bModuloCf  := false;
   bNFPCf  := false;
   bNFMCf  := false;
   bdMobraCf  := false;
   bConf_NFCf := false;
   bNatOPCf := false;
   bNatOPNFCf := false;
   bTipoCliCf := false;
   bCaixaApaCf := false;
   bCaixaApsCf := false;
   bTransportadoresCf := false;
   bCFCf := false;
   bSITACf := false;
   bSITBCf := false;
   bIPICf := false;
   bAliqImpFisCf := false;
   bEstadosCf := false;
   bMunicCf := false;
   bPaisCf := false;
   bImpRecAntCf := false;
   bTipo_ProdCf := false;
   bvDvendasCf := false;
   bConfigCf := false;
   bVendabCf := false;
   bConfIntCf := false;
   bMovRegCf := false;
   bsVendaCf := false;
   bdVendaCf := false;
   btipo_pgtoCf := false;
   bVencimentosCf := false;
   bVencimentos_NFCf := false;
   bProdutosCf := false;
   bvProdutosCf := false;
   bvVendasCf := false;
   bFornecedoresCf := false;
   bModbcstCf := false;
   bPisCf := false;
   bTipoTabCf := false;
   bMat_RestaurarCf := false;
   bMat_Rest_IDCf := false;
   bMatRepCf := false;
   bCofinsCf := false;
   bViiCf := false;
   bProcedimentosCf := false;
   bOimpCf := false;
   bIr_iiCf := false;
   bModbcCf := false;
   bTgicmsCf := false;
   bComprasCf := false;
   bClientesCf := false;
   bTipoTab_PorcentagemCf := false;
   bTabPrProcCf := false;
   bTabPrPCf := false;
   bTabPrSCf := false;
   bHistTabCf := false;
   bAgedodiaCf := false;
   blivrocaixaCf := false;
   bAgendaCf := false;
   btotalcmdbCf := false;
   bApontamentoCf := false;
   bPedCancCf := false;
   bPedidoCf := false;
   bEnt_ProdCf := false;
   bdProdutosCf := false;
   bUsuariosCf := false;
   bInvsysCf := false;
   bInvsysfCf := false;
   bInvsysfconCf := false;
   bInvsyspCf := false;
   bGrupoCf := false;
   bTempCf := false;
   bSituRecCf := false;
   bSituCadCliCf := false;
   bSituPagarCf := false;
   bClassepCf := false;
   bClasseCf := false;
   bPagarCf := false;
   bMarcaCf := false;
   bRepresentantesCf := false;
   bFuncionariosCf := false;
   bUnidadeCf := false;
   bOSCF := false;
   bOSTCF := false;

   ilegal1:= false;
   ilegal2:= false;
   ilegal3:=false;
end;

Function Arredondar(value: double;casas : integer): double;
Var fracao, Total:real;
decimal:string;
begin
if frac(value) = 0 then
   begin
   result := value;
   exit;
   end;
//endi

try
fracao:=Frac(value); //Retorna a parte fracion�ria de um n�mero
decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2)); //decimal recebe a parte decimal
//enquanto o tamanho da variavel decimal for maior que o n�mero de casas fa�a
while length(decimal) > casas do
begin
//Verifica se o �ltimo digito da vari�vel decimal � maior que 5
if strtoint(RightStr(decimal,1))>5 then
begin
//Descarta o �ltimo digito da vari�vel Decimal
decimal:=leftstr(decimal,length(decimal)-1);
//Soma o valor n�mero da variavel decimal + 1
decimal:=floattostr(strtofloat(decimal) + 1);
end
else
decimal:=leftstr(decimal,length(decimal)-1); //Descarta o �ltimo digito da vari�vel Decimal
end;
result:=(int(value) + (strtofloat(decimal)/100)); //devolve o resultado para a fun��o
except
Raise Exception.Create('Erro no arredondamento');
end;
end;


Function ArredondarMaior(value: double;casas : integer): double;
Var fracao, Total:real;
decimal:string;
begin
if frac(value) = 0 then
   begin
   result := value;
   exit;
   end;
//endi

try
fracao:=Frac(value); //Retorna a parte fracion�ria de um n�mero
decimal:=(RightStr(floattostr(fracao),length(floattostr(fracao))-2)); //decimal recebe a parte decimal
//enquanto o tamanho da variavel decimal for maior que o n�mero de casas fa�a
while length(decimal) > casas do
begin
//Descarta o �ltimo digito da vari�vel Decimal
decimal:=leftstr(decimal,length(decimal)-1);
//Soma o valor n�mero da variavel decimal + 1
decimal:=floattostr(strtofloat(decimal) + 1);
end;



result:=(int(value) + (strtofloat(decimal)/100)); //devolve o resultado para a fun��o
except
Raise Exception.Create('Erro no arredondamento');
end;
end;




function calc_data(sDataI:String;iPrazo:Integer):String;
begin
  if sdataI = '' then
     exit;
  //endi

  result := datetostr( strtodate(sdataI)+iPrazo );
end;

function calc_prazo(sDataI:String;sDataF:String):real;
begin
  if sdataI = '' then
     exit;
  //endi
  if sdataF = '' then
     exit;
  //endi

  result := strtodate(sDataF) - strtodate(sDataI);
end;

function ExRound(Value: Extended; Decimals: Integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  Value := StrToFloat(FloatToStr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    Result := Result + 1
  else if Fraction <= -0.5 then
    Result := Result - 1;
  Result := Result / Factor;
end;

procedure TThreadLeStatus.Execute;
var i : integer;


begin

  i := 1;
  While Tempo do
  Begin
    Sleep(500);
    ThreadMemo.Clear;

  End;
End;

constructor TThreadLeStatus.Inicia(Memo: TMemo);
begin
  inherited Create(true);      // Create thread suspended
  Priority := TThreadPriority(1); // Set Priority Level
  ThreadMemo := Memo;
  Tempo := true;
  FreeOnTerminate := true; // Thread Free Itself when terminated
  Suspended := false;         // Continue the thread
end;


//Retorna o build de um arquivo
function GetBuildInfo(prog: String): String;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(prog),Dummy);
  GetMem(VerInfo,VerInfoSize);
  GetFileVersionInfo(PChar(prog),0,VerInfoSize,VerInfo);
  VerQueryValue(VerInfo,'',Pointer(VerValue),VerValueSize);

  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;

  FreeMem(VerInfo,VerInfoSize);
  result := Copy(IntToStr(100 + v1),3,2) + '.' + Copy(IntToStr(100 + V2),3,2) + '.' + Copy(IntToStr(100 + V3),3,2) + '.' + Copy(IntToStr(100 + V4),3,2);
end;

//Retorna o tamanho de um arquivo em bytes
function DSiFileSize(const fileName: string): int64;
var
  fHandle: DWORD;
begin
  fHandle := CreateFile(PChar(fileName), 0, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  if fHandle = INVALID_HANDLE_VALUE then
    Result := -1
  else try
    Int64Rec(Result).Lo := GetFileSize(fHandle, @Int64Rec(Result).Hi);
  finally CloseHandle(fHandle); end;
end;

procedure Atualiza_Versao_Aplicacao;
var
  versao_local, versao_servidor : string;
  tamanho_original, tamanho_recebido : integer;
  local_arquivo_servidor : string;
  iArq : TIniFile;
begin

  //Verifico onde esta armazenado o arquivo a ser atualizado
  if FileExists(GetCurrentDir + '\config.ini') then
  begin
    try
     iArq := TInifile.Create(GetCurrentDir + '\config.ini');
     //local_arquivo_servidor := iArq.ReadString('UPDATE','LOCAL','\\SERVIDOR\PASTA\ARQUIVO.EXE');
     local_arquivo_servidor := iArq.ReadString('UPDATE','LOCAL','C:\sistema\novo\sysbras.exe');
    finally
      iArq.Free;
    end;
  end;


  //Armazeno a vers�o da aplica��o atualmente em uso
  versao_local := GetBuildInfo(GetCurrentDir + '\sysbras.exe');

  //Armazeno a vers�o do aplica��o que esta disponivel no servidor
  versao_servidor := GetBuildInfo(local_arquivo_servidor);

  //Comparo as vers�es
  if versao_local <> versao_servidor then
  begin
    //Guardo na v�riavel o tamanho do arquivo que esta no servidor
    tamanho_original := DSiFileSize(local_arquivo_servidor);

    //Copio a vers�o que esta no servidor para o computador atual
    CopyFile(PChar(local_arquivo_servidor),PChar(GetCurrentDir+'\sysbras.new'),False);

    //Guardo na v�riavel o tamanho do arquivo copiado
    tamanho_recebido := DSiFileSize(GetCurrentDir+'\sysbras.new');

    //Verifico se o arquivo copiado chegou intacto
    if tamanho_original = tamanho_recebido then
    begin
      //Apago se existir vers�o antiga
      DeleteFile('sysbras.old');

      //Renomeio o arquivo atual
      RenameFile('sysbras.exe', 'sysbras.old');

      //Renomeio o arquivo novo para poder usa-lo
      RenameFile('sysbras.new', 'sysbras.exe');

      //Informo que a aplica��o foi atualizado com sucesso
      ShowMessage('Aplica��o atualizada com sucesso!');

      //Mando abrir a nova vers�o do teclado
      ShellExecute(0,Nil,PChar(GetCurrentDir+'\sysbras.exe'),'', Nil, SW_SHOWNORMAL);

      //Fecho a aberta
      //Close;
    end else
    begin
      //Caso o arquivo copiado n�o seja copiado com sucesso
      ShowMessage('Copia de arquivo falhou! Tente novamente!');
    end;
  end else
  begin
    //Se a aplica��o j� estiver atualizada
    ShowMessage('Aplicativo j� possui a ultima atualiza��o dispon�vel!');
  end;
end;

//
// C�digo fonte da Fun��o
//
function Grid_Ordena_e_PintaTitulo(xGrid: DBGrids.TDBGrid; Column: TColumn; CDS: TClientDataSet): boolean;
const
  idxDefault = 'DEFAULT_ORDER';
var
  strColumn: string;
  bolUsed: Boolean;
  idOptions: TIndexOptions;
  I: Integer;
  VDescendField: string;
begin

  Result := false;
  if not CDS.Active then exit;

  strColumn := idxDefault;

  // Se for campo calculado n�o deve fazer nada
  if (Column.Field.FieldKind = fkCalculated) then exit;

  // O �ndice j� est� em uso
  bolUsed := (Column.Field.FieldName = cds.IndexName);

  // Verifica a exist�ncia do �ndice e propriedades
  CDS.IndexDefs.Update;
  idOptions := [];
  for I := 0 to CDS.IndexDefs.Count - 1 do
  begin
    if cds.IndexDefs.Items[I].Name = Column.Field.FieldName then
    begin
      strColumn := Column.Field.FieldName;
      // Determina como deve ser criado o �ndice, inverte a condi��o ixDescending
      case (ixDescending in cds.IndexDefs.Items[I].Options) of
        True: begin
            idOptions := [];
            VDescendField := '';
          end;
        False: begin
            idOptions := [ixDescending];
            vDescendField := strColumn;
          end;
      end;
    end;
  end;

  // Se n�o encontrou o �ndice, ou o �ndice j� esta em uso...
  if (strColumn = idxDefault) or bolUsed then
  begin
    if bolUsed then
      CDS.DeleteIndex(Column.Field.FieldName);
    try
      CDS.AddIndex(Column.Field.FieldName, Column.Field.FieldName, idOptions, VDescendField, '', 0);
      strColumn := Column.Field.FieldName;
    except
        // O �ndice esta indeterminado, passo para o padr�o
      if bolUsed then strColumn := idxDefault;
    end;
  end;

  for I := 0 to xGRID.Columns.Count - 1 do begin
    if Pos(StrColumn, xGrid.Columns[I].Field.FieldName) <> 0 then
      xGrid.Columns[I].Title.Font.Color := clBlue
    else
      xGrid.Columns[I].Title.Font.Color := clWindowText;
  end;

  try
    CDS.IndexName := strColumn;
  except
    CDS.IndexName := idxDefault;
  end;

  result := true;
end;

procedure criatb(aColunas:array of string);
begin
end;


{INICIO DA FUN��O DE VALIDAR CEP}
FUNCTION ChecaCEP(cEstado:STRING;cCep:STRING): BOOLEAN;
VAR
 cCEP1 : INTEGER;
BEGIN
  cCep := copy(cCep,1,5) + copy(cCep,7,3);
  cCEP1 := StrToInt(copy(cCep,1,3));
  IF Length(trim(cCep)) > 0 THEN
    BEGIN
      IF (StrToInt(cCep) <= 1000000.0) THEN
        BEGIN
          APPLICATION.MessageBox('CEP tem que ser maior que [01000-000]','Informa��o', MB_ICONINFORMATION + MB_OK);
          RESULT := FALSE
        END
      ELSE
        BEGIN
          IF Length(trim(copy(cCep,6,3))) < 3 THEN
            RESULT := FALSE
          ELSE IF (cEstado = 'SP') AND (cCEP1 >= 10 ) AND (cCEP1 <= 199) THEN
            RESULT := TRUE
          ELSE IF (cEstado = 'RJ') AND (cCEP1 >= 200) AND (cCEP1 <= 289) THEN
            Result := True
          ELSE IF (cEstado = 'ES') AND (cCEP1 >= 290) AND (cCEP1 <= 299) THEN
            Result := True
          ELSE IF (cEstado = 'MG') AND (cCEP1 >= 300) AND (cCEP1 <= 399) THEN
            Result := True
          ELSE IF (cEstado = 'BA') AND (cCEP1 >= 400) AND (cCEP1 <= 489) THEN
            Result := True
          ELSE IF (cEstado = 'SE') AND (cCEP1 >= 490) AND (cCEP1 <= 499) THEN
            Result := True
          ELSE IF (cEstado = 'PE') AND (cCEP1 >= 500) AND (cCEP1 <= 569) THEN
            Result := True
          ELSE IF (cEstado = 'AL') AND (cCEP1 >= 570) AND (cCEP1 <= 579) THEN
            Result := True
          ELSE IF (cEstado = 'PB') AND (cCEP1 >= 580) AND (cCEP1 <= 589) THEN
            Result := True
          ELSE IF (cEstado = 'RN') AND (cCEP1 >= 590) AND (cCEP1 <= 599) THEN
            Result := True
          ELSE IF (cEstado = 'CE') AND (cCEP1 >= 600) AND (cCEP1 <= 639) THEN
            Result := True
          ELSE IF (cEstado = 'PI') AND (cCEP1 >= 640) AND (cCEP1 <= 649) THEN
            Result := True
          ELSE IF (cEstado = 'MA') AND (cCEP1 >= 650) AND (cCEP1 <= 659) THEN
            Result := True
          ELSE IF (cEstado = 'PA') AND (cCEP1 >= 660) AND (cCEP1 <= 688) THEN
            Result := True
          ELSE IF (cEstado = 'AM') AND ((cCEP1 >= 690) AND (cCEP1 <= 692) OR (cCEP1 >= 694) AND (cCEP1 <= 698)) THEN
            RESULT := True
          ELSE IF (cEstado = 'AP') AND (cCEP1 = 689) THEN
            RESULT := True
          ELSE IF (cEstado = 'RR') AND (cCEP1 = 693) THEN
            RESULT := True
          ELSE IF (cEstado = 'AC') AND (cCEP1 = 699) THEN
            RESULT := True
          ELSE IF ((cEstado = 'DF') OR (cEstado = 'GO')) AND (cCEP1 >= 000)AND(cCEP1 <= 999)THEN
            RESULT := True
          ELSE IF (cEstado = 'TO') AND (cCEP1 >= 770) AND (cCEP1 <= 779) THEN
            Result := True
          ELSE IF (cEstado = 'MT') AND (cCEP1 >= 780) AND (cCEP1 <= 788) THEN
            Result := True
          ELSE IF (cEstado = 'MS') AND (cCEP1 >= 790) AND (cCEP1 <= 799) THEN
            Result := True
          ELSE IF (cEstado = 'RO') AND (cCEP1 = 789) THEN
            Result := True
          ELSE IF (cEstado = 'PR') AND (cCEP1 >= 800) AND (cCEP1 <= 879) THEN
            Result := True
          ELSE IF (cEstado = 'SC') AND (cCEP1 >= 880) AND (cCEP1 <= 899) THEN
            Result := True
          ELSE IF (cEstado = 'RS') AND (cCEP1 >= 900) AND (cCEP1 <= 999) THEN Result := True ELSE
            RESULT := False
          END;
        END
      ELSE
          RESULT := True;
END;
{FIM DA FUN��O DE VALIDAR CEP}


function ipexterno(IP: TIdHTTP):string;
var
  sTemporario        : String;
  sEndereco,sResult   : String;
  X                 : Integer;
begin
 {
 try
    IP := TIdHTTP.Create(nil);
    with IP do
    begin
      Host       := 'checkip.dyndns.org';
      sTemporario := Get('checkip.dyndns.org');
      For X := 1 to Length(sTemporario) do
        if (sTemporario[X] in ['0'..'9']) or (sTemporario[X] = '.') then
           sEndereco := sEndereco + sTemporario[X];
    end;
    sResult := Trim(sEndereco);
    IP.Free;
    Result := sResult
  except
    Result := 'ERRO';
  end;

  }
end;

procedure atuabase(sArquivo:string);
begin
end;

//Rotina de backup
procedure backup(SaveDialog1:tSaveDialog);
var HORA, DATA, SOURCE, PATCH, NOME, VARDIR : String;
begin
  vardir := ExtractFilePath(Application.ExeName);
  HORA   := FormatDateTime('HHMM', Time);
  DATA   := FormatDateTime('DDMMYYYY', Date);
  SOURCE := vardir+'\fbdados.fdb';     //'C:Docume~1richardMeusdo~1*.txt'; //arquivo a ser feito backup
  PATCH  := vardir;                   //'C:Temp';                           //pasta destino
  NOME   := DATA+'-'+HORA+'.rar';
  SaveDialog1.FileName := NOME;
  SaveDialog1.InitialDir := PATCH;
  if SaveDialog1.Execute then
     begin
       NOME:= SaveDialog1.FileName;
       //chama Winrar e come�a a compactar. O nome do arquivo ser� DDMMAAA-HHMM.rar(dia,mes,ano/hora,min)
       ShellExecute(0,nil,'winrar.exe', Pchar ('a -ep -ibck '+NOME+' '+SOURCE), nil,sw_show);
       //fecha o winrar ap�s o t�rminino da compacta��o
       //Exit;
     end;
  //endi

end;

//Rotina de restaura��o de backup
procedure restaura(OpenDialog1:tOpenDialog);
var PATCH, PATCH1, NOME, VARDIR : String;
begin

  vardir := ExtractFilePath(Application.ExeName);

  if OpenDialog1.Execute then
     begin
       PATCH  := OpenDialog1.FileName;
       PATCH1 := vardir; //'C:Docume~1richardMeusdo~1';
       ShellExecute(0,nil,'Winrar.exe', Pchar ('e -ibck '+PATCH+NOME+' '+PATCH1),nil,sw_show);
       //restaura os arquivos e fecha o winrar
       //Exit;
     end;
  //endi

end;


function DiaSemana(Data:TDateTime): String;
{Retorna dia da semana}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String[13];
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Ter�a-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'S�bado';
  NoDia:=DayOfWeek(Data);
  DiaSemana:=DiaDasemana[NoDia];
end;

function SetScreenResolution(Width, Height: integer): Longint;
var
  DeviceMode: TDeviceMode;
begin
  with DeviceMode do begin
    dmSize := SizeOf(TDeviceMode);
    dmPelsWidth := Width;
    dmPelsHeight := Height;
    dmFields := DM_PELSWIDTH or DM_PELSHEIGHT;
  end;
  Result := ChangeDisplaySettings(DeviceMode, CDS_UPDATEREGISTRY);
end;

function ValidaCPF(numCPF: string): boolean;
var
        cpf: string;
        x, total, dg1, dg2: Integer;
        ret: boolean;
begin
ret:=True;
for x:=1 to Length(numCPF) do
        if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
                ret:=False;
if ret then
        begin
        ret:=True;
        cpf:='';
        for x:=1 to Length(numCPF) do
                if numCPF[x] in ['0'..'9'] then
                        cpf:=cpf + numCPF[x];
        if Length(cpf) <> 11 then
                ret:=False;
        if ret then
                begin
                //1� d�gito
                total:=0;
                for x:=1 to 9 do
                        total:=total + (StrToInt(cpf[x]) * x);
                dg1:=total mod 11;
                if dg1 = 10 then
                        dg1:=0;
                //2� d�gito
                total:=0;
                for x:=1 to 8 do
                        total:=total + (StrToInt(cpf[x + 1]) * (x));
                total:=total + (dg1 * 9);
                dg2:=total mod 11;
                if dg2 = 10 then
                        dg2:=0;
                //Valida��o final
                if dg1 = StrToInt(cpf[10]) then
                        if dg2 = StrToInt(cpf[11]) then
                                ret:=True;
                //Inv�lidos

                case AnsiIndexStr(cpf,['00000000000','11111111111','22222222222','33333333333','44444444444',

                                                           '55555555555','66666666666','77777777777','88888888888','99999999999']) of

                        0..9:   ret:=False;

                        end;

                end
        else
                begin
                //Se n�o informado deixa passar
                if cpf = '' then
                        ret:=True;
                end;
        end;
ValidaCPF:=ret;
end;


function ValidaCNPJ(numCNPJ: string): boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
ret:=False;
cnpj:='';
//Analisa os formatos
if Length(numCNPJ) = 18 then
        if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
                begin
                cnpj:=Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
                ret:=True;
                end;
if Length(numCNPJ) = 14 then
        begin
        cnpj:=numCNPJ;
        ret:=True;
        end;
//Verifica
if ret then
        begin
        try
                //1� digito
                total:=0;
                for x:=1 to 12 do
                        begin
                        if x < 5 then
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
                        else
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
                        end;
                dg1:=11 - (total mod 11);
                if dg1 > 9 then
                        dg1:=0;
                //2� digito
                total:=0;
                for x:=1 to 13 do
                        begin
                        if x < 6 then
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
                        else
                                Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
                        end;
                dg2:=11 - (total mod 11);
                if dg2 > 9 then
                        dg2:=0;
                //Valida��o final
                if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
                        ret:=True
                else
                        ret:=False;
        except
                ret:=False;
                end;
        //Inv�lidos
        case AnsiIndexStr(cnpj,['00000000000000','11111111111111','22222222222222','33333333333333','44444444444444',

                                                   '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of

                0..9:   ret:=False;

                end;
        end;
ValidaCNPJ:=ret;
end;

function TestaCpf( xCPF:String ):Boolean;
{Testa se o CPF � v�lido ou n�o}
Var
d1,d4,xx,nCount,resto,digito1,digito2 : Integer;
Check : String;
Begin
d1 := 0; d4 := 0; xx := 1;
for nCount := 1 to Length( xCPF )-2 do
    begin
    if Pos( Copy( xCPF, nCount, 1 ), '/-.' ) = 0 then
       begin
       d1 := d1 + ( 11 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       d4 := d4 + ( 12 - xx ) * StrToInt( Copy( xCPF, nCount, 1 ) );
       xx := xx+1;
       end;
    end;
resto := (d1 mod 11);
if resto < 2 then
   begin
   digito1 := 0;
   end
else
   begin
   digito1 := 11 - resto;
   end;
d4 := d4 + 2 * digito1;
resto := (d4 mod 11);
if resto < 2 then
   begin
   digito2 := 0;
   end
else
   begin
   digito2 := 11 - resto;
   end;
Check := IntToStr(Digito1) + IntToStr(Digito2);
if Check <> copy(xCPF,succ(length(xCPF)-2),2) then
   begin
   Result := False;
   end
else
   begin
   Result := True;
   end;
end;


function TestaCgc(xCGC: String):Boolean;
{Testa se o CGC � v�lido ou n�o}
Var
d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
Check : String;
begin
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( xCGC )-2 do
    begin
    if Pos( Copy( xCGC, nCount, 1 ), '/-.' ) = 0 then
       begin
       if xx < 5 then
          begin
          fator := 6 - xx;
          end
       else
          begin
          fator := 14 - xx;
          end;
       d1 := d1 + StrToInt( Copy( xCGC, nCount, 1 ) ) * fator;
       if xx < 6 then
          begin
          fator := 7 - xx;
          end
       else
          begin
          fator := 15 - xx;
          end;
       d4 := d4 + StrToInt( Copy( xCGC, nCount, 1 ) ) * fator;
       xx := xx+1;
       end;
    end;
    resto := (d1 mod 11);
    if resto < 2 then
       begin
       digito1 := 0;
       end
   else
       begin
       digito1 := 11 - resto;
       end;
   d4 := d4 + 2 * digito1;
   resto := (d4 mod 11);
   if resto < 2 then
      begin
      digito2 := 0;
      end
   else
      begin
      digito2 := 11 - resto;
      end;
   Check := IntToStr(Digito1) + IntToStr(Digito2);
   if Check <> copy(xCGC,succ(length(xCGC)-2),2) then
      begin
      Result := False;
      end
   else
      begin
      Result := True;
      end;
end;

function SystemDateTime(tDate: TDateTime; tTime: TDateTime): Boolean;
{Permite que voc� altere a data e a hora do sistema}
var
   tSetDate: TDateTime;
   vDateBias: Variant;
   tSetTime: TDateTime;
   vTimeBias: Variant;
   tTZI: TTimeZoneInformation;
   tST: TSystemTime;
begin
GetTimeZoneInformation(tTZI);
vDateBias := tTZI.Bias / 1440;
tSetDate := tDate + vDateBias;
vTimeBias := tTZI.Bias / 1440;
tSetTime := tTime + vTimeBias;
with tST do
     begin
     wYear := StrToInt(FormatDateTime('yyyy', tSetDate));
     wMonth := StrToInt(FormatDateTime('mm', tSetDate));
     wDay := StrToInt(FormatDateTime('dd', tSetDate));
     wHour := StrToInt(FormatDateTime('hh', tSettime));
     wMinute := StrToInt(FormatDateTime('nn', tSettime));
     wSecond := StrToInt(FormatDateTime('ss', tSettime));
     wMilliseconds := 0;
     end;
SystemDateTime := SetSystemTime(tST);
end;

function validapis(Dado : String) : boolean;
{Testa se o n�mero do pis � v�lido ou n�o}
var
i, wsoma, Wm11, Wdv,wdigito : Integer;
begin
if Trim(Dado) <> '' Then
   begin
   wdv := strtoint(copy(Dado, 11, 1));
   wsoma := 0;
   wm11 := 2;
   for i := 1 to 10 do
       begin
       wsoma := wsoma + (wm11 *strtoint(copy(Dado,11 - I, 1)));
       if wm11 < 9 then
          begin
          wm11 := wm11+1
          end
       else
          begin
          wm11 := 2;
          end;
       end;
   wdigito := 11 - (wsoma MOD 11);
   if wdigito > 9 then
      begin
      wdigito := 0;
      end;
   if wdv = wdigito then
      begin
      validapis := true;
      end
   else
      begin
      validapis := false;
      end;
   end;
end;

function ValiData(Data: String):Boolean;
{Testa se uma data � v�lida ou n�o}
var
TesteData: TDateTime;
begin
Result:=True;
try
  TesteData := StrToDate(Data);
except
  Result := False;
end;
end;

function ChecaEstado(Dado : string) : boolean;
{Checa se o Simbolo da UF � Valido}
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
  Posicao : integer;
begin
Result := true;
if Dado <> '' then
   begin
   Posicao := Pos(UpperCase(Dado),Estados);
   if (Posicao = 0) or ((Posicao mod 2) = 0) then
      begin
      Result := false;
      end;
    end;
end;

function FileCopy(source,dest: String): Boolean;
{copia um arquivo de um lugar para outro. Retornando falso em caso de erro}
var
fSrc,fDst,len: Integer;
size: Longint;
buffer: packed array [0..2047] of Byte;
begin
if source <> dest then
   begin
   fSrc := FileOpen(source,fmOpenRead);
   if fSrc >= 0 then
      begin
      size := FileSeek(fSrc,0,2);
      FileSeek(fSrc,0,0);
      fDst := FileCreate(dest);
      if fDst >= 0 then
         begin
         while size > 0 do
               begin
               len := FileRead(fSrc,buffer,sizeof(buffer));
               FileWrite(fDst,buffer,len);
               size := size - len;
               end;
         FileSetDate(fDst,FileGetDate(fSrc));
         FileClose(fDst);
         FileSetAttr(dest,FileGetAttr(source));
         Result := True;
         end
      else
         begin
         Result := False;
         end;
      FileClose(fSrc);
      end;
   end;
end;

function ArredontaFloat(x : Real): Real;
{Arredonda um n�mero float para convert�-lo em String}
Begin
  if x > 0 Then
     begin
     if Frac(x) > 0.5 Then
        begin
        x := x + 1 - Frac(x);
        end
     else
        begin
        x := x - Frac(x);
        end;
     end
  else
     begin
     x := x - Frac(x);
     end;
     result := x
end;


//ordena stringgrid
Function clasifica(J:tStringgrid):boolean;
var
sl :tstringlist;
p,na, x:integer;
linha:string;
Begin
SL := TSTRINGLIST.Create;
sl.Clear;
na := j.Col;
FOR X := 1 TO j.RowCount-1  DO
BEGIN
if trim(j.Rows[x].text)<>'' then  SL.Append(j.Cells[na,x]+'//limite//'+j.Rows[X].Text);
END;
SL.Sort;
FOR X := 1 TO j.RowCount-1  DO
BEGIN
j.Rows[X].Clear;
END;
FOR X := 0 TO sl.Count-1  DO
BEGIN
linha := SL.Strings[x];
p := pos('//limite//',linha)+10;
linha := copy(linha,p,length(linha));
j.Rows[X+1].Text := linha;
END;
SL.Destroy;
end;


procedure histtab(ntab:string; operacao:string; codreg:integer; descricao:string; cusu:integer);
begin
//

end;

function fnumD(Objeto: TEdit; Texto, VKey: String; Espaco, Decimal: Integer): String;

Var
vChar, vDiv : String;
I : Integer;
begin
vDiv := '1';
For I := 1 to Decimal do
  vDiv := vDiv + '0';
//vChar := IfThen( VKey = #8, copy(Texto,1,length(Texto)-1),Texto+VKey );

if VKey = #8 then
   begin
     vChar := copy(Texto,1,length(Texto)-1);
   end
else
   begin
     vChar := Texto+VKey;
   end;
//endi

While ( pos( ',', vChar ) > 0 ) or ( pos( '.', vChar ) > 0 ) do
  begin
  Delete( vChar, pos( '.', vChar ), 1 );
  Delete( vChar, pos( ',', vChar ), 1 );
  end;
Objeto.MaxLength := Espaco-1;
Objeto.Text := Format('%*.*n',[Espaco,Decimal,StrToFloat(vChar)/StrToInt(vDiv)]);
Objeto.SelStart := length(Objeto.text)+1;
end;

function DigitoCidade( Codigo : String ) : String;
var
  i, Valor, Soma: integer;
  Digito: string;
const
  PESO = '1212120';
  NAO_VALIDAR = '|2201919|2202251|2201988|2611533|3117836|3152131|4305871|5203939|5203962|';
begin
  if Length(Codigo) < 6 then
   begin
     Result := 'Tamanho Inv�lido';
     exit;
   end;
  if pos('|' + copy(Codigo, 1, 6), NAO_VALIDAR) > 0 then
  begin
    Result := copy(NAO_VALIDAR,pos('|' + Codigo, NAO_VALIDAR)+1,7);
    exit;
  end;
  soma := 0;
  for i := 1 to 6 do
  begin
    valor := StrToInt(copy(Codigo, i, 1)) * StrToInt(copy(PESO, i, 1));
    if valor > 9 then
      soma := soma + StrToInt(copy(IntToStr(valor), 1, 1)) + StrToInt(copy(IntToStr(valor), 2, 1))
    else
      soma := soma + valor;
  end;
  digito := IntToStr((10 - (soma mod 10)));
  if ((soma mod 10) = 0) then
    digito := '0';
  Result := copy(codigo,1,6) + Digito;
end;

Procedure CopiArq( Const sourcefilename, targetfilename: String );
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create( sourcefilename, fmOpenRead );
  try
    T := TFileStream.Create( targetfilename, fmOpenWrite or fmCreate );
    try
      T.CopyFrom(S, S.Size ) ;
    finally
      T.Free;
    end;
  finally
    S.Free;
  end;
End;

function localizanumero(descricao:string):integer;
begin
  try
    result := strtoint( copy ( descricao, 1 , pos( ')' , descricao ) - 1 )  );
  except
    result := 0;
  end;
end;


function FileAgeCreate(const FileName: string): Integer;
var
  Handle: THandle;
  FindData: TWin32FindData;
  LocalFileTime: TFileTime;
begin
  Handle := FindFirstFile(PChar(FileName), FindData);
  if Handle <> INVALID_HANDLE_VALUE then
  begin
    Windows.FindClose(Handle);
    if (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) = 0 then
    begin
      FileTimeToLocalFileTime(FindData.ftCreationTime, LocalFileTime);
      if FileTimeToDosDateTime(LocalFileTime, LongRec(Result).Hi,
        LongRec(Result).Lo) then Exit;
    end;
  end;
  Result := -1;
end;


function datacriexe:string;
var  FlDt: Integer;
begin
  FlDt := FileAgeCreate(ParamStr(0));
  result := DateToStr(FileDateToDateTime(FlDt));
end;

function datamodexe:string;
var  FlDt: Integer;
begin
  FlDt := FileAge(ParamStr(0));
  result := DateToStr(FileDateToDateTime(FlDt));

end;

/////////////////////////////////////////////////////////////////////////////

//Fun��o de valida��o da CNPJ

//Baseado no artigo Algoritmo CNPJ do Clube da Inform�tica

//http://www.clubedainformatica.com.br/mostraartigo.php?artigo=63

/////////////////////////////////////////////////////////////////////////////

function VerificaCNPJ(I:string): Boolean;

var

cnpj: array[1..15] of integer;

apoio: array[0..15] of integer;

f: integer;//para uso no for

total: integer;//para totaliza��o dos valores

D1: integer;//primeiro d�gito calculado

D2: integer;//segundo d�gito calculado

begin

//Primeiro teste: o n�mero de algarismos

if (Length(I)<>14) then result:=false

else

  begin

  //Antes do teste propriamente dito temos que montar a matriz com os

  //os algarismos do CNPJ e depois uma matriz apoio) que ter� os n�meros

  //que ajudar�o a verificar so d�gitos verificadores

  //

  //Monta matriz cnpj

  for f := 1 to 14 do

      begin

       cnpj[f]:=strtoint(I[f]);

      end;

  end;

  //Monta matriz de apoio

  apoio[0]:=6;//s� ser� usada no c�lculo do segundo d�gito verificador

  apoio[1]:=5;

  apoio[2]:=4;

  apoio[3]:=3;

  apoio[4]:=2;

  apoio[5]:=9;

  apoio[6]:=8;

  apoio[7]:=7;

  apoio[8]:=6;

  apoio[9]:=5;

  apoio[10]:=4;

  apoio[11]:=3;

  apoio[12]:=2;

  //Come�a c�lculo do primeiro d�gito verificador

  total:=0;//vari�vel que conter� a soma da opera��o com os n�meros

  for f := 1 to 12 do

        begin

          total:=total+(cnpj[f]*apoio[f]);

        end;

  D1 := total mod 11;

      if (D1<2) then D1:=0 else D1:=11-D1;

      if (D1<>cnpj[13]) then

        begin

          //Primeiro d�gito verificador n�o confere

          Result:=false;

        end else

                begin

                 //Entrou aqui, ent�o o primeiro d�gito confere!

                 total:=0;

                 for f := 0 to 12 do

                        begin

                           total:=total+(cnpj[f+1]*apoio[f]);

                        end;

                 D2 :=total mod 11;

                 if (D2<2) then D2:=0 else D2:=11-D2;

                 if (D2<>cnpj[14]) then

                        begin

                           //Segunod digito verificador n�o confere

                           Result:=false;

                        end else Result:=true;

                 end;



end;




end.
