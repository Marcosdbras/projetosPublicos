{*------------------------------------------------------------------------------
 Principal unit da SPEDFiscal32dll.dll
 Cont�m declara��o das fun��es de gera��o de registros acess�veis externamente ao usu�rio da dll

 @Author Victory Fernandes
 @Version 09/10/2009 �ltima altera��o por Jacira Cardeal
 @Version 15/10/2008 - Altera��es conforme ATO COTEPE/ICMS N� 9, DE 18 DE ABRIL DE 2008 (http://www.fazenda.gov.br/confaz/confaz/atos/atos_cotepe/2008/ac009_08.htm)
-------------------------------------------------------------------------------}

library SPEDFiscal32dll;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, w\hich must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters.}

uses
  ShareMem,
  ComServ,
  SysUtils,
  Windows,
  Dialogs,
  DateUtils,
  Classes,
  Unit_Validacao_SPED in 'Validacao_SPED\Unit_Validacao_SPED.pas';

{$R *.res}

//Esta deve ser sempre a 1� Fun��o a ser chamada antes de iniciar o uso da Dll
//Dir_Saida =   Recebe arquivo do SPED gerado pela dll contendo os registros devidamente formatados
//              Recebe arquivo de Log gerado pela dll contendo informa��es relativas aos totais de registros gerados etc
//              Recebe arquivo de Erro gerado pela dll contendo informa��es relativas aos erros encontrados durante a gera��o
//Dir_Entrada = Cont�m arquivo CFOP.res = Arquivo contendo lista de CFOPs v�lidos utilizados durante valida��o de CFOPs
//              Cont�m arquivo NCM.res = Arquivo contendo lista de NCMs v�lidos utilizados durante valida��o de NCMs
//              Cont�m arquivo Municipio.res = Arquivo contendo lista de NCMs v�lidos utilizados durante valida��o de NCMs
//              Cont�m arquivo NCM.res = Arquivo contendo lista de NCMs v�lidos utilizados durante valida��o de NCMs
Function Inicia_SPED(Dir_Saida, Dir_Entrada: String): integer; stdcall; export;
var
i: integer;
begin
 result := -1;

 if not State then
  begin
   //Inicializa variaveis da dll
   CGC_MF_Info   := '';
   Insc_Est_Info := '';
   UF_Info       := '';

   Data_Inicial_Info := now;
   Data_Final_Info   := now;

   ErroTStr     := TStringList.Create;
   RegistroTStr := TStringList.Create;
   ObsTStr      := TStringList.Create;
   LogTStr      := TStringList.Create;

   ErroTStr.clear;
   RegistroTStr.clear;
   ObsTStr.clear;
   LogTStr.clear;

   //Trata paths informados para os arquivos de saida
   Path_Erro     := Dir_Saida + '\erro.txt';
   Path_SPED     := Dir_Saida + '\SPED.txt';
   Path_Log      := Dir_Saida + '\log.txt';

   Path_cfop      := Dir_Entrada + '\cfop.res';
   Path_Municipio := Dir_Entrada + '\municipio.res';
   Path_ncm       := Dir_Entrada + '\ncm.res';
   Path_pais      := Dir_Entrada + '\pais.res';

   //Testa validade do caminhos dos arquivos de saida
   //Se invalido sai do procedimento retornando -1
   if not DirectoryExists(Dir_Saida + '\') then
    begin
     showmessage('Erro. Diret�rio de sa�da informado inexistente. ' + Dir_Saida + '\');
     exit;
    end;
   if not DirectoryExists(Dir_Entrada + '\') then
    begin
     showmessage('Erro. Diret�rio de entrada informado inexistente. ' + Dir_Saida + '\');
     exit;
    end;

   if not fileexists(Path_cfop) then
    begin
     showmessage('Erro. O arquivo de entrada CFOP.RES n�o foi encontrado em ' + Path_cfop);
     exit;
    end;
   if not fileexists(Path_Municipio) then
    begin
     showmessage('Erro. O arquivo de entrada MUNICIPIO.RES n�o foi encontrado em ' + Path_Municipio);
     exit;
    end;
   if not fileexists(Path_ncm) then
    begin
     showmessage('Erro. O arquivo de entrada NCM.RES n�o foi encontrado em ' + Path_ncm);
     exit;
    end;
   if not fileexists(Path_pais) then
    begin
     showmessage('Erro. O arquivo de entrada PAIS.RES n�o foi encontrado em ' + Path_pais);
     exit;
    end;

   if fileexists(Path_SPED) then
    begin
     DeleteFile(Pchar(Path_SPED));
     ObsTStr.add(#9 + 'O arquivo de SPED previamente existente foi substitu�do pelo novo arquivo gerado.');
    end;
   if fileexists(Path_Erro) then
    begin
     DeleteFile(Pchar(Path_Erro));
     ObsTStr.add(#9 + 'O arquivo de ERRO previamente existente foi substitu�do pelo novo arquivo gerado.');
    end;
   if fileexists(Path_Log) then
    begin
     DeleteFile(Pchar(Path_Log));
     ObsTStr.add(#9 + 'O arquivo de LOG previamente existente foi substitu�do pelo novo arquivo gerado.');
    end;

   Result := 0;
   State := True;

   if ObsTStr.count > 0 then
    Trata_Erro(ErroTStr);

   //Atribui numeros dos registros para cada indice do array
   RegSPED[001].tipo := '0000';
   RegSPED[002].tipo := '0001';
   RegSPED[003].tipo := '0005';
   RegSPED[004].tipo := '0015';
   RegSPED[005].tipo := '0100';
   RegSPED[006].tipo := '0150';
   RegSPED[007].tipo := '0175';
   RegSPED[008].tipo := '0190';
   RegSPED[009].tipo := '0200';
   RegSPED[010].tipo := '0205';
   RegSPED[011].tipo := '0206';
   RegSPED[012].tipo := '0220';
   RegSPED[013].tipo := '0400';
   RegSPED[014].tipo := '0450';
   RegSPED[015].tipo := '0460';
   RegSPED[016].tipo := '0990';
   RegSPED[017].tipo := 'C001';
   RegSPED[018].tipo := 'C100';
   RegSPED[019].tipo := 'C110';
   RegSPED[020].tipo := 'C111';
   RegSPED[021].tipo := 'C112';
   RegSPED[022].tipo := 'C113';
   RegSPED[023].tipo := 'C114';
   RegSPED[024].tipo := 'C115';
   RegSPED[025].tipo := 'C120';
   RegSPED[026].tipo := 'C130';
   RegSPED[027].tipo := 'C140';
   RegSPED[028].tipo := 'C141';
   RegSPED[029].tipo := 'C160';
   RegSPED[030].tipo := 'C165';
   RegSPED[031].tipo := 'C170';
   RegSPED[032].tipo := 'C171';
   RegSPED[033].tipo := 'C172';
   RegSPED[034].tipo := 'C173';
   RegSPED[035].tipo := 'C174';
   RegSPED[036].tipo := 'C175';
   RegSPED[037].tipo := 'C176';
   RegSPED[038].tipo := 'C177';
   RegSPED[039].tipo := 'C178';
   RegSPED[040].tipo := 'C179';
   RegSPED[041].tipo := 'C190';
   RegSPED[042].tipo := 'C195';
   RegSPED[043].tipo := 'C197';
   RegSPED[044].tipo := 'C300';
   RegSPED[045].tipo := 'C310';
   RegSPED[046].tipo := 'C320';
   RegSPED[047].tipo := 'C321';
   RegSPED[048].tipo := 'C350';
   RegSPED[049].tipo := 'C370';
   RegSPED[050].tipo := 'C390';
   RegSPED[051].tipo := 'C400';
   RegSPED[052].tipo := 'C405';
   RegSPED[053].tipo := 'C410';
   RegSPED[054].tipo := 'C420';
   RegSPED[055].tipo := 'C425';
   RegSPED[056].tipo := 'C460';
   RegSPED[057].tipo := 'C470';
   RegSPED[058].tipo := 'C490';
   RegSPED[059].tipo := 'C495';
   RegSPED[060].tipo := 'C500';
   RegSPED[061].tipo := 'C510';
   RegSPED[062].tipo := 'C590';
   RegSPED[063].tipo := 'C600';
   RegSPED[064].tipo := 'C601';
   RegSPED[065].tipo := 'C610';
   RegSPED[066].tipo := 'C690';
   RegSPED[067].tipo := 'C700';
   RegSPED[068].tipo := 'C790';
   RegSPED[069].tipo := 'C791';
   RegSPED[070].tipo := 'C990';
   RegSPED[071].tipo := 'D001';
   RegSPED[072].tipo := 'D100';
   RegSPED[073].tipo := 'D110';
   RegSPED[074].tipo := 'D120';
   RegSPED[075].tipo := 'D130';
   RegSPED[076].tipo := 'D140';
   RegSPED[077].tipo := 'D150';
   RegSPED[078].tipo := 'D160';
   RegSPED[079].tipo := 'D161';
   RegSPED[080].tipo := 'D162';
   RegSPED[081].tipo := 'D170';
   RegSPED[082].tipo := 'D180';
   RegSPED[083].tipo := 'D190';
   RegSPED[084].tipo := 'D300';
   RegSPED[085].tipo := 'D301';
   RegSPED[086].tipo := 'D310';
   RegSPED[087].tipo := 'D350';
   RegSPED[088].tipo := 'D355';
   RegSPED[089].tipo := 'D360';
   RegSPED[090].tipo := 'D365';
   RegSPED[091].tipo := 'D370';
   RegSPED[092].tipo := 'D390';
   RegSPED[093].tipo := 'D400';
   RegSPED[094].tipo := 'D410';
   RegSPED[095].tipo := 'D411';
   RegSPED[096].tipo := 'D420';
   RegSPED[097].tipo := 'D500';
   RegSPED[098].tipo := 'D510';
   RegSPED[099].tipo := 'D530';
   RegSPED[100].tipo := 'D590';
   RegSPED[101].tipo := 'D600';
   RegSPED[102].tipo := 'D610';
   RegSPED[103].tipo := 'D690';
   RegSPED[104].tipo := 'D695';
   RegSPED[105].tipo := 'D696';
   RegSPED[106].tipo := 'D697';
   RegSPED[107].tipo := 'D990';
   RegSPED[108].tipo := 'E001';
   RegSPED[109].tipo := 'E100';
   RegSPED[110].tipo := 'E110';
   RegSPED[111].tipo := 'E111';
   RegSPED[112].tipo := 'E112';
   RegSPED[113].tipo := 'E113';
   RegSPED[114].tipo := 'E115';
   RegSPED[115].tipo := 'E116';
   RegSPED[116].tipo := 'E200';
   RegSPED[117].tipo := 'E210';
   RegSPED[118].tipo := 'E220';
   RegSPED[119].tipo := 'E230';
   RegSPED[120].tipo := 'E240';
   RegSPED[121].tipo := 'E250';
   RegSPED[122].tipo := 'E500';
   RegSPED[123].tipo := 'E510';
   RegSPED[124].tipo := 'E520';
   RegSPED[125].tipo := 'E530';
   RegSPED[126].tipo := 'E990';
   RegSPED[127].tipo := 'G001';
   RegSPED[128].tipo := 'G990';
   RegSPED[129].tipo := 'H001';
   RegSPED[130].tipo := 'H005';
   RegSPED[131].tipo := 'H010';
   RegSPED[132].tipo := 'H990';
   RegSPED[133].tipo := '1001';
   RegSPED[134].tipo := '1100';
   RegSPED[135].tipo := '1105';
   RegSPED[136].tipo := '1110';
   RegSPED[137].tipo := '1200';
   RegSPED[138].tipo := '1210';
   RegSPED[139].tipo := '1300';
   RegSPED[140].tipo := '1310';
   RegSPED[141].tipo := '1320';
   RegSPED[142].tipo := '1350';
   RegSPED[143].tipo := '1360';
   RegSPED[144].tipo := '1370';
   RegSPED[145].tipo := '1400';
   RegSPED[146].tipo := '1500';
   RegSPED[147].tipo := '1510';
   RegSPED[148].tipo := '1600';
   RegSPED[149].tipo := '1990';
   RegSPED[150].tipo := '9001';
   RegSPED[151].tipo := '9900';
   RegSPED[152].tipo := '9990';
   RegSPED[153].tipo := '9999';

                                                                 //todo: verificar numeros dos registros!
   //Atribui tipo de ocorr�ncia
   RegSPED[IdxOfReg('0000')].ocorrencia := Um;
   RegSPED[IdxOfReg('0001')].ocorrencia := Um;
   RegSPED[IdxOfReg('0005')].ocorrencia := Um;
   RegSPED[IdxOfReg('0015')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0100')].ocorrencia := Um;
   RegSPED[IdxOfReg('0150')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0175')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('0190')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0200')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0205')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('0206')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('0220')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('0400')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0450')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0460')].ocorrencia := Varios;
   RegSPED[IdxOfReg('0990')].ocorrencia := Um;
   RegSPED[IdxOfReg('C001')].ocorrencia := Um;
   RegSPED[IdxOfReg('C100')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C110')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C111')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C112')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C113')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C114')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C115')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C120')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C130')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C140')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C141')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C160')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C165')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C170')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C171')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C172')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C173')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C174')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C175')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C176')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C177')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C178')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C179')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C190')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C195')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C197')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C300')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C310')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C320')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C321')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C350')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C370')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C390')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C400')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C405')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C410')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('C420')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C425')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C460')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C470')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C490')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C495')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C500')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C510')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C590')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C600')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C601')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C610')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C690')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C700')].ocorrencia := Varios;
   RegSPED[IdxOfReg('C790')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C791')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('C990')].ocorrencia := Um;
   RegSPED[IdxOfReg('D001')].ocorrencia := Um;
   RegSPED[IdxOfReg('D100')].ocorrencia := Varios;
   RegSPED[IdxOfReg('D110')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D120')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('D130')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D140')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('D150')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('D160')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D161')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('D162')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D170')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('D180')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D190')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D300')].ocorrencia := Varios;
   RegSPED[IdxOfReg('D301')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D310')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D350')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D355')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D360')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('D365')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D370')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D390')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D400')].ocorrencia := Varios;
   RegSPED[IdxOfReg('D410')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D411')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D420')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D500')].ocorrencia := Varios;
   RegSPED[IdxOfReg('D510')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D530')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D590')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D600')].ocorrencia := Varios;
   RegSPED[IdxOfReg('D610')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D690')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D695')].ocorrencia := Varios;
   RegSPED[IdxOfReg('D696')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D697')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('D990')].ocorrencia := Um;
   RegSPED[IdxOfReg('E001')].ocorrencia := Um;
   RegSPED[IdxOfReg('E100')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E110')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('E111')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E112')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E113')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E115')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E116')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E200')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E210')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('E220')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E230')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E240')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E250')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E500')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E510')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E520')].ocorrencia := UmParaUm;
   RegSPED[IdxOfReg('E530')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('E990')].ocorrencia := Um;
   RegSPED[IdxOfReg('G001')].ocorrencia := Um;
   RegSPED[IdxOfReg('G990')].ocorrencia := Um;
   RegSPED[IdxOfReg('H001')].ocorrencia := Um;
   RegSPED[IdxOfReg('H005')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('H010')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('H990')].ocorrencia := Um;
   RegSPED[IdxOfReg('1001')].ocorrencia := Um;
   RegSPED[IdxOfReg('1100')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1105')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1110')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1200')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1210')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1300')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1310')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1320')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1350')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1360')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1370')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1400')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1500')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1510')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1600')].ocorrencia := UmParaN;
   RegSPED[IdxOfReg('1990')].ocorrencia := Um;
   RegSPED[IdxOfReg('9001')].ocorrencia := Um;
   RegSPED[IdxOfReg('9900')].ocorrencia := Varios;
   RegSPED[IdxOfReg('9990')].ocorrencia := Um;
   RegSPED[IdxOfReg('9999')].ocorrencia := Um;

   for i := 0 to high(RegSPED) do
    begin
     //atribuicao dos blocos com base nos tipos de registro
     if length(RegSPED[i].tipo) = 4 then
      RegSPED[i].bloco := RegSPED[i].tipo[1];

     //Atribuicao dos registros obrigatorios
     RegSPED[i].obrigatorio := false;
     if (RegSPED[i].tipo = '0000') or                                                       //Inicio de arquivo
        (RegSPED[i].tipo[2] + RegSPED[i].tipo[3] + RegSPED[i].tipo[4] = '001') or   //Inicio de Bloco
        (RegSPED[i].tipo[2] + RegSPED[i].tipo[3] + RegSPED[i].tipo[4] = '990') or   //Fim de Bloco
        (RegSPED[i].tipo = '9999') or                                                       //Fim de arquivo
        (RegSPED[i].tipo = '0005') or
        (RegSPED[i].tipo = '9900') then
      RegSPED[i].obrigatorio := true;

     //inicaliza com zero contadores dos registros
     RegSPED[i].ok   := 0;
     RegSPED[i].erro := 0;
     RegSPED[i].obs  := 0;
    end;
  end;
end;

//Esta deve ser sempre a �ltima fun��o a ser chamada ao finanlizar o uso da Dll
Procedure Finaliza_SPED; stdcall; export;
begin
 if State then
  begin
   Trata_Log(LogTStr);

   ErroTStr.free;
   RegistroTStr.free;
   ObsTStr.free;
   LogTStr.free;
  end;

 FreeMemory(@RegSPED);

 State := False;
end;

{*------------------------------------------------------------------------------
 BLOCO 0: ABERTURA, IDENTIFICA��O E REFER�NCIAS
 Registro 0000 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICA��O DO CONTRIBUINTE

 @Author Alexandre Magno
 @Version 08/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_VER    C�digo da vers�o do leiaute:
 @param COD_FIN    C�digo da finalidade do arquivo:
 @param DT_INI     Data inicial:
 @param DT_FIN     Data final:
 @param NOME       Nome empresarial do contribuinte:
 @param CNPJ       N�mero de inscri��o da entidade no CNPJ:
 @param CPF        N�mero de inscri��o da entidade no CPF:
 @param UF         Sigla da unidade da federa��o:
 @param IE         Inscri��o Estadual do contribuinte:
 @param COD_MUN    C�digo do munic�pio do domic�lio fiscal:
 @param IM         Inscri��o Municipal do contribuinte:
 @param SUFRAMA    N�mero de inscri��o do contribuinte:
 @param IND_PERFIL Perfil de apresenta��o do arquivo fiscal:
 @param IND_ATIV   Indicador de tipo de atividade:

 @return Caso nenhum erro encontrado retorna Registro0000 devidamente formatado '|0000|' + COD_VER + COD_FIN + DT_INI + DT_FIN + NOME + CNPJ + CPF + NIT + UF + IE + COD_MUN + IM + SUFRAMA + IND_PERFIL + IND_ATIV
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED :: Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez'
 @return -2   CNPJ Inv�lido :: ' + CNPJ
 @return -3   CPF Inv�lido : ' + CPF
 @return -4   Unidade da Federa��o Inv�lida :: ' + UF
 @return -5   Inscri��o Estadual Inv�lida :: ' + IE
 @return -6   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_INI
 @return -7   Data Final Inv�lida (DDMMAAAA) :: ' + DT_FIN
 @return -8   C�digo da vers�o do leiaute Inv�lido :: ' + COD_VER)
 @return -9   C�digo do munic�pio do domic�lio fiscal Inv�lido :: ' + COD_MUN
 @return -10  Perfil de apresenta��o do arquivo fiscal Inv�lido :: ' + IND_PERFIL
 @return -11  Indicador de tipo de atividade Inv�lido :: ' + IND_ATIV
 @return -12  C�digo da finalidade do arquivo Inv�lido : ' + COD_FIN
-------------------------------------------------------------------------------}
Function Registro0000(COD_VER, COD_FIN, DT_INI, DT_FIN, NOME, CNPJ, CPF, UF, IE,
                      COD_MUN, IM, SUFRAMA, IND_PERFIL, IND_ATIV: String): Integer; stdcall; export;
const
 Tipo = '0000';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                             //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo + ' LFPD');

   //Formata��o dos Campos
   FormatoNum (COD_VER,          003, 'C�digo da vers�o do leiaute:                          ');
   FormatoNum (COD_FIN,          001, 'C�digo da finalidade do arquivo:                      ');  //todo: verificar funcao de validacao
   ddmmaaaaToSPEDDate(DT_INI);

   FormatoNum (DT_INI,           008, 'Data inicial:                                         ');
   ddmmaaaaToSPEDDate(DT_FIN);
   FormatoNum (DT_FIN,           008, 'Data final:                                           ');
   FormatoAlfa(NOME,             100, 'Nome empresarial do contribuinte:                     ');
   if CNPJ = '' then
    FormatoNum (CPF,             011, 'N�mero de inscri��o da entidade no CPF:               ')
   else
    FormatoNum (CNPJ,            014, 'N�mero de inscri��o da entidade no CNPJ:              ');
   FormatoAlfa(UF,               002, 'Sigla da unidade da federa��o:                        ');
   FormatoAlfa(IE,               014, 'Inscri��o Estadual do contribuinte:                   '); //todo: mudanca de tam (de 255 para 14) verificar funcao de validacao
   FormatoNum (COD_MUN,          007, 'C�digo do munic�pio do domic�lio fiscal:              ');
   FormatoAlfa(IM,               255, 'Inscri��o Municipal do contribuinte:                  ');
   FormatoAlfa(SUFRAMA,          009, 'Inscri��o da entidade na SUFRAMA:                     ');
   FormatoAlfa(IND_PERFIL,       001, 'Perfil de apresenta��o do arquivo fiscal:             ');
   FormatoNum (IND_ATIV,         001, 'Indicador de tipo de atividade:                       ');

   //if Quebra_Sequencia(IdxOfReg(tipo) + 1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if (RegSPED[IdxOfReg(tipo)].ocorrencia = Um) and (RegSPED[IdxOfReg(tipo)].ok > 0) then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');
   if CNPJ <> '' then
    begin
      if not(vCNPJ(CNPJ)) and (RemovenumInvalid(CNPJ) <> '') then
        ErroTStr.add('-2   CNPJ Inv�lido : ' + CNPJ);
    end
   else if CPF <> '' then
    begin
      if (not vCPF(CPF)) and (RemovenumInvalid(CPF) <> '') then
        ErroTStr.add('-3   CPF Inv�lido : ' + CPF);
    end;
   if not vUF(UF) then
    ErroTStr.add('-4   Unidade da Federa��o Inv�lida : ' + UF);
   if (not vInscEst(IE, UF)) and (not (Trim(IE) = 'ISENTO')) then
    ErroTStr.add('-5   Inscri��o Estadual Inv�lida : ' + IE);
   if not IsSPEDDate(DT_INI) then
    ErroTStr.add('-6   Data Inicial Inv�lida (DDMMAAAA) : ' + DT_INI);
   if not IsSPEDDate(DT_FIN) then
    ErroTStr.add('-7   Data Final Inv�lida (DDMMAAAA) : ' + DT_FIN);
   if not vCod_Leiaute(COD_VER) then
    ErroTStr.add('-8   C�digo da vers�o do leiaute Inv�lido : ' + COD_VER);
   if not vCOD_Municipio(COD_MUN) then
    ErroTStr.add('-9   C�digo do munic�pio do domic�lio fiscal Inv�lido : ' + COD_MUN);
   if not vIND_PERFIL(IND_PERFIL) then
    ErroTStr.add('-10  Perfil de apresenta��o do arquivo fiscal Inv�lido : ' + IND_PERFIL);
   if not vIND_ATIV(IND_ATIV) then
    ErroTStr.add('-11  Indicador de tipo de atividade Inv�lido : ' + IND_ATIV);
   if not vCOD_FIN(COD_FIN) then
    ErroTStr.add('-12  C�digo da finalidade do arquivo Inv�lido : ' + COD_FIN);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     CGC_MF_Info   := CPF;
     Insc_Est_Info := IM;
     UF_Info       := UF;

     Data_Inicial_Info := SPEDDateToDateTime(DT_INI);
     Data_Final_Info   := SPEDDateToDateTime(DT_FIN);
     Periodo_Str := 'de ' + datetostr(Data_Inicial_Info) + ' at� ' + datetostr(Data_Final_Info);

     result := 0;

     if CNPJ <> '' then
        Trata_SPED('|' + Tipo + '|' + COD_VER + COD_FIN + DT_INI + DT_FIN
                    + NOME + CNPJ + '|' + UF + IE + COD_MUN + IM + SUFRAMA + IND_PERFIL + IND_ATIV)
     else
        Trata_SPED('|' + Tipo + '|' + COD_VER + COD_FIN + DT_INI + DT_FIN
                    + NOME + '|' + CPF + UF + IE + COD_MUN + IM + SUFRAMA + IND_PERFIL + IND_ATIV);

     UF_Informante := UF;

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);
 
     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;
 
//--- Teste de Registro0000 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0001 - ABERTURA DO ARQUIVO DIGITAL E IDENTIFICA��O DO CONTRIBUINTE

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param IND_MOV Indicador de movimento:

 @return Caso nenhum erro encontrado retorna Registro0001 devidamente formatado '|0001|' + IND_MOV
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez'
 @return -2   Indicador de movimento Inv�lido : ' + IND_MOV
-------------------------------------------------------------------------------}
Function Registro0001(IND_MOV: String): Integer; stdcall; export;               //todo: mudanca de nome (de IND_DAD para IND_MOV) mudar chamada no demo

const
 Tipo = '0001';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);
   FormatoNum(IND_MOV,            01, 'Indicador de movimento: ');

   //if Quebra_Sequencia(IdxOfReg(tipo) + 1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');

   if not vMovimento(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento Inv�lido : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0005 - DADOS COMPLEMENTARES DO CONTRIBUINTE

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param FANTASIA Nome de fantasia associado:
 @param CEP      C�digo de Endere�amento Postal:
 @param ENDERECO Logradouro e endere�o do im�vel:
 @param NUM      N�mero do im�vel:
 @param COMPL    Dados complementares do endere�o:
 @param BAIRRO   Bairro em que o im�vel est� situado:
 @param FONE     N�mero do telefone:
 @param FAX      N�mero do fax:
 @param EMAIL    Endere�o do correio eletr�nico:

 @return Caso nenhum erro encontrado retorna Registro0005 devidamente formatado '|0005|' + FANTASIA + CEP + ENDERECO + NUM + COMPL + BAIRRO + FONE + FAX + EMAIL
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez'
 @return -2   C�digo de Endere�amento Postal Inv�lida: ' + CEP
-------------------------------------------------------------------------------}
Function Registro0005(FANTASIA,CEP,ENDERECO,NUM,COMPL,BAIRRO,FONE,
                      FAX,EMAIL: String): Integer; stdcall; export;
const
  Tipo    = '0005';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;

 if Testa_State(tipo) then                                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);
 
   FormatoAlfa(FANTASIA,          060, 'Nome de fantasia associado:            '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoNum (CEP,               008, 'C�digo de Endere�amento Postal:        ');
   FormatoAlfa(ENDERECO,          060, 'Logradouro e endere�o do im�vel:       '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(NUM,               255, 'N�mero do im�vel:                      ');
   FormatoAlfa(COMPL,             060, 'Dados complementares do endere�o:      '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(BAIRRO,            060, 'Bairro em que o im�vel est� situado:   '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(FONE,              010, 'N�mero do telefone:                    ');
   FormatoAlfa(FAX,               010, 'N�mero do fax:                         ');
   FormatoAlfa(EMAIL,             255, 'Endere�o do correio eletr�nico:        ');
 
   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
 
   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');
   if not vCEP(CEP) then
    ErroTStr.add('-2   C�digo de Endere�amento Postal Inv�lida: ' + CEP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED( '|' + Tipo + '|' + FANTASIA + CEP + ENDERECO + NUM + COMPL + BAIRRO + FONE + FAX + EMAIL);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0005 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0015 - DADOS DO CONTRIBUINTE SUBSTITUTO

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param UF_ST Sigla da unidade da federa��o:
 @param IE_ST Inscri��o Estadual:

 @return Caso nenhum erro encontrado retorna Registro0005 devidamente formatado '|0015|' + UF_ST + IE_ST
 @return -1   Inscri��o Estadual Inv�lida : ' + IE_ST
 @return -2   UF Inv�lida : ' + UF_ST
-------------------------------------------------------------------------------}
Function Registro0015(UF_ST, IE_ST: String): Integer; stdcall; export;
const
 Tipo = '0015';
begin
 NaoRegistrado;                                                                  //Testa se registrado
 Result := -1;                                                                   //Por default retorna Erro

 if Testa_State(tipo) then                                                             //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(UF_ST,    002, 'Sigla da unidade da federa��o:');
   FormatoAlfa(IE_ST,    014, 'Inscri��o Estadual:           ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if (not vInscEst(IE_ST, UF_ST)) and (not (Trim(IE_ST) = 'ISENTO')) then
    ErroTStr.add('-1   Inscri��o Estadual Inv�lida : ' + IE_ST);
   if not vUF(UF_ST) then
    ErroTStr.add('-2   UF Inv�lida : ' + UF_ST);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + UF_ST + IE_ST);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;
//--- Teste de Registro0015 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0100 - DADOS DO CONTABILISTA

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param NOME     Nome do contabilista/escrit�rio:
 @param CPF      N�mero de inscri��o no CPF:
 @param CRC      N�mero de inscri��o no Conselho Regional:
 @param CNPJ     CNPJ do escrit�rio de contabilidade, se houver:
 @param CEP      C�digo de Endere�amento Postal:
 @param ENDERECO Logradouro e endere�o do im�vel:
 @param NUM      N�mero do im�vel:
 @param COMPL    Dados complementares do endere�o:
 @param BAIRRO   Bairro em que o im�vel est� situado:
 @param FONE     N�mero do telefone:
 @param FAX      N�mero do fax:
 @param EMAIL    Endere�o do correio eletr�nico:
 @param COD_MUN  C�digo do munic�pio, conforme tabela IBGE:

 @return Caso nenhum erro encontrado retorna Registro0100 devidamente formatado '|0100|' + NOME + CPF + CRC + CNPJ + CEP + ENDERECO + NUM + COMPL + BAIRRO + FONE + FAX + EMAIL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.'
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez'
 @return -2   CNPJ Inv�lido : ' + CNPJ
 @return -3   N�mero de inscri��o no CPF Inv�lida: ' + CPF
 @return -4   Nome do Contribuinte Inv�lido: Preenchimento Obrigat�rio'
 @return -5   C�digo de Endere�amento Postal Inv�lida: ' + CEP
-------------------------------------------------------------------------------}
Function Registro0100(NOME,CPF,CRC,CNPJ,CEP,ENDERECO,NUM,COMPL,BAIRRO,
                      FONE,FAX,EMAIL, COD_MUN: String): Integer; stdcall; export;
const
 Tipo = '0100';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(NOME,             060, 'Nome do contabilista/escrit�rio:                '); // todo: mudanca de tamanho (de 255 para 60)
   FormatoNum (CPF,              011, 'N�mero de inscri��o do contabilista no CPF:     ');
   FormatoAlfa(CRC,              015, 'N�mero de inscri��o no Conselho Regional:       ');
   FormatoNum (CNPJ,             014, 'CNPJ do escrit�rio de contabilidade, se houver: ');
   FormatoNum (CEP,              008, 'C�digo de Endere�amento Postal:                 ');
   FormatoAlfa(ENDERECO,         060, 'Logradouro e endere�o do im�vel:                '); // todo: mudanca de tamanho (de 255 para 60)
   FormatoAlfa(NUM,              255, 'N�mero do im�vel:                               ');
   FormatoAlfa(COMPL,            060, 'Dados complementares do endere�o:               '); // todo: mudanca de tamanho (de 255 para 60)
   FormatoAlfa(BAIRRO,           060, 'Bairro em que o im�vel est� situado:            '); // todo: mudanca de tamanho (de 255 para 60)
   FormatoAlfa(FONE,             010, 'N�mero do telefone:                             ');
   FormatoAlfa(FAX,              010, 'N�mero do fax:                                  ');
   FormatoAlfa(EMAIL,            255, 'Endere�o do correio eletr�nico:                 ');
   FormatoNum (COD_MUN,          007, 'C�digo do munic�pio, conforme tabela IBGE:      ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');
   if not(vCNPJ(CNPJ)) then
    ErroTStr.add('-2   CNPJ Inv�lido : ' + CNPJ);
   if not vCPF(CPF) then
    ErroTStr.add('-3   N�mero de inscri��o no CPF Inv�lida: ' + CPF);
   if Trim(CRC) = '' then
    ErroTStr.add('-4   Nome do Contribuinte Inv�lido: Preenchimento Obrigat�rio');
   if not vCEP(CEP) then
    ErroTStr.add('-5   C�digo de Endere�amento Postal Inv�lida: ' + CEP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + NOME + CPF + CRC + CNPJ + CEP + ENDERECO + NUM + COMPL
               + BAIRRO + FONE + FAX + EMAIL + COD_MUN);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0100 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0150 - TABELA DE CADASTRO DO PARTICIPANTE

 @Author Alexandre Magno
 @Version 08/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_PART C�digo de identifica��o do participante:
 @param NOME     Nome pessoal ou empresarial:
 @param COD_PAIS C�digo do pa�s do participante:
 @param CNPJ     CNPJ do participante:
 @param CPF      CPF do participante na unidade da federa��o do destinat�rio:
 @param IE       Inscri��o Estadual do participante:
 @param COD_MUN  C�digo do munic�pio:
 @param SUFRAMA  N�mero de inscri��o na Suframa:
 @param ENDERECO Logradouro e endere�o do im�vel:
 @param NUM      N�mero do im�vel:
 @param COMPL    Dados complementares do endere�o:
 @param BAIRRO   Bairro em que o im�vel est� situado:

 @return Caso nenhum erro encontrado retorna Registro0150 devidamente formatado '|0150|' + COD_PART + NOME + COD_PAIS + CNPJ + CPF + IE + COD_MUN + SUFRAMA + ENDERECO + NUM + COMPL + BAIRRO
 @return Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   CNPJ Inv�lido : ' + CNPJ
 @return -2   CPF Inv�lido : ' + CPF
 @return -3   C�digo do munic�pio do domic�lio fiscal : ' + COD_MUN
 @return -4   C�digo do munic�pio do domic�lio fiscal : ' + COD_PAIS
-------------------------------------------------------------------------------}
Function Registro0150(COD_PART,NOME,COD_PAIS,CNPJ,CPF,IE, COD_MUN,SUFRAMA,ENDERECO,
                      NUM,COMPL,BAIRRO: String): Integer; stdcall; export;
const
 Tipo = '0150';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_PART,         060, 'C�digo de identifica��o do participante:                       '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(NOME,             100, 'Nome pessoal ou empresarial:                                   ');
   FormatoNum (COD_PAIS,         005, 'C�digo do pa�s do participante:                                ');
   if CPF = '' then
      FormatoNum (CNPJ,             014, 'CNPJ do participante:                                        ')
   else
      FormatoNum (CPF,              011, 'CPF do participante na unidade da federa��o do destinat�rio: ');
   FormatoAlfa(IE,               014, 'Inscri��o Estadual do participante:                             '); // todo: : mudanca de tamanho (de 255 para 14)
   FormatoNum (COD_MUN,          007, 'C�digo do munic�pio:                                            ');
   FormatoAlfa(SUFRAMA,          009, 'N�mero de inscri��o na Suframa:                                 ');
   FormatoAlfa(ENDERECO,         060, 'Logradouro e endere�o do im�vel:                                '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(NUM,              255, 'N�mero do im�vel:                                               ');
   FormatoAlfa(COMPL,            255, 'Dados complementares do endere�o:                               ');
   FormatoAlfa(BAIRRO,           060, 'Bairro em que o im�vel est� situado:                            '); // todo: : mudanca de tamanho (de 255 para 60)

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
   if CNPJ <> '' then
    begin
      if not(vCNPJ(CNPJ)) or (RemovenumInvalid(CNPJ) = '') then
        ErroTStr.add('-1   CNPJ Inv�lido : ' + CNPJ);
    end
   else
    begin
      if (not vCPF(CPF)) or (RemovenumInvalid(CPF) = '') then
        ErroTStr.add('-2   CPF Inv�lido : ' + CPF);
    end;
   if not vCOD_Municipio(COD_MUN) then
    ErroTStr.add('-3   C�digo do munic�pio do domic�lio fiscal : ' + COD_MUN);
   if not vCOD_PAIS(COD_PAIS) then
    ErroTStr.add('-4   C�digo do munic�pio do domic�lio fiscal : ' + COD_PAIS);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     if CNPJ <> '' then
        Trata_SPED('|' + Tipo + '|' + COD_PART + NOME + COD_PAIS + CNPJ + '|' +
               IE + COD_MUN + SUFRAMA + ENDERECO + NUM + COMPL + BAIRRO)
     else
        Trata_SPED('|' + Tipo + '|' + COD_PART + NOME + COD_PAIS + '|' + CPF +
               IE + COD_MUN + SUFRAMA + ENDERECO + NUM + COMPL + BAIRRO);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0150 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0175 - Altera��o da Tabela de Cadastro de Participante

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param DT_ALT   Data de altera��o do cadastro:
 @param NR_CAMPO N�mero do campo alterado (Somente campos 03 a 13):
 @param CONT_ANT Conte�do anterior do campo:

 @return Caso nenhum erro encontrado retorna Registro0175 devidamente formatado '|0175|' + DT_ALT + NR_CAMPO + CONT_ANT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
 @return -1   Data de altera��o do cadastro(AAAAMMDD): '+ DT_ALT
-------------------------------------------------------------------------------}
Function Registro0175(DT_ALT, NR_CAMPO, CONT_ANT: String): Integer; stdcall; export;
const
 Tipo = '0175';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   ddmmaaaaToSPEDDate(DT_ALT);
   FormatoNum (DT_ALT,             008, 'Data de altera��o do cadastro:                     ');
   FormatoAlfa(NR_CAMPO,           002, 'N�mero do campo alterado (Somente campos 03 a 13): ');
   FormatoAlfa(CONT_ANT,           255, 'Conte�do anterior do campo:                        ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not IsSPEDDate(DT_ALT) then
    ErroTStr.add('-1   Data de altera��o do cadastro(AAAAMMDD): ' + DT_ALT);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
 
     Trata_SPED('|' + Tipo + '|' + DT_ALT + NR_CAMPO + CONT_ANT);
 
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;
 
//--- Teste de Registro0175 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0190 - IDENTIFICA��O DAS UNIDADES DE MEDIDA

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param UNID  C�digo da unidade de medida:
 @param DESCR Descri��o da unidade de medida:

 @return Caso nenhum erro encontrado retorna Registro0190 devidamente formatado '|0190|' + UNID + DESCR
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
-------------------------------------------------------------------------------}
Function Registro0190(UNID, DESCR: String): Integer; stdcall; export;
const
 Tipo = '0190';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(UNID,         006, 'C�digo da unidade de medida:   ');
   FormatoAlfa(DESCR,        255, 'Descri��o da unidade de medida:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + UNID + DESCR);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0190 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0200 - TABELA DE IDENTIFICA��O DO ITEM (PRODUTO E SERVI�OS)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param COD_ITEM     C�digo do item:
 @param DESCR_ITEM   Descri��o do item:
 @param COD_BARRA    C�digo de barra do produto, se houver:
 @param COD_ANT_ITEM C�digo anterior do item (ultima apresentado):
 @param UNID_INV     Unidade de medida do estoque:
 @param TIPO_ITEM    Tipo Item - Ativ. Ind, Com e Servi�os:
 @param COD_NCM      C�digo da Nomenclatura Comum do Mercosul:
 @param EX_IPI       C�digo EX, conforme a TIPI:
 @param COD_GEN      C�digo g�nero item, tabela indicada item 4.2.1:
 @param COD_LST      C�digo servi�o Anexo I - Lei n�116/03:
 @param ALIQ_ICMS    Al�quota ICMS aplic�vel (opera��es internas):

 @return Caso nenhum erro encontrado retorna Registro0200 devidamente formatado '|0200|' + COD_ITEM + DESCR_ITEM + COD_BARRA + COD_ANT_ITEM + UNID_INV + TIPO_ITEM + COD_NCM + EX_IPI + COD_GEN + COD_LST + ALIQ_ICMS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
 @return -1   Tipo Item - Ativ. Ind, Com e Servi�os: ' + TIPO_ITEM
-------------------------------------------------------------------------------}
Function Registro0200(COD_ITEM, DESCR_ITEM, COD_BARRA, COD_ANT_ITEM, UNID_INV,
                      TIPO_ITEM, COD_NCM, EX_IPI, COD_GEN, COD_LST, ALIQ_ICMS: String): Integer; stdcall; export;
const
 Tipo = '0200';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_ITEM,          060, 'C�digo do item:                                 '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(DESCR_ITEM,        255, 'Descri��o do item:                              ');
   FormatoAlfa(COD_BARRA,         255, 'C�digo de barra do produto, se houver:          ');
   FormatoAlfa(COD_ANT_ITEM,      060, 'C�digo anterior do item (ultima apresentado):   '); // todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(UNID_INV,          006, 'Unidade de medida do estoque:                   ');
   FormatoNum (TIPO_ITEM,         002, 'Tipo Item - Ativ. Ind, Com e Servi�os:          '); //todo: verificar funcao de validacao
   FormatoAlfa(COD_NCM,           008, 'C�digo da Nomenclatura Comum do Mercosul:       ');
   FormatoAlfa(EX_IPI,            003, 'C�digo EX, conforme a TIPI:                     ');
   FormatoNum (COD_GEN,           002, 'C�digo g�nero item, tabela indicada item 4.2.1: ');
   FormatoNum (COD_LST,           004, 'C�digo servi�o Anexo I - Lei n�116/03:          ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota ICMS aplic�vel (opera��es internas):   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vTIPO_ITEM(TIPO_ITEM) then
    ErroTStr.add('-1   Tipo Item - Ativ. Ind, Com e Servi�os: ' + TIPO_ITEM);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_ITEM + DESCR_ITEM + COD_BARRA + COD_ANT_ITEM + UNID_INV +
                    TIPO_ITEM + COD_NCM + EX_IPI + COD_GEN + COD_LST + ALIQ_ICMS);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0200 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0205 - C�DIGO ANTERIOR DO ITEM

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param DESCR_ANT_ITEM Descri��o anterior do item:
 @param DT_INI         Data inicial de utiliza��o do c�digo:
 @param DT_FIM         Data final de utiliza��o do c�digo:

 @return Caso nenhum erro encontrado retorna Registro0205 devidamente formatado '|0205|' + DESCR_ANT_ITEM + DT_INI + DT_FIM
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Data Inicial Inv�lida (AAAAMMDD) : ' + DT_INI
 @return -2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FIM
-------------------------------------------------------------------------------}
Function Registro0205(DESCR_ANT_ITEM, DT_INI, DT_FIM: String): Integer; stdcall; export;  //todo: mudanca de nome (de DT_FIN para DT_FIM) mudar chamada no demo
const
 Tipo = '0205';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(DESCR_ANT_ITEM,   255, 'Descri��o anterior do item:              ');
   ddmmaaaaToSPEDDate(DT_INI);
   FormatoNum (DT_INI,           008, 'Data inicial de utiliza��o do c�digo:    ');
   ddmmaaaaToSPEDDate(DT_FIM);
   FormatoNum (DT_FIM,           008, 'Data final de utiliza��o do c�digo:      ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not IsSPEDDate(DT_INI) then
    ErroTStr.add('-1   Data Inicial Inv�lida (AAAAMMDD) : ' + DT_INI);
   if not IsSPEDDate(DT_FIM) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FIM);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + DESCR_ANT_ITEM + DT_INI + DT_FIM);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0205 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0206 - C�DIGO DE PRODUTO CONFORME TABELA ANP (COMBUST�VEIS)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param COD_COMB C�digo do combust�vel, conforme tabela publicada pela ANP:

 @return Caso nenhum erro encontrado retorna Registro0206 devidamente formatado '|0206|' + COD_COMB
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro0206(COD_COMB: String): Integer; stdcall; export;
const
 Tipo = '0206';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_COMB,   255, 'C�digo do combust�vel, conforme tabela publicada pela ANP: ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_COMB);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0206 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0220 - Fatores de convers�o de unidades

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alezandre Magno

 @param UNID_CONV Unidade comercial a ser convertida na unidade de estoque, referida em 0200:
 @param FAT_CONV  Fator de convers�o:

 @return Caso nenhum erro encontrado retorna Registro0220 devidamente formatado '|0220|' + UNID_CONV + FAT_CONV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}

Function Registro0220(UNID_CONV,FAT_CONV: String): Integer; stdcall; export;
const
 Tipo    = '0220';
begin
 NaoRegistrado;                                                                  //Testa se registrado
 Result := -1;                                                                   //Por default retorna Erro

 if Testa_State(tipo) then                                                             //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(UNID_CONV,            006, 'Unidade comercial a ser convertida na unidade de estoque, referida em 0200: ');
   FormatoNum (FAT_CONV,             255, 'Fator de convers�o:                                                         ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + UNID_CONV + FAT_CONV);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0220 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0400 - TABELA DE NATUREZA DA OPERA��O/PRESTA��O

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_NAT   C�digo da natureza:
 @param DESCR_NAT Descri��o da natureza:

 @return Caso nenhum erro encontrado retorna Registro0400 devidamente formatado '|0400|' + COD_NAT + DESCR_NAT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro0400(COD_NAT, DESCR_NAT: String): Integer; stdcall; export;
const
 Tipo    = '0400';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_NAT,          010, 'C�digo da natureza:                      ');
   FormatoAlfa(DESCR_NAT,        255, 'Descri��o da natureza:                   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_NAT + DESCR_NAT);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0400 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0450 --- TABELA DE INFORMA��O COMPLEMENTAR/OBSERVA��O

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_INF C�digo da informa��o complementar do documento fiscal:
 @param TXT     Texto livre:

 @return Caso nenhum erro encontrado retorna Registro0450 devidamente formatado '|0450|' + COD_INF + TXT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro0450(COD_INF, TXT: String): Integer; stdcall; export;
const
 Tipo    = '0450';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_INF, 006, 'C�digo da informa��o complementar do documento fiscal: ');
   FormatoAlfa(TXT,     255, 'Texto livre:                            ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_INF + TXT);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0450 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0460 --- TABELA DE OBSERVA��ES DO LAN�AMENTO FISCAL

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_OBS C�digo da Observa��o do lan�amento fiscal:
 @param TXT     Descri��o da observa��o vinculada ao lan�amento fiscal:

 @return Caso nenhum erro encontrado retorna Registro0460 devidamente formatado '|0460|' + COD_OBS + TXT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}

Function Registro0460(COD_OBS, TXT: String): Integer; stdcall; export;
const
 Tipo    = '0460';
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_OBS,         006, 'C�digo da Observa��o do lan�amento fiscal:               ');
   FormatoAlfa(TXT,             255, 'Descri��o da observa��o vinculada ao lan�amento  fiscal: ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_OBS + TXT);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro );
    end;
  end;

//--- Teste de Registro0460 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 0990 - ENCERRAMENTO DO BLOCO 0
 Saldo final de mercadorias, produtos, mat�rias primas e embalagens

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_0 Quantidade total de linhas do Bloco 0:

 @return Caso nenhum erro encontrado retorna Registro0990 devidamente formatado '|0990|' + QTD_LIN_0
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
-------------------------------------------------------------------------------}
Function Registro0990: Integer; stdcall; export;
const
 Tipo = '0990';
var
 x, i: integer;
 QTD_LIN_0: String;
begin
 NaoRegistrado;                                                                 //Testa se registrado
 Result := -1;                                                                  //Por default retorna Erro

   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if RegSPED[x].bloco = '0' then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_0 := inttostr(i);

 if Testa_State(tipo) then                                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(QTD_LIN_0,         255, 'Quantidade total de linhas do Bloco 0:   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
    if RegSPED[IdxOfReg(tipo)].ok > 0 then
      ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_0);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro0990 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 BLOCO C: DOCUMENTOS FISCAIS I - MERCADORIAS (ICMS/IPI)
 Registro C001 - ABERTURA DO BLOCO C

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_MOV Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return -2   Indicador de movimento : ' + IND_MOV
--------------------------      -----------------------------------------------------}
Function RegistroC001(IND_MOV: String): Integer; stdcall; export;
const
 Tipo = 'C001';

begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(IND_MOV, 001, 'Indicador de movimento: ');

  // if Quebra_Sequencia(IdxOfReg(tipo)+1) then
  //  ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO + ' no arquivo do SPED : Fun��o Registro'+ TIPO + ' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C100 - NOTA FISCAL (C�DIGO 01), NOTA FISCAL AVULSA (C�DIGO 1B), NOTA FISCAL DE PRODUTOR (C�DIGO 04) E NFE (C�DIGO 55) -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_OPER      'Indicador do tipo de opera��o:
 @param IND_EMIT      'Indicador do emitente do documento fiscal:
 @param COD_PART      'C�digo do participante (campo 02 do Registro 0150):
 @param COD_MOD       'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param COD_SIT       'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2
 @param SER           'S�rie do documento fiscal
 @param NUM_DOC       'N�mero do documento fiscal
 @param CHV_NFE       'Chave da Nota Fiscal Eletr�nica
 @param DT_DOC        'Data da emiss�o do documento fiscal
 @param DT_E_S        'Data da entrada ou da sa�da
 @param VL_DOC        'Valor total do documento fiscal
 @param IND_PGTO      'Indicador do tipo de pagamento:
 @param VL_DESC       'Valor total do desconto
 @param VL_ABAT_NT    'Abatimento n�o tributado e n�o comercial Ex. desconto ICMS nas remessas para ZFM:
 @param VL_MERC       'Valor total das mercadorias e servi�os
 @param IND_FRT       'Indicador do tipo do frete:
 @param VL_FRT        'Valor do frete indicado no documento fiscal
 @param VL_SEG        'Valor do seguro indicado no documento fiscal
 @param VL_OUT_DA     'Valor de outras despesas acess�rias
 @param VL_BC_ICMS    'Valor da base de c�lculo do ICMS
 @param VL_ICMS       'Valor do ICMS
 @param VL_BC_ICMS_ST 'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST    'Valor do ICMS retido por substitui��o tribut�ria
 @param VL_IPI        'Valor total do IPI
 @param VL_PIS        'Valor total do PIS
 @param VL_COFINS     'Valor total da COFINS
 @param VL_PIS_ST     'Valor total do PIS retido por substitui��o tribut�ria
 @param VL_COFINS_ST  'Valor total da COFINS retido por substitui��o tribut�ria

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C100|' + IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, NUM_DOC, CHV_NFE, DT_DOC, DT_E_S, VL_DOC,IND_PGTO, VL_DESC, VL_ABAT_NT,VL_MERC,IND_FRT,VL_FRT,VL_SEG,VL_OUT_DA,VL_BC_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST,VL_IPI,VL_PIS,VL_COFINS,VL_PIS_ST,VL_COFINS_ST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 @return '-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_E_S
 @return '-3   Indicador do emitente do documento fiscal : ' + IND_EMIT
 @return '-4   Indicador do tipo de frete invaido : ' + IND_FRT
 @return '-5   Indicador do tipo de opera��o: ' + IND_OPER
 @return '-6   Indicador do tipo de pagamento  ' + IND_PGTO
 @return '-7   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC100(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, NUM_DOC, CHV_NFE,
                      DT_DOC, DT_E_S, VL_DOC, IND_PGTO, VL_DESC, VL_ABAT_NT, VL_MERC, IND_FRT,
                      VL_FRT, VL_SEG, VL_OUT_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST,
                      VL_IPI, VL_PIS, VL_COFINS, VL_PIS_ST, VL_COFINS_ST: String): Integer; stdcall; export;
const
 Tipo    = 'C100';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(IND_OPER,      001, 'Indicador do tipo de opera��o:                                                   ');
   FormatoAlfa(IND_EMIT,      001, 'Indicador do emitente do documento fiscal:                                       ');
   FormatoAlfa(COD_PART,      060, 'C�digo do participante (campo 02 do Registro 0150):                              '); //todo: : mudanca de tamanho (de 255 para 60)
   FormatoAlfa(COD_MOD,       002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                    ');
   FormatoNum (COD_SIT,       002, 'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2                  ');
   FormatoAlfa(SER,           003, 'S�rie do documento fiscal                                                        ');
   FormatoNum (NUM_DOC,       009, 'N�mero do documento fiscal                                                       ');
   FormatoNum (CHV_NFE,       044, 'Chave da Nota Fiscal Eletr�nica                                                  ');
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,        008, 'Data da emiss�o do documento fiscal                                              ');
   ddmmaaaaToSPEDDate(DT_E_S);
   FormatoNum (DT_E_S,        008, 'Data da entrada ou da sa�da                                                      ');
   FormatoNum (VL_DOC,        255, 'Valor total do documento fiscal                                                  ');
   FormatoAlfa(IND_PGTO,      001, 'Indicador do tipo de pagamento:                                                  ');
   FormatoNum (VL_DESC,       255, 'Valor total do desconto                                                          ');
   FormatoNum (VL_ABAT_NT,    255, 'Abatimento n�o tributado e n�o comercial Ex. desconto ICMS nas remessas para ZFM:');
   FormatoNum (VL_MERC,       255, 'Valor total das mercadorias e servi�os                                           ');
   FormatoAlfa(IND_FRT,       001, 'Indicador do tipo do frete:                                                      ');
   FormatoNum (VL_FRT,        255, 'Valor do frete indicado no documento fiscal                                      ');
   FormatoNum (VL_SEG,        255, 'Valor do seguro indicado no documento fiscal                                     ');
   FormatoNum (VL_OUT_DA,     255, 'Valor de outras despesas acess�rias                                              ');
   FormatoNum (VL_BC_ICMS,    255, 'Valor da base de c�lculo do ICMS                                                 ');
   FormatoNum (VL_ICMS,       255, 'Valor do ICMS                                                                    ');
   FormatoNum (VL_BC_ICMS_ST, 255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                         ');
   FormatoNum (VL_ICMS_ST,    255, 'Valor do ICMS retido por substitui��o tribut�ria                                 ');
   FormatoNum (VL_IPI,        255, 'Valor total do IPI                                                               ');
   FormatoNum (VL_PIS,        255, 'Valor total do PIS                                                               ');
   FormatoNum (VL_COFINS,     255, 'Valor total da COFINS                                                            ');
   FormatoNum (VL_PIS_ST,     255, 'Valor total do PIS retido por substitui��o tribut�ria                            ');
   FormatoNum (VL_COFINS_ST,  255, 'Valor total da COFINS retido por substitui��o tribut�ria                         ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
//   if not IsSPEDDate(DT_DOC) then
//    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);
//   if not IsSPEDDate(DT_E_S) then
//    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_E_S);
   if not vInd_emitente_documento_fiscal(IND_EMIT) then
    ErroTStr.add('-3   Indicador do emitente do documento fiscal : ' + IND_EMIT);
   if not vInd_tipo_frete(IND_FRT) then
    ErroTStr.add('-4   Indicador do tipo de frete invaido : ' + IND_FRT);
   if not vIND_OPER(IND_OPER) then
    ErroTStr.add('-5   Indicador do tipo de opera��o: ' + IND_OPER);
   if not vIND_PGTO(IND_PGTO) then
    ErroTStr.add('-6   Indicador do tipo de pagamento: ' + IND_PGTO);
   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-7   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + NUM_DOC + CHV_NFE +
                    DT_DOC + DT_E_S + VL_DOC + IND_PGTO + VL_DESC + VL_ABAT_NT + VL_MERC + IND_FRT +
                    VL_FRT + VL_SEG + VL_OUT_DA + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST +
                    VL_IPI + VL_PIS + VL_COFINS + VL_PIS_ST + VL_COFINS_ST);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC100 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C110 - REGISTRO C110 - INFORMA��O COMPLEMENTAR DA NOTA FISCAL

 @Author Juliana Andrade
 @Version 17/4/2009 10:17:53 �ltima altera��o por  Juliana Andrade

 @param COD_INF   'C�digo   da   informa��o   complementar   do documento fiscal (campo 02 do Registro 0450)
 @param TXT_COMPL 'Descri��o complementar do c�digo de refer�ncia.

 @return Caso nenhum erro encontrado retorna RegistroC110 devidamente formatado |C110| + COD_INF + TXT_COMPL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC110(COD_INF, TXT_COMPL: String): Integer; stdcall; export;

const
 Tipo = 'C110';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_INF,       006, 'C�digo   da   informa��o   complementar   do documento fiscal (campo 02 do Registro 0450)  '); //todo: : mudanca de tamanho (de 255 para 6)
  FormatoAlfa(TXT_COMPL,     255, 'Descri��o complementar do c�digo de refer�ncia.                                            ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_INF + TXT_COMPL);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC110 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C111 - PROCESSO REFERENCIADO

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_PROC Identifica��o do processo ou ato concess�rio
 @param IND_PROC Indicador da origem do processo:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C111|' + NUM_PROC, IND_PROC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador da origem do processo: ' + IND_PROC
-------------------------------------------------------------------------------}
Function RegistroC111(NUM_PROC, IND_PROC: String): Integer; stdcall; export;

const
 Tipo = 'C111';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(NUM_PROC,     015, 'Identifica��o do processo ou ato concess�rio  ');
   FormatoAlfa(IND_PROC,     001, 'Indicador da origem do processo:              ');

  // if Quebra_Sequencia(IdxOfReg(tipo)+1) then
  //  ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vInd_origem(IND_PROC) then
    ErroTStr.add('-1   Indicador da origem do processo: ' + IND_PROC);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + NUM_PROC + IND_PROC);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC111 ---
   //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C112 - DOCUMENTO DE ARRECADA��O REFERENCIADO -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_DA  'C�digo do modelo do documento de arrecada��o :
 @param UF      'Unidade federada benefici�ria do recolhimento
 @param NUM_DA  'N�mero do documento de arrecada��o
 @param COD_AUT 'C�digo completo da autentica��o banc�ria
 @param VL_DA   'Valor do total do documento de arrecada��o (principal, atualiza��o monet�ria, juros e multa)
 @param DT_VCTO 'Data de vencimento do documento de arrecada��o
 @param DT_PGTO 'Data de pagamento do documento de arrecada��o, ou data do vencimento, no caso de ICMS antecipado a recolher.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C112|' + COD_DA, UF, NUM_DA, COD_AUT, VL_DA, DT_VCTO, DT_PGTO
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1  Unidade da Federa��o Inv�lida : ' + UF
 @return -2  Data Final Inv�lida (AAAAMMDD) : ' + DT_VCTO
 @return -3  Data Final Inv�lida (AAAAMMDD) : ' + DT_PGTO
-------------------------------------------------------------------------------}

Function RegistroC112(COD_DA, UF, NUM_DA, COD_AUT, VL_DA, DT_VCTO, DT_PGTO: String): Integer; stdcall; export;

const
 Tipo = 'C112';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_DA,      001, 'C�digo do modelo do documento de arrecada��o :                                                                ');
   FormatoAlfa(UF,          002, 'Unidade federada benefici�ria do recolhimento                                                                 ');
   FormatoAlfa(NUM_DA,      255, 'N�mero do documento de arrecada��o                                                                            ');
   FormatoAlfa(COD_AUT,     255, 'C�digo completo da autentica��o banc�ria                                                                      ');
   FormatoNum (VL_DA,       255, 'Valor do total do documento de arrecada��o (principal, atualiza��o monet�ria, juros e multa)                  ');
   ddmmaaaaToSPEDDate(DT_VCTO);
   FormatoNum (DT_VCTO,     008, 'Data de vencimento do documento de arrecada��o                                                                ');
   ddmmaaaaToSPEDDate(DT_PGTO);
   FormatoNum (DT_PGTO,     008, 'Data de pagamento do documento de arrecada��o, ou data do vencimento, no caso de ICMS antecipado a recolher.  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vUF(UF) then
    ErroTStr.add('-2   Unidade da Federa��o Inv�lida : ' + UF);
   if not IsSPEDDate(DT_VCTO) then
    ErroTStr.add('-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_VCTO);
   if not IsSPEDDate(DT_PGTO) then
    ErroTStr.add('-4   Data Final Inv�lida (AAAAMMDD) : ' + DT_PGTO);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_DA + UF + NUM_DA + COD_AUT + VL_DA + DT_VCTO + DT_PGTO);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC112 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro C113 - INFORMA��O COMPLEMENTAR DA NOTA FISCAL

 @Author Juliana Andrade
 @Version 17/4/2009 10:30:10 �ltima altera��o por  Juliana Andrade

 @param IND_OPER 'Indicador do tipo de opera��o: 0- Entrada/aquisi��o; 1- Sa�da/presta��o;
 @param IND_EMIT 'Indicador do emitente do t�tulo: 0- Emiss�o pr�pria; 1- Terceiros
 @param COD_PART 'C�digo do participante emitente (campo 02 do Registro 0150)  do documento referenciado.
 @param COD_MOD  'C�digo do documento fiscal, conforme a Tabela 4.1.1
 @param SER      'S�rie do documento fiscal
 @param SUB      'Subs�rie do documento fiscal
 @param NUM_DOC  'N�mero do documento fiscal
 @param DT_DOC   'Data da emiss�o do documento fiscal.

 @return Caso nenhum erro encontrado retorna RegistroC113 devidamente formatado |C113| + IND_OPER + IND_EMIT + COD_PART + COD_MOD + SER + SUB + NUM_DOC + DT_DOC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) : ' + DT_DOC
 @return '-2   Indicador do tipo de opera��o:  ' + IND_OPER
 @return '-3   Indicador do emitente do documento fiscal : ' + IND_EMIT
 @return '-4   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC113(IND_OPER, IND_EMIT, COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC: String): Integer; stdcall; export;

const
 Tipo = 'C113';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(IND_OPER,     001, 'Indicador do tipo de opera��o: 0- Entrada/aquisi��o; 1- Sa�da/presta��o;                   ');
  FormatoAlfa(IND_EMIT,     001, 'Indicador do emitente do t�tulo: 0- Emiss�o pr�pria; 1- Terceiros                          ');
  FormatoAlfa(COD_PART,     060, 'C�digo do participante emitente (campo 02 do Registro 0150)  do documento referenciado.    ');
  FormatoAlfa(COD_MOD,      002, 'C�digo do documento fiscal, conforme a Tabela 4.1.1                                        ');
  FormatoAlfa(SER,          004, 'S�rie do documento fiscal                                                                  ');
  FormatoNum (SUB,          003, 'Subs�rie do documento fiscal                                                               ');
  FormatoNum (NUM_DOC,      009, 'N�mero do documento fiscal                                                                 ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum(DT_DOC,       008, 'Data da emiss�o do documento fiscal.                                                       ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//if IsSPEDDate(DT_DOC) then
// ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC);      // todo pq esta comentado?
if not vIND_OPER(IND_OPER) then
    ErroTStr.add('-2   Indicador do tipo de opera��o: ' + IND_OPER);
if not vInd_emitente_documento_fiscal(IND_EMIT) then
    ErroTStr.add('-3   Indicador do emitente do documento fiscal : ' + IND_EMIT);
if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-4   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);




//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + IND_OPER + IND_EMIT + COD_PART + COD_MOD + SER + SUB + NUM_DOC + DT_DOC);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC113 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C114 - CUPOM FISCAL REFERENCIADO

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_MOD 'C�digo do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1
 @param ECF_FAB 'N�mero de s�rie de fabrica��o do ECF
 @param ECF_CX  'N�mero do caixa atribu�do ao ECF
 @param NUM_DOC 'N�mero do documento fiscal
 @param DT_DOC  'Data da emiss�o do documento fiscal

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C114|' + COD_MOD, ECF_FAB, ECF_CX, NUM_DOC, DT_DOC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1 Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
 @return -2 Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
-------------------------------------------------------------------------------}
Function RegistroC114(COD_MOD, ECF_FAB, ECF_CX, NUM_DOC, DT_DOC: String): Integer; stdcall; export;
const
 Tipo    = 'C114';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_MOD,   002, 'C�digo do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1     ');
   FormatoAlfa(ECF_FAB,   020, 'N�mero de s�rie de fabrica��o do ECF                                               ');
   FormatoNum (ECF_CX,    003, 'N�mero do caixa atribu�do ao ECF                                                   ');
   FormatoNum (NUM_DOC,   006, 'N�mero do documento fiscal                                                         ');
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,    008, 'Data da emiss�o do documento fiscal                                                ');


   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

    //Teste de Integridade dos campos
   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-1   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);
   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_MOD + ECF_FAB + ECF_CX + NUM_DOC + DT_DOC);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC114 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C115 - LOCAL DA COLETA E/OU ENTREGA (C�DIGO 01, 1B E 04)

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param IND_CARGA    'Indicador do tipo de transporte.
 @param CNPJ_COL     'N�mero do CNPJ do contribuinte do local de coleta
 @param IE_COL       'Inscri��o Estadual do contribuinte do local de coleta
 @param CPF_COL      'CPF do contribuinte do local de coleta das mercadorias.
 @param COD_MUN_COL  'C�digo do Munic�pio do local de coleta
 @param CNPJ_ENTG    'N�mero do CNPJ do contribuinte do local de entrega
 @param IE_ENTG      'Inscri��o Estadual do contribuinte do local de entrega
 @param CPF_ENTG     'Cpf do contribuinte do local de entrega
 @param COD_MUN_ENTG 'C�digo do Munic�pio do local de entrega

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C115|' + IND_CARGA, CNPJ_COL, IE_COL, CPF_COL, COD_MUN_COL, CNPJ_ENTG,IE_ENTG, CPF_ENTG, COD_MUN_ENTG
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   CNPJ Inv�lido : ' + CNPJ_COL
 @return -3   C�digo do munic�pio do domic�lio fiscal Inv�lido : ' + COD_MUN_COL
 @return -4   CNPJ Inv�lido : ' + CNPJ_ENTG
 @return -6   C�digo do munic�pio do domic�lio fiscal Inv�lido : ' + COD_MUN_ENTG
 @return -7   Indicador do tipo de transporte da carga coletada : ' + IND_CARGA
 @return -8   N�mero de inscri��o no CPF Inv�lida:  ' + CPF_ENTG
-------------------------------------------------------------------------------}
Function RegistroC115(IND_CARGA, CNPJ_COL, IE_COL, CPF_COL, COD_MUN_COL, CNPJ_ENTG,
                      IE_ENTG, CPF_ENTG, COD_MUN_ENTG: String): Integer; stdcall; export;
const
 Tipo    = 'C115';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (IND_CARGA,    001, 'Indicador do tipo de transporte:                            ');  //todo: : mudanca da descri��o do campo de "Indicador do tipo de transporte da carga coletada" para "Indicador do tipo de transporte"
   FormatoNum (CNPJ_COL,     014, 'N�mero do CNPJ do contribuinte do local de coleta           ');
   FormatoAlfa(IE_COL,       014, 'Inscri��o Estadual do contribuinte do local de coleta       ');
   FormatoNum (CPF_COL,      011, 'CPF do contribuinte do local de coleta das mercadorias.     ');
   FormatoNum (COD_MUN_COL,  007, 'C�digo do Munic�pio do local de coleta                      ');
   FormatoNum (CNPJ_ENTG,    014, 'N�mero do CNPJ do contribuinte do local de entrega          ');
   FormatoAlfa(IE_ENTG,      014, 'Inscri��o Estadual do contribuinte do local de entrega      ');
   FormatoNum (CPF_ENTG,     011, 'Cpf do contribuinte do local de entrega                     ');
   FormatoNum (COD_MUN_ENTG, 007, 'C�digo do Munic�pio do local de entrega                     ');


   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not(vCNPJ(CNPJ_COL)) then
    ErroTStr.add('-1   CNPJ Inv�lido : ' + CNPJ_COL);
//   if (not vInscEst(IE_COL,UF)) and (not (Trim(IE_COL) = 'ISENTO')) then
//    ErroTStr.add('-2   Inscri��o Estadual Inv�lida : ' + IE_COL);
   if not vCOD_Municipio(COD_MUN_COL) then
    ErroTStr.add('-3   C�digo do munic�pio do domic�lio fiscal Inv�lido : ' + COD_MUN_COL);
   if not(vCNPJ(CNPJ_ENTG)) then
    ErroTStr.add('-4   CNPJ ou CPF Inv�lido : ' + CNPJ_ENTG);
 //  if (not vInscEst(IE_ENTG)) and (not (Trim(IE_ENTG) = ''ISENTO'')) then
 //   ErroTStr.add('-5   Inscri��o Estadual Inv�lida : ' + IE_ENTG);
   if not vCOD_Municipio(COD_MUN_ENTG) then
    ErroTStr.add('-6   C�digo do munic�pio do domic�lio fiscal Inv�lido : ' + COD_MUN_ENTG);
   if not vInd_tipo_transporte_carga_coletada(IND_CARGA) then
    ErroTStr.add('-7   Indicador do tipo de transporte : ' + IND_CARGA);
   if not vCPF(CPF_ENTG) then
    ErroTStr.add('-8   N�mero de inscri��o no CPF Inv�lida: ' + CPF_ENTG);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
     result := 0;
     Trata_SPED('|' + Tipo + '|' + IND_CARGA + CNPJ_COL + IE_COL + CPF_COL + COD_MUN_COL + CNPJ_ENTG +
                       IE_ENTG + CPF_ENTG + COD_MUN_ENTG);
    end
   else
    begin
     Trata_Erro(ErroTStr);
        //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC115 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C120 - OPERA��ES DE IMPORTA��O (C�DIGO 01) -

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_DOC_IMP  'Documento de importa��o:
 @param NUM_DOC__IMP 'N�mero do documento de Importa��o.
 @param PIS_IMP      'Valor pago de PIS na importa��o
 @param COFINS_IMP   'Valor pago de COFINS na importa��o

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C120|' + COD_DOC_IMP, NUM_DOC__IMP, PIS_IMP, COFINS_IMP
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Documento de importa��o Inv�lida: ' + COD_DOC_IMP
-------------------------------------------------------------------------------}
Function RegistroC120(COD_DOC_IMP, NUM_DOC__IMP, PIS_IMP, COFINS_IMP: String): Integer; stdcall; export;
const
 Tipo    = 'C120';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_DOC_IMP,  001, 'Documento de importa��o:                    ');
   FormatoAlfa(NUM_DOC__IMP, 010, 'N�mero do documento de Importa��o.          '); //todo mudan�a de  tamanho de 255 para 10
   FormatoNum (PIS_IMP,      255, 'Valor pago de PIS na importa��o             ');
   FormatoNum (COFINS_IMP,   255, 'Valor pago de COFINS na importa��o          ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vCOD_DOC_IMP(COD_DOC_IMP) then
    ErroTStr.add('-1   Documento de importa��o Inv�lida: ' + COD_DOC_IMP);
   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_DOC_IMP + NUM_DOC__IMP + PIS_IMP + COFINS_IMP);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC120 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C130 - ISSQN, IRRF E PREVID�NCIA SOCIAL

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param VL_SERV_NT  'Valor dos servi�os sob n�o-incid�ncia ou n�o-tributados pelo ICMS
 @param VL_BC_ISSQN 'Valor da base de c�lculo do ISSQN
 @param VL_ISSQN    'Valor do ISSQN
 @param VL_BC_IRRF  'Valor da base de c�lculo do Imposto de Renda Retido na Fonte
 @param VL_IRRF     'Valor do Imposto de Renda - Retido na Fonte
 @param VL_BC_PREV  'Valor da base de c�lculo de reten��o da Previd�ncia Social
 @param VL_PREV     'Valor destacado para reten��o da Previd�ncia Social

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C130|' + VL_SERV_NT, VL_BC_ISSQN, VL_ISSQN, VL_BC_IRRF, VL_IRRF, VL_BC_PREV,VL_PREV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC130(VL_SERV_NT, VL_BC_ISSQN, VL_ISSQN, VL_BC_IRRF, VL_IRRF, VL_BC_PREV,
                      VL_PREV: String): Integer; stdcall; export;
const
 Tipo    = 'C130';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (VL_SERV_NT,  255, 'Valor dos servi�os sob n�o-incid�ncia ou n�o-tributados pelo ICMS     ');
   FormatoNum (VL_BC_ISSQN, 255, 'Valor da base de c�lculo do ISSQN                                     ');
   FormatoNum (VL_ISSQN,    255, 'Valor do ISSQN                                                        ');
   FormatoNum (VL_BC_IRRF,  255, 'Valor da base de c�lculo do Imposto de Renda Retido na Fonte          ');
   FormatoNum (VL_IRRF,     255, 'Valor do Imposto de Renda - Retido na Fonte                           ');
   FormatoNum (VL_BC_PREV,  255, 'Valor da base de c�lculo de reten��o da Previd�ncia Social            ');
   FormatoNum (VL_PREV,     255, 'Valor destacado para reten��o da Previd�ncia Social                   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + VL_SERV_NT + VL_BC_ISSQN + VL_ISSQN + VL_BC_IRRF + VL_IRRF + VL_BC_PREV + VL_PREV);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC130 ---
//ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C140 - FATURA (C�DIGO 01) -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_EMIT 'Indicador do emitente do t�tulo
 @param IND_TIT  'Indicador do tipo de t�tulo de cr�dito:
 @param DESC_TIT 'Descri��o complementar do t�tulo de cr�dito
 @param NUM_TIT  'N�mero ou c�digo identificador do t�tulo de cr�dito
 @param QTD_PARC 'Quantidade de parcelas a receber/pagar
 @param VL_TIT   'Valor original dos t�tulos de cr�ditos

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C140|' + IND_EMIT, IND_TIT, DESC_TIT, NUM_TIT, QTD_PARC, VL_TIT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return '-2   Indicador do emitente do t�tulo Inv�lido : ' + IND_EMIT
 @return '-3   Indicador do tipo de t�tulo de cr�dito : ' + IND_TIT
-------------------------------------------------------------------------------}
Function RegistroC140(IND_EMIT, IND_TIT, DESC_TIT, NUM_TIT, QTD_PARC, VL_TIT: String): Integer; stdcall; export;
const
 Tipo    = 'C140';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(IND_EMIT,     001, 'Indicador do emitente do t�tulo                                ');
   FormatoAlfa(IND_TIT,      002, 'Indicador do tipo de t�tulo de cr�dito:                        ');
   FormatoAlfa(DESC_TIT,     255, 'Descri��o complementar do t�tulo de cr�dito                    ');
   FormatoAlfa(NUM_TIT,      255, 'N�mero ou c�digo identificador do t�tulo de cr�dito            ');
   FormatoNum (QTD_PARC,     002, 'Quantidade de parcelas a receber/pagar                         ');
   FormatoNum (VL_TIT,       255, 'Valor original dos t�tulos de cr�ditos                         ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');


   //Teste de Integridade dos campos
   if (RegSPED[IdxOfReg(tipo)].ocorrencia = Um) and (RegSPED[IdxOfReg(tipo)].ok > 0) then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');
   if not vInd_emitente_titulo(IND_EMIT) then
    ErroTStr.add('-2   Indicador do emitente do t�tulo Inv�lido : ' + IND_EMIT);
   if not vInd_tipo_titulo_credito(IND_TIT) then
    ErroTStr.add('-3   Indicador do tipo de t�tulo de cr�dito : ' + IND_TIT);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_EMIT + IND_TIT + DESC_TIT + NUM_TIT + QTD_PARC + VL_TIT);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC140 ---
//ShowMessage(Result);
end;
{*------------------------------------------------------------------------------
 REGISTRO C141 - VENCIMENTO DA FATURA (C�DIGO 01)

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana

 @param NUM_PARC 'N�mero da parcela a receber/pagar
 @param DT_VCTO  'Data de vencimento da parcela
 @param VL_PARC  'Valor da parcela a receber/pagar

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C141|' + NUM_PARC, DT_VCTO, VL_PARC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Data Final Inv�lida (AAAAMMDD) : ' + DT_VCTO
-------------------------------------------------------------------------------}
Function RegistroC141(NUM_PARC, DT_VCTO, VL_PARC: String): Integer; stdcall; export;
const
 Tipo    = 'C141';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (NUM_PARC,    002, 'N�mero da parcela a receber/pagar     ');
   ddmmaaaaToSPEDDate(DT_VCTO);
   FormatoNum (DT_VCTO,     008, 'Data de vencimento da parcela         ');
   FormatoNum (VL_PARC,     255, 'Valor da parcela a receber/pagar      ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not IsSPEDDate(DT_VCTO) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_VCTO);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + NUM_PARC + DT_VCTO + VL_PARC);
    end
   else
    begin
     Trata_Erro(ErroTStr);
     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC141 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C160 - VOLUMES TRANSPORTADOS (C�DIGO 01 E 04) - EXCETO COMBUST�VEIS

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART 'C�digo do participante (campo 02 do Registro 0150):
 @param VEIC_ID  'Placa de identifica��o do ve�culo
 @param QTD_VOL  'Quantidade de volumes transportados
 @param PESO_BRT 'Peso bruto dos volumes transportados (em Kg)
 @param PESO_LIQ 'Peso l�quido dos volumes transportados (em Kg)
 @param UF_ID    'Sigla da UF da placa do ve�culo

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C160|' + COD_PART, VEIC_ID, QTD_VOL, PESO_BRT, PESO_LIQ, UF_ID
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Sigla da UF da placa do ve�culo : ' + UF_ID
-------------------------------------------------------------------------------}

Function RegistroC160(COD_PART, VEIC_ID, QTD_VOL, PESO_BRT, PESO_LIQ, UF_ID: String): Integer; stdcall; export;
const
 Tipo    = 'C160';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa (COD_PART,   060, 'C�digo do participante (campo 02 do Registro 0150):     '); //todo mudan�a de  tamanho de 255 para 60 e formato
   FormatoAlfa (VEIC_ID,    007, 'Placa de identifica��o do ve�culo                       '); //todo mudan�a de  tamanho de 255 para 07  e formato
   FormatoNum (QTD_VOL,     255, 'Quantidade de volumes transportados                     ');
   FormatoNum (PESO_BRT,    255, 'Peso bruto dos volumes transportados (em Kg)            ');
   FormatoNum (PESO_LIQ,    255, 'Peso l�quido dos volumes transportados (em Kg)          ');
   FormatoAlfa (UF_ID,      002, 'Sigla da UF da placa do ve�culo                         '); //todo mudanca de formato

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vUF(UF_ID) then
    ErroTStr.add('-1   Sigla da UF da placa do ve�culo : ' + UF_ID);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_PART + VEIC_ID + QTD_VOL + PESO_BRT + PESO_LIQ + UF_ID);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC160 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C165 - OPERA��ES COM COMBUST�VEIS(C�DIGO 01; 55)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART 'C�digo do participante (campo 02 do Registro 0150):
 @param VEIC_ID  'Placa de identifica��o do ve�culo
 @param COD_AUT  'C�digo da autoriza��o fornecido pela SEFAZ (combust�veis)
 @param NR_PASSE 'N�mero do Passe Fiscal
 @param HORA     'Hora da sa�da das mercadorias
 @param TEMPER   'Temperatura em graus Celsius utilizada para quantifica��o do volume de combust�vel
 @param QTD_VOL  'Quantidade de volumes transportados
 @param PESO_BRT 'Peso bruto dos volumes transportados (em Kg)
 @param PESO_LIQ 'Peso l�quido dos volumes transportados (em Kg)
 @param NOM_MOT  'Nome do motorista
 @param CPF      'CPF do motorista
 @param UF_ID    'Sigla da UF da placa do ve�culo

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C165|' + COD_PART, VEIC_ID, COD_AUT, NR_PASSE, HORA, TEMPER,QTD_VOL, PESO_BRT, PESO_LIQ, NOM_MOT, CPF, UF_ID
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   CPF do motorista incorreto : ' + CPF
 @return -2   Sigla da UF da placa do ve�culo incorreta : ' + UF_ID
-------------------------------------------------------------------------------}
Function RegistroC165(COD_PART, VEIC_ID, COD_AUT, NR_PASSE, HORA, TEMPER,
                      QTD_VOL, PESO_BRT, PESO_LIQ, NOM_MOT, CPF, UF_ID: String): Integer; stdcall; export;
const
 Tipo    = 'C165';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos

   FormatoAlfa(COD_PART,    060, 'C�digo do participante (campo 02 do Registro 0150):                                   '); // todo mudan�a de formato
   FormatoAlfa(VEIC_ID,     007, 'Placa de identifica��o do ve�culo                                                     '); // todo mudan�a de formato
   FormatoAlfa(COD_AUT,     255, 'C�digo da autoriza��o fornecido pela SEFAZ (combust�veis)                             '); // todo mudan�a de formato
   FormatoAlfa(NR_PASSE,    255, 'N�mero do Passe Fiscal                                                                ');
   FormatoNum (HORA,        006, 'Hora da sa�da das mercadorias                                                         ');
   FormatoNum (TEMPER,      255, 'Temperatura em graus Celsius utilizada para quantifica��o do volume de combust�vel    ');
   FormatoNum (QTD_VOL,     255, 'Quantidade de volumes transportados                                                   ');
   FormatoNum (PESO_BRT,    255, 'Peso bruto dos volumes transportados (em Kg)                                          ');
   FormatoNum (PESO_LIQ,    255, 'Peso l�quido dos volumes transportados (em Kg)                                        ');
   FormatoAlfa(NOM_MOT,     060, 'Nome do motorista                                                                     ');//t odo mudan�a de formato
   FormatoNum (CPF,         011, 'CPF do motorista                                                                      ');
   FormatoAlfa(UF_ID,       002, 'Sigla da UF da placa do ve�culo                                                       ');// todo mudan�a de formato

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vCPF(CPF) then
    ErroTStr.add('-1   CPF do motorista incorreto : ' + CPF);
   if not vUF(UF_ID) then
    ErroTStr.add('-2   Sigla da UF da placa do ve�culo incorreta : ' + UF_ID);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_PART + VEIC_ID + COD_AUT + NR_PASSE + HORA + TEMPER +
                       QTD_VOL + PESO_BRT + PESO_LIQ + NOM_MOT + CPF + UF_ID);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC165 ---
//ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C170 - ITENS DO DOCUMENTO (C�DIGO 01, 1B, 04 e 55) -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno
                                                                                     //todo: parei aqui!
 @param NUM_ITEM         'N�mero seq�encial do item no documento fiscal
 @param COD_ITEM         'C�digo do item (campo 02 do Registro 0200)
 @param DESCR_COMPL      'Descri��o complementar do item como adotado no documento fiscal
 @param QTD              'Quantidade do item
 @param UNID             'Unidade do item(Campo 02 do registro 0190)
 @param VL_ITEM          'Valor total do item (mercadorias ou servi�os)
 @param VL_DESC          'Valor do desconto comercial
 @param IND_MOV          'Movimenta��o f�sica do ITEM/PRODUTO:
 @param CST_ICMS         'C�digo da Situa��o Tribut�ria referente ao ICMS, conforme a Tabela indicada no item 4.3.1
 @param CFOP             'C�digo Fiscal de Opera��o e Presta��o
 @param COD_NAT          'C�digo da natureza da opera��o (campo 02 do Registro 0400)
 @param VL_BC_ICMS       'Valor da base de c�lculo do ICMS
 @param ALIQ_ICMS        'Al�quota do ICMS
 @param VL_ICMS          'Valor do ICMS creditado/debitado
 @param VL_BC_ICMS_ST    'Valor da base de c�lculo referente � substitui��o tribut�ria
 @param ALIQ_ST          'Al�quota do ICMS da substitui��o tribut�ria na unidade da federa��o de destino
 @param VL_ICMS_ST       'Valor do ICMS referente � substitui��o tribut�ria
 @param IND_APUR         'Indicador de per�odo de apura��o do IPI:
 @param CST_IPI          'C�digo da Situa��o Tribut�ria referente ao IPI, conforme a Tabela indicada no item 4.3.2.
 @param COD_ENQ          'C�digo de enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.
 @param VL_BC_IPI        'Valor da base de c�lculo do IPI
 @param ALIQ_IPI         'Al�quota do IPI
 @param VL_IPI           'Valor do IPI creditado/debitado
 @param CST_PIS          'C�digo da Situa��o Tribut�ria referente ao PIS.
 @param VL_BC_PIS        'Valor da base de c�lculo do PIS
 @param ALIQ_PIS_PERC    'Al�quota do PIS (em percentual)
 @param QUANT_BC_PIS     'Quantidade - Base de c�lculo PIS
 @param ALIQ_PIS_R       'Al�quota do PIS (em reais)
 @param VL_PIS           'Valor do PIS
 @param CST_COFINS       'C�digo da Situa��o Tribut�ria referente ao COFINS.
 @param VL_BC_COFINS     'Valor da base de c�lculo da COFINS
 @param ALIQ_COFINS_PERC 'Al�quota do COFINS (em percentual)
 @param QUANT_BC_COFINS  'Quantidade - Base de c�lculo COFINS
 @param ALIQ_COFINS_R    'Al�quota da COFINS (em reais)
 @param VL_COFINS        'Valor da COFINS
 @param COD_CTA          'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C170|' + NUM_ITEM, COD_ITEM, DESCR_COMPL, QTD, UNID, VL_ITEM, VL_DESC,IND_MOV, CST_ICMS, CFOP, COD_NAT, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS,VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_APUR, CST_IPI, COD_ENQ,VL_BC_IPI, ALIQ_IPI, VL_IPI, CST_PIS, VL_BC_PIS, ALIQ_PIS_PERC,QUANT_BC_PIS, ALIQ_PIS_R, VL_PIS, CST_COFINS, VL_BC_COFINS,ALIQ_COFINS_PERC, QUANT_BC_COFINS, ALIQ_COFINS_R, VL_COFINS,COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
 @return -2   Movimenta��o f�sica do ITEM/PRODUTO:  ' + IND_MOV
 @return -3   Indicador de per�odo de apura��o do IPI: ' + IND_APUR
-------------------------------------------------------------------------------}
Function RegistroC170(NUM_ITEM, COD_ITEM, DESCR_COMPL, QTD, UNID, VL_ITEM, VL_DESC,
                      IND_MOV, CST_ICMS, CFOP, COD_NAT, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS,
                      VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_APUR, CST_IPI, COD_ENQ,
                      VL_BC_IPI, ALIQ_IPI, VL_IPI, CST_PIS, VL_BC_PIS, ALIQ_PIS_PERC,
                      QUANT_BC_PIS, ALIQ_PIS_R, VL_PIS, CST_COFINS, VL_BC_COFINS,
                      ALIQ_COFINS_PERC, QUANT_BC_COFINS, ALIQ_COFINS_R, VL_COFINS,
                      COD_CTA: String): Integer; stdcall; export;
const
 Tipo    = 'C170';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (NUM_ITEM,        003, 'N�mero seq�encial do item no documento fiscal                                            ');
   FormatoAlfa(COD_ITEM,        060, 'C�digo do item (campo 02 do Registro 0200)                                               ');
   FormatoAlfa(DESCR_COMPL,     255, 'Descri��o complementar do item como adotado no documento fiscal                          ');
   FormatoNum (QTD,             005, 'Quantidade do item                                                                       '); // todo mudan�a tamanho de 255 para 5
   FormatoAlfa(UNID,            006, 'Unidade do item(Campo 02 do registro 0190)                                               ');
   FormatoNum (VL_ITEM,         255, 'Valor total do item (mercadorias ou servi�os)                                                                      ');
   FormatoNum (VL_DESC,         255, 'Valor do desconto comercial                                                              ');
   FormatoAlfa(IND_MOV,         001, 'Movimenta��o f�sica do ITEM/PRODUTO:                                                     ');
   FormatoNum (CST_ICMS,        003, 'C�digo da Situa��o Tribut�ria referente ao ICMS, conforme a Tabela indicada no item 4.3.1');
   FormatoNum (CFOP,            004, 'C�digo Fiscal de Opera��o e Presta��o                                                    ');
   FormatoAlfa(COD_NAT,         010, 'C�digo da natureza da opera��o (campo 02 do Registro 0400)                               ');
   FormatoNum (VL_BC_ICMS,      255, 'Valor da base de c�lculo do ICMS                                                         ');
   FormatoNum (ALIQ_ICMS,       006, 'Al�quota do ICMS                                                                         ');
   FormatoNum (VL_ICMS,         255, 'Valor do ICMS creditado/debitado                                                         ');
   FormatoNum (VL_BC_ICMS_ST,   255, 'Valor da base de c�lculo referente � substitui��o tribut�ria                             ');
   FormatoNum (ALIQ_ST,         255, 'Al�quota do ICMS da substitui��o tribut�ria na unidade da federa��o de destino           ');
   FormatoNum (VL_ICMS_ST,      255, 'Valor do ICMS referente � substitui��o tribut�ria                                        ');
   FormatoAlfa(IND_APUR,        001, 'Indicador de per�odo de apura��o do IPI:                                                 ');
   FormatoAlfa(CST_IPI,         002, 'C�digo da Situa��o Tribut�ria referente ao IPI, conforme a Tabela indicada no item 4.3.2.');
   FormatoAlfa(COD_ENQ,         003, 'C�digo de enquadramento legal do IPI, conforme tabela indicada no item 4.5.3.            ');
   FormatoNum (VL_BC_IPI,       255, 'Valor da base de c�lculo do IPI                                                          ');
   FormatoNum (ALIQ_IPI,        006, 'Al�quota do IPI                                                                          ');
   FormatoNum (VL_IPI,          255, 'Valor do IPI creditado/debitado                                                          ');
   FormatoNum (CST_PIS,         002, 'C�digo da Situa��o Tribut�ria referente ao PIS.                                          ');
   FormatoNum (VL_BC_PIS,       255, 'Valor da base de c�lculo do PIS                                                          ');
   FormatoNum (ALIQ_PIS_PERC,   255, 'Al�quota do PIS (em percentual)                                                          ');
   FormatoNum (QUANT_BC_PIS,    255, 'Quantidade - Base de c�lculo PIS                                                         ');
   FormatoNum (ALIQ_PIS_R,      255, 'Al�quota do PIS (em reais)                                                               ');
   FormatoNum (VL_PIS,          255, 'Valor do PIS                                                                             ');
   FormatoNum (CST_COFINS,      002, 'C�digo da Situa��o Tribut�ria referente ao COFINS.                                       ');
   FormatoNum (VL_BC_COFINS,    255, 'Valor da base de c�lculo da COFINS                                                       ');
   FormatoNum (ALIQ_COFINS_PERC,006, 'Al�quota do COFINS (em percentual)                                                       ');
   FormatoNum (QUANT_BC_COFINS, 255, 'Quantidade - Base de c�lculo COFINS                                                      ');
   FormatoNum (ALIQ_COFINS_R,   255, 'Al�quota da COFINS (em reais)                                                            ');
   FormatoNum (VL_COFINS,       255, 'Valor da COFINS                                                                          ');
   FormatoAlfa(COD_CTA,         255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                    ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Movimenta��o f�sica do ITEM/PRODUTO:  ' + IND_MOV);
   if not vIND_APUR(IND_APUR) then
    ErroTStr.add('-3   Indicador de per�odo de apura��o do IPI: ' + IND_APUR);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + NUM_ITEM + COD_ITEM + DESCR_COMPL + QTD + UNID + VL_ITEM + VL_DESC + IND_MOV + CST_ICMS + CFOP + COD_NAT +
                    VL_BC_ICMS + ALIQ_ICMS + VL_ICMS + VL_BC_ICMS_ST + ALIQ_ST + VL_ICMS_ST + IND_APUR + CST_IPI + COD_ENQ +
                    VL_BC_IPI + ALIQ_IPI + VL_IPI + CST_PIS + VL_BC_PIS + ALIQ_PIS_PERC + QUANT_BC_PIS + ALIQ_PIS_R + VL_PIS +
                    CST_COFINS + VL_BC_COFINS + ALIQ_COFINS_PERC + QUANT_BC_COFINS + ALIQ_COFINS_R + VL_COFINS + COD_CTA);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC170 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C171 - ARMAZENAMENTO DE COMBUSTIVEIS (c�digo 01, 55)

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param NUM_TANQUE 'Tanque onde foi armazenado o combust�vel
 @param QTDE       'Quantidade ou volume armazenado

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C001|' + VL_BC_ISSQN, ALIQ_ISSQN, VL_ISSQN
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}

Function RegistroC171(NUM_TANQUE, QTDE: String): Integer; stdcall; export;

const
 Tipo = 'C171';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(NUM_TANQUE,     003, 'Tanque onde foi armazenado o combust�vel  ');
   FormatoNum (QTDE,           255, 'Quantidade ou volume armazenado           ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + NUM_TANQUE + QTDE);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroC171 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C172 - OPERA��ES COM ISSQN (C�DIGO 01)

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param VL_BC_ISSQN 'Valor da base de c�lculo do ISSQN
 @param ALIQ_ISSQN  'Al�quota do ISSQN
 @param VL_ISSQN    'Valor do ISSQN

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C172|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}

Function RegistroC172(VL_BC_ISSQN, ALIQ_ISSQN, VL_ISSQN: String): Integer; stdcall; export;

const
 Tipo = 'C172';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (VL_BC_ISSQN,     255, 'Valor da base de c�lculo do ISSQN         ');
   FormatoNum (ALIQ_ISSQN,      006, 'Al�quota do ISSQN                         ');
   FormatoNum (VL_ISSQN,        255, 'Valor do ISSQN                            ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + VL_BC_ISSQN + ALIQ_ISSQN + VL_ISSQN);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de RegistroC172 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro C173 - OPERA��ES COM MEDICAMENTOS (C�DIGO 01, 55)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param LOTE_MED   'N�mero do lote de fabrica��o do medicamento
 @param QTD_ITEM   'Quantidade de item por lote
 @param DT_FAB     'Data de fabrica��o do medicamento
 @param DT_VAL     'Data de expira��o da validade do medicamento
 @param IND_MED    'Indicador de tipo de refer�ncia da base de c�lculo do ICMS (ST) do produto farmac�utico:
 @param TP_PROD    'Tipo de produto:
 @param VL_TAB_MAX 'Valor do pre�o tabelado ou valor do pre�o m�ximo

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C173|' + LOTE_MED, QTD_ITEM, DT_FAB, DT_VAL, IND_MED, TP_PROD, VL_TAB_MAX
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador do tipo de referencia de base inv�lido : ' + IND_MED
 @return -2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FAB
 @return -3   Data Final Inv�lida (AAAAMMDD) : ' + DT_VAL
 @return -4   Tipo de produto inv�lido : ' + TP_PROD
-------------------------------------------------------------------------------}
Function RegistroC173(LOTE_MED, QTD_ITEM, DT_FAB, DT_VAL, IND_MED, TP_PROD, VL_TAB_MAX: String): Integer; stdcall; export;

const
 Tipo = 'C173';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(LOTE_MED,       255, 'N�mero do lote de fabrica��o do medicamento                                               ');
   FormatoNum (QTD_ITEM,       255, 'Quantidade de item por lote                                                               ');
   ddmmaaaaToSPEDDate(DT_FAB);
   FormatoNum (DT_FAB,         008, 'Data de fabrica��o do medicamento                                                         ');
   ddmmaaaaToSPEDDate(DT_VAL);
   FormatoNum (DT_VAL,         008, 'Data de expira��o da validade do medicamento                                              ');
   FormatoAlfa(IND_MED,        001, 'Indicador de tipo de refer�ncia da base de c�lculo do ICMS (ST) do produto farmac�utico:  ');
   FormatoAlfa(TP_PROD,        001, 'Tipo de produto:                                                                          ');
   FormatoNum (VL_TAB_MAX,     255, 'Valor do pre�o tabelado ou valor do pre�o m�ximo                                          ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not  vInd_tipo_referencia_base(IND_MED) then
    ErroTStr.add('-1   Indicador do tipo de referencia de base inv�lido : ' + IND_MED);
   if not IsSPEDDate(DT_FAB) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FAB);
   if not IsSPEDDate(DT_VAL) then
    ErroTStr.add('-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_VAL);

   if not  vTP_PROD(TP_PROD) then
    ErroTStr.add('-4   Tipo de produto inv�lido :' + TP_PROD);

     //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + LOTE_MED + QTD_ITEM + DT_FAB + DT_VAL + IND_MED + TP_PROD + VL_TAB_MAX);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC173 ---
   //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C174 - OPERA��ES COM ARMAS DE FOGO (C�DIGO 01) -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_ARM     'Indicador do tipo da arma de fogo:
 @param NUM_ARM     'Numera��o de s�rie de fabrica��o da arma
 @param DESCR_COMPL 'Descri��o da arma, compreendendo: n�mero do cano, calibre, marca, capacidade de cartuchos, tipo de funcionamento, quantidade de canos, comprimento, tipo de alma, quantidade e sentido das raias e demais elementos que permitam sua perfeita identifica��o

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C174|' + IND_ARM, NUM_ARM, DESCR_COMPL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador do tipo da arma de fogo inv�lido ' + IND_ARM
-------------------------------------------------------------------------------}

Function RegistroC174(IND_ARM, NUM_ARM, DESCR_COMPL: String): Integer; stdcall; export;

const
 Tipo = 'C174';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(IND_ARM,         001, 'Indicador do tipo da arma de fogo:                                                                                                                                                                                                                           ');
   FormatoAlfa(NUM_ARM,         255, 'Numera��o de s�rie de fabrica��o da arma                                                                                                                                                                                                                     ');
   FormatoAlfa(DESCR_COMPL,     255, 'Descri��o da arma, compreendendo: n�mero do cano, calibre, marca, capacidade de cartuchos, tipo de funcionamento, quantidade de canos, comprimento, tipo de alma, quantidade e sentido das raias e demais elementos que permitam sua perfeita identifica��o  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   //  ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
    if not  vIND_ARM(IND_ARM) then
    ErroTStr.add('-1   Indicador do tipo da arma de fogo inv�lido ' + IND_ARM);

   //Incremento do contador de observa��es
    if ObsTStr.count > 0 then
     Inc(RegSPED[IdxOfReg(tipo)].obs);

    //Resposta em caso de n�o haver erros
    if ErroTStr.count = 0 then
    begin
      result := 0;
      Trata_SPED('|' + Tipo + '|' + IND_ARM + NUM_ARM + DESCR_COMPL);

   //Incremento do contador de registros
      Inc(RegSPED[IdxOfReg(tipo)].ok);
     end
    else
     begin
      Trata_Erro(ErroTStr);

      //Incremento do contador de erros
      Inc(RegSPED[IdxOfReg(tipo)].erro);
     end;
    end;

 //--- Teste de RegistroC174 ---
 //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C175 - OPERA��ES COM VE�CULOS NOVOS (C�DIGO 01, 55) -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_VEIC_OPER 'Indicador do tipo de opera��o com ve�culo:
 @param CNPJ          'CNPJ da Concession�ria
 @param UF            'Sigla da unidade da federa��o da Concession�ria
 @param CHASSI_VEIC   'Chassi do ve�culo

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C175|' + IND_VEIC_OPER, CNPJ, UF, CHASSI_VEIC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   CNPJ ou CPF Inv�lido : ' + CNPJ
 @return -2   Sigla da UF da placa do ve�culo incorreta : ' + UF
 @return -3   Indicador do tipo de opera��o com ve�culo: ' + IND_VEIC_OPER
 -------------------------------------------------------------------------------}
Function RegistroC175(IND_VEIC_OPER, CNPJ, UF, CHASSI_VEIC: String): Integer; stdcall; export;

const
 Tipo = 'C175';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(IND_VEIC_OPER,     001, 'Indicador do tipo de opera��o com ve�culo:                                                                                                                                                                                                                   ');
   FormatoNum (CNPJ,              014, 'CNPJ da Concession�ria                                                                                                                                                                                                                                       ');
   FormatoAlfa(UF,                002, 'Sigla da unidade da federa��o da Concession�ria                                                                                                                                                                                                              ');
   FormatoAlfa(CHASSI_VEIC,       017, 'Chassi do ve�culo                                                                                                                                                                                                                                            ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
     if not (vCNPJ(CNPJ)) and (RemovenumInvalid(CNPJ) <> '') then
      ErroTStr.add('-1   CNPJ ou CPF Inv�lido : ' + CNPJ);

     if not vUF(UF) then
      ErroTStr.add('-2   Sigla da UF da placa do ve�culo incorreta : ' + UF);

     if not vIND_VEIC_OPER(IND_VEIC_OPER) then
      ErroTStr.add('-3   Indicador do tipo de opera��o com ve�culo: ' + IND_VEIC_OPER);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + IND_VEIC_OPER + CNPJ + UF + CHASSI_VEIC);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC175 ---
   //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C176 - RESSARCIMENTO DE ICMS EM OPERA��ES COM SUBSTITUI��O TRIBUT�RIA (C�DIGO 01,55) -

 @Author Alexandre Magno
 @Version 17/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_MOD_ULT_E  'C�digo do modelo do documento fiscal relativa a �ltima entrada
 @param NUM_DOC_ULT_E  'N�mero do documento fiscal relativa a �ltima entrada
 @param SER_ULT_E      'S�rie do documento fiscal relativa a �ltima entrada
 @param DT_ULT_E       'Data relativa a �ltima entrada da mercadoria
 @param COD_PART_ULT_E 'C�digo do participante (do emitente do documento relativa a �ltima entrada)
 @param QUANT_ULT_E    'Quantidade do item relativa a �ltima entrada
 @param VL_UNIT_ULT_E  'Valor unit�rio da mercadoria constante na NF relativa a �ltima entrada inclusive despesas acess�rias.
 @param VL_UNIT_BC_ST  'Valor unit�rio da base de c�lculo do imposto pago por substitui��o.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C176|' + COD_MOD_ULT_E, NUM_DOC_ULT_E, SER_ULT_E, DT_ULT_E, COD_PART_ULT_E, QUANT_ULT_E, VL_UNIT_ULT_E, VL_UNIT_BC_ST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   C�digo do modelo do documento fiscal 4.1.1 inv�lido : ' + COD_MOD_ULT_E
 @return -2   Data Final Inv�lida (AAAAMMDD) : ' + DT_ULT_E
 -------------------------------------------------------------------------------}
 Function RegistroC176(COD_MOD_ULT_E, NUM_DOC_ULT_E, SER_ULT_E, DT_ULT_E, COD_PART_ULT_E, QUANT_ULT_E, VL_UNIT_ULT_E, VL_UNIT_BC_ST: String): Integer; stdcall; export;
const
 Tipo = 'C176';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_MOD_ULT_E,      002, 'C�digo do modelo do documento fiscal relativa a �ltima entrada                                                                                                                                                                                               ');
   FormatoNum (NUM_DOC_ULT_E,      009, 'N�mero do documento fiscal relativa a �ltima entrada                                                                                                                                                                                                         ');
   FormatoAlfa(SER_ULT_E,          003, 'S�rie do documento fiscal relativa a �ltima entrada                                                                                                                                                                                                          ');
   ddmmaaaaToSPEDDate(DT_ULT_E);
   FormatoNum (DT_ULT_E,           008, 'Data relativa a �ltima entrada da mercadoria                                                                                                                                                                                                                 ');
   FormatoAlfa(COD_PART_ULT_E,     060, 'C�digo do participante (do emitente do documento relativa a �ltima entrada)                                                                                                                                                                                  ');
   FormatoNum (QUANT_ULT_E,        255, 'Quantidade do item relativa a �ltima entrada                                                                                                                                                                                                                 ');
   FormatoNum (VL_UNIT_ULT_E,      255, 'Valor unit�rio da mercadoria constante na NF relativa a �ltima entrada inclusive despesas acess�rias.                                                                                                                                                        ');
   FormatoNum (VL_UNIT_BC_ST,      255, 'Valor unit�rio da base de c�lculo do imposto pago por substitui��o.                                                                                                                                                                                          ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD_ULT_E) then
    ErroTStr.add('-1   C�digo do modelo do documento fiscal 4.1.1 inv�lido : ' + COD_MOD_ULT_E);
   if not IsSPEDDate(DT_ULT_E) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_ULT_E);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_MOD_ULT_E + NUM_DOC_ULT_E + SER_ULT_E + DT_ULT_E + COD_PART_ULT_E + QUANT_ULT_E + VL_UNIT_ULT_E + VL_UNIT_BC_ST);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
 end;

   //--- Teste de RegistroC176 ---
   //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C177 - OPERA��ES COM PRODUTOS SUJEITOS A SELO DE CONTROLE IPI -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_SELO_IPI  'C�digo do selo de controle do IPI, conforme Tabela 4.5.2
 @param QT_SELO_IPI   'Quantidade de selo de controle do IPI aplicada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C177|' + COD_SELO_IPI, QT_SELO_IPI
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC177(COD_SELO_IPI, QT_SELO_IPI: String): Integer; stdcall; export;

const
 Tipo = 'C177';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_SELO_IPI,     006, 'C�digo do selo de controle do IPI, conforme Tabela 4.5.2                                                                                                                                                                                                     ');
   FormatoNum (QT_SELO_IPI,      012, 'Quantidade de selo de controle do IPI aplicada                                                                                                                                                                                                               ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   //  ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_SELO_IPI + QT_SELO_IPI);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC177 ---
   //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C178 - OPERA��ES COM PRODUTOS SUJEITOS A TRIBUTA��O DE IPI POR UNIDADE OU QUANTIDADE DE PRODUTO. -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CL_ENQ    'C�digo da classe de enquadramento do IPI, conforme Tabela 4.5.1.
 @param VL_UNID   'Valor por unidade padr�o de tributa��o
 @param QUANT_PAD 'Quantidade total de produtos na unidade padr�o de tributa��o

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C178|' + CL_ENQ, VL_UNID, QUANT_PAD
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}

Function RegistroC178(CL_ENQ, VL_UNID, QUANT_PAD: String): Integer; stdcall; export;

const
 Tipo = 'C178';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(CL_ENQ,        005, 'C�digo da classe de enquadramento do IPI, conforme Tabela 4.5.1.                                                                                                                                                                                             ');
   FormatoNum (VL_UNID,       255, 'Valor por unidade padr�o de tributa��o                                                                                                                                                                                                                       ');
   FormatoNum (QUANT_PAD,     255, 'Quantidade total de produtos na unidade padr�o de tributa��o                                                                                                                                                                                                 ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CL_ENQ + VL_UNID + QUANT_PAD);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC178 ---
   //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C179 - INFORMA��ES COMPLEMENTARES ST (C�DIGO 01) -

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param BC_ST_ORIG_DEST 'Valor da base de c�lculo ST na origem/destino em opera��es interestaduais.
 @param ICMS_ST_REP     'Valor do ICMS-ST a repassar/deduzir em opera��es interestaduais
 @param ICMS_ST_COMPL   'Valor do ICMS-ST a complementar � UF de destino
 @param BC_RET          'Valor da BC de reten��o em remessa promovida por Substitu�do intermedi�rio
 @param ICMS_RET        'Valor da parcela do imposto retido em remessa promovida por substitu�do intermedi�rio

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C179|' + BC_ST_ORIG_DEST + ICMS_ST_REP + ICMS_ST_COMPL + BC_RET + ICMS_RET
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC179(BC_ST_ORIG_DEST, ICMS_ST_REP, ICMS_ST_COMPL, BC_RET, ICMS_RET: String): Integer; stdcall; export;

const
 Tipo = 'C179';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (BC_ST_ORIG_DEST,     255, 'Valor da base de c�lculo ST na origem/destino e                                       ');
   FormatoNum (ICMS_ST_REP,         255, 'Valor do ICMS-ST a repassar/deduzir em opera��e                                       ');
   FormatoNum (ICMS_ST_COMPL,       255, 'Valor do ICMS-ST a complementar � UF de destino                                       ');
   FormatoNum (BC_RET,              255, 'Valor da BC de reten��o em remessa promovida por Substitu�do intermedi�rio            ');
   FormatoNum (ICMS_RET,            255, 'Valor da parcela do imposto retido em remessa promovida por substitu�do intermedi�rio ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + BC_ST_ORIG_DEST + ICMS_ST_REP + ICMS_ST_COMPL + BC_RET + ICMS_RET);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroC179 ---
 //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C190 - REGISTRO ANAL�TICO DO DOCUMENTO (C�DIGO 01, 1B, 04 E 55)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS      'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
 @param CFOP          'C�digo Fiscal de Opera��o e Presta��o do agrupamento de itens
 @param ALIQ_ICMS     'Al�quota do ICMS
 @param VL_OPR        'Valor opera��o correspondente combina��o de CST_ICMS, CFOP, e al�quota do ICMS, + despesas acess�rias (frete, seguros etc) e IPI
 @param VL_BC_ICMS    'Parcela "Valor da base de c�lculo do ICMS" referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_ICMS       'Parcela "Valor do ICMS" referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_BC_ICMS_ST 'Parcela "Valor da base de c�lculo do ICMS" da substitui��o tribut�ria referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_ICMS_ST    'Parcela valor creditado/debitado do ICMS da substitui��o tribut�ria, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_RED_BC     'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_IPI        'Parcela correspondente ao "Valor do IPI" referente � combina��o CST_ICMS, CFOP e al�quota do ICMS.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C190|' + CST_ICMS,CFOP,ALIQ_ICMS,VL_OPR,VL_BC_ICMS,VL_ICMS,VL_BC_ICMS_ST,VL_ICMS_ST,VL_RED_BC,VL_IPI
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}

Function RegistroC190(CST_ICMS,CFOP,ALIQ_ICMS,VL_OPR,VL_BC_ICMS,VL_ICMS,
                      VL_BC_ICMS_ST,VL_ICMS_ST,VL_RED_BC,VL_IPI: String): Integer; stdcall; export;
const
 Tipo    = 'C190';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,      003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                           ');
   FormatoNum (CFOP,          004, 'C�digo Fiscal de Opera��o e Presta��o do agrupamento de itens                                                                     ');
   FormatoNum (ALIQ_ICMS,     006, 'Al�quota do ICMS                                                                                                                  ');
   FormatoNum (VL_OPR,        255, 'Valor opera��o correspondente combina��o de CST_ICMS, CFOP, e al�quota do ICMS, + despesas acess�rias (frete, seguros etc) e IPI  ');
   FormatoNum (VL_BC_ICMS,    255, 'Parcela "Valor da base de c�lculo do ICMS" referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                           ');
   FormatoNum (VL_ICMS,       255, 'Parcela "Valor do ICMS" referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                              ');
   FormatoNum (VL_BC_ICMS_ST, 255, 'Parcela "Valor da base de c�lculo do ICMS" da substitui��o tribut�ria referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.');
   FormatoNum (VL_ICMS_ST,    255, 'Parcela valor creditado/debitado do ICMS da substitui��o tribut�ria, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.');
   FormatoNum (VL_RED_BC,     255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS. ');
   FormatoNum (VL_IPI,        255, 'Parcela correspondente ao "Valor do IPI" referente � combina��o CST_ICMS, CFOP e al�quota do ICMS.                                ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS +
                       VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + VL_IPI);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC190 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C195 - OBSERVA�OES DO LAN�AMENTO FISCAL (C�DIGO 01, 1B E 55)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_OBS   'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)
 @param TXT_COMPL 'Descri��o complementar do c�digo de observa��o.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C195|' + COD_OBS, TXT_COMPL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC195(COD_OBS, TXT_COMPL: String): Integer; stdcall; export;

const
 Tipo = 'C195';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_OBS,       255, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)  ');
   FormatoAlfa(TXT_COMPL,     255, 'Descri��o complementar do c�digo de observa��o.                        ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_OBS + TXT_COMPL);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroC195 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C197 - OUTRAS OBRIGA��ES TRIBUT�RIAS, AJUSTES E INFORMA��ES DE VALORES PROVENIENTES DE DOCUMENTO FISCAL.

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_AJ         'C�digo do ajustes/benef�cio/incentivo, conforme tabela indicada no item 5.3.
 @param DESCR_COMPL_AJ 'Descri��o complementar do ajuste da apura��o, nos casos em que o c�digo da tabela for �9999�
 @param COD_ITEM       'C�digo do item (campo 02 do Registro 0200)
 @param VL_BC_ICMS     'Base de c�lculo do ICMS ou do ICMS ST
 @param ALIQ_ICMS      'Al�quota do ICMS
 @param VL_ICMS        'Valor do ICMS ou do ICMS ST
 @param VL_OUTROS      'Outros valores

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C197|' + COD_AJ, DESCR_COMPL_AJ, COD_ITEM, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_OUTROS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC197(COD_AJ, DESCR_COMPL_AJ, COD_ITEM, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_OUTROS: String): Integer; stdcall; export;

const
 Tipo = 'C197';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_AJ,             010, 'C�digo do ajustes/benef�cio/incentivo, conforme tabela indicada no item 5.3.                  ');
   FormatoAlfa(DESCR_COMPL_AJ,     060, 'Descri��o complementar do ajuste da apura��o, nos casos em que o c�digo da tabela for �9999�  ');
   FormatoAlfa(COD_ITEM,           255, 'C�digo do item (campo 02 do Registro 0200)                                                    ');
   FormatoNum (VL_BC_ICMS,         255, 'Base de c�lculo do ICMS ou do ICMS ST                                                         ');
   FormatoNum (ALIQ_ICMS,          006, 'Al�quota do ICMS                                                                              ');
   FormatoNum (VL_ICMS,            255, 'Valor do ICMS ou do ICMS ST                                                                   ');
   FormatoNum (VL_OUTROS,          255, 'Outros valores                                                                                ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_AJ + DESCR_COMPL_AJ + COD_ITEM + VL_BC_ICMS + ALIQ_ICMS + VL_ICMS + VL_OUTROS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de RegistroC197 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C300 - RESUMO DI�RIO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR (C�DIGO 02)

 @Author Juliana Andrade
 @Version 17/4/2009 13:56:12 �ltima altera��o por  Juliana Andrade

 @param COD_MOD     'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER         'S�rie do documento fiscal
 @param SUB         'Subs�rie do documento fiscal
 @param NUM_DOC_INI 'N�mero do documento fiscal inicial
 @param NUM_DOC_FIN 'N�mero do documento fiscal final
 @param DT_DOC      'Data da emiss�o dos documentos fiscais
 @param VL_DOC      'Valor total dos documentos
 @param VL_PIS      'Valor total do PIS
 @param VL_COFINS   'Valor total da COFINS
 @param COD_CTA     'C�digo   da   conta   anal�tica   cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC300 devidamente formatado |C300| + COD_MOD + SER + SUB + NUM_DOC_INI + NUM_DOC_FIN + DT_DOC + VL_DOC + VL_PIS + VL_COFINS + COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC300(COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, DT_DOC, VL_DOC, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'C300';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,         002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1   ');
  FormatoAlfa(SER,             004, 'S�rie do documento fiscal                                       ');
  FormatoAlfa(SUB,             003, 'Subs�rie do documento fiscal                                    ');
  FormatoNum (NUM_DOC_INI,     006, 'N�mero do documento fiscal inicial                              ');
  FormatoNum (NUM_DOC_FIN,     006, 'N�mero do documento fiscal final                                ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,          008, 'Data da emiss�o dos documentos fiscais                          ');
  FormatoNum (VL_DOC,          255, 'Valor total dos documentos                                      ');
  FormatoNum (VL_PIS,          255, 'Valor total do PIS                                              ');
  FormatoNum (VL_COFINS,       255, 'Valor total da COFINS                                           ');
  FormatoAlfa(COD_CTA,         255, 'C�digo   da   conta   anal�tica   cont�bil debitada/creditada   ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inv�lida (DDMMAAAA) :: ' + DT_DOC);
if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-2   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + SER + SUB + NUM_DOC_INI + NUM_DOC_FIN + DT_DOC + VL_DOC + VL_PIS + VL_COFINS + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC300 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C310 - DOCUMENTOS CANCELADOS DE NOTAS FISCAIS DE VENDA A CONSUMIDOR (C�DIGO 02)

 @Author Juliana Andrade
 @Version 17/4/2009 14:15:04 �ltima altera��o por  Juliana Andrade

 @param NUM_DOC_CANC 'N�mero do documento fiscal cancelado

 @return Caso nenhum erro encontrado retorna RegistroC310 devidamente formatado |C310| + NUM_DOC_CANC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC310(NUM_DOC_CANC: String): Integer; stdcall; export;

const
 Tipo = 'C310';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_DOC_CANC,     255, 'N�mero do documento fiscal cancelado  ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_DOC_CANC);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC310 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro C320 - REGISTRO ANAL�TICO DO RESUMO DI�RIO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR (C�DIGO 02)

 @Author Juliana Andrade
 @Version 17/4/2009 14:25:47 �ltima altera��o por  Juliana Andrade

 @param CST_ICMS   'C�digo   da   Situa��o   Tribut�ria,   conforme   a Tabela indicada no item 4.3.1
 @param CFOP       'C�digo Fiscal de Opera��o e Presta��o
 @param ALIQ_ICMS  'Al�quota do ICMS
 @param VL_OPR     'Valor   total   acumulado   das   opera��es correspondentes   �   combina��o   de  CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.
 @param VL_BC_ICMS 'Valor  acumulado da base de c�lculo do  ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_ICMS    'Valor   acumulado   do   ICMS,   referente   � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_RED_BC  'Valor   n�o   tributado   em  fun��o   da   redu��o   da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param COD_OBS    'C�digo   da   observa��o   do   lan�amento   fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC320 devidamente formatado |C320| + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC320(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'C320';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (CST_ICMS,       003, 'C�digo   da   Situa��o   Tribut�ria,   conforme   a Tabela indicada no item 4.3.1                                                                                      ');
  FormatoNum (CFOP,           004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                                                  ');
  FormatoNum (ALIQ_ICMS,      006, 'Al�quota do ICMS                                                                                                                                                       ');
  FormatoNum (VL_OPR,         255, 'Valor   total   acumulado   das   opera��es correspondentes   �   combina��o   de  CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.   ');
  FormatoNum (VL_BC_ICMS,     255, 'Valor  acumulado da base de c�lculo do  ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                                            ');
  FormatoNum (VL_ICMS,        255, 'Valor   acumulado   do   ICMS,   referente   � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                                                        ');
  FormatoNum (VL_RED_BC,      255, 'Valor   n�o   tributado   em  fun��o   da   redu��o   da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                        ');
  FormatoAlfa(COD_OBS,        006, 'C�digo   da   observa��o   do   lan�amento   fiscal (campo 02 do Registro 0460)                                                                                        ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC320 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C321 - ITENS DO RESUMO DI�RIO DOS DOCUMENTOS (C�DIGO 02)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_ITEM    'C�digo do item (campo 02 do Registro 0200)
 @param QTD         'Quantidade acumulada do item
 @param UNID        'Unidade do item (Campo 02 do registro 0190)
 @param VL_ITEM     'Valor acumulado do item
 @param VL_DESC     'Valor do desconto acumulado
 @param VL_BC_ICMS  'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS     'Valor acumulado do ICMS debitado
 @param VL_PIS      'Valor acumulado do PIS
 @param VL_COFINS   'Valor acumulado da COFINS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C321|' + COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 -------------------------------------------------------------------------------}
Function RegistroC321(COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'C321';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_ITEM,       060, 'C�digo do item (campo 02 do Registro 0200)                                                    ');
   FormatoNum (QTD,            255, 'Quantidade acumulada do item                                                                  ');
   FormatoAlfa(UNID,           006, 'Unidade do item (Campo 02 do registro 0190)                                                   ');
   FormatoNum (VL_ITEM,        255, 'Valor acumulado do item                                                                       ');
   FormatoNum (VL_DESC,        255, 'Valor do desconto acumulado                                                                   ');
   FormatoNum (VL_BC_ICMS,     255, 'Valor acumulado da base de c�lculo do ICMS                                                    ');
   FormatoNum (VL_ICMS,        255, 'Valor acumulado do ICMS debitado                                                              ');
   FormatoNum (VL_PIS,         255, 'Valor acumulado do PIS                                                                        ');
   FormatoNum (VL_COFINS,      255, 'Valor acumulado da COFINS                                                                     ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_ITEM + QTD + UNID + VL_ITEM + VL_DESC + VL_BC_ICMS + VL_ICMS + VL_PIS + VL_COFINS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroC321 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C350 - ITENS DO DOCUMENTO (C�DIGO 02)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param SER        'S�rie do documento fiscal
 @param SUB_SER    'Subs�rie do documento fiscal
 @param NUM_DOC    'N�mero do documento fiscal
 @param DT_DOC     'Data da emiss�o do documento fiscal
 @param CNPJ_CPF   'CNPJ ou CPF do destinat�rio
 @param VL_MERC    'Valor das mercadorias constantes no documento fiscal
 @param VL_DOC     'Valor total do documento fiscal
 @param VL_DESC    'Valor total do desconto
 @param VL_PIS     'Valor total do PIS
 @param VL_COFINS  'Valor total da COFINS
 @param COD_CTA    'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C350|' + SER, SUB_SER, NUM_DOC, DT_DOC, CNPJ_CPF, VL_MERC, VL_DOC, VL_DESC, VL_PIS, VL_COFINS, COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   CNPJ ou CPF Inv�lido : ' + CNPJ_CPF
 @return '-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 -------------------------------------------------------------------------------}
Function RegistroC350(SER, SUB_SER, NUM_DOC, DT_DOC, CNPJ_CPF, VL_MERC, VL_DOC, VL_DESC, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'C350';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(SER,           002, 'S�rie do documento fiscal                                                                     ');
   FormatoAlfa(SUB_SER,       255, 'Subs�rie do documento fiscal                                                                  ');
   FormatoAlfa(NUM_DOC,       255, 'N�mero do documento fiscal                                                                    ');
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,        008, 'Data da emiss�o do documento fiscal                                                           ');
   FormatoNum (CNPJ_CPF,      014, 'CNPJ ou CPF do destinat�rio                                                                   ');
   FormatoNum (VL_MERC,       255, 'Valor das mercadorias constantes no documento fiscal                                          ');
   FormatoNum (VL_DOC,        255, 'Valor total do documento fiscal                                                               ');
   FormatoNum (VL_DESC,       255, 'Valor total do desconto                                                                       ');
   FormatoNum (VL_PIS,        255, 'Valor total do PIS                                                                            ');
   FormatoNum (VL_COFINS,     255, 'Valor total da COFINS                                                                         ');
   FormatoAlfa(COD_CTA,       255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                         ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if (not vCNPJ(CNPJ_CPF) and (not vCPF(CNPJ_CPF)) and (RemovenumInvalid(CNPJ_CPF) <> '')) then
    ErroTStr.add('-1   CNPJ ou CPF Inv�lido : ' + CNPJ_CPF);

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + SER + SUB_SER + NUM_DOC + DT_DOC + CNPJ_CPF + VL_MERC + VL_DOC + VL_DESC + VL_PIS + VL_COFINS + COD_CTA);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

     //--- Teste de RegistroC350 ---
     //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C370 - ITENS DO DOCUMENTO (C�DIGO 02)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_ITEM 'N�mero seq�encial do item no documento fiscal
 @param COD_ITEM 'C�digo do Item (campo 02 do registro 0200)
 @param QTD      'Quantidade do item
 @param UNID     'Unidade do item (campo 02 do registro 0190)
 @param VL_ITEM  'Valor total do item
 @param VL_DESC  'Valor total do desconto no item

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C370|' + NUM_ITEM, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC370(NUM_ITEM, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC: String): Integer; stdcall; export;

const
 Tipo = 'C370';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (NUM_ITEM,     003, 'N�mero seq�encial do item no documento fiscal                                                 ');
   FormatoAlfa(COD_ITEM,     060, 'C�digo do Item (campo 02 do registro 0200)                                                    ');
   FormatoNum (QTD,          255, 'Quantidade do item                                                                            ');
   FormatoAlfa(UNID,         006, 'Unidade do item (campo 02 do registro 0190)                                                   ');
   FormatoNum (VL_ITEM,      255, 'Valor total do item                                                                           ');
   FormatoNum (VL_DESC,      255, 'Valor total do desconto no item                                                               ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + NUM_ITEM + COD_ITEM + QTD + UNID + VL_ITEM + VL_DESC);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de RegistroC370 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C390 - REGISTRO ANAL�TICO DAS NOTAS FISCAIS DE VENDA A CONSUMIDOR (C�DIGO 02)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS   'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
 @param CFOP       'C�digo Fiscal de Opera��o e Presta��o
 @param ALIQ_ICMS  'Al�quota do ICMS
 @param VL_OPR     'Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.
 @param VL_BC_ICMS 'Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_ICMS    'Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_RED_BC  'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param COD_OBS    'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C390|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroC390(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'C390';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,       003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,           004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                                  ');
   FormatoNum (ALIQ_ICMS,      006, 'Al�quota do ICMS                                                                                                                                       ');
   FormatoNum (VL_OPR,         255, 'Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.  ');
   FormatoNum (VL_BC_ICMS,     255, 'Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                              ');
   FormatoNum (VL_ICMS,        255, 'Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                                                  ');
   FormatoNum (VL_RED_BC,      255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                     ');
   FormatoAlfa(COD_OBS,        006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

 //--- Teste de RegistroC390 ---
 //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C400 - EQUIPAMENTO ECF (C�DIGO 02 e 2D)

 @Author Juliana Andrade
 @Version 18/4/2009 14:02:12 �ltima altera��o por  Juliana Andrade

 @param COD_MOD 'C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1
 @param ECF_MOD 'Modelo do equipamento
 @param ECF_FAB 'N�mero de s�rie de fabrica��o do ECF
 @param ECF_CX  'N�mero do caixa atribu�do ao ECF

 @return Caso nenhum erro encontrado retorna RegistroC400 devidamente formatado |C400| + COD_MOD + ECF_MOD + ECF_FAB + ECF_CX
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC400(COD_MOD, ECF_MOD, ECF_FAB, ECF_CX: String): Integer; stdcall; export;

const
 Tipo = 'C400';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,     002, 'C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1  ');
  FormatoAlfa(ECF_MOD,     020, 'Modelo do equipamento                                                    ');
  FormatoAlfa(ECF_FAB,     020, 'N�mero de s�rie de fabrica��o do ECF                                     ');
  FormatoNum (ECF_CX,      003, 'N�mero do caixa atribu�do ao ECF                                         ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-1   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + ECF_MOD + ECF_FAB + ECF_CX);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC400 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C405 - REDU��O Z (C�DIGO 02 e 2D)

 @Author Juliana Andrade
 @Version 18/4/2009 14:15:29 �ltima altera��o por  Juliana Andrade

 @param DT_DOC      'Data do movimento a que se refere a Redu��o Z
 @param CRO         'Posi��o do Contador de Rein�cio de Opera��o
 @param CRZ         'Posi��o do Contador de Redu��o Z
 @param NUM_COO_FIN 'N�mero do Contador de Ordem de Opera��o do �ltimo documento emitido no dia. (N�mero do COO na Redu��o Z)
 @param GT_FIN      'Valor do Grande Total final
 @param VL_BRT      'Valor da venda bruta

 @return Caso nenhum erro encontrado retorna RegistroC405 devidamente formatado |C405| + DT_DOC + CRO + CRZ + NUM_COO_FIN
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inv�lida (DDMMAAAA) :: ' + DT_DOC
-------------------------------------------------------------------------------}
Function RegistroC405(DT_DOC, CRO, CRZ, NUM_COO_FIN, GT_FIN, VL_BRT: String): Integer; stdcall; export;

const
 Tipo = 'C405';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                             //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,          008, 'Data do movimento a que se refere a Redu��o Z                                                             ');
  FormatoNum (CRO,             003, 'Posi��o do Contador de Rein�cio de Opera��o                                                               ');
  FormatoNum (CRZ,             006, 'Posi��o do Contador de Redu��o Z                                                                          ');
  FormatoNum (NUM_COO_FIN,     006, 'N�mero do Contador de Ordem de Opera��o do �ltimo documento emitido no dia. (N�mero do COO na Redu��o Z)  ');
  FormatoNum (GT_FIN,          255, 'Valor do Grande Total final                                                                          ');
  FormatoNum (VL_BRT,          255, 'Valor da venda bruta                                                                          ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos


if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inv�lida (DDMMAAAA) :: ' + DT_DOC);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + DT_DOC + CRO + CRZ + NUM_COO_FIN + GT_FIN + VL_BRT);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC405 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C410 - PIS E COFINS TOTALIZADOS NO DIA (C�DIGO 02 E 2D)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param VL_PIS     'Valor total do PIS
 @param VL_COFINS  'Valor total da COFINS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C410|' + VL_PIS, VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 -------------------------------------------------------------------------------}
Function RegistroC410(VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'C410';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (VL_PIS,        255, 'Valor total do PIS                                                                                                                                     ');
   FormatoNum (VL_COFINS,     255, 'Valor total da COFINS                                                                                                                                  ');

 // if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 //   ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + VL_PIS + VL_COFINS);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroC410 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C420 - REGISTRO DOS TOTALIZADORES PARCIAIS DA REDU��O Z (COD 02 e 2D)

 @Author Juliana Andrade
 @Version 18/4/2009 18:36:46 �ltima altera��o por  Juliana Andrade

 @param COD_TOT_PAR  'C�digo do totalizador, conforme Tabela 4.4.6
 @param VLR_ACUM_TO  'Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
 @param NR_TOT       'N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
 @param DESCR_NR_TOT 'Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.

 @return Caso nenhum erro encontrado retorna RegistroC420 devidamente formatado |C420| + COD_TOT_PAR + VLR_ACUM_TO + NR_TOT + DESCR_NR_TOT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC420(COD_TOT_PAR, VLR_ACUM_TO, NR_TOT, DESCR_NR_TOT: String): Integer; stdcall; export;

const
 Tipo = 'C420';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_TOT_PAR,      007, 'C�digo do totalizador, conforme Tabela 4.4.6                                                                                      ');
  FormatoNum (VLR_ACUM_TO,      255, 'Valor acumulado no totalizador, relativo � respectiva Redu��o Z.                                                                  ');
  FormatoNum (NR_TOT,           002, 'N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.                                   ');
  FormatoAlfa(DESCR_NR_TOT,     255, 'Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.  ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_TOT_PAR + VLR_ACUM_TO + NR_TOT + DESCR_NR_TOT);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC420 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C425 - RESUMO DE ITENS DO MOVIMENTO DI�RIO (C�DIGO 02 e 2D)

 @Author Alexandre Magno
 @Version 18/04/2009 �ltima altera��o por Juliana Andrade

 @param COD_ITEM      'C�digo do item (campo 02 do Registro 0200):
 @param QTD           'Quantidade acumulada do item:
 @param UNID          'Unidade do item:
 @param VL_ITEM       'Valor acumulado do item:
 @param VL_PIS        'Valor do PIS:
 @param VL_COFINS     'Valor da COFINS:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C425|' + COD_ITEM,QTD,UNID,VL_ITEM,VL_BC_ICMS_I,VL_ICMS_I
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 -------------------------------------------------------------------------------}

 Function RegistroC425(COD_ITEM,QTD,UNID,VL_ITEM,VL_PIS,
                      VL_COFINS: String): Integer; stdcall; export;
const
 Tipo    = 'C425';

begin
 NaoRegistrado;                                                      //Testa se registrado
 Result := -1;                                                       //Por default retorna Erro

 if Testa_State(tipo) then                                                 //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_ITEM,         060, 'C�digo do item (campo 02 do Registro 0200):');
   FormatoNum (QTD,              255, 'Quantidade acumulada do item:              ');
   FormatoAlfa(UNID,             006, 'Unidade do item:                           ');
   FormatoNum (VL_ITEM,          255, 'Valor acumulado do item:                   ');
   FormatoNum (VL_PIS,           255, 'Valor acumulado da base de c�lculo do ICMS:');
   FormatoNum (VL_COFINS,        255, 'Valor acumulado do ICMS:                   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_ITEM + QTD + UNID + VL_ITEM + VL_PIS +
                       VL_COFINS);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC425 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C460 - DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D)

 @Author Juliana Andrade
 @Version 18/4/2009 18:46:50 �ltima altera��o por  Juliana Andrade

 @param COD_MOD   'C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1
 @param COD_SIT   'C�digo   da   situa��o   do   documento   fiscal, conforme a Tabela 4.1.2
 @param NUM_DOC   'N�mero do documento fiscal (COO)
 @param DT_DOC    'Data da emiss�o do documento fiscal
 @param VL_DOC    'Valor total do documento fiscal
 @param VL_PIS    'Valor do PIS
 @param VL_COFINS 'Valor da COFINS
 @param CPF_CNPJ  'CPF ou CNPJ do adquirente
 @param NOM_ADQ   'Nome do adquirente

 @return Caso nenhum erro encontrado retorna RegistroC460 devidamente formatado |C460| + COD_MOD + COD_SIT + NUM_DOC + DT_DOC + VL_DOC + VL_PIS + VL_COFINS + CPF_CNPJ + NOM_ADQ
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   CPF ou CNPJ do adquirente inv�lido : ' + CPF_CNPJ
 @return '-2   Codigo do do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC460(COD_MOD, COD_SIT, NUM_DOC, DT_DOC, VL_DOC, VL_PIS, VL_COFINS, CPF_CNPJ, NOM_ADQ: String): Integer; stdcall; export;

const
 Tipo = 'C460';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,       002, 'C�digo   do   modelo   do   documento   fiscal, conforme a Tabela 4.1.1                                                           ');
  FormatoNum (COD_SIT,       002, 'C�digo   da   situa��o   do   documento   fiscal, conforme a Tabela 4.1.2                                                         ');
  FormatoNum (NUM_DOC,       006, 'N�mero do documento fiscal (COO)                                                                                                  ');
  FormatoNum (DT_DOC,        008, 'Data da emiss�o do documento fiscal                                                                                               ');
  FormatoNum (VL_DOC,        255, 'Valor total do documento fiscal                                                                                                   ');
  FormatoNum (VL_PIS,        255, 'Valor do PIS                                                                                                                      ');
  FormatoNum (VL_COFINS,     255, 'Valor da COFINS                                                                                                                   ');
  FormatoNum (CPF_CNPJ,      014, 'CPF ou CNPJ do adquirente                                                                                                         ');
  FormatoAlfa(NOM_ADQ,       060, 'Nome do adquirente                                                                                                                ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

 if (not vCNPJ(CPF_CNPJ) and not vCPF(CPF_CNPJ)) and (RemovenumInvalid(CPF_CNPJ) <> '') then
    ErroTStr.add('-1   CPF ou CNPJ do adquirente inv�lido : ' + CPF_CNPJ);
 if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + COD_SIT + NUM_DOC + DT_DOC + VL_DOC + VL_PIS + VL_COFINS + CPF_CNPJ + NOM_ADQ);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC460 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C470 - ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D)

 @Author Juliana Andrade
 @Version 18/4/2009 18:53:54 �ltima altera��o por  Juliana Andrade

 @param COD_ITEM  'C�digo do item (campo 02 do Registro 0200)
 @param QTD       'Quantidade do item
 @param QTD_CANC  'Quantidade cancelada,  no caso de cancelamento parcial de item
 @param UNID      'Unidade do item (Campo 02 do registro 0190)
 @param VL_ITEM   'Valor total do item
 @param CST_ICMS  'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.
 @param CFOP      'C�digo Fiscal de Opera��o e Presta��o
 @param ALIQ_ICMS 'Al�quota do ICMS - Carga tribut�ria efetiva em percentual
 @param VL_PIS    'Valor do PIS
 @param VL_COFINS 'Valor da COFINS

 @return Caso nenhum erro encontrado retorna RegistroC470 devidamente formatado |C470| + COD_ITEM + QTD + QTD_CANC + UNID + VL_ITEM + CST_ICMS + CFOP + ALIQ_ICMS + VL_PIS + VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroC470(COD_ITEM, QTD, QTD_CANC, UNID, VL_ITEM, CST_ICMS, CFOP, ALIQ_ICMS, VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'C470';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_ITEM,      060, 'C�digo do item (campo 02 do Registro 0200)                                                                                        ');
  FormatoNum (QTD,           255, 'Quantidade do item                                                                                                                ');
  FormatoNum (QTD_CANC,      255, 'Quantidade cancelada,  no caso de cancelamento parcial de item                                                                    ');
  FormatoAlfa(UNID,          006, 'Unidade do item (Campo 02 do registro 0190)                                                                                       ');
  FormatoNum (VL_ITEM,       255, 'Valor total do item                                                                                                               ');
  FormatoNum (CST_ICMS,      003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.                                                          ');
  FormatoNum (CFOP,          004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                             ');
  FormatoNum (ALIQ_ICMS,     006, 'Al�quota do ICMS - Carga tribut�ria efetiva em percentual                                                                         ');
  FormatoNum (VL_PIS,        255, 'Valor do PIS                                                                                                                      ');
  FormatoNum (VL_COFINS,     255, 'Valor da COFINS                                                                                                                   ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

   if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP);
//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_ITEM + QTD + QTD_CANC + UNID + VL_ITEM + CST_ICMS + CFOP + ALIQ_ICMS + VL_PIS + VL_COFINS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC470 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C490 - REGISTRO ANAL�TICO DO MOVIMENTO DI�RIO (C�DIGO 02 E 2D)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param  CST_ICMS     'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
 @param  CFOP         'C�digo Fiscal de Opera��o e Presta��o
 @param  ALIQ_ICMS    'Al�quota do ICMS
 @param  VL_OPR       'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos
 @param  VL_BC_ICMS   'Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param  VL_ICMS      'Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param  COD_OBS      'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C490|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP);
-------------------------------------------------------------------------------}
Function RegistroC490(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'C490';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,       003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,           004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                                  ');
   FormatoNum (ALIQ_ICMS,      006, 'Al�quota do ICMS                                                                                                                                       ');
   FormatoNum (VL_OPR,         255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos                     ');
   FormatoNum (VL_BC_ICMS,     255, 'Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                              ');
   FormatoNum (VL_ICMS,        255, 'Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                                                  ');
   FormatoAlfa(COD_OBS,        006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + COD_OBS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroC490 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C495- RESUMO MENSAL DE ITENS DO ECF POR ESTABELECIMENTO (C�DIGO 02, 2D)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param ALIQ_ICMS    'Al�quota do ICMS
 @param COD_ITEM     'C�digo do item (campo 02 do Registro 0200)
 @param QTD          'Quantidade acumulada do item
 @param QTD_CANC     'Quantidade cancelada acumulada, no caso de cancelamento parcial de item
 @param UNID         'Unidade do item  (Campo 02 do registro 0190)
 @param VL_ITEM      'Valor acumulado do item
 @param VL_DESC      'Valor acumulado dos descontos
 @param VL_CANC      'Valor acumulado dos cancelamentos
 @param VL_ACMO      'Valor acumulado dos acr�scimos
 @param VL_BC_ICMS   'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS      'Valor acumulado do ICMS
 @param VL_ISEN      'Valor das sa�das isentas do ICMS
 @param VL_NT        'Valor das sa�das sob n�o-incid�ncia ou n�o-tributadas pelo ICMS
 @param VL_ICMS_ST   'Valor das sa�das de mercadorias adquiridas com substitui��o tribut�ria do ICMS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C495|' + ALIQ_ICMS, COD_ITEM, QTD, QTD_CANC, UNID, VL_ITEM, VL_DESC, VL_CANC, VL_ACMO, VL_BC_ICMS, VL_ICMS, VL_ISEN, VL_NT, VL_ICMS_ST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC495(ALIQ_ICMS, COD_ITEM, QTD, QTD_CANC, UNID, VL_ITEM, VL_DESC, VL_CANC, VL_ACMO, VL_BC_ICMS, VL_ICMS, VL_ISEN, VL_NT, VL_ICMS_ST: String): Integer; stdcall; export;

const
 Tipo = 'C495';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (ALIQ_ICMS,      255, 'Al�quota do ICMS                                                                                                                                       ');
   FormatoAlfa(COD_ITEM,       060, 'C�digo do item (campo 02 do Registro 0200)                                                                                                             ');
   FormatoNum (QTD,            255, 'Quantidade acumulada do item                                                                                                                           ');
   FormatoNum (QTD_CANC,       255, 'Quantidade cancelada acumulada, no caso de cancelamento parcial de item                                                                                ');
   FormatoAlfa(UNID,           006, 'Unidade do item  (Campo 02 do registro 0190)                                                                                                           ');
   FormatoNum (VL_ITEM,        255, 'Valor acumulado do item                                                                                                                                ');
   FormatoNum (VL_DESC,        255, 'Valor acumulado dos descontos                                                                                                                          ');
   FormatoNum (VL_CANC,        255, 'Valor acumulado dos cancelamentos                                                                                                                      ');
   FormatoNum (VL_ACMO,        255, 'Valor acumulado dos acr�scimos                                                                                                                         ');
   FormatoNum (VL_BC_ICMS,     255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                             ');
   FormatoNum (VL_ICMS,        255, 'Valor acumulado do ICMS                                                                                                                                ');
   FormatoNum (VL_ISEN,        255, 'Valor das sa�das isentas do ICMS                                                                                                                       ');
   FormatoNum (VL_NT,          255, 'Valor das sa�das sob n�o-incid�ncia ou n�o-tributadas pelo ICMS                                                                                        ');
   FormatoNum (VL_ICMS_ST,     255, 'Valor das sa�das de mercadorias adquiridas com substitui��o tribut�ria do ICMS                                                                         ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + ALIQ_ICMS + COD_ITEM + QTD + QTD_CANC + UNID + VL_ITEM + VL_DESC + VL_CANC + VL_ACMO + VL_BC_ICMS + VL_ICMS + VL_ISEN + VL_NT + VL_ICMS_ST);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroC495 ---
 //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C500 - NOTA FISCAL/CONTA DE ENERGIA EL�TRICA (C�DIGO   06) E NOTA FISCAL CONSUMO FORNECIMENTO DE G�S (C�DIGO 28)

 @Author Juliana Andrade
 @Version 18/4/2009 19:04:49 �ltima altera��o por  Juliana Andrade

 @param IND_OPER 'Indicador do tipo de opera��o: 0- Entrada; 1- Sa�da
 @param IND_EMIT 'Indicador do emitente do documento fiscal: 0- Emiss�o pr�pria; 1- Terceiros
 @param COD_PART 'C�digo do participante (campo 02 do Registro 0150): - do adquirente, no caso das sa�das; - do fornecedor no caso de entradas
 @param COD_MOD  'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param COD_SIT  'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2
 @param SER      'S�rie do documento fiscal
 @param SUB      'Subs�rie do documento fiscal
 @param COD_CONS 'C�digo de classe de consumo de energia el�trica, conforme a Tabela 4.4.5 ou C�digo da classe de consumo   de   g�s   canalizado   conforme   Tabela 4.4.3.
 @param NUM_DOC  'N�mero do documento fiscal
 @param DT_DOC   'Data da emiss�o do documento fiscal
 @param DT_E_S   'Data da entrada ou da sa�da
 @param VL_DOC   'Valor total do documento fiscal

 @return Caso nenhum erro encontrado retorna RegistroC500 devidamente formatado |C500| + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + SUB + COD_CONS + NUM_DOC + DT_DOC + DT_E_S + VL_DOC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   Data Inv�lida (DDMMAAAA) :: ' + DT_E_S
 @return '-3   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC500(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, COD_CONS, NUM_DOC,
                      DT_DOC, DT_E_S, VL_DOC, VL_DESC, VL_FORN, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS,
                      VL_BC_ICMS_ST, VL_ICMS_ST, COD_INF, VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'C500';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(IND_OPER,     001, 'Indicador do tipo de opera��o: 0- Entrada; 1- Sa�da                                                                                                         ');
  FormatoAlfa(IND_EMIT,     001, 'Indicador do emitente do documento fiscal: 0- Emiss�o pr�pria; 1- Terceiros                                                                                 ');
  FormatoAlfa(COD_PART,     255, 'C�digo do participante (campo 02 do Registro 0150): - do adquirente, no caso das sa�das; - do fornecedor no caso de entradas                                ');
  FormatoAlfa(COD_MOD,      002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                               ');
  FormatoNum (COD_SIT,      002, 'C�digo   da   situa��o   do   documento   fiscal, conforme a Tabela 4.1.2                                                                                   ');
  FormatoAlfa(SER,          255, 'S�rie do documento fiscal                                                                                                                                   ');
  FormatoNum (SUB,          255, 'Subs�rie do documento fiscal                                                                                                                                ');
  FormatoNum (COD_CONS,     002, 'C�digo de classe de consumo de energia el�trica, conforme a Tabela 4.4.5 ou C�digo da classe de consumo   de   g�s   canalizado   conforme   Tabela 4.4.3.  ');
  FormatoNum (NUM_DOC,      009, 'N�mero do documento fiscal                                                                                                                                  ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,       008, 'Data da emiss�o do documento fiscal                                                                                                                         ');
  ddmmaaaaToSPEDDate(DT_E_S);
  FormatoNum (DT_E_S,       008, 'Data da entrada ou da sa�da                                                                                                                                 ');
  FormatoNum (VL_DOC,       255, 'Valor total do documento fiscal                                                                                                                             ');
  FormatoNum (VL_DESC,      255, 'Valor total do desconto                                                                                                                                     ');
  FormatoNum (VL_FORN,      255, 'Valor total fornecido/consumido                                                                                                                             ');
  FormatoNum (VL_SERV_NT,   255, 'Valor total dos servi�os n�o-tributados pelo ICMS                                                                                                           ');
  FormatoNum (VL_TERC,      255, 'Valor total cobrado em nome de terceiros                                                                                                                    ');
  FormatoNum (VL_DA,        255, 'Valor total de despesas acess�rias indicadas no documento fiscal                                                                                            ');
  FormatoNum (VL_BC_ICMS,   255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                                  ');
  FormatoNum (VL_ICMS,      255, 'Valor acumulado do ICMS                                                                                                                                     ');
  FormatoNum (VL_BC_ICMS_ST,255, 'Valor acumulado da base de c�lculo do ICMS substitui��o tribut�ria                                                                                          ');
  FormatoNum (VL_ICMS_ST,   255, 'Valor acumulado do ICMS retido por substitui��o tribut�ria                                                                                                  ');
  FormatoAlfa(COD_INF,      255, 'C�digo da informa��o complementar do documento fiscal (campo 02 do Registro 0450)                                                                           ');
  FormatoNum (VL_PIS,       255, 'Valor do PIS                                                                                                                                                ');
  FormatoNum (VL_COFINS,    255, 'Valor da COFINS                                                                                                                                             ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inv�lida (DDMMAAAA) :: ' + DT_DOC);

if not(IsSPEDDate(DT_E_S)) then
 ErroTStr.add('-2   Data Inv�lida (DDMMAAAA) :: ' + DT_E_S);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-3   Codigo do domodelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + SUB + COD_CONS + NUM_DOC +
                                DT_DOC + DT_E_S + VL_DOC + VL_DESC + VL_FORN + VL_SERV_NT + VL_TERC + VL_DA + VL_BC_ICMS +
                                VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + COD_INF + VL_PIS + VL_COFINS);

  //Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC500 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C510 - ITENS DO DOCUMENTO NOTA FISCAL/CONTA ENERGIA EL�TRICA (C�DIGO 06) E NOTA FISCAL/CONTA DE FORNECIMENTO DE G�S (C�DIGO 28)

 @Author Juliana Andrade
 @Version 18/4/2009 20:05:30 �ltima altera��o por  Juliana Andrade

 @param NUM_ITEM      'N�mero seq�encial do item no documento fiscal
 @param COD_ITEM      'C�digo do item (campo 02 do Registro 0200)
 @param COD_CLASS     'C�digo   de   classifica��o   do   item   de   energia el�trica, conforme a Tabela 4.4.1
 @param QTD           'Quantidade do item
 @param UNID          'Unidade do item (Campo 02 do registro 0190)
 @param VL_ITEM       'Valor do item
 @param VL_DESC       'Valor total do desconto
 @param CST_ICMS      'C�digo   da   Situa��o   Tribut�ria,   conforme   a Tabela indicada no item 4.3.1
 @param CFOP          'C�digo Fiscal de Opera��o e Presta��o
 @param VL_BC_ICMS    'Valor da base de c�lculo do ICMS
 @param ALIQ_ICMS     'Al�quota do ICMS
 @param VL_ICMS       'Valor do ICMS creditado/debitado
 @param VL_BC_ICMS_ST 'Valor da base de c�lculo referente � substitui��o tribut�ria
 @param ALIQ_ST       'Al�quota do  ICMS da substitui��o  tribut�ria na unidade da federa��o de destino
 @param VL_ICMS_ST    'Valor do ICMS referente � substitui��o tribut�ria
 @param IND_REC       'Indicador do tipo de receita:0- Receita pr�pria;1- Receita de terceiros
 @param COD_PART      'C�digo   do   participante   receptor   da   receita, terceiro   da   opera��o   (campo   02   do   Registro 0150)
 @param VL_PIS        'Valor do PIS
 @param VL_COFINS     'Valor da COFINS
 @param COD_CTA       'C�digo   da   conta   anal�tica   cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC510 devidamente formatado |C510| + NUM_ITEM + COD_ITEM + COD_CLASS + QTD + UNID + VL_ITEM + VL_DESC + CST_ICMS + CFOP + VL_BC_ICMS + ALIQ_ICMS + VL_ICMS + VL_BC_ICMS_ST + ALIQ_ST + VL_ICMS_ST + IND_REC + COD_PART + VL_PIS + VL_COFINS + COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroC510(NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'C510';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_ITEM,          003, 'N�mero seq�encial do item no documento fiscal                                                                                                               ');
  FormatoAlfa(COD_ITEM,          060, 'C�digo do item (campo 02 do Registro 0200)                                                                                                                  ');
  FormatoNum (COD_CLASS,         004, 'C�digo   de   classifica��o   do   item   de   energia el�trica, conforme a Tabela 4.4.1                                                                    ');
  FormatoNum (QTD,               255, 'Quantidade do item                                                                                                                                          ');
  FormatoAlfa(UNID,              006, 'Unidade do item (Campo 02 do registro 0190)                                                                                                                 ');
  FormatoNum (VL_ITEM,           255, 'Valor do item                                                                                                                                               ');
  FormatoNum (VL_DESC,           255, 'Valor total do desconto                                                                                                                                     ');
  FormatoNum (CST_ICMS,          003, 'C�digo   da   Situa��o   Tribut�ria,   conforme   a Tabela indicada no item 4.3.1                                                                           ');
  FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                                       ');
  FormatoNum (VL_BC_ICMS,        255, 'Valor da base de c�lculo do ICMS                                                                                                                            ');
  FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                            ');
  FormatoNum (VL_ICMS,           255, 'Valor do ICMS creditado/debitado                                                                                                                            ');
  FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo referente � substitui��o tribut�ria                                                                                                ');
  FormatoNum (ALIQ_ST,           006, 'Al�quota do  ICMS da substitui��o  tribut�ria na unidade da federa��o de destino                                                                            ');
  FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS referente � substitui��o tribut�ria                                                                                                           ');
  FormatoAlfa(IND_REC,           001, 'Indicador do tipo de receita:0- Receita pr�pria;1- Receita de terceiros                                                                                     ');
  FormatoAlfa(COD_PART,          060, 'C�digo do participante receptor  da   receita, terceiro   da   opera��o   (campo   02   do   Registro 0150)                                          ');
  FormatoNum (VL_PIS,            255, 'Valor do PIS                                                                                                                                                ');
  FormatoNum (VL_COFINS,         255, 'Valor da COFINS                                                                                                                                             ');
  FormatoAlfa(COD_CTA,           255, 'C�digo   da   conta   anal�tica   cont�bil debitada/creditada                                                                                               ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
  if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_ITEM + COD_ITEM + COD_CLASS + QTD + UNID + VL_ITEM + VL_DESC + CST_ICMS + CFOP + VL_BC_ICMS + ALIQ_ICMS + VL_ICMS + VL_BC_ICMS_ST + ALIQ_ST + VL_ICMS_ST + IND_REC + COD_PART + VL_PIS + VL_COFINS + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC510 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C590 - REGISTRO ANAL�TICO DO DOCUMENTO - NOTA FISCAL/CONTA DE ENERGIA EL�TRICA  (C�DIGO 06)  E NOTA FISCAL CONSUMO FORNECIMENTO DE G�S (C�DIGO 28)

 @Author Juliana Andrade
 @Version 19/4/2009 18:17:52 �ltima altera��o por  Juliana Andrade

 @param CST_ICMS      'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.
 @param CFOP          'C�digo Fiscal e Opera��o e Presta��o do agrupamento de itens
 @param ALIQ_ICMS     'Al�quota do ICMS
 @param VL_OPR        'Valor  da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_BC_ICMS    'Parcela   correspondente   ao   "Valor   da   base   de c�lculo   do   ICMS"   referente   �   combina��o   de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_ICMS       'Parcela   correspondente   ao   "Valor   do   ICMS" referente � combina��o de CST_ICMS,  CFOP e al�quota do ICMS.
 @param VL_BC_ICMS_ST 'Parcela   correspondente   ao   "Valor   da   base   de c�lculo   do   ICMS"   da   substitui��o   tribut�ria referente � combina��o de CST_ICMS,  CFOP e al�quota do ICMS.
 @param VL_ICMS_ST    'Parcela   correspondente   ao   valor creditado/debitado   do   ICMS   da   substitui��o tribut�ria, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_RED_BC     'Valor n�o tributado em fun��o da redu��o da base de c�lculo do  ICMS,   referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param COD_OBS       'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC590 devidamente formatado |C590| + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR  + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroC590(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR , VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'C590';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.                                                                                                     ');
  FormatoNum (CFOP,              004, 'C�digo   Fiscal   de   Opera��o   e   Presta��o   do agrupamento de itens                                                                                                    ');
  FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                                             ');
  FormatoNum (VL_OPR,            255, 'Valor  da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                                                                        ');
  FormatoNum (VL_BC_ICMS,        255, 'Parcela   correspondente   ao   "Valor   da   base   de c�lculo   do   ICMS"   referente   �   combina��o   de CST_ICMS, CFOP e al�quota do ICMS.                            ');
  FormatoNum (VL_ICMS,           255, 'Parcela   correspondente   ao   "Valor   do   ICMS" referente � combina��o de CST_ICMS,  CFOP e al�quota do ICMS.                                                            ');
  FormatoNum (VL_BC_ICMS_ST,     255, 'Parcela   correspondente   ao   "Valor   da   base   de c�lculo   do   ICMS"   da   substitui��o   tribut�ria referente � combina��o de CST_ICMS,  CFOP e al�quota do ICMS.  ');
  FormatoNum (VL_ICMS_ST,        255, 'Parcela   correspondente   ao   valor creditado/debitado   do   ICMS   da   substitui��o tribut�ria, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.           ');
  FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do  ICMS,   referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                         ');
  FormatoAlfa(COD_OBS,           006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                                        ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   C�digo Fiscal de Opera��o e Presta��o inv�lido: ' + CFOP);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR  + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + COD_OBS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC590 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C600 - CONSOLIDA��O DI�RIA DE NOTAS FISCAIS/CONTAS DE   ENERGIA   EL�TRICA   (C�DIGO   06),   NOTA   FISCAL/CONTA   DE FORNECIMENTO   D'�GUA  CANALIZADA  (C�DIGO   29)   E   NOTA FISCAL/CONTA DE FORNECIMENTO DE G�S  (C�DIGO 28)   (EMPRESAS N�O OBRIGADAS AO CONV�NIO ICMS 115/03)

 @Author Juliana Andrade
 @Version 19/4/2009 18:38:46 �ltima altera��o por  Juliana Andrade

 @param COD_MOD       'C�digo do modelo   do   documento   fiscal, conforme a Tabela 4.1.1
 @param COD_MUN       'C�digo do munic�pio  dos  pontos   de   consumo, conforme a tabela IBGE
 @param SER           'S�rie do documento fiscal
 @param SUB           'Subs�rie do documento fiscal
 @param COD_CONS      'C�digo de classe de consumo de energia el�trica, conforme a Tabela 4.4.5, ou C�digo de Consumo de   Fornecimento   D��gua   -   Tabela   4.4.2   ou C�digo da classe de consumo de g�s canalizado conforme Tabela 4.4.3.
 @param QTD_CONS      'Quantidade   de   documentos   consolidados   neste registro
 @param QTD_CANC      'Quantidade de documentos cancelados
 @param DT_DOC        'Data dos documentos consolidados
 @param VL_DOC        'Valor total dos documentos
 @param VL_DESC       'Valor acumulado dos descontos
 @param CONS          'Consumo total acumulado, em kWh (C�digo 06)
 @param VL_FORN       'Valor acumulado do fornecimento
 @param VL_SERV_NT    'Valor acumulado dos servi�os n�o-tributados pelo ICMS
 @param VL_TERC       'Valores cobrados em nome de terceiros
 @param VL_DA         'Valor acumulado das despesas acess�rias
 @param VL_BC_ICMS    'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS       'Valor acumulado do ICMS
 @param VL_BC_ICMS_ST 'Valor acumulado da base de  c�lculo do  ICMS substitui��o tribut�ria
 @param VL_ICMS_ST    'Valor acumulado do ICMS retido   por substitui��o tribut�ria
 @param VL_PIS        'Valor acumulado do PIS
 @param VL_COFINS     'Valor acumulado COFINS

 @return Caso nenhum erro encontrado retorna RegistroC600 devidamente formatado |C600| + COD_MOD + COD_MUN + SER + SUB + COD_CONS + QTD_CONS + QTD_CANC + DT_DOC + VL_DOC + VL_DESC + CONS + VL_FORN + VL_SERV_NT + VL_TERC + VL_DA + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_PIS + VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
 -------------------------------------------------------------------------------}
Function RegistroC600(COD_MOD, COD_MUN, SER, SUB, COD_CONS, QTD_CONS, QTD_CANC, DT_DOC, VL_DOC, VL_DESC,
                        CONS, VL_FORN, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST,
                        VL_ICMS_ST, VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'C600';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,           002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoNum (COD_MUN,           007, 'C�digo do munic�pio dos pontos de consumo, conforme a tabela IBGE                                                                                                                                                         ');
  FormatoAlfa(SER,               004, 'S�rie do documento fiscal                                                                                                                                                                                                 ');
  FormatoNum (SUB,               003, 'Subs�rie do documento fiscal                                                                                                                                                                                              ');
  FormatoNum (COD_CONS,          002, 'C�digo de classe de consumo de energia el�trica, conforme a Tabela 4.4.5, ou C�digo de Consumo de   Fornecimento   D��gua   -   Tabela   4.4.2   ou C�digo da classe de consumo de g�s canalizado conforme Tabela 4.4.3.  ');
  FormatoNum (QTD_CONS,          255, 'Quantidade de documentos consolidados neste registro                                                                                                                                                                      ');
  FormatoNum (QTD_CANC,          255, 'Quantidade de documentos cancelados                                                                                                                                                                                       ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,            008, 'Data dos documentos consolidados                                                                                                                                                                                          ');
  FormatoNum (VL_DOC,            255, 'Valor total dos documentos                                                                                                                                                                                                ');
  FormatoNum (VL_DESC,           255, 'Valor acumulado dos descontos                                                                                                                                                                                             ');
  FormatoNum (CONS,              255, 'Consumo total acumulado, em kWh (C�digo 06)                                                                                                                                                                               ');
  FormatoNum (VL_FORN,           255, 'Valor acumulado do fornecimento                                                                                                                                                                                           ');
  FormatoNum (VL_SERV_NT,        255, 'Valor acumulado dos servi�os n�o-tributados pelo ICMS                                                                                                                                                                     ');
  FormatoNum (VL_TERC,           255, 'Valores cobrados em nome de terceiros                                                                                                                                                                                     ');
  FormatoNum (VL_DA,             255, 'Valor acumulado das despesas acess�rias                                                                                                                                                                                   ');
  FormatoNum (VL_BC_ICMS,        255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                                                                                                ');
  FormatoNum (VL_ICMS,           255, 'Valor acumulado do ICMS                                                                                                                                                                                                   ');
  FormatoNum (VL_BC_ICMS_ST,     255, 'Valor acumulado da base de  c�lculo do  ICMS substitui��o                                                                                                                                                                 ');
  FormatoNum (VL_ICMS_ST,        255, 'Valor acumulado do ICMS retido por substitui��o tribut�ria                                                                                                                                                                ');
  FormatoNum (VL_PIS,            255, 'Valor acumulado do PIS                                                                                                                                                                                                    ');
  FormatoNum (VL_COFINS,         255, 'Valor acumulado COFINS                                                                                                                                                                                                    ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + COD_MUN + SER + SUB + COD_CONS + QTD_CONS + QTD_CANC + DT_DOC + VL_DOC + VL_DESC + CONS + VL_FORN + VL_SERV_NT + VL_TERC + VL_DA + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_PIS + VL_COFINS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC600 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO C601 - DOCUMENTOS CANCELADOS - CONSOLIDA��O DI�RIA DE NOTAS FISCAIS/CONTAS DE ENERGIA EL�TRICA (C�DIGO 06), NOTA FISCAL/CONTA DE FORNECIMENTO D'�GUA CANALIZADA (C�DIGO 29) E NOTA FISCAL/CONTA DE FORNECIMENTO DE G�S (C�DIGO 28)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_DOC_CANC       'N�mero do documento fiscal cancelado

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C601|' + NUM_DOC_CANC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroC601(NUM_DOC_CANC: String): Integer; stdcall; export;

const
Tipo = 'C601';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (NUM_DOC_CANC,     009, 'N�mero do documento fiscal cancelado          ');

 //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

 //Teste de Integridade dos campos

 //Incremento do contador de observa��es
 if ObsTStr.count > 0 then
  Inc(RegSPED[IdxOfReg(tipo)].obs);

 //Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
  begin
   result := 0;
   Trata_SPED('|' + Tipo + '|' + NUM_DOC_CANC);

 //Incremento do contador de registros
   Inc(RegSPED[IdxOfReg(tipo)].ok);
  end
 else
  begin
   Trata_Erro(ErroTStr);

   //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
  end;
 end;

  //--- Teste de RegistroC601 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 REGISTRO C610 - ITENS DO DOCUMENTO CONSOLIDADO (C�DIGO 06), NOTA FISCAL/CONTA DE FORNECIMENTO D'�GUA CANALIZADA (C�DIGO 29)
                 E NOTA FISCAL/CONTA DE FORNECIMENTO DE G�S (C�DIGO 28) (EMPRESAS N�O OBRIGADAS AO CONV�NIO ICMS 115/03).

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_CLASS     'C�digo de classifica��o do item de energia el�trica, conforme Tabela 4.4.1
 @param COD_ITEM      'C�digo do item (campo 02 do Registro 0200)
 @param QTD           'Quantidade acumulada do item
 @param UNID          'Unidade do item  (Campo 02 do registro 0190)
 @param VL_ITEM       'Valor acumulado do item
 @param VL_DESC       'Valor acumulado dos descontos
 @param CST_ICMS      'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
 @param CFOP          'C�digo Fiscal de Opera��o e Presta��o conforme tabela indicada no item 4.2.2
 @param ALIQ_ICMS     'Al�quota do ICMS
 @param VL_BC_ICMS    'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS       'Valor acumulado do ICMS debitado
 @param VL_BC_ICMS_ST 'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST    'Valor do ICMS retido por substitui��o tribut�ria
 @param VL_PIS        'Valor do PIS
 @param VL_COFINS     'Valor da COFINS
 @param COD_CTA       'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C610|' + COD_CLASS, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP,ALIQ_ICMS, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_PIS,VL_COFINS, COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Numero de CFOP inv�lido: ' + CFOP
 @return '-2   C�digo de classifica��o do item, conforme Tabela 4.4.2 ' + COD_CLASS
-------------------------------------------------------------------------------}
Function RegistroC610(COD_CLASS, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP,
                      ALIQ_ICMS, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_PIS,
                      VL_COFINS, COD_CTA: String): Integer; stdcall; export;
const
 Tipo = 'C610';

begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (COD_CLASS,     004, 'C�digo de classifica��o do item de energia el�trica, conforme Tabela 4.4.1      ');
   FormatoAlfa(COD_ITEM,      060, 'C�digo do item (campo 02 do Registro 0200)                                      '); // todo mudan�a no tamanho de 255 para 60 e formato
   FormatoNum (QTD,           255, 'Quantidade acumulada do item                                                    '); // todo mudan�a do formato de FormatoAlfa para FormatoNum
   FormatoAlfa(UNID,          006, 'Unidade do item  (Campo 02 do registro 0190)                                    '); // todo mudan�a no tamanho de 255 para 060 e formato
   FormatoNum (VL_ITEM,       255, 'Valor acumulado do item                                                         ');
   FormatoNum (VL_DESC,       255, 'Valor acumulado dos descontos                                                   '); // todo mudan�a do formato de FormatoAlfa para FormatoNum
   FormatoNum (CST_ICMS,      003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1         ');
   FormatoNum (CFOP,          004, 'C�digo Fiscal de Opera��o e Presta��o conforme tabela indicada no item 4.2.2    ');
   FormatoNum (ALIQ_ICMS,     006, 'Al�quota do ICMS                                                                '); // todo mudan�a no tamanho de 255 para 006 e formato
   FormatoNum (VL_BC_ICMS,    255, 'Valor acumulado da base de c�lculo do ICMS                                      ');
   FormatoNum (VL_ICMS,       255, 'Valor acumulado do ICMS debitado                                                ');
   FormatoNum (VL_BC_ICMS_ST, 255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                        '); // todo mudan�a do formato de FormatoAlfa para FormatoNum
   FormatoNum (VL_ICMS_ST,    255, 'Valor do ICMS retido por substitui��o tribut�ria                                ');
   FormatoNum (VL_PIS,        255, 'Valor do PIS                                                                    ');
   FormatoNum (VL_COFINS,     255, 'Valor da COFINS                                                                 ');
   FormatoAlfa(COD_CTA,       255, 'C�digo da conta anal�tica cont�bil debitada/creditada                           '); // todo mudan�a do formato de FormatoNum para FormatoAlfa

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);
   if not vCod_classific_item_4_4_2(COD_CLASS) then
    ErroTStr.add('-2   C�digo de classifica��o do item, conforme Tabela 4.4.2 ' + COD_CLASS);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_CLASS + COD_ITEM + QTD + UNID + VL_ITEM + VL_DESC + CST_ICMS + CFOP +
                       ALIQ_ICMS + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_PIS +
                       VL_COFINS + COD_CTA);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroC610 ---
//ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro C690 - REGISTRO ANAL�TICO DOS DOCUMENTOS (Notas Fiscais/Contas de Energia El�trica (C�digo 06), Nota Fiscal/Conta de Fornecimento d��gua CANALIZADA (c�digo 29) e Nota Fiscal/Conta de Fornecimento de G�s (C�digo 28)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS      'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1
 @param CFOP          'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2
 @param ALIQ_ICMS     'Al�quota do ICMS
 @param VL_OPR        'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_BC_ICMS    'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP  e al�quota do ICMS
 @param VL_ICMS       'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS, CFOP e al�quota do ICMS
 @param VL_RED_BC     'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param VL_BC_ICMS_ST 'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST    'Valor do ICMS retido por substitui��o tribut�ria
 @param COD_OBS       'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C690|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, VL_BC_ICMS_ST, VL_ICMS_ST, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroC690(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, VL_BC_ICMS_ST, VL_ICMS_ST, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'C690';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2                                                                        ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                       '); // todo mudan�a do tamanho de 255 para 006
   FormatoNum (VL_OPR,            255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                                                   ');
   FormatoNum (VL_BC_ICMS,        255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP  e al�quota do ICMS                                 ');
   FormatoNum (VL_ICMS,           255, 'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS, CFOP e al�quota do ICMS                                                     ');
   FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                      ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                                                               ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                                                                       ');
   FormatoAlfa(COD_OBS,           006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  '); // todo mudan�a do tamanho de 255 para 006

 //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

 //Teste de Integridade dos campos

 if not vCOD_CFOP(CFOP) then
  ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

 //Incremento do contador de observa��es
 if ObsTStr.count > 0 then
  Inc(RegSPED[IdxOfReg(tipo)].obs);

 //Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
  begin
   result := 0;
   Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_RED_BC + VL_BC_ICMS_ST + VL_ICMS_ST + COD_OBS);

 //Incremento do contador de registros
   Inc(RegSPED[IdxOfReg(tipo)].ok);
  end
 else
  begin
   Trata_Erro(ErroTStr);

   //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
  end;
 end;

  //--- Teste de RegistroC690 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro C700 - CONSOLIDA��O   DOS   DOCUMENTOS   NF/CONTA ENERGIA EL�TRICA (C�D 06),
                 EMITIDAS EM VIA �NICA (EMPRESAS OBRIGADAS   AO   CONV�NIO   ICMS   115/03)
                 E   NOTA   FISCAL/CONTA   DE FORNECIMENTO DE G�S CANALIZADO (C�DIGO 28)

 @Author Juliana Andrade
 @Version 19/4/2009 18:56:13 �ltima altera��o por  Juliana Andrade

 @param COD_MOD     'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER         'S�rie do documento fiscal
 @param NRO_ORD_INI 'N�mero de ordem inicial
 @param NRO_ORD_FIN 'N�mero de ordem final
 @param DT_DOC_INI  'Data de emiss�o inicial dos documentos/Data inicial de vencimento da fatura
 @param DT_DOC_FIN  'Data de emiss�o final dos documentos/Data final do vencimento da fatura
 @param NOM_MEST    'Nome do arquivo Mestre de Documento Fiscal
 @param CHV_COD_DIG 'Chave de codifica��o digital  do arquivo Mestre de Documento Fiscal

 @return Caso nenhum erro encontrado retorna RegistroC700 devidamente formatado |C700| + COD_MOD + SER + NRO_ORD_INI + NRO_ORD_FIN + DT_DOC_INI + DT_DOC_FIN + NOM_MEST + CHV_COD_DIG
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC_INI
 @return '-2   Data Final Inv�lida (DDMMAAAA) :: ' + DT_DOC_FIN
 @return '-3   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroC700(COD_MOD, SER, NRO_ORD_INI, NRO_ORD_FIN, DT_DOC_INI,
                       DT_DOC_FIN, NOM_MEST, CHV_COD_DIG: String): Integer; stdcall; export;

const
 Tipo = 'C700';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,         002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoAlfa(SER,             004, 'S�rie do documento fiscal                                                                                                                                                                                                 ');
  FormatoNum (NRO_ORD_INI,     009, 'N�mero de ordem inicial                                                                                                                                                                                                   ');
  FormatoNum (NRO_ORD_FIN,     009, 'N�mero de ordem final                                                                                                                                                                                                     ');
  ddmmaaaaToSPEDDate(DT_DOC_INI);
  FormatoNum (DT_DOC_INI,      008, 'Data de emiss�o inicial dos documentos / Data inicial de vencimento da fatura                                                                                                                                             ');
  ddmmaaaaToSPEDDate(DT_DOC_FIN);
  FormatoNum (DT_DOC_FIN,      008, 'Data de emiss�o final dos documentos /Data final do vencimento da fatura                                                                                                                                                  ');
  FormatoAlfa(NOM_MEST,        015, 'Nome do arquivo Mestre de Documento Fiscal                                                                                                                                                                                ');
  FormatoAlfa(CHV_COD_DIG,     032, 'Chave de codifica��o digital  do arquivo Mestre de Documento Fiscal                                                                                                                                                       ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC_INI)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC_INI);

if not(IsSPEDDate(DT_DOC_FIN)) then
 ErroTStr.add('-2   Data Final Inv�lida (DDMMAAAA) :: ' + DT_DOC_FIN);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-3   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + SER + NRO_ORD_INI + NRO_ORD_FIN + DT_DOC_INI + DT_DOC_FIN + NOM_MEST + CHV_COD_DIG);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroC700 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 REGISTRO C790 - REGISTRO ANAL�TICO DOS DOCUMENTOS (COD 06) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS       'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1
 @param CFOP           'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2
 @param ALIQ_ICMS      'Al�quota do ICMS
 @param VL_OPR         'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_BC_ICMS     'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP, e al�quota do ICMS
 @param VL_ICMS        'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP e al�quota do ICMS
 @param VL_BC_ICMS_ST  'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST     'Valor do ICMS retido por substitui��o tribut�ria
 @param VL_RED_BC      'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param COD_OBS        'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C790|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-2   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroC790(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'C790';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2                                                                        ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                       '); // todo mudan�a do tamanho de 255 para 006
   FormatoNum (VL_OPR,            255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                                                   ');
   FormatoNum (VL_BC_ICMS,        255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP, e al�quota do ICMS                                 ');
   FormatoNum (VL_ICMS,           255, 'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP e al�quota do ICMS                                                    ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                                                               ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                                                                       ');
   FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                      ');
   FormatoAlfa(COD_OBS,           006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  '); // todo mudan�a do tamanho de 255 para 006

 //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

 //Teste de Integridade dos campos

 if not vCOD_CFOP(CFOP) then
  ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

 //Incremento do contador de observa��es
 if ObsTStr.count > 0 then
  Inc(RegSPED[IdxOfReg(tipo)].obs);

 //Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
  begin
   result := 0;
   Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + COD_OBS);

   //Incremento do contador de registros
   Inc(RegSPED[IdxOfReg(tipo)].ok);
  end
 else
  begin
   Trata_Erro(ErroTStr);

   //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
  end;
 end;

 //--- Teste de RegistroC790 ---
 //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 REGISTRO C791: REGISTRO DE INFORMA��ES DE ST POR UF (COD 06)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param UF            'Sigla da unidade da federa��o a que se refere a reten��o ST
 @param VL_BC_ICMS_ST 'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST    'Valor do ICMS retido por substitui��o tribut�ria

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C791|' + UF, VL_BC_ICMS_ST, VL_ICMS_ST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Unidade da Federa��o Inv�lida : ' + UF
-------------------------------------------------------------------------------}
Function RegistroC791(UF, VL_BC_ICMS_ST, VL_ICMS_ST: String): Integer; stdcall; export;

const
 Tipo = 'C791';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(UF,                002, 'Sigla da unidade da federa��o a que se refere a reten��o ST                                                                                            ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                                                               ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                                                                       ');

 //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

 //Teste de Integridade dos campos

 if not vUF(UF) then
  ErroTStr.add('-1   Unidade da Federa��o Inv�lida : ' + UF);

 //Incremento do contador de observa��es
 if ObsTStr.count > 0 then
  Inc(RegSPED[IdxOfReg(tipo)].obs);

 //Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
  begin
   result := 0;
   Trata_SPED('|' + Tipo + '|' + UF + VL_BC_ICMS_ST + VL_ICMS_ST);

   //Incremento do contador de registros
   Inc(RegSPED[IdxOfReg(tipo)].ok);
  end
 else
  begin
   Trata_Erro(ErroTStr);

   //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
  end;
 end;

  //--- Teste de RegistroC791 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro C990 --- ENCERRAMENTO DO BLOCO C ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_C       'Quantidade total de linhas do Bloco C:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|C990|' + QTD_LIN_C
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
-------------------------------------------------------------------------------}
Function RegistroC990: Integer; stdcall; export;
const
 Tipo    = 'C990';

var
 i, x: integer;
 QTD_LIN_C: String;
begin
 NaoRegistrado;
 Result := -1;

 if Testa_State(tipo) then
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('C') then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_C := inttostr(i);

   //Formata��o dos Campos
   FormatoNum (QTD_LIN_C,        255, 'Quantidade total de linhas do Bloco C:');


   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro'+ TIPO + ' chamada mais de 1(uma) vez');


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_C);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroC990 ---
//ShowMessage(Result);
end;

//----------- BLOCO D: DOCUMENTOS FISCAIS II - SERVI�OS (ICMS) -----------------

{*------------------------------------------------------------------------------
 BLOCO D: DOCUMENTOS FISCAIS II - SERVI�OS (ICMS)
 Registro D001 --- ABERTURA DO BLOCO D ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_MOV       'Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return '-2   Indicador de movimento : ' + IND_MOV
 -------------------------------------------------------------------------------}
Function RegistroD001(IND_MOV: String): Integer; stdcall; export;
const
 Tipo = 'D001';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(IND_MOV,             01, 'Indicador de movimento:                  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO + ' no arquivo do SPED : Fun��o Registro'+ TIPO + ' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroD001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D100 - NOTA FISCAL DE SERVI�O DE TRANSPORTE (C�DIGO 07)  E CONHECIMENTOS  DE TRANSPORTE RODOVI�RIO DE CARGAS (C�DIGO 08), CONHECIMENTOS DE TRANSPORTE DE CARGAS AVULSO (C�DIGO 8B), AQUAVI�RIO DE CARGAS (C�DIGO 09), A�REO (C�DIGO 10),   FERROVI�RIO   DE   CARGAS   (C�DIGO   11)   E   MULTIMODAL   DE CARGAS (C�DIGO 26),   NOTA FISCAL DE TRANSPORTE FERROVI�RIO DE   CARGA   (   C�DIGO   27)   E   CONHECIMENTO   DE   TRANSPORTE ELETR�NICO � CT-e (C�DIGO 57)

 @Author Juliana Andrade
 @Version 19/4/2009 20:35:39 �ltima altera��o por  Juliana Andrade

 @param IND_OPER    'Indicador do tipo de opera��o: 0- Aquisi��o; 1- Presta��o
 @param IND_EMIT    'Indicador do emitente do documento fiscal: 0- Emiss�o pr�pria; 1- Terceiros
 @param COD_PART    'C�digo do participante (campo 02 do Registro 0150): - do prestador de servi�o, no caso de aquisi��o de servi�o; - do tomador do servi�o, no caso de presta��o de servi�os.
 @param COD_MOD     'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param COD_SIT     'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2
 @param SER         'S�rie do documento fiscal
 @param SUB         'Subs�rie do documento fiscal
 @param NUM_DOC     'N�mero do documento fiscal
 @param CHV_CTE     'Chave do Conhecimento de Transporte Eletr�nico
 @param DT_DOC      'Data da emiss�o do documento fiscal
 @param DT_A_P      'Data da aquisi��o ou da presta��o do servi�o
 @param TP_CT_E     'Tipo de Conhecimento de Transporte Eletr�nico conforme definido no Manual de Integra��o do CT-e
 @param CHV_CTE_REF 'Chave do CT-e de refer�ncia cujos valores foram complementados (op��o �1� do campo anterior) ou cujo d�bito foi anulado(op��o �2� do campo anterior).
 @param VL_DOC      'Valor total do documento fiscal
 @param VL_DESC     'Valor total do desconto
 @param IND_FRT     'Indicador do tipo do frete: 0- Por conta de terceiros; 1- Por conta do emitente; 2- Por conta do destinat�rio; 9- Sem frete
 @param VL_SERV     'Valor total da presta��o de servi�o
 @param VL_BC_ICMS  'Valor da base de c�lculo do ICMS
 @param VL_ICMS     'Valor do ICMS
 @param VL_NT       'Valor n�o-tributado
 @param COD_INF     'C�digo da informa��o complementar do documento fiscal (campo 02 do Registro 0450)
 @param COD_CTA     'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroD100 devidamente formatado |D100| + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + SUB + NUM_DOC + CHV_CTE + DT_DOC + DT_A_P + TP_CT_E + CHV_CTE_REF + VL_DOC + VL_DESC + IND_FRT + VL_SERV + VL_BC_ICMS + VL_ICMS + VL_NT + COD_INF + COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   Data Final Inv�lida (DDMMAAAA) :: ' + DT_A_P
 @return '-3   Indicador do tipo de frete invaido : ' + IND_FRT
 @return '-4   Indicador do tipo de opera��o : ' + IND_OPER
 @return '-5   Indicador do emitente do documento fiscal: ' + IND_EMIT
 @return '-6   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD100(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC, CHV_CTE,
                       DT_DOC, DT_A_P, TP_CT_E, CHV_CTE_REF, VL_DOC, VL_DESC, IND_FRT, VL_SERV,
                       VL_BC_ICMS, VL_ICMS, VL_NT, COD_INF, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'D100';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(IND_OPER,        001, 'Indicador do tipo de opera��o: 0- Aquisi��o; 1- Presta��o                                                                                                                                                                 ');
  FormatoAlfa(IND_EMIT,        001, 'Indicador do emitente do documento fiscal: 0- Emiss�o pr�pria; 1- Terceiros                                                                                                                                               ');
  FormatoAlfa(COD_PART,        060, 'C�digo do participante (campo 02 do Registro 0150): - do prestador de servi�o, no caso de aquisi��o de servi�o; - do tomador do servi�o, no caso de presta��o de servi�os.                                                ');
  FormatoAlfa(COD_MOD,         002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoNum (COD_SIT,         002, 'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2                                                                                                                                                           ');
  FormatoAlfa(SER,             004, 'S�rie do documento fiscal                                                                                                                                                                                                 ');
  FormatoAlfa(SUB,             003, 'Subs�rie do documento fiscal                                                                                                                                                                                              ');
  FormatoNum (NUM_DOC,         009, 'N�mero do documento fiscal                                                                                                                                                                                                ');
  FormatoNum (CHV_CTE,         044, 'Chave do Conhecimento de Transporte Eletr�nico                                                                                                                                                                            ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,          008, 'Data da emiss�o do documento fiscal                                                                                                                                                                                       ');
  ddmmaaaaToSPEDDate(DT_A_P);
  FormatoNum (DT_A_P,          008, 'Data da aquisi��o ou da presta��o do servi�o                                                                                                                                                                              ');
  FormatoNum (TP_CT_E,         001, 'Tipo de Conhecimento de Transporte Eletr�nico conforme definido no Manual de Integra��o do CT-e                                                                                                                           ');
  FormatoNum (CHV_CTE_REF,     044, 'Chave do CT-e de refer�ncia cujos valores foram complementados (op��o �1� do campo anterior) ou cujo d�bito foi anulado(op��o �2� do campo anterior).                                                                     ');
  FormatoNum (VL_DOC,          255, 'Valor total do documento fiscal                                                                                                                                                                                           ');
  FormatoNum (VL_DESC,         255, 'Valor total do desconto                                                                                                                                                                                                   ');
  FormatoAlfa(IND_FRT,         001, 'Indicador do tipo do frete: 0- Por conta de terceiros; 1- Por conta do emitente; 2- Por conta do destinat�rio; 9- Sem frete                                                                                               ');
  FormatoNum (VL_SERV,         255, 'Valor total da presta��o de servi�o                                                                                                                                                                                       ');
  FormatoNum (VL_BC_ICMS,      255, 'Valor da base de c�lculo do ICMS                                                                                                                                                                                          ');
  FormatoNum (VL_ICMS,         255, 'Valor do ICMS                                                                                                                                                                                                             ');
  FormatoNum (VL_NT,           255, 'Valor n�o-tributado                                                                                                                                                                                                       ');
  FormatoAlfa(COD_INF,         006, 'C�digo da informa��o complementar do documento fiscal (campo 02 do Registro 0450)                                                                                                                                         ');
  FormatoAlfa(COD_CTA,         255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                                                                                                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

 if not(IsSPEDDate(DT_DOC)) then
  ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC);

 if not(IsSPEDDate(DT_A_P)) then
  ErroTStr.add('-2   Data Final Inv�lida (DDMMAAAA) :: ' + DT_A_P);

 if not vInd_tipo_frete(IND_FRT) then
  ErroTStr.add('-3   Indicador do tipo de frete invaido : ' + IND_FRT);

 if not vIND_OPER(IND_OPER) then
  ErroTStr.add('-4   Indicador do tipo de opera��o : ' + IND_OPER);

 if not vInd_emitente_documento_fiscal(IND_EMIT) then
  ErroTStr.add('-5   Indicador do emitente do documento fiscal: ' + IND_EMIT);

 if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
  ErroTStr.add('-6   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


//Incremento do contador de observa��es
 if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + SUB + NUM_DOC + CHV_CTE + DT_DOC + DT_A_P + TP_CT_E + CHV_CTE_REF + VL_DOC + VL_DESC + IND_FRT + VL_SERV + VL_BC_ICMS + VL_ICMS + VL_NT + COD_INF + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD100 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D110 - ITENS DO DOCUMENTO - NOTA FISCAL DE SERVI�OS DE TRANSPORTE (C�DIGO 07)

 @Author Juliana Andrade
 @Version 19/4/2009 21:04:08 �ltima altera��o por  Juliana Andrade

 @param NUM_ITEM 'N�mero seq�encial do item no documento fiscal
 @param COD_ITEM 'C�digo do item (campo 02 do Registro 0200)
 @param VL_SERV  'Valor do servi�o
 @param VL_OUT   'Outros valores

 @return Caso nenhum erro encontrado retorna RegistroD110 devidamente formatado |D110| + NUM_ITEM + COD_ITEM + VL_SERV + VL_OUT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD110(NUM_ITEM, COD_ITEM, VL_SERV, VL_OUT: String): Integer; stdcall; export;

const
 Tipo = 'D110';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_ITEM,     003, 'N�mero seq�encial do item no documento fiscal                                                                                                                                                                             ');
  FormatoAlfa(COD_ITEM,     060, 'C�digo do item (campo 02 do Registro 0200)                                                                                                                                                                                ');
  FormatoNum (VL_SERV,      255, 'Valor do servi�o                                                                                                                                                                                                          ');
  FormatoNum (VL_OUT,       255, 'Outros valores                                                                                                                                                                                                            ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_ITEM + COD_ITEM + VL_SERV + VL_OUT);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD110 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D120 - COMPLEMENTO DA NOTA FISCAL DE SERVI�OS DE TRANSPORTE (C�DIGO 07)

 @Author Juliana Andrade
 @Version 19/4/2009 21:46:22 �ltima altera��o por  Juliana Andrade

 @param COD_MUN_ORIG 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param COD_MUN_DEST 'C�digo do munic�pio de destino, conforme a tabela IBGE
 @param VEIC_ID      'Placa de identifica��o do ve�culo
 @param UF_ID        'Sigla da UF da placa do ve�culo

 @return Caso nenhum erro encontrado retorna RegistroD120 devidamente formatado |D120| + COD_MUN_ORIG + COD_MUN_DEST + VEIC_ID + UF_ID
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD120(COD_MUN_ORIG, COD_MUN_DEST, VEIC_ID, UF_ID: String): Integer; stdcall; export;

const
 Tipo = 'D120';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (COD_MUN_ORIG,     007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE                                                                                                                                                          ');
  FormatoNum (COD_MUN_DEST,     007, 'C�digo do munic�pio de destino, conforme a tabela IBGE                                                                                                                                                                    ');
  FormatoAlfa(VEIC_ID,          007, 'Placa de identifica��o do ve�culo                                                                                                                                                                                         ');
  FormatoAlfa(UF_ID,            002, 'Sigla da UF da placa do ve�culo                                                                                                                                                                                           ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MUN_ORIG + COD_MUN_DEST + VEIC_ID + UF_ID);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD120 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro D130: COMPLEMENTO DO CONHECIMENTO RODOVI�RIO DE CARGAS (C�DIGO 08) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART_CONSG 'C�digo do participante (campo 02 do Registro 0150) - consignat�rio, se houver
 @param COD_PART_RED   'C�digo do participante (campo 02 do Registro 0150)- redespachado, se houver
 @param IND_FRT_RED    'Indicador do tipo do frete da opera��o de redespacho:
 @param COD_MUN_ORIG   'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param COD_MUN_DEST   'C�digo do munic�pio de destino, conforme a tabela IBGE
 @param VEIC_ID        'Placa de identifica��o do ve�culo
 @param VL_LIQ_FRT     'Valor l�quido do frete
 @param VL_SEC_CAT     'Soma de valores de Sec/Cat (servi�os de coleta/custo adicional de transporte)
 @param VL_DESP        'Soma de valores de despacho
 @param VL_PEDG        'Soma dos valores de ped�gio
 @param VL_OUT         'Outros valores
 @param VL_FRT         'Valor total do frete
 @param UF_ID          'Sigla da UF da placa do ve�culo

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D130|' + COD_PART_CONSG, COD_PART_RED, IND_FRT_RED, COD_MUN_ORIG, COD_MUN_DEST, VEIC_ID, VL_LIQ_FRT, VL_SEC_CAT, VL_DESP, VL_PEDG, VL_OUT, VL_FRT, UF_ID
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Unidade da Federa��o Inv�lida : ' + UF_ID
 @return '-2   Indicador do tipo do frete da opera��o de redespacho inv�lido: ' + IND_FRT_RED
 -------------------------------------------------------------------------------}
 Function RegistroD130(COD_PART_CONSG, COD_PART_RED, IND_FRT_RED, COD_MUN_ORIG, COD_MUN_DEST,
                        VEIC_ID, VL_LIQ_FRT, VL_SEC_CAT, VL_DESP, VL_PEDG, VL_OUT, VL_FRT, UF_ID: String): Integer; stdcall; export;

const
 Tipo = 'D130';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_PART_CONSG,     060, 'C�digo do participante (campo 02 do Registro 0150): consignat�rio, se houver                                                                           '); // todo mudan�a do tamanho de 255 para 060 e descri��o
   FormatoAlfa(COD_PART_RED,       060, 'C�digo do participante (campo 02 do Registro 0150): redespachado, se houver                                                                            '); // todo mudan�a do tamanho de 255 para 060 e descri��o
   FormatoAlfa(IND_FRT_RED,        001, 'Indicador do tipo do frete da opera��o de redespacho:                                                                                                  ');
   FormatoNum (COD_MUN_ORIG,       007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE                                                                                       ');
   FormatoNum (COD_MUN_DEST,       007, 'C�digo do munic�pio de destino, conforme a tabela IBGE                                                                                                 ');
   FormatoAlfa(VEIC_ID,            007, 'Placa de identifica��o do ve�culo                                                                                                                      '); // todo mudan�a do tamanho de 255 para 007
   FormatoNum (VL_LIQ_FRT,         255, 'Valor l�quido do frete                                                                                                                                 ');
   FormatoNum (VL_SEC_CAT,         255, 'Soma de valores de Sec/Cat (servi�os de coleta/custo adicional de transporte)                                                                          ');
   FormatoNum (VL_DESP,            255, 'Soma de valores de despacho                                                                                                                            ');
   FormatoNum (VL_PEDG,            255, 'Soma dos valores de ped�gio                                                                                                                            ');
   FormatoNum (VL_OUT,             255, 'Outros valores                                                                                                                                         ');
   FormatoNum (VL_FRT,             255, 'Valor total do frete                                                                                                                                   ');
   FormatoAlfa(UF_ID,              002, 'Sigla da UF da placa do ve�culo                                                                                                                        ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

  if not vUF(UF_ID) then
    ErroTStr.add('-1   Unidade da Federa��o Inv�lida : ' + UF_ID);

  if not vIND_FRT_RED(IND_FRT_RED) then
    ErroTStr.add('-2   Indicador do tipo do frete da opera��o de redespacho: ' + IND_FRT_RED);
  
   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_PART_CONSG + COD_PART_RED + IND_FRT_RED + COD_MUN_ORIG + COD_MUN_DEST + VEIC_ID + VL_LIQ_FRT + VL_SEC_CAT + VL_DESP + VL_PEDG + VL_OUT + VL_FRT + UF_ID);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de RegistroD130 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro D140: COMPLEMENTO DO CONHECIMENTO AQUAVI�RIO DE CARGAS (C�DIGO 09) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART_CONSG    'C�digo do participante (campo 02 do Registro 0150):
 @param COD_MUN_ORIG      'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param COD_MUN_DEST      'C�digo do munic�pio de destino, conforme a tabela IBGE
 @param IND_VEIC          'Indicador do tipo do ve�culo transportador:
 @param VEIC_ID           'Identifica��o da embarca��o (IRIM ou Registro CPP)
 @param IND_NAV           'Indicador do tipo da navega��o:
 @param VIAGEM            'N�mero da viagem
 @param VL_FRT_LIQ        'Valor l�quido do frete
 @param VL_DESP_PORT      'Valor das despesas portu�rias
 @param VL_DESP_CAR_DESC  'Valor das despesas com carga e descarga
 @param VL_OUT            'Outros valores
 @param VL_FRT_BRT        'Valor bruto do frete
 @param VL_FRT_MM         'Valor adicional do frete para renova��o da Marinha Mercante

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D140|' + COD_PART_CONSG, COD_MUN_ORIG, COD_MUN_DEST, IND_VEIC, VEIC_ID, IND_NAV, VIAGEM, VL_FRT_LIQ, VL_DESP_PORT, VL_DESP_CAR_DESC, VL_OUT, VL_FRT_BRT, VL_FRT_MM
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador do tipo do ve�culo transportador inv�lido: ' + IND_VEIC
 @return '-2   Indicador do tipo da navega��o inv�lido: ' + IND_NAV
 -------------------------------------------------------------------------------}
 Function RegistroD140(COD_PART_CONSG, COD_MUN_ORIG, COD_MUN_DEST, IND_VEIC, VEIC_ID, IND_NAV, VIAGEM,
                       VL_FRT_LIQ, VL_DESP_PORT, VL_DESP_CAR_DESC, VL_OUT, VL_FRT_BRT, VL_FRT_MM: String): Integer; stdcall; export;

const
 Tipo = 'D140';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_PART_CONSG,       060, 'C�digo do participante (campo 02 do Registro 0150)- consignat�rio, se houver                                                                           '); // todo mudan�a do tamanho de 255 para 060 e descri��o
   FormatoNum (COD_MUN_ORIG,         007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE                                                                                       ');
   FormatoNum (COD_MUN_DEST,         007, 'C�digo do munic�pio de destino, conforme a tabela IBGE                                                                                                 ');
   FormatoAlfa(IND_VEIC,             001, 'Indicador do tipo do ve�culo transportador:                                                                                                            ');
   FormatoAlfa(VEIC_ID,              255, 'Identifica��o da embarca��o (IRIM ou Registro CPP)                                                                                                     ');
   FormatoAlfa(IND_NAV,              001, 'Indicador do tipo da navega��o:                                                                                                                        ');
   FormatoNum (VIAGEM,               255, 'N�mero da viagem                                                                                                                                       ');
   FormatoNum (VL_FRT_LIQ,           255, 'Valor l�quido do frete                                                                                                                                 ');
   FormatoNum (VL_DESP_PORT,         255, 'Valor das despesas portu�rias                                                                                                                          ');
   FormatoNum (VL_DESP_CAR_DESC,     255, 'Valor das despesas com carga e descarga                                                                                                                ');
   FormatoNum (VL_OUT,               255, 'Outros valores                                                                                                                                         ');
   FormatoNum (VL_FRT_BRT,           255, 'Valor bruto do frete                                                                                                                                   ');
   FormatoNum (VL_FRT_MM,            255, 'Valor adicional do frete para renova��o da Marinha Mercante                                                                                            ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vInd_tipo_veiculo_transportador(IND_VEIC) then
      ErroTStr.add('-1   Indicador do tipo do ve�culo transportador inv�lido : ' + IND_VEIC);

   if not vIND_NAV (IND_NAV) then
      ErroTStr.add('-2   Indicador do tipo da navega��o inv�lido: ' + IND_NAV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_PART_CONSG + COD_MUN_ORIG + COD_MUN_DEST + IND_VEIC + VEIC_ID + IND_NAV + VIAGEM + VL_FRT_LIQ + VL_DESP_PORT + VL_DESP_CAR_DESC + VL_OUT + VL_FRT_BRT + VL_FRT_MM);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD140 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D150 - COMPLEMENTO DO CONHECIMENTO A�REO (C�DIGO 10)

 @Author Juliana Andrade
 @Version 19/4/2009 22:01:35 �ltima altera��o por  Juliana Andrade

 @param COD_MUN_ORIG 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param COD_MUN_DEST 'C�digo do munic�pio de destino, conforme a tabela IBGE
 @param VEIC_ID      'Identifica��o da aeronave (DAC)
 @param VIAGEM       'N�mero do v�o.
 @param IND_TFA      'Indicador do tipo de tarifa aplicada: 0- Exp.; 1- Enc.; 2- C.I.; 9- Outra
 @param VL_PESO_TX   'Peso taxado
 @param VL_TX_TERR   'Valor da taxa terrestre
 @param VL_TX_RED    'Valor da taxa de redespacho
 @param VL_OUT       'Outros valores
 @param VL_TX_ADV    'Valor da taxa "ad valorem"

 @return Caso nenhum erro encontrado retorna RegistroD150 devidamente formatado |D150| + COD_MUN_ORIG + COD_MUN_DEST + VEIC_ID + VIAGEM + IND_TFA + VL_PESO_TX + VL_TX_TERR + VL_TX_RED + VL_OUT + VL_TX_ADV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador do tipo de tarifa aplicada inv�lido: ' + IND_TFA
-------------------------------------------------------------------------------}
Function RegistroD150(COD_MUN_ORIG, COD_MUN_DEST, VEIC_ID, VIAGEM, IND_TFA, VL_PESO_TX, VL_TX_TERR, VL_TX_RED, VL_OUT, VL_TX_ADV: String): Integer; stdcall; export;

const
 Tipo = 'D150';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (COD_MUN_ORIG,     007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE                                                                                                                                                          ');
  FormatoNum (COD_MUN_DEST,     007, 'C�digo do munic�pio de destino, conforme a tabela IBGE                                                                                                                                                                    ');
  FormatoAlfa(VEIC_ID,          255, 'Identifica��o da aeronave (DAC)                                                                                                                                                                                           ');
  FormatoNum (VIAGEM,           255, 'N�mero do v�o.                                                                                                                                                                                                            ');
  FormatoAlfa(IND_TFA,          001, 'Indicador do tipo de tarifa aplicada: 0- Exp.; 1- Enc.; 2- C.I.; 9- Outra                                                                                                                                                 ');
  FormatoNum (VL_PESO_TX,       255, 'Peso taxado                                                                                                                                                                                                               ');
  FormatoNum (VL_TX_TERR,       255, 'Valor da taxa terrestre                                                                                                                                                                                                   ');
  FormatoNum (VL_TX_RED,        255, 'Valor da taxa de redespacho                                                                                                                                                                                               ');
  FormatoNum (VL_OUT,           255, 'Outros valores                                                                                                                                                                                                            ');
  FormatoNum (VL_TX_ADV,        255, 'Valor da taxa "ad valorem"                                                                                                                                                                                                ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
 if not vIND_TFA (IND_TFA) then
      ErroTStr.add('-1   Indicador do tipo de tarifa aplicada inv�lido: ' + IND_TFA);
//Incremento do contador de observa��es
 if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MUN_ORIG + COD_MUN_DEST + VEIC_ID + VIAGEM + IND_TFA + VL_PESO_TX + VL_TX_TERR + VL_TX_RED + VL_OUT + VL_TX_ADV);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD150 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D160 - CARGA TRANSPORTADA (C�DIGO  08, 8B, 09, 10, 11, 26 e 27)

 @Author Juliana Andrade
 @Version 19/4/2009 22:17:29 �ltima altera��o por  Juliana Andrade

 @param DESPACHO      'Identifica��o do n�mero do despacho
 @param CNPJ_CPF_REM  'CNPJ ou CPF do remetente das mercadorias que constam na nota fiscal.
 @param IE_REM        'Inscri��o Estadual do remetente das mercadorias que constam na nota fiscal.
 @param COD_MUN_ORI   'C�digo do Munic�pio de origem, conforme tabela IBGE
 @param CNPJ_CPF_DEST 'CNPJ ou CPF do destinat�rio das mercadorias que constam na nota fiscal.
 @param IE_DEST       'Inscri��o Estadual do destinat�rio das mercadorias que constam na nota fiscal.
 @param COD_MUN_DEST  'C�digo do Munic�pio de destino, conforme tabela IBGE

 @return Caso nenhum erro encontrado retorna RegistroD160 devidamente formatado |D160| + DESPACHO + CNPJ_CPF_REM + IE_REM + COD_MUN_ORI + CNPJ_CPF_DEST + IE_DEST + COD_MUN_DEST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   CNPJ ou CPF do remetente das mercadorias que constam na nota fiscal: ' + CNPJ_CPF_REM
 @return '-2   CNPJ ou CPF do destinat�rio das mercadorias que constam na nota fiscal inv�lido : ' + CNPJ_CPF_DEST
-------------------------------------------------------------------------------}
Function RegistroD160(DESPACHO, CNPJ_CPF_REM, IE_REM, COD_MUN_ORI, CNPJ_CPF_DEST, IE_DEST, COD_MUN_DEST: String): Integer; stdcall; export;

const
 Tipo = 'D160';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(DESPACHO,          255, 'Identifica��o do n�mero do despacho                                                                                                                                                                                       ');
  FormatoNum (CNPJ_CPF_REM,      014, 'CNPJ ou CPF do remetente das mercadorias que constam na nota fiscal.                                                                                                                                                      ');
  FormatoAlfa(IE_REM,            014, 'Inscri��o Estadual do remetente das mercadorias que constam na nota fiscal.                                                                                                                                               ');
  FormatoNum (COD_MUN_ORI,       007, 'C�digo do Munic�pio de origem, conforme tabela IBGE                                                                                                                                                                       ');
  FormatoNum (CNPJ_CPF_DEST,     014, 'CNPJ ou CPF do destinat�rio das mercadorias que constam na nota fiscal.                                                                                                                                                   ');
  FormatoAlfa(IE_DEST,           014, 'Inscri��o Estadual do destinat�rio das mercadorias que constam na nota fiscal.                                                                                                                                            ');
  FormatoNum (COD_MUN_DEST,      007, 'C�digo do Munic�pio de destino, conforme tabela IBGE                                                                                                                                                                      ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
 if (not vCNPJ(CNPJ_CPF_REM) and (not vCPF(CNPJ_CPF_REM)) and (RemovenumInvalid(CNPJ_CPF_REM) <> '')) then
    ErroTStr.add('-1   CNPJ ou CPF do remetente das mercadorias que constam na nota fiscal: ' + CNPJ_CPF_REM);
 if (not vCNPJ(CNPJ_CPF_DEST) and (not vCPF(CNPJ_CPF_DEST)) and (RemovenumInvalid(CNPJ_CPF_DEST) <> '')) then
    ErroTStr.add('-2   CNPJ ou CPF do destinat�rio das mercadorias que constam na nota fiscal: ' + CNPJ_CPF_DEST);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + DESPACHO + CNPJ_CPF_REM + IE_REM + COD_MUN_ORI + CNPJ_CPF_DEST + IE_DEST + COD_MUN_DEST);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD160 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D161 - LOCAL DA COLETA E ENTREGA (C�DIGO 08, 8B, 09, 10, 11 e 26) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_CARGA     'Indicador do tipo de transporte da carga coletada:
 @param CNPJ_CPF_COL  'N�mero do CNPJ ou CPF do local da coleta
 @param IE_COL        'Inscri��o Estadual do contribuinte do local de coleta
 @param COD_MUN_COL   'C�digo do Munic�pio do local de coleta, conforme tabela IBGE
 @param CNPJ_CPF_ENTG 'N�mero do CNPJ ou CPF do local da coleta
 @param IE_ENTG       'Inscri��o Estadual do contribuinte do local de entrega
 @param COD_MUN_ENTG  'C�digo do Munic�pio do local de entrega, conforme tabela IBGE

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D161|' + IND_CARGA, CNPJ_COL, IE_COL, COD_MUN_COL, CNPJ_CPF_ENTG, IE_ENTG, COD_MUN_ENTG
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador do tipo de transporte da carga coletada : ' + IND_CARGA
 @return -3   CNPJ Inv�lido : ' + CNPJ_CPF_COL
 @return -4   C�digo do Munic�pio do local de coleta, conforme tabela IBGE : ' + COD_MUN_COL
 @return -5   N�mero do CNPJ do contribuinte do local de entrega: ' + CNPJ_CPF_ENTG
 @return -6   C�digo do Munic�pio do local de entrega, conforme tabela IBGE : ' + COD_MUN_ENTG
 -------------------------------------------------------------------------------}
Function RegistroD161(IND_CARGA, CNPJ_CPF_COL, IE_COL, COD_MUN_COL, CNPJ_CPF_ENTG, IE_ENTG, COD_MUN_ENTG: String): Integer; stdcall; export;
const
 Tipo = 'D161';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (IND_CARGA,      001, 'Indicador do tipo de transporte da carga coletada:                    ');
   FormatoAlfa(CNPJ_CPF_COL,   014, 'N�mero do CNPJ ou CPF do local da coleta                              ');
   FormatoAlfa(IE_COL,         014, 'Inscri��o Estadual do contribuinte do local de coleta                 '); // todo mudan�a no tamanho de 255 para 14
   FormatoNum (COD_MUN_COL,    007, 'C�digo do Munic�pio do local de coleta, conforme tabela IBGE          ');
   FormatoAlfa(CNPJ_CPF_ENTG,  014, 'N�mero do CNPJ ou CPF do local da coleta                              ');
   FormatoAlfa(IE_ENTG,        014, 'Inscri��o Estadual do contribuinte do local de entrega                '); // todo mudan�a no tamanho de 255 para 14
   FormatoNum (COD_MUN_ENTG,   007, 'C�digo do Munic�pio do local de entrega, conforme tabela IBGE         ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
   if not vInd_tipo_transporte_carga_coletada(IND_CARGA) then
    ErroTStr.add('-1   Indicador do tipo de transporte da carga coletada : ' + IND_CARGA);
 //  if not vInscEst(IE_COL) then
 //   ErroTStr.add('-2   Inscri��o Estadual do contribuinte do local de coleta : ' + IE_COL);
   if (not vCNPJ(CNPJ_CPF_COL)) and (RemovenumInvalid(CNPJ_CPF_COL) <> '') then
    ErroTStr.add('-3   CNPJ ou CPF Inv�lido : ' + CNPJ_CPF_COL);
   if not vCOD_Municipio(COD_MUN_COL) then
    ErroTStr.add('-4   C�digo do Munic�pio do local de coleta, conforme tabela IBGE : ' + COD_MUN_COL);
   if (not vCNPJ(CNPJ_CPF_ENTG)) and (RemovenumInvalid(CNPJ_CPF_ENTG) <> '') then
    ErroTStr.add('-5   N�mero do CNPJ do contribuinte do local de entrega: ' + CNPJ_CPF_ENTG);
   if not vCOD_Municipio(COD_MUN_ENTG) then
    ErroTStr.add('-6   C�digo do Munic�pio do local de entrega, conforme tabela IBGE : ' + COD_MUN_ENTG);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_CARGA + CNPJ_CPF_COL + IE_COL + COD_MUN_COL + CNPJ_CPF_ENTG + IE_ENTG + COD_MUN_ENTG);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroD161 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D162 - IDENTIFICA��O DOS DOCUMENTOS FISCAIS (C�DIGOS 08, 8B, 09, 10, 11, 26 E 27)

 @Author Juliana Andrade
 @Version 19/4/2009 22:22:45 �ltima altera��o por  Juliana Andrade

 @param COD_MOD  'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER      'S�rie do documento fiscal
 @param NUM_DOC  'N�mero do documento fiscal
 @param DT_DOC   'Data da emiss�o do documento fiscal
 @param VL_DOC   'Valor total do documento fiscal
 @param VL_MERC  'Valor das mercadorias constantes no documento fiscal
 @param QTD_VOL  'Quantidade de volumes transportados
 @param PESO_BRT 'Peso bruto dos volumes transportados (em Kg)
 @param PESO_LIQ 'Peso l�quido dos volumes transportados (em Kg)

 @return Caso nenhum erro encontrado retorna RegistroD162 devidamente formatado |D162| + COD_MOD + SER + NUM_DOC + DT_DOC + VL_DOC + VL_MERC + QTD_VOL + PESO_BRT + PESO_LIQ
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD162(COD_MOD, SER, NUM_DOC, DT_DOC, VL_DOC, VL_MERC, QTD_VOL, PESO_BRT, PESO_LIQ: String): Integer; stdcall; export;

const
 Tipo = 'D162';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,      002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoAlfa(SER,          004, 'S�rie do documento fiscal                                                                                                                                                                                                 ');
  FormatoNum (NUM_DOC,      009, 'N�mero do documento fiscal                                                                                                                                                                                                ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,       008, 'Data da emiss�o do documento fiscal                                                                                                                                                                                       ');
  FormatoNum (VL_DOC,       255, 'Valor total do documento fiscal                                                                                                                                                                                           ');
  FormatoNum (VL_MERC,      255, 'Valor das mercadorias constantes no documento fiscal                                                                                                                                                                      ');
  FormatoNum (QTD_VOL,      255, 'Quantidade de volumes transportados                                                                                                                                                                                       ');
  FormatoNum (PESO_BRT,     255, 'Peso bruto dos volumes transportados (em Kg)                                                                                                                                                                              ');
  FormatoNum (PESO_LIQ,     255, 'Peso l�quido dos volumes transportados (em Kg)                                                                                                                                                                            ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + SER + NUM_DOC + DT_DOC + VL_DOC + VL_MERC + QTD_VOL + PESO_BRT + PESO_LIQ);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD162 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D170 - COMPLEMENTO DO CONHECIMENTO MULTIMODAL DE CARGAS (C�DIGO 26)

 @Author Juliana Andrade
 @Version 19/4/2009 22:44:55 �ltima altera��o por  Juliana Andrade

 @param COD_PART_CONSG 'C�digo do participante (campo 02 do Registro 0150): - consignat�rio, se houver
 @param COD_PART_RED   'C�digo do participante (campo 02 do Registro 0150): - redespachante, se houver
 @param COD_MUN_ORIG   'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param COD_MUN_DEST   'C�digo do munic�pio de destino, conforme a tabela IBGE

 // todo  incluir estes campos que faltavam
 @param OTM            'Registro do operador de transporte  multimodal
 @param IND_NAT_FRT    'Indicador da natureza do frete:
 @param VL_LIQ_FRT     'Valor l�quido do frete
 @param VL_GRIS        'Valor do gris (gerenciamento de risco):
 @param VL_PDG         'Somat�rio dos valores de ped�gio:
 @param VL_OUT         'Outros valores:
 @param VL_FRT         'Valor total do frete:
 @param VEIC_ID        'Placa de identifica��o do ve�culo:
 @param UF_ID          'Sigla da UF da placa do ve�culo:



 @return Caso nenhum erro encontrado retorna RegistroD170 devidamente formatado |D170| + COD_PART_CONSG + COD_PART_RED + COD_MUN_ORIG + COD_MUN_DEST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador da natureza do frete: ' + IND_NAT_FRT
 @return '-2   Sigla da UF da placa do ve�culo: ' + UF_ID
-------------------------------------------------------------------------------}
Function RegistroD170(COD_PART_CONSG, COD_PART_RED, COD_MUN_ORIG, COD_MUN_DEST, OTM, IND_NAT_FRT,
                      VL_LIQ_FRT, VL_GRIS, VL_PDG, VL_OUT, VL_FRT, VEIC_ID, UF_ID : String): Integer; stdcall; export;   // todo alterar demo

const
 Tipo = 'D170';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_PART_CONSG,     060, 'C�digo do participante (campo 02 do Registro 0150): - consignat�rio, se houver                                         ');
  FormatoAlfa(COD_PART_RED,       060, 'C�digo do participante (campo 02 do Registro 0150): - redespachante, se houver                                         ');
  FormatoNum (COD_MUN_ORIG,       007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE                                                       ');
  FormatoNum (COD_MUN_DEST,       007, 'C�digo do munic�pio de destino, conforme a tabela IBGE                                                                 ');

  // todo  incluir estes campos que faltavam
  FormatoAlfa (OTM,               255, 'Registro do operador de transporte multimodal                                                                          ');
  FormatoAlfa (IND_NAT_FRT,       001, 'Indicador da natureza do frete:                                                                                        ');
  FormatoNum  (VL_LIQ_FRT,        255, 'Valor l�quido do frete                                                                                                 ');
  FormatoNum  (VL_GRIS,           255, 'Valor do gris (gerenciamento de risco):                                                                                ');
  FormatoNum  (VL_PDG,            255, 'Somat�rio dos valores de ped�gio:                                                                                      ');
  FormatoNum  (VL_OUT,            255, 'Outros valores:                                                                                                        ');
  FormatoNum  (VL_FRT,            255, 'Valor total do frete:                                                                                                  ');
  FormatoAlfa (VEIC_ID,           007, 'Placa de identifica��o do ve�culo:                                                                                     ');
  FormatoAlfa (UF_ID,             002, 'Sigla da UF da placa do ve�culo:                                                                                       ');



  //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vInd_natureza_frete(IND_NAT_FRT) then
    ErroTStr.add('-1   Indicador da natureza do frete: ' + IND_NAT_FRT);
if not vUF(UF_ID) then
    ErroTStr.add('-2   Sigla da UF da placa do ve�culo: ' + UF_ID);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_PART_CONSG + COD_PART_RED + COD_MUN_ORIG + COD_MUN_DEST +OTM + IND_NAT_FRT + VL_LIQ_FRT + VL_GRIS + VL_PDG + VL_OUT + VL_FRT + VEIC_ID + UF_ID );

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD170 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D180 - MODAIS (C�DIGO 26)

 @Author Juliana Andrade
 @Version 19/4/2009 22:54:03 �ltima altera��o por  Juliana Andrade

 @param NUM_SEQ        'N�mero de ordem seq�encial do modal
 @param IND_EMIT       'Indicador do emitente do documento fiscal: 0- Emiss�o pr�pria; 1- Terceiros
 @param CNPJ_CPF_EMIT  'CNPJ ou CPF do participante emitente do modal
 @param UF_EMIT        'Sigla da unidade da federa��o do participante emitente do modal
 @param IE_EMIT        'Inscri��o Estadual do participante emitente do modal

  // todo  incluir estes campos que faltavam

 @param COD_MUN_ORIG   ' C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param CNPJ_CPF_TOM   ' CNPJ/CPF do participante tomador do servi�o
 @param UF_TOM         ' Sigla da unidade da federa��o do participante tomador do servi�o
 @param IE_TOM         ' Inscri��o Estadual do participante tomador do servi�o
 @param COD_MUN_DEST   ' C�digo do munic�pio de destino, conforme a tabela IBGE(Preencher com 9999999, se Exterior)
 @param COD_MOD        ' C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER            ' S�rie do documento fiscal
 @param SUB            ' Subs�rie do documento fiscal
 @param NUM_DOC        ' N�mero do documento fiscal
 @param DT_DOC         ' Data da emiss�o do documento fiscal
 @param VL_DOC         ' Valor total do documento fiscal



 @return Caso nenhum erro encontrado retorna RegistroD180 devidamente formatado |D180| + NUM_SEQ + IND_EMIT + CNPJ_CPF_EMIT  + UF_EMIT + IE_EMIT + COD_MUN_ORIG + CNPJ_CPF_TOM + UF_TOM + IE_TOM + COD_MUN_DEST + COD_MOD + SER + SUB + NUM_DOC + DT_DOC + VL_DOC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   CNPJ ou CPF Inv�lido : ' + CNPJ_CPF_EMIT
 @return '-2   Unidade da Federa��o Inv�lida :: ' + UF_EMIT
 @return '-3   Inscri��o Estadual Inv�lida :: ' + IE_EMIT
 @return '-4   Indicador do emitente do documento fiscal: ' + IND_EMIT
 @return '-5   CNPJ ou CPF do participante tomador do servi�o Inv�lido: ' + CNPJ_CPF_TOM
 @return '-6   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD180(NUM_SEQ, IND_EMIT, CNPJ_CPF_EMIT , UF_EMIT, IE_EMIT , COD_MUN_ORIG, CNPJ_CPF_TOM , UF_TOM,
                       IE_TOM, COD_MUN_DEST, COD_MOD , SER , SUB , NUM_DOC , DT_DOC , VL_DOC: String): Integer; stdcall; export;       // todo alterar demo

const
 Tipo = 'D180';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_SEQ,            255, 'N�mero de ordem seq�encial do modal                                                                                                                                                                                       ');
  FormatoAlfa(IND_EMIT,           001, 'Indicador do emitente do documento fiscal: 0- Emiss�o pr�pria; 1- Terceiros                                                                                                                                               ');
  FormatoNum (CNPJ_CPF_EMIT,      014, 'CNPJ ou CPF do participante emitente do modal                                                                                                                                                                             ');
  FormatoAlfa(UF_EMIT,            002, 'Sigla da unidade da federa��o do participante emitente do modal                                                                                                                                                           ');
  FormatoAlfa(IE_EMIT,            014, 'Inscri��o Estadual do participante emitente do modal                                                                                                                                                                      ');

   // todo  incluir estes campos que faltavam

  FormatoNum (COD_MUN_ORIG,       007, 'C�digo do munic�pio de origem do servi�o conforme a tabela IBGE                              ');
  FormatoNum (CNPJ_CPF_TOM,       014, 'CNPJ/CPF do participante tomador do servi�o                                                  ');
  FormatoAlfa(UF_TOM,             002, 'Sigla da unidade da federa��o do participante tomador do servi�o                             ');
  FormatoAlfa(IE_TOM,             014, 'Inscri��o Estadual do participante tomador do servi�o                                        ');
  FormatoNum (COD_MUN_DEST,       007, 'C�digo do munic�pio de destino conforme a tabela IBGE(Preencher com 9999999, se Exterior)    ');
  FormatoAlfa(COD_MOD,            002, 'C�digo do modelo do documento fiscal conforme a Tabela 4.1.1                                 ');
  FormatoAlfa(SER,                004, 'S�rie do documento fiscal                                                                    ');
  FormatoNum (SUB,                003, 'Subs�rie do documento fiscal                                                                 ');
  FormatoNum (NUM_DOC,            009, 'N�mero do documento fiscal                                                                   ');
  FormatoNum (DT_DOC,             008, 'Data da emiss�o do documento fiscal                                                          ');
  FormatoNum (VL_DOC,             255, 'Valor total do documento fiscal                                                              ');


//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if (not vCNPJ(CNPJ_CPF_EMIT) and not vCPF(CNPJ_CPF_EMIT)) and (RemovenumInvalid(CNPJ_CPF_EMIT) <> '') then
 ErroTStr.add('-1   CNPJ ou CPF Inv�lido : ' + CNPJ_CPF_EMIT);

if not vUF(UF_EMIT) then
 ErroTStr.add('-2   Unidade da Federa��o Inv�lida :: ' + UF_EMIT);

if (not vInscEst(IE_EMIT, UF_EMIT)) and (not (Trim(IE_EMIT) = 'ISENTO')) then
 ErroTStr.add('-3   Inscri��o Estadual Inv�lida :: ' + IE_EMIT);

if not vInd_emitente_documento_fiscal(IND_EMIT) then
 ErroTStr.add('-4   Indicador do emitente do documento fiscal: ' + IND_EMIT);

if (not vCNPJ(CNPJ_CPF_TOM) and not vCPF(CNPJ_CPF_TOM)) and (RemovenumInvalid(CNPJ_CPF_TOM) <> '') then
 ErroTStr.add('-5   CNPJ ou CPF do participante tomador do servi�o Inv�lido: ' + CNPJ_CPF_TOM);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-6   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);



//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_SEQ + IND_EMIT + CNPJ_CPF_EMIT + UF_EMIT + IE_EMIT + COD_MUN_ORIG + CNPJ_CPF_TOM + UF_TOM + IE_TOM + COD_MUN_DEST + COD_MOD + SER + SUB + NUM_DOC + DT_DOC + VL_DOC);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD180 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro D190 - REGISTRO ANAL�TICO DOS DOCUMENTOS (C�DIGO 07, 08, 8B, 09, 10, 11, 26, 27 e 57)

 @Author Juliana Andrade
 @Version 19/4/2009 22:58:50 �ltima altera��o por  Juliana Andrade

 @param CST_ICMS   'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1
 @param CFOP       'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2
 @param ALIQ_ICMS  'Al�quota do ICMS
 @param VL_OPR     'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
 @param VL_BC_ICMS 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP, e al�quota do ICMS
 @param VL_ICMS    'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP e al�quota do ICMS
 @param VL_RED_BC  'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param COD_OBS    'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroD190 devidamente formatado |D190| + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroD190(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'D190';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (CST_ICMS,       003, 'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1                                                                                                                                                   ');
  FormatoNum (CFOP,           004, 'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2                                                                                                                                           ');
  FormatoNum (ALIQ_ICMS,      006, 'Al�quota do ICMS                                                                                                                                                                                                          ');
  FormatoNum (VL_OPR,         255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.                                                                                                                                      ');
  FormatoNum (VL_BC_ICMS,     255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP, e al�quota do ICMS                                                                                                    ');
  FormatoNum (VL_ICMS,        255, 'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP e al�quota do ICMS                                                                                                                       ');
  FormatoNum (VL_RED_BC,      255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                                                                         ');
  FormatoAlfa(COD_OBS,        006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                                                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vCOD_CFOP(CFOP) then
  ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD190 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro D300 - REGISTRO ANAL�TICO DOS BILHETES CONSOLIDADOS DE PASSAGEM RODOVI�RIO (C�DIGO 13), DE PASSAGEM AQUAVI�RIO (C�DIGO 14), DE PASSAGEM E NOTA DE BAGAGEM (C�DIGO 15) E DE PASSAGEM FERROVI�RIO (C�DIGO 16)

 @Author Juliana Andrade
 @Version 19/4/2009 23:08:14 �ltima altera��o por  Juliana Andrade

 @param COD_MOD     'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER         'S�rie do documento fiscal
 @param SUB         'Subs�rie do documento fiscal
 @param NUM_DOC_INI 'N�mero do primeiro documento fiscal emitido (mesmo modelo, s�rie e subs�rie)
 @param NUM_DOC_FIN 'N�mero do �ltimo documento fiscal emitido (mesmo modelo, s�rie e subs�rie)
 @param CST_ICMS    'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
 @param CFOP        'C�digo Fiscal de Opera��o e Presta��o conforme tabela indicada no item 4.2.2
 @param ALIQ_ICMS   'Al�quota do ICMS
 @param DT_DOC      'Data da emiss�o dos documentos fiscais
 @param VL_OPR      'Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.
 @param VL_DESC     'Valor total dos descontos
 @param VL_SERV     'Valor total da presta��o de servi�o
 @param VL_SEG      'Valor de seguro
 @param VL_OUT_DESP 'Valor de outras despesas
 @param VL_BC_ICMS  'Valor total da base de c�lculo do ICMS
 @param VL_ICMS     'Valor total do ICMS
 @param VL_RED_BC   'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
 @param COD_OBS     'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)
 @param COD_CTA     'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroD300 devidamente formatado |D300| + COD_MOD + SER + SUB + NUM_DOC_INI + NUM_DOC_FIN + CST_ICMS + CFOP + ALIQ_ICMS + DT_DOC + VL_OPR + VL_DESC + VL_SERV + VL_SEG + VL_OUT_DESP + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS + COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD300(COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, CST_ICMS, CFOP, ALIQ_ICMS, DT_DOC,
                        VL_OPR, VL_DESC, VL_SERV, VL_SEG, VL_OUT_DESP, VL_BC_ICMS, VL_ICMS, VL_RED_BC,
                        COD_OBS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'D300';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,         002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoAlfa(SER,             004, 'S�rie do documento fiscal                                                                                                                                                                                                 ');
  FormatoNum (SUB,             003, 'Subs�rie do documento fiscal                                                                                                                                                                                              ');
  FormatoNum (NUM_DOC_INI,     006, 'N�mero do primeiro documento fiscal emitido (mesmo modelo, s�rie e subs�rie)                                                                                                                                              ');
  FormatoNum (NUM_DOC_FIN,     255, 'N�mero do �ltimo documento fiscal emitido (mesmo modelo, s�rie e subs�rie)                                                                                                                                                ');
  FormatoNum (CST_ICMS,        003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                                                                                                                   ');
  FormatoNum (CFOP,            004, 'C�digo Fiscal de Opera��o e Presta��o conforme tabela indicada no item 4.2.2                                                                                                                                              ');
  FormatoNum (ALIQ_ICMS,       006, 'Al�quota do ICMS                                                                                                                                                                                                          ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,          008, 'Data da emiss�o dos documentos fiscais                                                                                                                                                                                    ');
  FormatoNum (VL_OPR,          255, 'Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.                                                                     ');
  FormatoNum (VL_DESC,         255, 'Valor total dos descontos                                                                                                                                                                                                 ');
  FormatoNum (VL_SERV,         255, 'Valor total da presta��o de servi�o                                                                                                                                                                                       ');
  FormatoNum (VL_SEG,          255, 'Valor de seguro                                                                                                                                                                                                           ');
  FormatoNum (VL_OUT_DESP,     255, 'Valor de outras despesas                                                                                                                                                                                                  ');
  FormatoNum (VL_BC_ICMS,      255, 'Valor total da base de c�lculo do ICMS                                                                                                                                                                                    ');
  FormatoNum (VL_ICMS,         255, 'Valor total do ICMS                                                                                                                                                                                                       ');
  FormatoNum (VL_RED_BC,       255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                                                                                         ');
  FormatoAlfa(COD_OBS,         006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                                                                                     ');
  FormatoAlfa(COD_CTA,         255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                                                                                                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + SER + SUB + NUM_DOC_INI + NUM_DOC_FIN + CST_ICMS + CFOP + ALIQ_ICMS + DT_DOC + VL_OPR + VL_DESC + VL_SERV + VL_SEG + VL_OUT_DESP + VL_BC_ICMS + VL_ICMS + VL_RED_BC + COD_OBS + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD300 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D301 - DOCUMENTOS CANCELADOS DOS BILHETES DE PASSAGEM RODOVI�RIO (C�DIGO 13), DE PASSAGEM AQUAVI�RIO (C�DIGO 14), DE PASSAGEM E NOTA DE BAGAGEM (C�DIGO 15) E DE PASSAGEM FERROVI�RIO (C�DIGO 16) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_DOC_CANC N�mero do documento fiscal cancelado

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D301|' + NUM_DOC_CANC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD301(NUM_DOC_CANC: String): Integer; stdcall; export;

const
 Tipo = 'D301';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (NUM_DOC_CANC,     255, 'N�mero do documento fiscal cancelado                                                                                                                   ');

 //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

 //Teste de Integridade dos campos

 //Incremento do contador de observa��es
 if ObsTStr.count > 0 then
  Inc(RegSPED[IdxOfReg(tipo)].obs);

 //Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
  begin
   result := 0;
   Trata_SPED('|' + Tipo + '|' + NUM_DOC_CANC);

 //Incremento do contador de registros
   Inc(RegSPED[IdxOfReg(tipo)].ok);
  end
 else
  begin
   Trata_Erro(ErroTStr);

   //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
  end;
 end;

  //--- Teste de RegistroD301 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D310 - COMPLEMENTO DOS BILHETES (C�DIGO 13, 14, 15 E 16)

 @Author Juliana Andrade
 @Version 19/4/2009 23:13:53 �ltima altera��o por  Juliana Andrade

 @param COD_MUN_ORIG 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param VL_SERV      'Valor total da presta��o de servi�o
 @param VL_BC_ICMS   'Valor total da base de c�lculo do ICMS
 @param VL_ICMS      'Valor total do ICMS

 @return Caso nenhum erro encontrado retorna RegistroD310 devidamente formatado |D310| + COD_MUN_ORIG + VL_SERV + VL_BC_ICMS + VL_ICMS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE : ' + COD_MUN_ORIG
-------------------------------------------------------------------------------}
Function RegistroD310(COD_MUN_ORIG, VL_SERV, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; export;

const
 Tipo = 'D310';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (COD_MUN_ORIG,     007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE                                                                                                                                                          ');
  FormatoNum (VL_SERV,          255, 'Valor total da presta��o de servi�o                                                                                                                                                                                       ');
  FormatoNum (VL_BC_ICMS,       255, 'Valor total da base de c�lculo do ICMS                                                                                                                                                                                    ');
  FormatoNum (VL_ICMS,          255, 'Valor total do ICMS                                                                                                                                                                                                       ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
 if not vCOD_Municipio(COD_MUN_ORIG) then
   ErroTStr.add('-1   C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE : ' + COD_MUN_ORIG);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MUN_ORIG + VL_SERV + VL_BC_ICMS + VL_ICMS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD310 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D350 - EQUIPAMENTO ECF (C�DIGOS 2E, 13, 14, 15 e 16)

 @Author Juliana Andrade
 @Version 19/4/2009 23:21:25 �ltima altera��o por  Juliana Andrade

 @param COD_MOD 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param ECF_MOD 'Modelo do equipamento
 @param ECF_FAB 'N�mero de s�rie de fabrica��o do ECF
 @param ECF_CX  'N�mero do caixa atribu�do ao ECF

 @return Caso nenhum erro encontrado retorna RegistroD350 devidamente formatado |D350| + COD_MOD + ECF_MOD + ECF_FAB + ECF_CX
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD350(COD_MOD, ECF_MOD, ECF_FAB, ECF_CX: String): Integer; stdcall; export;

const
 Tipo = 'D350';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,     002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoAlfa(ECF_MOD,     020, 'Modelo do equipamento                                                                                                                                                                                                     ');
  FormatoAlfa(ECF_FAB,     020, 'N�mero de s�rie de fabrica��o do ECF                                                                                                                                                                                      ');
  FormatoNum (ECF_CX,      003, 'N�mero do caixa atribu�do ao ECF                                                                                                                                                                                          ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-1   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + ECF_MOD + ECF_FAB + ECF_CX);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD350 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D355: - REDU��O Z (C�DIGOS 2E, 13, 14, 15 e 16) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param DT_DOC       'Data do movimento a que se refere a Redu��o Z
 @param CRO          'Posi��o do Contador de Rein�cio de Opera��o
 @param CRZ          'Posi��o do Contador de Redu��o Z
 @param NUM_COO_FIN  'N�mero do Contador de Ordem de Opera��o do �ltimo documento emitido no dia. (N�mero do COO na Redu��o Z)
 @param GT_FIN       'Valor do Grande Total final
 @param VL_BRT       'Valor da venda bruta

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D355|' + DT_DOC, CRO, CRZ, NUM_COO_FIN, GT_FIN, VL_BRT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
-------------------------------------------------------------------------------}
Function RegistroD355(DT_DOC, CRO, CRZ, NUM_COO_FIN, GT_FIN, VL_BRT: String): Integer; stdcall; export;

const
 Tipo = 'D355';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,          008, 'Data do movimento a que se refere a Redu��o Z                                                                                                          ');
   FormatoNum (CRO,             003, 'Posi��o do Contador de Rein�cio de Opera��o                                                                                                            ');
   FormatoNum (CRZ,             006, 'Posi��o do Contador de Redu��o Z                                                                                                                       '); // todo mudan�a do tamanha de 255 para 006
   FormatoNum (NUM_COO_FIN,     006, 'N�mero do Contador de Ordem de Opera��o do �ltimo documento emitido no dia. (N�mero do COO na Redu��o Z)                                               '); // todo mudan�a do tamanha de 255 para 006
   FormatoNum (GT_FIN,          255, 'Valor do Grande Total final                                                                                                                            ');
   FormatoNum (VL_BRT,          255, 'Valor da venda bruta                                                                                                                                   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + DT_DOC + CRO + CRZ + NUM_COO_FIN + GT_FIN + VL_BRT);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD355 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D360 - PIS E COFINS TOTALIZADOS NO DIA (C�DIGOS 2E, 13, 14, 15 e 16)

 @Author Juliana Andrade
 @Version 19/4/2009 23:24:31 �ltima altera��o por  Juliana Andrade

 @param VL_PIS    'Valor total do PIS
 @param VL_COFINS 'Valor total da COFINS

 @return Caso nenhum erro encontrado retorna RegistroD360 devidamente formatado |D360| + VL_PIS + VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD360(VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'D360';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (VL_PIS,        255, 'Valor total do PIS                                                                                                                                                                                                        ');
  FormatoNum (VL_COFINS,     255, 'Valor total da COFINS                                                                                                                                                                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + VL_PIS + VL_COFINS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD360 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D365: REGISTRO DOS TOTALIZADORES PARCIAIS DA REDU��O Z (C�DIGOS 2E, 13, 14, 15 e 16) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_TOT_PAR   'C�digo do totalizador, conforme Tabela 4.4.6
 @param VLR_ACUM_TOT 'Valor acumulado no totalizador, relativo � respectiva Redu��o Z.
 @param NR_TOT       'N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.
 @param DESCR_NR_TOT 'Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D365|' + COD_TOT_PAR, VLR_ACUM_TOT, NR_TOT, DESCR_NR_TOT
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD365(COD_TOT_PAR, VLR_ACUM_TOT, NR_TOT, DESCR_NR_TOT: String): Integer; stdcall; export;

const
 Tipo = 'D365';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_TOT_PAR,      007, 'C�digo do totalizador, conforme Tabela 4.4.6                                                                                                           '); // todo mudan�a do tamanha de 255 para 007
   FormatoNum (VLR_ACUM_TOT,     255, 'Valor acumulado no totalizador, relativo � respectiva Redu��o Z.                                                                                       ');
   FormatoNum (NR_TOT,           002, 'N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva.                                                        ');
   FormatoAlfa(DESCR_NR_TOT,     255, 'Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.                       ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_TOT_PAR + VLR_ACUM_TOT + NR_TOT + DESCR_NR_TOT);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD365 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D370 - COMPLEMENTO   DOS   DOCUMENTOS   INFORMADOS (C�DIGOS 13, 14, 15 e 16 e 2E)

 @Author Juliana Andrade
 @Version 19/4/2009 23:28:36 �ltima altera��o por  Juliana Andrade

 @param COD_MUN_ORIG 'C�digo   do  munic�pio   de   origem  do   servi�o, conforme a tabela IBGE
 @param VL_SERV      'Valor total da presta��o de servi�o
 @param QTD_BILH     'Quantidade de bilhetes emitidos
 @param VL_BC_ICMS   'Valor total da base de c�lculo do ICMS
 @param VL_ICMS      'Valor total do ICMS

 @return Caso nenhum erro encontrado retorna RegistroD370 devidamente formatado |D370| + COD_MUN_ORIG + VL_SERV + QTD_BILH + VL_BC_ICMS + VL_ICMS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD370(COD_MUN_ORIG, VL_SERV, QTD_BILH, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; export;

const
 Tipo = 'D370';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (COD_MUN_ORIG,     007, 'C�digo   do  munic�pio   de   origem  do   servi�o, conforme a tabela IBGE                                                                                                                                                ');
  FormatoNum (VL_SERV,          255, 'Valor total da presta��o de servi�o                                                                                                                                                                                       ');
  FormatoNum (QTD_BILH,         255, 'Quantidade de bilhetes emitidos                                                                                                                                                                                           ');
  FormatoNum (VL_BC_ICMS,       255, 'Valor total da base de c�lculo do ICMS                                                                                                                                                                                    ');
  FormatoNum (VL_ICMS,          255, 'Valor total do ICMS                                                                                                                                                                                                       ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MUN_ORIG + VL_SERV + QTD_BILH + VL_BC_ICMS + VL_ICMS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD370 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D390: REGISTRO ANAL�TICO DO MOVIMENTO DI�RIO (C�DIGOS 13, 14, 15, 16 E 2E) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS     'C�digo da Situa��o Tribut�ria conforme a Tabela indicada no item 4.3.1.
 @param CFOP         'C�digo Fiscal de Opera��o e Presta��o
 @param ALIQ_ICMS    'Al�quota do ICMS
 @param VL_OPR       'Valor da opera��o correspondente � combina��o de CST_ICMS CFOP e al�quota do ICMS inclu�das as despesas acess�rias e acr�scimos
 @param VL_BC_ISSQN  'Valor da base de c�lculo do ISSQN
 @param ALIQ_ISSQN   'Al�quota do ISSQN
 @param VL_ISSQN     'Valor do ISSQN
 @param VL_BC_ICMS   'Base de c�lculo do ICMS acumulada relativa � al�quota informada
 @param VL_ICMS      'Valor do ICMS acumulado relativo � al�quota informada
 @param COD_OBS      'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D390|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ISSQN, ALIQ_ISSQN, VL_ISSQN, VL_BC_ICMS, VL_ICMS, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroD390(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ISSQN, ALIQ_ISSQN, VL_ISSQN, VL_BC_ICMS, VL_ICMS, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'D390';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,        003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.                                                                               ');
   FormatoNum (CFOP,            004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                                  ');
   FormatoNum (ALIQ_ICMS,       006, 'Al�quota do ICMS                                                                                                                                       '); // todo mudan�a do tamanha de 255 para 006
   FormatoNum (VL_OPR,          255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos                     ');
   FormatoNum (VL_BC_ISSQN,     255, 'Valor da base de c�lculo do ISSQN                                                                                                                      ');
   FormatoNum (ALIQ_ISSQN,      006, 'Al�quota do ISSQN                                                                                                                                      '); // todo mudan�a do tamanha de 255 para 006
   FormatoNum (VL_ISSQN,        255, 'Valor do ISSQN                                                                                                                                         ');
   FormatoNum (VL_BC_ICMS,      255, 'Base de c�lculo do ICMS acumulada relativa � al�quota informada                                                                                        ');
   FormatoNum (VL_ICMS,         255, 'Valor do ICMS acumulado relativo � al�quota informada                                                                                                  ');
   FormatoAlfa(COD_OBS,         006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  '); // todo mudan�a do tamanha de 255 para 006

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ISSQN + ALIQ_ISSQN + VL_ISSQN + VL_BC_ICMS + VL_ICMS + COD_OBS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD390 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro D400 - RESUMO DE MOVIMENTO DI�RIO - RMD (C�DIGO 18)

 @Author Juliana Andrade
 @Version 19/4/2009 23:31:59 �ltima altera��o por  Juliana Andrade

 @param COD_PART   'C�digo do participante (campo 02 do Registro 0150): - ag�ncia, filial ou posto
 @param COD_MOD    'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param COD_SIT    'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2
 @param SER        'S�rie do documento fiscal
 @param SUB        'Subs�rie do documento fiscal
 @param NUM_DOC    'N�mero do documento fiscal resumo.
 @param DT_DOC     'Data da emiss�o do documento fiscal
 @param VL_DOC     'Valor total do documento fiscal
 @param VL_DESC    'Valor acumulado dos descontos
 @param VL_SERV    'Valor acumulado da presta��o de servi�o
 @param VL_BC_ICMS 'Valor total da base de c�lculo do ICMS
 @param VL_ICMS    'Valor total do ICMS
 @param VL_PIS     'Valor do PIS
 @param VL_COFINS  'Valor da COFINS
 @param COD_CTA    'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroD400 devidamente formatado |D400| + COD_PART + COD_MOD + COD_SIT + SER + SUB + NUM_DOC + DT_DOC + VL_DOC + VL_DESC + VL_SERV + VL_BC_ICMS + VL_ICMS + VL_PIS + VL_COFINS + COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC
 @return '-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD400(COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC, DT_DOC, VL_DOC, VL_DESC,
                      VL_SERV, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'D400';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_PART,       060, 'C�digo do participante (campo 02 do Registro 0150): - ag�ncia, filial ou posto                                                                                                                                            ');
  FormatoAlfa(COD_MOD,        002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                                                                                             ');
  FormatoNum (COD_SIT,        002, 'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2                                                                                                                                                           ');
  FormatoAlfa(SER,            004, 'S�rie do documento fiscal                                                                                                                                                                                                 ');
  FormatoNum (SUB,            003, 'Subs�rie do documento fiscal                                                                                                                                                                                              ');
  FormatoNum (NUM_DOC,        006, 'N�mero do documento fiscal resumo.                                                                                                                                                                                        ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,         008, 'Data da emiss�o do documento fiscal                                                                                                                                                                                       ');
  FormatoNum (VL_DOC,         255, 'Valor total do documento fiscal                                                                                                                                                                                           ');
  FormatoNum (VL_DESC,        255, 'Valor acumulado dos descontos                                                                                                                                                                                             ');
  FormatoNum (VL_SERV,        255, 'Valor acumulado da presta��o de servi�o                                                                                                                                                                                   ');
  FormatoNum (VL_BC_ICMS,     255, 'Valor total da base de c�lculo do ICMS                                                                                                                                                                                    ');
  FormatoNum (VL_ICMS,        255, 'Valor total do ICMS                                                                                                                                                                                                       ');
  FormatoNum (VL_PIS,         255, 'Valor do PIS                                                                                                                                                                                                              ');
  FormatoNum (VL_COFINS,      255, 'Valor da COFINS                                                                                                                                                                                                           ');
  FormatoAlfa(COD_CTA,        255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                                                                                                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_DOC)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_DOC);

if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_PART + COD_MOD + COD_SIT + SER + SUB + NUM_DOC + DT_DOC + VL_DOC + VL_DESC + VL_SERV + VL_BC_ICMS + VL_ICMS + VL_PIS + VL_COFINS + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD400 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D410: DOCUMENTOS INFORMADOS (C�DIGOS 13, 14, 15 E 16)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_MOD      'C�digo do modelo do documento fiscal  conforme a Tabela 4.1.1
 @param SER          'S�rie do documento fiscal
 @param SUB          'Subs�rie do documento fiscal
 @param NUM_DOC_INI  'N�mero do documento fiscal inicial (mesmo modelo s�rie e subs�rie)
 @param NUM_DOC_FIN  'N�mero do documento fiscal final(mesmo modelo s�rie e subs�rie)
 @param DT_DOC       'Data da emiss�o dos documentos fiscais
 @param CST_ICMS     'C�digo da Situa��o Tribut�ria conforme a Tabela indicada no item 4.3.1
 @param CFOP         'C�digo Fiscal de Opera��o e Presta��o
 @param ALIQ_ICMS    'Al�quota do ICMS
 @param VL_OPR       'Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS CFOP e al�quota do ICMS inclu�das as despesas acess�rias e acr�scimos.
 @param VL_DESC      'Valor acumulado dos descontos
 @param VL_SERV      'Valor acumulado da presta��o de servi�o
 @param VL_BC_ICMS   'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS      'Valor acumulado do ICMS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D410|' + COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, DT_DOC, CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_DESC, VL_SERV, VL_BC_ICMS, VL_ICMS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
 @return -2   C�digo do modelo do documento fiscal , conforme a Tabela 4.1.1 ' + COD_MOD
 @return -3   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
-------------------------------------------------------------------------------}
Function RegistroD410(COD_MOD, SER, SUB, NUM_DOC_INI, NUM_DOC_FIN, DT_DOC, CST_ICMS, CFOP, ALIQ_ICMS,
                       VL_OPR, VL_DESC, VL_SERV, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; export;

const
 Tipo = 'D410';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_MOD,         002, 'C�digo do modelo do documento fiscal , conforme a Tabela 4.1.1                                                                                         ');
  FormatoAlfa(SER,             004, 'S�rie do documento fiscal                                                                                                                              '); // todo mudan�a do tamanha de 255 para 004
  FormatoNum (SUB,             003, 'Subs�rie do documento fiscal                                                                                                                           '); // todo mudan�a do tamanha de 255 para 003
  FormatoNum (NUM_DOC_INI,     006, 'N�mero do documento fiscal inicial (mesmo modelo, s�rie e subs�rie)                                                                                    '); // todo mudan�a do tamanha de 255 para 006
  FormatoNum (NUM_DOC_FIN,     255, 'N�mero do documento fiscal final(mesmo modelo, s�rie e subs�rie)                                                                                       ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,          008, 'Data da emiss�o dos documentos fiscais                                                                                                                 ');
  FormatoNum (CST_ICMS,        003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                                                ');
  FormatoNum (CFOP,            004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                                  ');
  FormatoNum (ALIQ_ICMS,       006, 'Al�quota do ICMS                                                                                                                                       '); // todo mudan�a do tamanha de 255 para 006
  FormatoNum (VL_OPR,          255, 'Valor total acumulado das opera��es correspondentes � combina��o de CST_ICMS, CFOP e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos.  ');
  FormatoNum (VL_DESC,         255, 'Valor acumulado dos descontos                                                                                                                          ');
  FormatoNum (VL_SERV,         255, 'Valor acumulado da presta��o de servi�o                                                                                                                ');
  FormatoNum (VL_BC_ICMS,      255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                             ');
  FormatoNum (VL_ICMS,         255, 'Valor acumulado do ICMS                                                                                                                                ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

 if not vCOD_CFOP(CFOP) then
   ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

 if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
   ErroTStr.add('-2   C�digo do modelo do documento fiscal , conforme a Tabela 4.1.1 ' + COD_MOD);

  if not IsSPEDDate(DT_DOC) then
   ErroTStr.add('-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MOD + SER + SUB + NUM_DOC_INI + NUM_DOC_FIN + DT_DOC + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_DESC + VL_SERV + VL_BC_ICMS + VL_ICMS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD410 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D411: DOCUMENTOS CANCELADOS DOS DOCUMENTOS INFORMADOS (C�DIGOS 13, 14, 15 E 16)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_DOC_CANC 'N�mero do documento fiscal cancelado

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D411|' + NUM_DOC_CANC
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroD411(NUM_DOC_CANC: String): Integer; stdcall; export;

const
 Tipo = 'D411';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_DOC_CANC,     255, 'N�mero do documento fiscal cancelado                                                                                                                   ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_DOC_CANC);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD411 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D420: COMPLEMENTO DOS DOCUMENTOS INFORMADOS(C�DIGOS 13, 14, 15 E 16)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_MUN_ORIG 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE
 @param VL_SERV      'Valor total da presta��o de servi�o
 @param VL_BC_ICMS   'Valor total da base de c�lculo do ICMS
 @param VL_ICMS      'Valor total do ICMS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D420|' + COD_MUN_ORIG, VL_SERV, VL_BC_ICMS, VL_ICMS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE : ' + COD_MUN_ORIG
-------------------------------------------------------------------------------}
Function RegistroD420(COD_MUN_ORIG, VL_SERV, VL_BC_ICMS, VL_ICMS: String): Integer; stdcall; export;

const
 Tipo = 'D420';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (COD_MUN_ORIG,     007, 'C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE  ');
  FormatoNum (VL_SERV,          255, 'Valor total da presta��o de servi�o                               ');
  FormatoNum (VL_BC_ICMS,       255, 'Valor total da base de c�lculo do ICMS                            ');
  FormatoNum (VL_ICMS,          255, 'Valor total do ICMS                                               ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

  if not vCOD_Municipio(COD_MUN_ORIG) then
   ErroTStr.add('-1   C�digo do munic�pio de origem do servi�o, conforme a tabela IBGE : ' + COD_MUN_ORIG);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_MUN_ORIG + VL_SERV + VL_BC_ICMS + VL_ICMS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD420 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D500: NOTA FISCAL DE SERVI�O DE COMUNICA��O (C�DIGO 21) E NOTA FISCAL DE SERVI�O DE TELECOMUNICA��O (C�DIGO 22)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_OPER    'Indicador do tipo de opera��o:
 @param IND_EMIT    'Indicador do emitente do documento fiscal:
 @param COD_PART    'C�digo do participante (campo 02 do Registro 0150):
 @param COD_MOD     'C�digo do modelo do documento fiscal conforme a Tabela 4.1.1
 @param COD_SIT     '��digo da situa��o do documento fiscal conforme a Tabela 4.1.2
 @param SER         'S�rie do documento fiscal
 @param SUB         'Subs�rie do documento fiscal
 @param NUM_DOC     'N�mero do documento fiscal
 @param DT_DOC      'Data da emiss�o do documento fiscal
 @param DT_A_P      'Data da entrada (aquisi��o) ou da sa�da (presta��o do servi�o)
 @param VL_DOC      'Valor total do documento fiscal
 @param VL_DESC     'Valor total do desconto
 @param VL_SERV     'Valor da presta��o de servi�os
 @param VL_SERV_NT  'Valor total dos servi�os n�o-tributados pelo ICMS
 @param VL_TERC     'Valores cobrados em nome de terceiros
 @param VL_DA       'Valor de outras despesas indicadas no documento fiscal
 @param VL_BC_ICMS  'Valor da base de c�lculo do ICMS
 @param VL_ICMS     'Valor do ICMS
 @param COD_INF     'C�digo da informa��o complementar (campo 02 do Registro 0450)
 @param VL_PIS      'Valor do PIS
 @param VL_COFINS   'Valor da COFINS
 @param COD_CTA     'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D500|' + IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC, DT_DOC, DT_A_P, VL_DOC, VL_DESC, VL_SERV, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, COD_INF, VL_PIS, VL_COFINS, COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador do tipo de opera��o : ' + IND_OPER
 @return '-2   Indicador do emitente do documento fiscal : ' + IND_EMIT
 @return '-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 @return '-4   Data Final Inv�lida (AAAAMMDD) : ' + DT_A_P
 @return '-5   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD500(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, NUM_DOC,
                         DT_DOC, DT_A_P, VL_DOC, VL_DESC, VL_SERV, VL_SERV_NT, VL_TERC,
                         VL_DA, VL_BC_ICMS, VL_ICMS, COD_INF, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'D500';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(IND_OPER,       001, 'Indicador do tipo de opera��o:                                    ');
  FormatoAlfa(IND_EMIT,       001, 'Indicador do emitente do documento fiscal:                        ');
  FormatoAlfa(COD_PART,       060, 'C�digo do participante (campo 02 do Registro 0150):               '); // todo mudan�a do tamanha de 255 para 060
  FormatoAlfa(COD_MOD,        002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1     ');
  FormatoNum (COD_SIT,        002, '��digo da situa��o do documento fiscal, conforme a Tabela 4.1.2   ');
  FormatoAlfa(SER,            004, 'S�rie do documento fiscal                                         '); // todo mudan�a do tamanha de 255 para 004
  FormatoNum (SUB,            003, 'Subs�rie do documento fiscal                                      '); // todo mudan�a do tamanha de 255 para 003
  FormatoNum (NUM_DOC,        009, 'N�mero do documento fiscal                                        ');
  ddmmaaaaToSPEDDate(DT_DOC);
  FormatoNum (DT_DOC,         008, 'Data da emiss�o do documento fiscal                               ');
  ddmmaaaaToSPEDDate(DT_A_P);
  FormatoNum (DT_A_P,         008, 'Data da entrada (aquisi��o) ou da sa�da (presta��o do servi�o)    ');
  FormatoNum (VL_DOC,         255, 'Valor total do documento fiscal                                   ');
  FormatoNum (VL_DESC,        255, 'Valor total do desconto                                           ');
  FormatoNum (VL_SERV,        255, 'Valor da presta��o de servi�os                                    ');
  FormatoNum (VL_SERV_NT,     255, 'Valor total dos servi�os n�o-tributados pelo ICMS                 ');
  FormatoNum (VL_TERC,        255, 'Valores cobrados em nome de terceiros                             ');
  FormatoNum (VL_DA,          255, 'Valor de outras despesas indicadas no documento fiscal            ');
  FormatoNum (VL_BC_ICMS,     255, 'Valor da base de c�lculo do ICMS                                  ');
  FormatoNum (VL_ICMS,        255, 'Valor do ICMS                                                     ');
  FormatoAlfa(COD_INF,        006, 'C�digo da informa��o complementar (campo 02 do Registro 0450)     '); // todo mudan�a do tamanha de 255 para 006
  FormatoNum (VL_PIS,         255, 'Valor do PIS                                                      ');
  FormatoNum (VL_COFINS,      255, 'Valor da COFINS                                                   ');
  FormatoAlfa(COD_CTA,        255, 'C�digo da conta anal�tica cont�bil debitada/creditada             ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

if not vInd_tipo_operacao(IND_OPER) then
 ErroTStr.add('-1   Indicador do tipo de opera��o : ' + IND_OPER);
if not vInd_emitente_documento_fiscal(IND_EMIT) then
 ErroTStr.add('-2   Indicador do emitente do documento fiscal : ' + IND_EMIT);
if not IsSPEDDate(DT_DOC) then
 ErroTStr.add('-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);
if not IsSPEDDate(DT_A_P) then
 ErroTStr.add('-4   Data Final Inv�lida (AAAAMMDD) : ' + DT_A_P);
if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
 ErroTStr.add('-5   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


//Teste de Integridade dos campos

if (RegSPED[IdxOfReg(tipo)].ocorrencia = Um) and (RegSPED[IdxOfReg(tipo)].ok > 0) then
 ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + SUB + NUM_DOC + DT_DOC + DT_A_P + VL_DOC + VL_DESC + VL_SERV + VL_SERV_NT + VL_TERC + VL_DA + VL_BC_ICMS + VL_ICMS + COD_INF + VL_PIS + VL_COFINS + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD500 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D510: ITENS DO DOCUMENTO - NOTA FISCAL DE SERVI�O DE COMUNICA��O (C�DIGO 21) E SERVI�O DE TELECOMUNICA��O (C�DIGO 22)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_ITEM        'N�mero seq�encial do item no documento fiscal
 @param COD_ITEM        'C�digo do item (campo 02 do Registro 0200)
 @param COD_CLASS       'C�digo de classifica��o do item do servi�o de comunica��o ou de telecomunica��o conforme a Tabela 4.4.1
 @param QTD             'Quantidade do item
 @param UNID            'Unidade do item  (Campo 02 do registro 0190)
 @param VL_ITEM         'Valor do item
 @param VL_DESC         'Valor total do desconto
 @param CST_ICMS        'C�digo da Situa��o Tribut�ria conforme a Tabela indicada no item 4.3.1
 @param CFOP            'C�digo Fiscal de Opera��o e Presta��o
 @param VL_BC_ICMS      'Valor da base de c�lculo do ICMS
 @param ALIQ_ICMS       'Al�quota do ICMS
 @param VL_ICMS         'Valor do ICMS creditado/debitado
 @param VL_BC_ICMS_ST   'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST      'Valor do ICMS retido por substitui��o tribut�ria
 @param IND_REC         'Indicador do tipo de receita:
 @param COD_PART        'C�digo do participante (campo 02 do Registro 0150) receptor da receita terceiro da opera��o se houver.
 @param VL_PIS          'Valor do PIS
 @param VL_COFINS       'Valor da COFINS
 @param COD_CTA         'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D510|' + NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Numero de CFOP inv�lido: ' + CFOP
 @return
-------------------------------------------------------------------------------}
Function RegistroD510(NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'D510';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_ITEM,          003, 'N�mero seq�encial do item no documento fiscal                                                             '); // todo mudan�a do tamanha de 255 para 003
  FormatoAlfa(COD_ITEM,          060, 'C�digo do item (campo 02 do Registro 0200)                                                                '); // todo mudan�a do tamanha de 255 para 060
  FormatoNum (COD_CLASS,         004, 'C�digo de classifica��o do item do servi�o de comunica��o ou de telecomunica��o, conforme a Tabela 4.4.1  ');
  FormatoNum (QTD,               255, 'Quantidade do item                                                                                        ');
  FormatoAlfa(UNID,              006, 'Unidade do item  (Campo 02 do registro 0190)                                                              '); // todo mudan�a do tamanha de 255 para 006
  FormatoNum (VL_ITEM,           255, 'Valor do item                                                                                             ');
  FormatoNum (VL_DESC,           255, 'Valor total do desconto                                                                                   ');
  FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                   ');
  FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o                                                                     ');
  FormatoNum (VL_BC_ICMS,        255, 'Valor da base de c�lculo do ICMS                                                                          ');
  FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                          '); // todo mudan�a do tamanha de 255 para 006
  FormatoNum (VL_ICMS,           255, 'Valor do ICMS creditado/debitado                                                                          ');
  FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                  ');
  FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                          ');
  FormatoAlfa(IND_REC,           001, 'Indicador do tipo de receita:                                                                             ');
  FormatoAlfa(COD_PART,          060, 'C�digo do participante (campo 02 do Registro 0150) receptor da receita, terceiro da opera��o, se houver.  '); // todo mudan�a do tamanha de 255 para 060
  FormatoNum (VL_PIS,            255, 'Valor do PIS                                                                                              ');
  FormatoNum (VL_COFINS,         255, 'Valor da COFINS                                                                                           ');
  FormatoAlfa(COD_CTA,           255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

 if not vCOD_CFOP(CFOP) then
   ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);
 if not vIND_REC(IND_REC) then
   ErroTStr.add('-2   Indicador do tipo de receita: ' + IND_REC);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_ITEM + COD_ITEM + COD_CLASS + QTD + UNID + VL_ITEM + VL_DESC + CST_ICMS + CFOP + VL_BC_ICMS + ALIQ_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + IND_REC + COD_PART + VL_PIS + VL_COFINS + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroD510 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D530: TERMINAL FATURADO

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_SERV     'Indicador do tipo de servi�o prestado:
 @param DT_INI_SERV  'Data em que se iniciou a presta��o do servi�o
 @param DT_FIN_SERV  'Data em que se encerrou a presta��o do servi�o
 @param PER_FISCAL   'Per�odo fiscal da presta��o do servi�o (MMAAAA)
 @param COD_AREA     'C�digo de �rea do terminal faturado pr�prio da prestadora
 @param TERMINAL     'Identifica��o do terminal faturado

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D530|' + IND_SERV, DT_INI_SERV, DT_FIN_SERV, PER_FISCAL, COD_AREA, TERMINAL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador do tipo de servi�o prestado : ' + IND_SERV
 @return -2   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez'
 @return -3   Data Inicial Inv�lida (DDMMAAAA) : ' + DT_INI_SERV
 @return -4   Data Final Inv�lida (DDMMAAAA) : ' + DT_FIN_SERV
-------------------------------------------------------------------------------}
Function RegistroD530(IND_SERV, DT_INI_SERV, DT_FIN_SERV, PER_FISCAL, COD_AREA, TERMINAL: String): Integer; stdcall; export;

const
 Tipo = 'D530';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(IND_SERV,        001, 'Indicador do tipo de servi�o prestado:                                                                    ');
   ddmmaaaaToSPEDDate(DT_INI_SERV);
   FormatoNum (DT_INI_SERV,     008, 'Data em que se iniciou a presta��o do servi�o                                                             ');
   ddmmaaaaToSPEDDate(DT_FIN_SERV);
   FormatoNum (DT_FIN_SERV,     008, 'Data em que se encerrou a presta��o do servi�o                                                            ');
   FormatoNum (PER_FISCAL,      006, 'Per�odo fiscal da presta��o do servi�o (MMAAAA)                                                           ');
   FormatoAlfa(COD_AREA,        255, 'C�digo de �rea do terminal faturado, pr�prio da prestadora                                                ');
   FormatoNum (TERMINAL,        255, 'Identifica��o do terminal faturado                                                                        ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');
   if not vInd_tipo_servico_prestado(IND_SERV) then
    ErroTStr.add('-1   Indicador do tipo de servi�o prestado : ' + IND_SERV);

   //Teste de Integridade dos campos

   if (RegSPED[IdxOfReg(tipo)].ocorrencia = Um) and (RegSPED[IdxOfReg(tipo)].ok > 0) then
    ErroTStr.add('-2   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez');

   if not IsSPEDDate(DT_INI_SERV) then
    ErroTStr.add('-3   Data Inicial Inv�lida (DDMMAAAA) : ' + DT_INI_SERV);

   if not IsSPEDDate(DT_FIN_SERV) then
    ErroTStr.add('-4   Data Final Inv�lida (DDMMAAAA) : ' + DT_FIN_SERV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + IND_SERV + DT_INI_SERV + DT_FIN_SERV + PER_FISCAL + COD_AREA + TERMINAL);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD530 ---
  //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro D590: REGISTRO ANAL�TICO DO DOCUMENTO (C�DIGO 21 E 22)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS       'C�digo da Situa��o Tribut�ria conforme a tabela indicada no item 4.3.1
 @param CFOP           'C�digo Fiscal de Opera��o e Presta��o conforme a tabela indicada no item 4.2.2
 @param ALIQ_ICMS      'Al�quota do ICMS
 @param VL_OPR         'Valor da opera��o correspondente � combina��o de CST_ICMS CFOP e al�quota do ICMS inclu�das as despesas acess�rias e acr�scimos
 @param VL_BC_ICMS     'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS CFOP e al�quota do ICMS
 @param VL_ICMS        'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS  CFOP e al�quota do ICMS
 @param VL_BC_ICMS_ST  'Parcela correspondente ao "Valor da base de c�lculo do ICMS" da substitui��o tribut�ria referente � combina��o de CST_ICMS CFOP e al�quota do ICMS.
 @param VL_ICMS_ST     'Parcela correspondente ao valor creditado/debitado do ICMS da substitui��o tribut�ria referente � combina��o de CST_ICMS CFOP e al�quota do ICMS.
 @param VL_RED_BC      'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS referente � combina��o de CST_ICMS CFOP e al�quota do ICMS.
 @param COD_OBS        'C�digo  da observa��o  (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D590|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroD590(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS,
                       VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'D590';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1                                                                               ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2                                                                       ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                      '); // todo mudan�a de tamanho de 255 para 6
   FormatoNum (VL_OPR,            255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos                    ');
   FormatoNum (VL_BC_ICMS,        255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS, CFOP, e al�quota do ICMS                                ');
   FormatoNum (VL_ICMS,           255, 'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP, e al�quota do ICMS                                                  ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" da substitui��o tribut�ria referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.  ');
   FormatoNum (VL_ICMS_ST,        255, 'Parcela correspondente ao valor creditado/debitado do ICMS da substitui��o tribut�ria, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.  ');
   FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                     ');
   FormatoAlfa(COD_OBS,           255, 'C�digo da observa��o  (campo 02 do Registro 0460)                                                                                                    ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + COD_OBS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD590 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D600: CONSOLIDA��O DA PRESTA��O DE SERVI�OS - NOTAS DE SERVI�O DE COMUNICA��O (C�DIGO 21) E DE SERVI�O DE TELECOMUNICA��O (C�DIGO 22)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_MOD    'C�digo do modelo do documento fiscal conforme a Tabela 4.1.1
 @param COD_MUN    'C�digo do munic�pio dos terminais faturados conforme a tabela IBGE
 @param SER        'S�rie do documento fiscal
 @param SUB        'Subs�rie do documento fiscal
 @param COD_CONS   'C�digo de classe de consumo dos servi�os de comunica��o ou de telecomunica��o conforme a Tabela 4.4.4
 @param QTD_CONS   'Quantidade de documentos consolidados neste registro
 @param DT_DOC     'Data dos documentos consolidados
 @param VL_DOC     'Valor total acumulado dos documentos fiscais
 @param VL_DESC    'Valor acumulado dos descontos
 @param VL_SERV    'Valor acumulado das presta��es de servi�os tributados pelo ICMS
 @param VL_SERV_NT 'Valor acumulado dos servi�os n�o-tributados pelo ICMS
 @param VL_TERC    'Valores cobrados em nome de terceiros
 @param VL_DA      'Valor acumulado das despesas acess�rias
 @param VL_BC_ICMS 'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS    'Valor acumulado do ICMS
 @param VL_PIS     'Valor do PIS
 @param VL_COFINS  'Valor da COFINS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D600|' + COD_MOD, COD_MUN, SER, SUB, COD_CONS, QTD_CONS, DT_DOC, VL_DOC, VL_DESC, VL_SERV, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD
 @return -2   C�digo do munic�pio dos terminais faturados, conforme a tabela IBGE : ' + COD_MUN
 @return -3   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
-------------------------------------------------------------------------------}
Function RegistroD600(COD_MOD, COD_MUN, SER, SUB, COD_CONS, QTD_CONS, DT_DOC, VL_DOC, VL_DESC, VL_SERV, VL_SERV_NT,
                       VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = 'D600';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_MOD,        002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                         ');
   FormatoNum (COD_MUN,        007, 'C�digo do munic�pio dos terminais faturados, conforme a tabela IBGE                                                                                   ');
   FormatoAlfa(SER,            004, 'S�rie do documento fiscal                                                                                                                             '); // todo mudan�a de tamanho de 255 para 4
   FormatoNum (SUB,            003, 'Subs�rie do documento fiscal                                                                                                                          '); // todo mudan�a de tamanho de 255 para 3
   FormatoNum (COD_CONS,       002, 'C�digo de classe de consumo dos servi�os de comunica��o ou de telecomunica��o, conforme a Tabela 4.4.4                                                ');
   FormatoNum (QTD_CONS,       255, 'Quantidade de documentos consolidados neste registro                                                                                                  ');
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,         008, 'Data dos documentos consolidados                                                                                                                      ');
   FormatoNum (VL_DOC,         255, 'Valor total acumulado dos documentos fiscais                                                                                                          ');
   FormatoNum (VL_DESC,        255, 'Valor acumulado dos descontos                                                                                                                         ');
   FormatoNum (VL_SERV,        255, 'Valor acumulado das presta��es de servi�os tributados pelo ICMS                                                                                       ');
   FormatoNum (VL_SERV_NT,     255, 'Valor acumulado dos servi�os n�o-tributados pelo ICMS                                                                                                 ');
   FormatoNum (VL_TERC,        255, 'Valores cobrados em nome de terceiros                                                                                                                 ');
   FormatoNum (VL_DA,          255, 'Valor acumulado das despesas acess�rias                                                                                                               ');
   FormatoNum (VL_BC_ICMS,     255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                            ');
   FormatoNum (VL_ICMS,        255, 'Valor acumulado do ICMS                                                                                                                               ');
   FormatoNum (VL_PIS,         255, 'Valor do PIS                                                                                                                                          ');
   FormatoNum (VL_COFINS,      255, 'Valor da COFINS                                                                                                                                       ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

  if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-1   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD);

   if not vCOD_Municipio(COD_MUN) then
    ErroTStr.add('-2   C�digo do munic�pio dos terminais faturados, conforme a tabela IBGE : ' + COD_MUN);

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_MOD + COD_MUN + SER + SUB + COD_CONS + QTD_CONS + DT_DOC + VL_DOC + VL_DESC + VL_SERV + VL_SERV_NT + VL_TERC + VL_DA + VL_BC_ICMS + VL_ICMS + VL_PIS + VL_COFINS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD600 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D610: ITENS DO DOCUMENTO CONSOLIDADO (C�DIGO 21 E 22)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_CLASS      'C�digo de classifica��o do item do servi�o de comunica��o ou de telecomunica��o conforme a Tabela 4.4.1
 @param COD_ITEM       'C�digo do item (campo 02 do Registro 0200)
 @param QTD            'Quantidade acumulada do item
 @param UNID           'Unidade do item (Campo 02 do registro 0190)
 @param VL_ITEM        'Valor acumulado do item
 @param VL_DESC        'Valor acumulado dos descontos
 @param CST_ICMS       'C�digo da Situa��o Tribut�ria conforme a Tabela indicada no item 4.3.1
 @param CFOP           'C�digo Fiscal de Opera��o e Presta��o conforme tabela indicada no item 4.2.2
 @param ALIQ_ICMS      'Al�quota do ICMS
 @param VL_BC_ICMS     'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS        'Valor acumulado do ICMS debitado
 @param VL_BC_ICMS_ST  'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST     'Valor do ICMS retido por substitui��o tribut�ria
 @param VL_RED_BC      'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS referente � combina��o de CST_ICMS CFOP e al�quota do ICMS.
 @param VL_PIS         'Valor acumulado do PIS
 @param VL_COFINS      'Valor acumulado da COFINS
 @param COD_CTA        'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D610|' + COD_CLASS, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, ALIQ_ICMS, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, VL_PIS, VL_COFINS, COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
 @return -2   C�digo de classifica��o do item do servi�o de comunica��o ou de telecomunica��o, conforme a Tabela 4.4.1: ' + COD_CLASS
-------------------------------------------------------------------------------}
Function RegistroD610(COD_CLASS, COD_ITEM, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, ALIQ_ICMS, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'D610';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (COD_CLASS,         004, 'C�digo de classifica��o do item do servi�o de comunica��o ou de telecomunica��o, conforme a Tabela 4.4.1                                               ');
   FormatoAlfa(COD_ITEM,          060, 'C�digo do item (campo 02 do Registro 0200)                                                                                                             '); // todo mudan�a de tamanho de 255 para 60
   FormatoNum (QTD,               255, 'Quantidade acumulada do item                                                                                                                           ');
   FormatoAlfa(UNID,              006, 'Unidade do item (Campo 02 do registro 0190)                                                                                                            '); // todo mudan�a de tamanho de 255 para 6
   FormatoNum (VL_ITEM,           255, 'Valor acumulado do item                                                                                                                                ');
   FormatoNum (VL_DESC,           255, 'Valor acumulado dos descontos                                                                                                                          ');
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o conforme tabela indicada no item 4.2.2                                                                           '); // todo mudan�a na descri��o do campo
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                       ');
   FormatoNum (VL_BC_ICMS,        255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                             ');
   FormatoNum (VL_ICMS,           255, 'Valor acumulado do ICMS debitado                                                                                                                       ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                                                               ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                                                                       ');
   FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                      ');
   FormatoNum (VL_PIS,            255, 'Valor acumulado do PIS                                                                                                                                 ');
   FormatoNum (VL_COFINS,         255, 'Valor acumulado da COFINS                                                                                                                              ');
   FormatoAlfa(COD_CTA,           255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                                                                  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);
    if not vCod_classific_item_4_4_2(COD_CLASS) then
      ErroTStr.add('-2   C�digo de classifica��o do item do servi�o de comunica��o ou de telecomunica��o, conforme a Tabela 4.4.1: ' + COD_CLASS);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_CLASS + COD_ITEM + QTD + UNID + VL_ITEM + VL_DESC + CST_ICMS + CFOP + ALIQ_ICMS + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + VL_PIS + VL_COFINS + COD_CTA);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD610 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D690: REGISTRO ANAL�TICO DOS DOCUMENTOS (C�DIGOS 21 e 22)

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS        'C�digo da Situa��o Tribut�ria  conforme a tabela indicada no item 4.3.1
 @param CFOP            'C�digo Fiscal de Opera��o e Presta��o  conforme a tabela indicada no item 4.2.2
 @param ALIQ_ICMS       'Al�quota do ICMS
 @param VL_OPR          'Valor da opera��o correspondente � combina��o de CST_ICMS  CFOP  e al�quota do ICMS  inclu�das as despesas acess�rias e acr�scimos
 @param VL_BC_ICMS      'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS   CFOP  e al�quota do ICMS
 @param VL_ICMS         'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS   CFOP  e al�quota do ICMS
 @param VL_BC_ICMS_ST   'Parcela correspondente ao "Valor da base de c�lculo do ICMS" da substitui��o tribut�ria referente � combina��o de CST_ICMS  CFOP e al�quota do ICMS.
 @param VL_ICMS_ST      'Parcela correspondente ao valor creditado/debitado do ICMS da substitui��o tribut�ria  referente � combina��o de CST_ICMS   CFOP  e al�quota do ICMS.
 @param VL_RED_BC       'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS  referente � combina��o de CST_ICMS  CFOP e al�quota do ICMS.
 @param COD_OBS         'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D610|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroD690(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST,
                      VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'D690';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2                                                                        ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                       '); // todo mudan�a de tamanho de 255 para 6
   FormatoNum (VL_OPR,            255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos                     ');
   FormatoNum (VL_BC_ICMS,        255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS,  CFOP, e al�quota do ICMS                                ');
   FormatoNum (VL_ICMS,           255, 'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP, e al�quota do ICMS                                                   ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" da substitui��o tribut�ria referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.   ');
   FormatoNum (VL_ICMS_ST,        255, 'Parcela correspondente ao valor creditado/debitado do ICMS da substitui��o tribut�ria, referente � combina��o de CST_ICMS,  CFOP, e al�quota do ICMS.  ');
   FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                      ');
   FormatoAlfa(COD_OBS,           006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  '); // todo mudan�a de tamanho de 255 para 6

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + COD_OBS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD690 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D695: CONSOLIDA��O DA PRESTA��O DE SERVI�OS - NOTAS DE SERVI�O DE COMUNICA��O (C�DIGO 21) E DE SERVI�O DE TELECOMUNICA��O (C�DIGO 22) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_MOD       'C�digo do modelo do documento fiscal conforme a Tabela 4.1.1
 @param SER           'S�rie do documento fiscal
 @param NRO_ORD_INI   'N�mero de ordem inicial
 @param NRO_ORD_FIN   'N�mero de ordem final
 @param DT_DOC_INI    'Data de emiss�o inicial dos documentos/Data inicial de vencimento da fatura
 @param DT_DOC_FIN    'Data de emiss�o final dos documentos/Data final do vencimento da fatura
 @param NOM_VOL       'Nome do Volume do arquivo Mestre de Documento Fiscal
 @param CHV_COD_DIG   'Chave de codifica��o digital do arquivo Mestre de Documento Fiscal

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D695|' + COD_MOD, SER, NRO_ORD_INI, NRO_ORD_FIN, DT_DOC_INI, DT_DOC_FIN, NOM_VOL, CHV_COD_DIG
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Data Inicial Inv�lida (DDMMAAAA) : ' + DT_DOC_INI
 @return -2   Data Final Inv�lida (DDMMAAAA) : ' + DT_DOC_FIN
 @return -3   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroD695(COD_MOD, SER, NRO_ORD_INI, NRO_ORD_FIN, DT_DOC_INI, DT_DOC_FIN, NOM_VOL, CHV_COD_DIG: String): Integer; stdcall; export;

const
 Tipo = 'D695';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_MOD,         002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                          ');
   FormatoAlfa(SER,             004, 'S�rie do documento fiscal                                                                                                                              '); // todo mudan�a de tamanho de 255 para 4
   FormatoNum (NRO_ORD_INI,     009, 'N�mero de ordem inicial                                                                                                                                '); // todo mudan�a de tamanho de 255 para 9
   FormatoNum (NRO_ORD_FIN,     009, 'N�mero de ordem final                                                                                                                                  '); // todo mudan�a de tamanho de 255 para 9
   ddmmaaaaToSPEDDate(DT_DOC_INI);
   FormatoNum (DT_DOC_INI,      008, 'Data de emiss�o inicial dos documentos / Data inicial de vencimento da fatura                                                                          ');
   ddmmaaaaToSPEDDate(DT_DOC_FIN);
   FormatoNum (DT_DOC_FIN,      008, 'Data de emiss�o final dos documentos / Data final do vencimento da fatura                                                                              ');
   FormatoAlfa(NOM_VOL,         015, 'Nome do Volume do arquivo Mestre de Documento Fiscal                                                                                                   ');
   FormatoAlfa(CHV_COD_DIG,     032, 'Chave de codifica��o digital do arquivo Mestre de Documento Fiscal                                                                                     ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not IsSPEDDate(DT_DOC_INI) then
    ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) : ' + DT_DOC_INI);

   if not IsSPEDDate(DT_DOC_FIN) then
    ErroTStr.add('-2   Data Final Inv�lida (DDMMAAAA) : ' + DT_DOC_FIN);

   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-3   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_MOD + SER + NRO_ORD_INI + NRO_ORD_FIN + DT_DOC_INI + DT_DOC_FIN + NOM_VOL + CHV_COD_DIG);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD695 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D696: REGISTRO ANAL�TICO DOS DOCUMENTOS (C�DIGO 21 E 22) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CST_ICMS       'C�digo da Situa��o Tribut�ria conforme a tabela indicada no item 4.3.1
 @param CFOP           'C�digo Fiscal de Opera��o e Presta��o conforme a tabela indicada no item 4.2.2
 @param ALIQ_ICMS      'Al�quota do ICMS
 @param VL_OPR         'Valor da opera��o correspondente � combina��o de CST_ICMS CFOP e al�quota do ICMS inclu�das as despesas acess�rias e acr�scimos
 @param VL_BC_ICMS     'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS  CFOP e al�quota do ICMS
 @param VL_ICMS        'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS  CFOP e al�quota do ICMS
 @param VL_BC_ICMS_ST  'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST     'Valor do ICMS retido por substitui��o tribut�ria
 @param VL_RED_BC      'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS referente � combina��o de CST_ICMS CFOP e al�quota do ICMS.
 @param COD_OBS        'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D696|' + CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
-------------------------------------------------------------------------------}
Function RegistroD696(CST_ICMS, CFOP, ALIQ_ICMS, VL_OPR, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, VL_RED_BC, COD_OBS: String): Integer; stdcall; export;

const
 Tipo = 'D696';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a tabela indicada no item 4.3.1                                                                                ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o, conforme a tabela indicada no item 4.2.2                                                                        ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                       '); // todo mudan�a de tamanho de 255 para 6
   FormatoNum (VL_OPR,            255, 'Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos                     ');
   FormatoNum (VL_BC_ICMS,        255, 'Parcela correspondente ao "Valor da base de c�lculo do ICMS" referente � combina��o CST_ICMS,  CFOP, e al�quota do ICMS                                ');
   FormatoNum (VL_ICMS,           255, 'Parcela correspondente ao "Valor do ICMS" referente � combina��o CST_ICMS,  CFOP, e al�quota do ICMS                                                   ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                                                               ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                                                                       ');
   FormatoNum (VL_RED_BC,         255, 'Valor n�o tributado em fun��o da redu��o da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.                      ');
   FormatoAlfa(COD_OBS,           006, 'C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)                                                                                  '); // todo mudan�a de tamanho de 255 para 6

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + CST_ICMS + CFOP + ALIQ_ICMS + VL_OPR + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + VL_RED_BC + COD_OBS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

  //--- Teste de RegistroD696 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro D697: REGISTRO DE INFORMA��ES DE ICMS ST POR UF (C�DIGO 21 E 22) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param UF             'Sigla da unidade da federa��o a que se refere a reten��o ST
 @param VL_BC_ICMS_ST  'Valor da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST     'Valor do ICMS retido por substitui��o tribut�ria

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D697|' + UF, VL_BC_ICMS_ST, VL_ICMS_ST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Sigla da unidade da federa��o a que se refere a reten��o ST : ' + UF
-------------------------------------------------------------------------------}
Function RegistroD697(UF, VL_BC_ICMS_ST, VL_ICMS_ST: String): Integer; stdcall; export;

const
 Tipo = 'D697';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(UF,                002, 'Sigla da unidade da federa��o a que se refere a reten��o ST                                                                                            ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo do ICMS substitui��o tribut�ria                                                                                               ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS retido por substitui��o tribut�ria                                                                                                       ');

 //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
 // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

 //Teste de Integridade dos campos

  if not vUF(UF) then
  ErroTStr.add('-1   Sigla da unidade da federa��o a que se refere a reten��o ST : ' + UF);

 //Incremento do contador de observa��es
 if ObsTStr.count > 0 then
  Inc(RegSPED[IdxOfReg(tipo)].obs);

 //Resposta em caso de n�o haver erros
 if ErroTStr.count = 0 then
  begin
   result := 0;
   Trata_SPED('|' + Tipo + '|' + UF + VL_BC_ICMS_ST + VL_ICMS_ST);

 //Incremento do contador de registros
   Inc(RegSPED[IdxOfReg(tipo)].ok);
  end
 else
  begin
   Trata_Erro(ErroTStr);

   //Incremento do contador de erros
   Inc(RegSPED[IdxOfReg(tipo)].erro);
  end;
 end;

  //--- Teste de RegistroD697 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro D990 --- ENCERRAMENTO DO BLOCO D ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_D 'Quantidade total de linhas do Bloco D:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|D990|' + QTD_LIN_D
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
-------------------------------------------------------------------------------}
Function RegistroD990: Integer; stdcall; export;

const
 Tipo    = 'D990';

var
 i, x: integer;
 QTD_LIN_D: String;
begin
 NaoRegistrado;
 Result := -1;

 if Testa_State(tipo) then
  begin
   RegistroTStr.add('REGISTRO ' + Tipo);

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('D') then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_D := inttostr(i);

   //Formata��o dos Campos
   FormatoNum (QTD_LIN_D,        255, 'Quantidade total de linhas do Bloco D:');


   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro'+ TIPO + ' chamada mais de 1(uma) vez');


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_D);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroD990 ---
//ShowMessage(Result);
end;

//--------- BLOCO E: LIVROS FISCAIS I - APURA��O DO ICMS E DO IPI --------------

{*------------------------------------------------------------------------------
 BLOCO E: LIVROS FISCAIS I - APURA��O DO ICMS E DO IPI
 Registro E001 - ABERTURA DO BLOCO E ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_MOV 'Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return -2   Indicador de movimento : ' + IND_MOV
-------------------------------------------------------------------------------}
Function RegistroE001(IND_MOV:String): Integer; stdcall; export;
const
 Tipo = 'E001';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(IND_MOV,             01, 'Indicador de movimento:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroE001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 REGISTRO E100: PER�ODO DA APURA��O DO ICMS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param DT_INI 'Data inicial a que a apura��o se refere:
 @param DT_FIN 'Data final a que a apura��o se refere:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E100|' + DT_INI, DT_FIN
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Data inicial Inv�lida (AAAAMMDD) : ' + DT_INI
 @return -2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FIN
-------------------------------------------------------------------------------}
Function RegistroE100(DT_INI, DT_FIN: String): Integer; stdcall; export;
const
 Tipo = 'E100';

begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                                  //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   ddmmaaaaToSPEDDate(DT_INI);
   FormatoNum (DT_INI,      08, 'Data inicial a que a apura��o se refere: ');
   ddmmaaaaToSPEDDate(DT_FIN);
   FormatoNum (DT_FIN,      08, 'Data final a que a apura��o se refere:   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not IsSPEDDate(DT_INI) then
    ErroTStr.add('-1   Data inicial Inv�lida (AAAAMMDD) : ' + DT_INI);

   if not IsSPEDDate(DT_FIN) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FIN);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;

     Trata_SPED('|' + Tipo + '|' + DT_INI + DT_FIN);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroE100 ---
//ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
 Registro E110 - APURA��O DO ICMS - OPERA��ES PR�PRIAS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param VL_TOT_DEBITOS             'Valor total dos d�bitos por "Sa�das e presta��es com d�bito do imposto"
 @param VL_AJ_DEBITOS              'Valor total dos ajustes a d�bito decorrentes do documento fiscal.
 @param VL_TOT_AJ_DEBITOS          'Valor total de "Ajustes a d�bito"
 @param VL_ESTORNOS_CRED           'Valor total de Ajustes �Estornos de cr�ditos�
 @param VL_TOT_CREDITOS            'Valor total dos cr�ditos por "Entradas e aquisi��es com cr�dito do imposto"
 @param VL_AJ_CREDITOS             'Valor total dos ajustes a cr�dito decorrentes do documento fiscal.
 @param VL_TOT_AJ_CREDITOS         'Valor total de "Ajustes a cr�dito"
 @param VL_ESTORNOS_DEB            'Valor total de Ajustes �Estornos de D�bitos�
 @param VL_SLD_CREDOR_ANT          'Valor total de "Saldo credor do per�odo anterior"
 @param VL_SLD_APURADO             'Valor do saldo devedor apurado
 @param VL_TOT_DED                 'Valor total de "Dedu��es"
 @param VL_ICMS_RECOLHER           'Valor total de "ICMS a recolher (11-12)
 @param VL_SLD_CREDOR_TRANSPORTAR  'Valor total de "Saldo credor a transportar para o per�odo seguinte�
 @param DEB_ESP                    'Valores recolhidos ou a recolher extra-apura��o.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E110|' + VL_TOT_DEBITOS,VL_AJ_DEBITOS,VL_TOT_AJ_DEBITOS,VL_ESTORNOS_CRED,VL_TOT_CREDITOS,VL_AJ_CREDITOS,VL_TOT_AJ_CREDITOS,VL_ESTORNOS_DEB,VL_SLD_CREDOR_ANT,VL_SLD_APURADO,VL_TOT_DED,VL_ICMS_RECOLHER,VL_SLD_CREDOR_TRANSPORTAR,DEB_ESP
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroE110(VL_TOT_DEBITOS, VL_AJ_DEBITOS, VL_TOT_AJ_DEBITOS, VL_ESTORNOS_CRED,
                      VL_TOT_CREDITOS, VL_AJ_CREDITOS, VL_TOT_AJ_CREDITOS, VL_ESTORNOS_DEB,
                      VL_SLD_CREDOR_ANT, VL_SLD_APURADO, VL_TOT_DED, VL_ICMS_RECOLHER,
                      VL_SLD_CREDOR_TRANSPORTAR, DEB_ESP:String): Integer; stdcall; export;
const
 Tipo = 'E110';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(VL_TOT_DEBITOS,              255, 'Valor total dos d�bitos por "Sa�das e presta��es com d�bito do imposto"         ');
   FormatoNum(VL_AJ_DEBITOS,               255, 'Valor total dos ajustes a d�bito decorrentes do documento fiscal.               ');
   FormatoNum(VL_TOT_AJ_DEBITOS,           255, 'Valor total de "Ajustes a d�bito"                                               ');
   FormatoNum(VL_ESTORNOS_CRED,            255, 'Valor total de Ajustes �Estornos de cr�ditos�                                   ');
   FormatoNum(VL_TOT_CREDITOS,             255, 'Valor total dos cr�ditos por "Entradas e aquisi��es com cr�dito do imposto"     ');
   FormatoNum(VL_AJ_CREDITOS,              255, 'Valor total dos ajustes a cr�dito decorrentes do documento fiscal.              ');
   FormatoNum(VL_TOT_AJ_CREDITOS,          255, 'Valor total de "Ajustes a cr�dito"                                              ');
   FormatoNum(VL_ESTORNOS_DEB,             255, 'Valor total de Ajustes �Estornos de D�bitos�                                    ');
   FormatoNum(VL_SLD_CREDOR_ANT,           255, 'Valor total de "Saldo credor do per�odo anterior"                               ');
   FormatoNum(VL_SLD_APURADO,              255, 'Valor do saldo devedor apurado                                                  '); // todo mudan�a na descri��o
   FormatoNum(VL_TOT_DED,                  255, 'Valor total de "Dedu��es"                                                       ');
   FormatoNum(VL_ICMS_RECOLHER,            255, 'Valor total de "ICMS a recolher (11-12)                                         ');
   FormatoNum(VL_SLD_CREDOR_TRANSPORTAR,   255, 'Valor total de "Saldo credor a transportar para o per�odo seguinte�             ');
   FormatoNum(DEB_ESP,                     255, 'Valores recolhidos ou a recolher, extra-apura��o.                               ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + VL_TOT_DEBITOS + VL_AJ_DEBITOS + VL_TOT_AJ_DEBITOS + VL_ESTORNOS_CRED +
                    VL_TOT_CREDITOS + VL_AJ_CREDITOS + VL_TOT_AJ_CREDITOS + VL_ESTORNOS_DEB +
                    VL_SLD_CREDOR_ANT + VL_SLD_APURADO + VL_TOT_DED + VL_ICMS_RECOLHER +
                    VL_SLD_CREDOR_TRANSPORTAR + DEB_ESP);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
   end;
  end;

//--- Teste de RegistroE110 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E111: AJUSTE/BENEF�CIO/INCENTIVO DA APURA��O DO ICMS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_AJ_APUR     'C�digo do ajuste da apura��o e dedu��o, conforme a Tabela indicada no item 5.1.1.
 @param DESCR_COMPL_AJ  'Descri��o complementar do ajuste da apura��o.
 @param VL_AJ_APUR      'Valor do ajuste da apura��o

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E111|' + COD_AJ_APUR, DESCR_COMPL_AJ, VL_AJ_APUR
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroE111(COD_AJ_APUR, DESCR_COMPL_AJ, VL_AJ_APUR: String): Integer; stdcall; export;

const
 Tipo = 'E111';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_AJ_APUR,        008, 'C�digo do ajuste da apura��o e dedu��o, conforme a Tabela indicada no item 5.1.1.                                 ');
   FormatoAlfa(DESCR_COMPL_AJ,     255, 'Descri��o complementar do ajuste da apura��o.                                                                     ');
   FormatoNum (VL_AJ_APUR,         255, 'Valor do ajuste da apura��o                                                                                       ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_AJ_APUR + DESCR_COMPL_AJ + VL_AJ_APUR);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroE111 ---
 //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E112: INFORMA��ES ADICIONAIS DOS AJUSTES DA APURA��O DO ICMS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_DA    'N�mero do documento de arrecada��o estadual, se houver
 @param NUM_PROC  'N�mero do processo ao qual o ajuste est� vinculado, se houver
 @param IND_PROC  'Indicador da origem do processo:
 @param PROC      'Descri��o resumida do processo que embasou o lan�amento
 @param TXT_COMPL 'Descri��o complementar

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E112|' + NUM_DA, NUM_PROC, IND_PROC, PROC, TXT_COMPL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador da origem do processo : ' + IND_PROC
-------------------------------------------------------------------------------}
Function RegistroE112(NUM_DA, NUM_PROC, IND_PROC, PROC, TXT_COMPL: String): Integer; stdcall; export;

const
 Tipo = 'E112';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(NUM_DA,       255, 'N�mero do documento de arrecada��o estadual, se houver                                                            ');
   FormatoAlfa(NUM_PROC,     015, 'N�mero do processo ao qual o ajuste est� vinculado, se houver                                                     '); // todo mudan�a de tamanho de 255 para 15
   FormatoAlfa(IND_PROC,     001, 'Indicador da origem do processo:                                                                                  ');
   FormatoAlfa(PROC,         255, 'Descri��o resumida do processo que embasou o lan�amento                                                           ');
   FormatoAlfa(TXT_COMPL,    255, 'Descri��o complementar                                                                                            ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vInd_origem_processo(IND_PROC) then
    ErroTStr.add('-1   Indicador da origem do processo : ' + IND_PROC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + NUM_DA + NUM_PROC + IND_PROC + PROC + TXT_COMPL);

    //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroE112 ---
 //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E113: INFORMA��ES ADICIONAIS DOS AJUSTES DA APURA��O DO ICMS - IDENTIFICA��O DOS DOCUMENTOS FISCAIS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART   'C�digo do participante (campo 02 do Registro 0150):
 @param COD_MOD    'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER        'S�rie do documento fiscal
 @param SUB        'Subserie do documento fiscal
 @param NUM_DOC    'N�mero do documento fiscal
 @param DT_DOC     'Data da emiss�o do documento fiscal
 @param COD_ITEM   'C�digo do item (campo 02 do Registro 0200)
 @param VL_AJ_ITEM 'Valor do ajuste para a opera��o/item

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E113|' + COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC, COD_ITEM, VL_AJ_ITEM
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD
 @return -2   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
-------------------------------------------------------------------------------}
Function RegistroE113(COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC,                       // alterar demo registro CHV_NFE exclu�do
                       COD_ITEM, VL_AJ_ITEM: String): Integer; stdcall; export;

const
 Tipo = 'E113';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_PART,       060, 'C�digo do participante (campo 02 do Registro 0150):                                                               '); // todo mudan�a do tamanha de 255 para 60
   FormatoAlfa(COD_MOD,        002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                     ');
   FormatoAlfa(SER,            004, 'S�rie do documento fiscal                                                                                         '); // todo mudan�a do tamanha de 255 para 004
   FormatoNum (SUB,            003, 'Subserie do documento fiscal                                                                                      '); // todo mudan�a do tamanha de 255 para 003
   FormatoNum (NUM_DOC,        009, 'N�mero do documento fiscal                                                                                        '); // todo mudan�a do tamanha de 255 para 009
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,         008, 'Data da emiss�o do documento fiscal                                                                               ');
   FormatoAlfa(COD_ITEM,       060, 'C�digo do item (campo 02 do Registro 0200)                                                                        '); // todo mudan�a do tamanha de 255 para 060
   FormatoNum (VL_AJ_ITEM,     255, 'Valor do ajuste para a opera��o/item                                                                              ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-1   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD);
     if not IsSPEDDate(DT_DOC) then
      ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_PART + COD_MOD + SER + SUB + NUM_DOC + DT_DOC + COD_ITEM + VL_AJ_ITEM);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroE113 ---
 //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E115: INFORMA��ES ADICIONAIS DA APURA��O - VALORES DECLARAT�RIOS. ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_INF_ADIC    'C�digo da informa��o adicional conforme tabela a ser definida pelas SEFAZ, conforme tabela definida no item 5.2.
 @param VL_INF_ADIC     'Valor referente � informa��o adicional
 @param DESCR_COMPL_AJ  'Descri��o complementar do ajuste

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E115|' + COD_INF_ADIC, VL_INF_ADIC, DESCR_COMPL_AJ
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroE115(COD_INF_ADIC, VL_INF_ADIC, DESCR_COMPL_AJ: String): Integer; stdcall; export;
const
 Tipo = 'E115';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (COD_INF_ADIC,       008, 'C�digo da informa��o adicional conforme tabela a ser definida pelas SEFAZ, conforme tabela definida no item 5.2.  '); // todo mudan�a do tamanha de 255 para 008
   FormatoNum (VL_INF_ADIC,        255, 'Valor referente � informa��o adicional                                                                            ');
   FormatoAlfa(DESCR_COMPL_AJ,     255, 'Descri��o complementar do ajuste                                                                                  ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_INF_ADIC + VL_INF_ADIC + DESCR_COMPL_AJ);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de RegistroE115 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E116 - OBRIGA��ES DO ICMS A RECOLHER - OPERA��ES PR�PRIAS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_OR    'C�digo da obriga��o a recolher, conforme a Tabela 5.4
 @param VL_OR     'Valor da obriga��o a recolher
 @param DT_VCTO   'Data de vencimento da obriga��o
 @param COD_REC   'C�digo de receita referente � obriga��o, pr�prio da unidade da federa��o, conforme legisla��o estadual,
 @param NUM_PROC  'N�mero do processo ou auto de infra��o ao qual a obriga��o est� vinculada, se houver.
 @param IND_PROC  'Indicador da origem do processo:
 @param PROC      'Descri��o resumida do processo que embasou o lan�amento
 @param TXT_COMPL 'Descri��o complementar das obriga��es a recolher.

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E116|' + COD_OR,VL_OR,DT_VCTO,COD_REC,NUM_PROC,IND_PROC,PROC,TXT_COMPL
 @return -1   Data Final Inv�lida (AAAAMMDD) : ' + DT_VCTO
-------------------------------------------------------------------------------}
Function RegistroE116(COD_OR,VL_OR,DT_VCTO,COD_REC,NUM_PROC,IND_PROC,PROC,TXT_COMPL:String): Integer; stdcall; export;
const
 Tipo = 'E116';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(COD_OR,    003, 'C�digo da obriga��o a recolher, conforme a Tabela 5.4                                                    ');
   FormatoNum (VL_OR,     255, 'Valor da obriga��o a recolher                                                                            ');
   ddmmaaaaToSPEDDate(DT_VCTO);
   FormatoNum (DT_VCTO,   008, 'Data de vencimento da obriga��o                                                                          ');
   FormatoAlfa(COD_REC,   255, 'C�digo de receita referente � obriga��o, pr�prio da unidade da federa��o, conforme legisla��o estadual,  ');
   FormatoAlfa(NUM_PROC,  015, 'N�mero do processo ou auto de infra��o ao qual a obriga��o est� vinculada, se houver.                    '); // todo mudan�a do tamanha de 255 para 015
   FormatoAlfa(IND_PROC,  001, 'Indicador da origem do processo:                                                                         ');
   FormatoAlfa(PROC,      255, 'Descri��o resumida do processo que embasou o lan�amento                                                  ');
   FormatoAlfa(TXT_COMPL, 255, 'Descri��o complementar das obriga��es a recolher.                                                        ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not IsSPEDDate(DT_VCTO) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_VCTO);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + COD_OR + VL_OR + DT_VCTO + COD_REC + NUM_PROC + IND_PROC + PROC + TXT_COMPL);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroE116 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E200 - PER�ODO DA APURA��O DO ICMS - SUBSTITUI��O TRIBUT�RIA

 @Author Juliana Andrade
 @Version 20/4/2009 00:39:37 �ltima altera��o por  Juliana Andrade

 @param UF     'Sigla da unidade da federa��o a que se refere a apura��o do ICMS ST
 @param DT_INI 'Data inicial a que a apura��o se refere
 @param DT_FIN 'Data final a que a apura��o se refere

 @return Caso nenhum erro encontrado retorna RegistroE200 devidamente formatado |E200| + UF + DT_INI + DT_FIN
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_INI
 @return '-2   Data Final Inv�lida (DDMMAAAA) :: ' + DT_FIN
-------------------------------------------------------------------------------}
Function RegistroE200(UF, DT_INI, DT_FIN: String): Integer; stdcall; export;

const
 Tipo = 'E200';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(UF,         002, 'Sigla da unidade da federa��o a que se refere a apura��o do ICMS ST                                                                                                                                                       ');
  ddmmaaaaToSPEDDate(DT_INI);
  FormatoNum (DT_INI,     008, 'Data inicial a que a apura��o se refere                                                                                                                                                                                   ');
  ddmmaaaaToSPEDDate(DT_FIN);
  FormatoNum (DT_FIN,     008, 'Data final a que a apura��o se refere                                                                                                                                                                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_INI)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_INI);

if not(IsSPEDDate(DT_FIN)) then
 ErroTStr.add('-2   Data Final Inv�lida (DDMMAAAA) :: ' + DT_FIN);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + UF + DT_INI + DT_FIN);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroE200 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E210 - APURA��O DO ICMS - SUBSTITUI��O TRIBUT�RIA

 @Author Juliana Andrade
 @Version 20/4/2009 00:46:54 �ltima altera��o por  Juliana Andrade

 @param IND_MOV_ST                 'Indicador de movimento: 0 - Sem opera��es com ST; 1 - Com opera��es de ST
 @param VL_SLD_CRED_ANT_ST         'Valor do "Saldo credor de per�odo anterior - Substitui��o Tribut�ria"
 @param VL_DEVOL_ST                'Valor total do ICMS ST de devolu��o de mercadorias
 @param VL_RESSARC_ST              'Valor total do ICMS ST de ressarcimentos
 @param VL_OUT_CRED_ST             'Valor total de Ajustes "Outros cr�ditos ST" e "Estorno de d�bitos ST"
 @param VL_AJ_CREDITOS_ST          'Valor total dos ajustes a cr�dito de ICMS ST, provenientes de ajustes do documento fiscal.
 @param VL_RETENCAO_ST             'Valor Total do ICMS retido por Substitui��o Tribut�ria
 @param VL_OUT_DEB_ST              'Valor Total dos ajustes "Outros d�bitos ST" e "Estorno de cr�ditos ST"
 @param VL_AJ_DEBITOS_ST           'Valor total dos ajustes a d�bito de ICMS ST, provenientes de ajustes do documento fiscal.
 @param VL_SLD_DEV_ANT_ST          'Valor total de "Saldo devedor antes das dedu��es" = (08+09+10)-(03+04+05+06+07)]
 @param VL_DEDUCOES_ST             'Valor total dos ajustes "Dedu��es ST"
 @param VL_ICMS_RECOL_ST           'Imposto a recolher ST (11-12)
 @param VL_SLD_CRED_ST_TRANSPORTAR 'Saldo credor de ST a transportar para o per�odo seguinte [(03+04+05+06+07)� (08+09+10)].
 @param DEB_ESP_ST                 'Valores   recolhidos   ou   a   recolher,   extra-apura��o.

 @return Caso nenhum erro encontrado retorna RegistroE210 devidamente formatado |E210| + IND_MOV_ST + VL_SLD_CRED_ANT_ST + VL_DEVOL_ST + VL_RESSARC_ST + VL_OUT_CRED_ST + VL_AJ_CREDITOS_ST + VL_RETEN�AO_ST + VL_OUT_DEB_ST + VL_AJ_DEBITOS_ST + VL_SLD_DEV_ANT_ST + VL_DEDU��ES_ST + VL_ICMS_RECOL_ST + VL_SLD_CRED_ST_TRANSPORTAR + DEB_ESP_ST
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador de movimento invalido ' + IND_MOV_ST
-------------------------------------------------------------------------------}
Function RegistroE210(IND_MOV_ST, VL_SLD_CRED_ANT_ST, VL_DEVOL_ST, VL_RESSARC_ST, VL_OUT_CRED_ST,
                      VL_AJ_CREDITOS_ST, VL_RETENCAO_ST, VL_OUT_DEB_ST, VL_AJ_DEBITOS_ST,
                      VL_SLD_DEV_ANT_ST, VL_DEDUCOES_ST, VL_ICMS_RECOL_ST, VL_SLD_CRED_ST_TRANSPORTAR, DEB_ESP_ST: String): Integer; stdcall; export;

const
 Tipo = 'E210';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(IND_MOV_ST,                     001, 'Indicador de movimento: 0 - Sem opera��es com ST; 1 - Com opera��es de ST                                                                                                                                                 ');
  FormatoNum (VL_SLD_CRED_ANT_ST,             255, 'Valor do "Saldo credor de per�odo anterior - Substitui��o Tribut�ria"                                                                                                                                                     ');
  FormatoNum (VL_DEVOL_ST,                    255, 'Valor total do ICMS ST de devolu��o de mercadorias                                                                                                                                                                        ');
  FormatoNum (VL_RESSARC_ST,                  255, 'Valor total do ICMS ST de ressarcimentos                                                                                                                                                                                  ');
  FormatoNum (VL_OUT_CRED_ST,                 255, 'Valor total de Ajustes "Outros cr�ditos ST" e "Estorno de d�bitos ST"                                                                                                                                                     ');
  FormatoNum (VL_AJ_CREDITOS_ST,              255, 'Valor total dos ajustes a cr�dito de ICMS ST, provenientes de ajustes do documento fiscal.                                                                                                                                ');
  FormatoNum (VL_RETENCAO_ST,                 255, 'Valor Total do ICMS retido por Substitui��o Tribut�ria                                                                                                                                                                    ');
  FormatoNum (VL_OUT_DEB_ST,                  255, 'Valor Total dos ajustes "Outros d�bitos ST" e "Estorno de cr�ditos ST"                                                                                                                                                    ');
  FormatoNum (VL_AJ_DEBITOS_ST,               255, 'Valor total dos ajustes a d�bito de ICMS ST, provenientes de ajustes do documento fiscal.                                                                                                                                 ');
  FormatoNum (VL_SLD_DEV_ANT_ST,              255, 'Valor total de "Saldo devedor antes das dedu��es" = (08+09+10)-(03+04+05+06+07)]                                                                                                                                          ');
  FormatoNum (VL_DEDUCOES_ST,                 255, 'Valor total dos ajustes "Dedu��es ST"                                                                                                                                                                                     ');
  FormatoNum (VL_ICMS_RECOL_ST,               255, 'Imposto a recolher ST (11-12)                                                                                                                                                                                             ');
  FormatoNum (VL_SLD_CRED_ST_TRANSPORTAR,     255, 'Saldo credor de ST a transportar para o per�odo seguinte [(03+04+05+06+07)� (08+09+10)].                                                                                                                                  ');
  FormatoNum (DEB_ESP_ST,                     255, 'Valores   recolhidos   ou   a   recolher,   extra-apura��o.                                                                                                                                                               ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
 if not vIND_MOV_ST(IND_MOV_ST) then
 ErroTStr.add('-1   Indicador de movimento invalido ' + IND_MOV_ST);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + IND_MOV_ST + VL_SLD_CRED_ANT_ST + VL_DEVOL_ST + VL_RESSARC_ST + VL_OUT_CRED_ST + VL_AJ_CREDITOS_ST + VL_RETENCAO_ST + VL_OUT_DEB_ST + VL_AJ_DEBITOS_ST + VL_SLD_DEV_ANT_ST + VL_DEDUCOES_ST + VL_ICMS_RECOL_ST + VL_SLD_CRED_ST_TRANSPORTAR + DEB_ESP_ST);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroE210 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E220: AJUSTE/BENEF�CIO/INCENTIVO DA APURA��O DO ICMS SUBSTITUI��O TRIBUT�RIA ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_AJ_APUR    'C�digo do ajuste da apura��o e dedu��o, conforme a Tabela indicada no item 5.1.1
 @param DESCR_COMPL_AJ 'Descri��o complementar do ajuste da apura��o
 @param VL_AJ_APUR     'Valor do ajuste da apura��o

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E220|' + COD_AJ_APUR, DESCR_COMPL_AJ, VL_AJ_APUR
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function RegistroE220(COD_AJ_APUR, DESCR_COMPL_AJ, VL_AJ_APUR: String): Integer; stdcall; export;

const
 Tipo = 'E220';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_AJ_APUR,        008, 'C�digo do ajuste da apura��o e dedu��o, conforme a Tabela indicada no item 5.1.1  ');
   FormatoAlfa(DESCR_COMPL_AJ,     255, 'Descri��o complementar do ajuste da apura��o                                      ');
   FormatoNum (VL_AJ_APUR,         255, 'Valor do ajuste da apura��o                                                       ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_AJ_APUR + DESCR_COMPL_AJ + VL_AJ_APUR);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de RegistroE220 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E230: INFORMA��ES ADICIONAIS DOS AJUSTES DA APURA��O DO ICMS SUBSTITUI��O TRIBUT�RIA ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_DA    'N�mero do documento de arrecada��o estadual, se houver
 @param NUM_PROC  'N�mero do processo ao qual o ajuste est� vinculado, se houver
 @param IND_PROC  'Indicador da origem do processo:
 @param PROC      'Descri��o resumida do processo que embasou o lan�amento
 @param TXT_COMPL 'Descri��o complementar

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E230|' + NUM_DA, NUM_PROC, IND_PROC, PROC, TXT_COMPL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador da origem do processo : ' + IND_PROC
-------------------------------------------------------------------------------}
Function RegistroE230(NUM_DA, NUM_PROC, IND_PROC, PROC, TXT_COMPL: String): Integer; stdcall; export;

const
 Tipo = 'E230';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(NUM_DA,       255, 'N�mero do documento de arrecada��o estadual, se houver                            ');
   FormatoAlfa(NUM_PROC,     014, 'N�mero do processo ao qual o ajuste est� vinculado, se houver                     '); // todo mudan�a do tamanha de 255 para 014
   FormatoNum (IND_PROC,     001, 'Indicador da origem do processo:                                                  ');
   FormatoAlfa(PROC,         255, 'Descri��o resumida do processo que embasou o lan�amento                           ');
   FormatoAlfa(TXT_COMPL,    255, 'Descri��o complementar                                                            ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not vInd_origem_processo(IND_PROC) then
    ErroTStr.add('-1   Indicador da origem do processo : ' + IND_PROC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + NUM_DA + NUM_PROC + IND_PROC + PROC + TXT_COMPL);

    //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroE230 ---
 //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E240: INFORMA��ES ADICIONAIS DOS AJUSTES DA APURA��O DO ICMS SUBSTITUI��O TRIBUT�RIA - IDENTIFICA��O DOS DOCUMENTOS FISCAIS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART   'C�digo do participante (campo 02 do Registro 0150):
 @param COD_MOD    'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
 @param SER        'S�rie do documento fiscal
 @param SUB        'Subserie do documento fiscal
 @param NUM_DOC    'N�mero do documento fiscal
 @param DT_DOC     'Data da emiss�o do documento fiscal
 @param COD_ITEM   'C�digo do item (campo 02 do Registro 0200)
 @param VL_AJ_ITEM 'Valor do ajuste para a opera��o/item

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E240|' + COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC, COD_ITEM, VL_AJ_ITEM
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 @return '-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD
-------------------------------------------------------------------------------}
Function RegistroE240(COD_PART, COD_MOD, SER, SUB, NUM_DOC, DT_DOC, COD_ITEM, VL_AJ_ITEM: String): Integer; stdcall; export;

const
 Tipo = 'E240';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_PART,       060, 'C�digo do participante (campo 02 do Registro 0150):                               '); // todo mudan�a do tamanha de 255 para 60
   FormatoAlfa(COD_MOD,        002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                     ');
   FormatoAlfa(SER,            004, 'S�rie do documento fiscal                                                         '); // todo mudan�a do tamanha de 255 para 004
   FormatoNum (SUB,            003, 'Subserie do documento fiscal                                                      '); // todo mudan�a do tamanha de 255 para 003
   FormatoNum (NUM_DOC,        009, 'N�mero do documento fiscal                                                        '); // todo mudan�a do tamanha de 255 para 009
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,         008, 'Data da emiss�o do documento fiscal                                               ');
   //FormatoNum (CHV_NFE,      044, 'Chave da Nota Fiscal Eletr�nica                                                   '); // todo exclus�o do resistro CHV_NFE
   FormatoAlfa(COD_ITEM,       060, 'C�digo do item (campo 02 do Registro 0200)                                        '); // todo mudan�a do tamanha de 255 para 060
   FormatoNum (VL_AJ_ITEM,     255, 'Valor do ajuste para a opera��o/item                                              ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);
   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-2   Codigo do modelo do documento fiscal 4.1.1 inv�lido: ' + COD_MOD);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_PART + COD_MOD + SER + SUB + NUM_DOC + DT_DOC + COD_ITEM + VL_AJ_ITEM);

     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de RegistroE240 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E250 - OBRIGA��ES DO ICMS A RECOLHER - SUBSTITUI��O TRIBUT�RIA

 @Author Juliana Andrade
 @Version 20/4/2009 00:54:04 �ltima altera��o por  Juliana Andrade

 @param COD_OR    'C�digo da obriga��o a recolher, conforme a Tabela 5.4
 @param VL_OR     'Valor da obriga��o ICMS ST a recolher
 @param DT_VCTO   'Data de vencimento da obriga��o
 @param COD_REC   'C�digo   de   receita   referente   �   obriga��o,   pr�prio da unidade da federa��o
 @param NUM_PROC  'N�mero do processo ou auto de infra��o ao qual a obriga��o est� vinculada, se houver
 @param IND_PROC  'Indicador da origem do processo: 0- Sefaz; 1- Justi�a Federal; 2- Justi�a Estadual; 9- Outros
 @param PROC      'Descri��o resumida do processo que embasou o lan�amento
 @param TXT_COMPL 'Descri��o complementar das obriga��es a recolher

 @return Caso nenhum erro encontrado retorna RegistroE250 devidamente formatado |E250| + COD_OR + VL_OR + DT_VCTO + COD_REC + NUM_PROC + IND_PROC + PROC + TXT_COMPL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_VCTO
 @return '-2   Indicador da origem do processo inv�lido: ' + IND_PROC
-------------------------------------------------------------------------------}
Function RegistroE250(COD_OR, VL_OR, DT_VCTO, COD_REC, NUM_PROC, IND_PROC, PROC, TXT_COMPL: String): Integer; stdcall; export;

const
 Tipo = 'E250';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                             //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_OR,        003, 'C�digo da obriga��o a recolher, conforme a Tabela 5.4                                                                                                                                                                     ');
  FormatoNum (VL_OR,         255, 'Valor da obriga��o ICMS ST a recolher                                                                                                                                                                                     ');
  ddmmaaaaToSPEDDate(DT_VCTO);
  FormatoNum (DT_VCTO,       008, 'Data de vencimento da obriga��o                                                                                                                                                                                           ');
  FormatoAlfa(COD_REC,       255, 'C�digo de receita referente   �   obriga��o,   pr�prio da unidade da federa��o                                                                                                                                      ');
  FormatoAlfa(NUM_PROC,      015, 'N�mero do processo ou auto de infra��o ao qual a obriga��o est� vinculada, se houver                                                                                                                                      ');
  FormatoAlfa(IND_PROC,      001, 'Indicador da origem do processo: 0- Sefaz; 1- Justi�a Federal; 2- Justi�a Estadual; 9- Outros                                                                                                                             ');
  FormatoAlfa(PROC,          255, 'Descri��o resumida do processo que embasou o lan�amento                                                                                                                                                                   ');
  FormatoAlfa(TXT_COMPL,     255, 'Descri��o complementar das obriga��es a recolher                                                                                                                                                                          ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_VCTO)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_VCTO);

if not vInd_origem_processo(IND_PROC) then
 ErroTStr.add('-2   Indicador da origem do processo inv�lido: ' + IND_PROC);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_OR + VL_OR + DT_VCTO + COD_REC + NUM_PROC + IND_PROC + PROC + TXT_COMPL);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroE250 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E500 - PER�ODO DE APURA��O DO IPI-

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_APUR 'Indicador de per�odo de apura��o do IPI:
 @param DT_INI   'Data inicial a que a apura��o se refere
 @param DT_FIN   'Data final a que a apura��o se refere

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E500|' + IND_APUR, DT_INI, DT_FIN
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_INI
 @return '-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FIN
 @return '
-------------------------------------------------------------------------------}
Function RegistroE500(IND_APUR, DT_INI, DT_FIN: String): Integer; stdcall; export;
const
 Tipo    = 'E500';

begin
 NaoRegistrado;                                           //Testa se registrado
 Result := -1;                                            //Por default retorna Erro

 if Testa_State(tipo) then                                      //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(IND_APUR,     001, 'Indicador de per�odo de apura��o do IPI:   ');
   ddmmaaaaToSPEDDate(DT_INI);
   FormatoNum (DT_INI,       008, 'Data inicial a que a apura��o se refere    ');
   ddmmaaaaToSPEDDate(DT_FIN);
   FormatoNum (DT_FIN,       008, 'Data final a que a apura��o se refere      ');


   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not IsSPEDDate(DT_INI) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_INI);
   if not IsSPEDDate(DT_FIN) then
    ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_FIN);
   if not vIND_APUR(IND_APUR) then
    ErroTStr.add('-3   Indicador de per�odo de apura��o do IPI: ' + IND_APUR);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_APUR + DT_INI + DT_FIN);
    end
   else
    begin
     Trata_Erro(ErroTStr);


     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroE500 ---
//ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E510 - CONSOLIDA��O DOS VALORES DO IPI POR CFOP E C�DIGO DE TRIBUTA��O DO IPI ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param CFOP           'C�digo Fiscal de Opera��o e Presta��o do agrupamento de itens:
 @param CST_IPI        'C�digo da Situa��o Tribut�ria referente ao IPI:
 @param VL_CONT_IPI    'Parcela correspondente ao "Valor Cont�bil":
 @param VL_BC_IPI      'Parcela correspondente ao "Valor da base de c�lculo do IPI"
 @param VL_IPI_P       'Parcela correspondente ao "Valor do IPI":

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E510|' + CFOP + CST_IPI + VL_CONT_IPI + VL_BC_IPI + VL_IPI
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido : ' + CFOP
 -------------------------------------------------------------------------------}
Function RegistroE510(CFOP, CST_IPI, VL_CONT_IPI, VL_BC_IPI, VL_IPI:String): Integer; stdcall; export; // todo alterar demo
const
 Tipo = 'E510';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoAlfa(CFOP,            004, 'C�digo Fiscal de Opera��o e Presta��o do agrupamento de itens:');
   FormatoNum (CST_IPI,         002, 'C�digo de Tributa��o do IPI creditado/debitado:               ');  // todo corre�ao do campo de "CTIPI" para "CST_IPI"
   FormatoNum (VL_CONT_IPI,     255, 'Parcela correspondente ao "Valor Cont�bil":                   ');  // todo corre�ao do campo de "VL_CONT_IPI_P" para "VL_CONT_IPI"
   FormatoNum (VL_BC_IPI,       255, 'Parcela correspondente ao "Valor da base de c�lculo do IPI":  ');  // todo corre�ao do campo de "VL_BC_IPI_P" para "VL_BC_IPI"
   FormatoNum (VL_IPI,          255, 'Parcela correspondente ao "Valor do IPI":                     ');  // todo corre�ao do campo de "VL_IPI_P" para "VL_IPI"

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not vCOD_CFOP(CFOP) then
    ErroTStr.add('-1   Numero de CFOP inv�lido : ' + CFOP);


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + CFOP + CST_IPI + VL_CONT_IPI + VL_BC_IPI + VL_IPI);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroE510 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E520 - APURA��O DO IPI ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param VL_SD_ANT_IPI 'Saldo credor do IPI transferido do per �odo anterior:
 @param VL_DEB_IPI    'Valor total dos d�bitos por "Sa�das com d�bito do imposto":
 @param VL_CRED_IPI   'Valor total dos cr�ditos por "Entradas e aquisi��es com cr�dito do imposto":
 @param VL_OD_IPI     'Valor de "Outros d�bitos" do IPI (inclusive estornos de cr�dito):
 @param VL_OC_IPI     'Valor de "Outros cr �ditos" do IPI (inclusive estornos de cr�dito):
 @param VL_SC_IPI     'Valor do saldo credor do IPI a transportar para o per �odo seguinte:
 @param VL_SD_IPI     'Valor do saldo devedor do IPI a recolher:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E530|' + VL_SD_ANT_IPI,VL_DEB_IPI,VL_CRED_IPI,VL_OD_IPI,VL_OC_IPI,VL_SC_IPI,VL_SD_IPI
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 -------------------------------------------------------------------------------}
Function RegistroE520(VL_SD_ANT_IPI,VL_DEB_IPI,VL_CRED_IPI,VL_OD_IPI,VL_OC_IPI,
                      VL_SC_IPI,VL_SD_IPI:String): Integer; stdcall; export;
const
 Tipo = 'E520';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

    //Formata��o dos Campos
   FormatoNum(VL_SD_ANT_IPI,      255, 'Saldo credor do IPI transferido do per �odo anterior:                       ');
   FormatoNum(VL_DEB_IPI,         255, 'Valor total dos d�bitos por "Sa�das com d�bito do imposto":                 ');
   FormatoNum(VL_CRED_IPI,        255, 'Valor total dos cr�ditos por "Entradas e aquisi��es com cr�dito do imposto":');
   FormatoNum(VL_OD_IPI,          255, 'Valor de "Outros d�bitos" do IPI (inclusive estornos de cr�dito):           ');
   FormatoNum(VL_OC_IPI,          255, 'Valor de "Outros cr �ditos" do IPI (inclusive estornos de cr�dito):         ');
   FormatoNum(VL_SC_IPI,          255, 'Valor do saldo credor do IPI a transportar para o per �odo seguinte:        ');
   FormatoNum(VL_SD_IPI,          255, 'Valor do saldo devedor do IPI a recolher:                                   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + VL_SD_ANT_IPI + VL_DEB_IPI + VL_CRED_IPI + VL_OD_IPI
               + VL_OC_IPI + VL_SC_IPI + VL_SD_IPI);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de RegistroE520 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro E530 - AJUSTES DA APURA��O DO IPI

 @Author Juliana Andrade
 @Version 20/4/2009 01:02:58 �ltima altera��o por  Juliana Andrade

 @param IND_AJ   'Indicador do tipo de ajuste: 0- Ajuste a d�bito; 1- Ajuste a cr�dito
 @param VL_AJ    'Valor do ajuste
 @param COD_AJ   'C�digo do ajuste da apura��o, conforme a Tabela indicada no item 4.5.4.
 @param IND_DOC  'Indicador da origem do documento vinculado ao ajuste: 0 - Processo Judicial; 1 - Processo Administrativo; 2 - PER/DCOMP; 9 - Outros.
 @param NUM_DOC  'N�mero do documento / processo / declara��o ao qual o ajuste est� vinculado, se houver
 @param DESCR_AJ 'Descri��o resumida do ajuste.

 @return Caso nenhum erro encontrado retorna RegistroE530 devidamente formatado |E530| + IND_AJ + VL_AJ + COD_AJ + IND_DOC + NUM_DOC + DESCR_AJ
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador do tipo de ajuste: ' + IND_AJ
 @return '-2   Indicador da origem do documento vinculado ao ajuste: ' + IND_DOC
-------------------------------------------------------------------------------}
Function RegistroE530(IND_AJ, VL_AJ, COD_AJ, IND_DOC, NUM_DOC, DESCR_AJ: String): Integer; stdcall; export;

const
 Tipo = 'E530';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(IND_AJ,       001, 'Indicador do tipo de ajuste: 0- Ajuste a d�bito; 1- Ajuste a cr�dito                                                                                                                                                      ');
  FormatoNum (VL_AJ,        255, 'Valor do ajuste                                                                                                                                                                                                           ');
  FormatoAlfa(COD_AJ,       003, 'C�digo do ajuste da apura��o, conforme a Tabela indicada no item 4.5.4.                                                                                                                                                   ');
  FormatoAlfa(IND_DOC,      001, 'Indicador da origem do documento vinculado ao ajuste: 0 - Processo Judicial; 1 - Processo Administrativo; 2 - PER/DCOMP; 9 - Outros.                                                                                      ');
  FormatoAlfa(NUM_DOC,      255, 'N�mero do documento / processo / declara��o ao qual o ajuste est� vinculado, se houver                                                                                                                                    ');
  FormatoAlfa(DESCR_AJ,     255, 'Descri��o resumida do ajuste.                                                                                                                                                                                             ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vIND_AJ(IND_AJ) then
 ErroTStr.add('-1   Indicador do tipo de ajuste: ' + IND_AJ);

if not vIND_DOC(IND_DOC) then
 ErroTStr.add('-2   Indicador da origem do documento vinculado ao ajuste: ' + IND_DOC);


//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + IND_AJ + VL_AJ + COD_AJ + IND_DOC + NUM_DOC + DESCR_AJ);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroE530 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro E990 - ENCERRAMENTO DO BLOCO E ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_E Quantidade total de linhas do Bloco E:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|E990|' + QTD_LIN_E
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 -------------------------------------------------------------------------------}

Function RegistroE990: Integer; stdcall; export;
const
 Tipo    = 'E990';

var
 i, x: integer;
 QTD_LIN_E: String;
begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;

 if Testa_State(tipo) then
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('E') then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_E := inttostr(i);

   //Formata��o dos Campos
   FormatoNum(QTD_LIN_E,      255, 'Quantidade total de linhas do Bloco E:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_E);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroE990 ---
//ShowMessage(Result);
end;

//---------------------- BLOCO G: CONTROLE CIAP---------------------------------

{*------------------------------------------------------------------------------
 BLOCO G: Controle do Cr�dito de ICMS do Ativo Permanente � CIAP
 Registro G001 - ABERTURA DO BLOCO G

 @Author Marcelo Marques Gon�alves
 @Version 21/11/2011 �ltima altera��o por Marcelo Marques Gon�alves

 @param IND_MOV Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|H001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return -2   Indicador de movimento : ' + IND_MOV
 -------------------------------------------------------------------------------}
 Function RegistroG001(IND_MOV:String): Integer; stdcall; export;
const
 Tipo = 'G001';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(IND_MOV,    01, 'Indicador de movimento:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroG001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro G990 - ENCERRAMENTO DO BLOCO G ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_G  'Quantidade total de linhas do Bloco G:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|G990|' + QTD_LIN_G
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 -------------------------------------------------------------------------------}
Function RegistroG990: Integer; stdcall; export;
const
 Tipo = 'G990';
var
 x, i: integer;
 QTD_LIN_G: String;
begin
 NaoRegistrado;
 Result := -1;

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('G') then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_G := inttostr(i);

   //Formata��o dos Campos
   FormatoNum (QTD_LIN_G,        255, 'Quantidade total de linhas do Bloco H:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_G);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroG990 ---
//ShowMessage(Result);
end;





//---------------------- BLOCO H: INVENT�RIO F�SICO ----------------------------

{*------------------------------------------------------------------------------
 BLOCO H: INVENT�RIO F�SICO
 Registro H001 - ABERTURA DO BLOCO H

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_MOV Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|H001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return -2   Indicador de movimento : ' + IND_MOV
 -------------------------------------------------------------------------------}
 Function RegistroH001(IND_MOV:String): Integer; stdcall; export;
const
 Tipo = 'H001';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(IND_MOV,    01, 'Indicador de movimento:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroH001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro H005 - TOTAIS DO INVENT�RIO

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param DT_INV  'Data do invent�rio:
 @param VL_INV  'Valor total do estoque:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|H005|' + DT_INV,VL_INV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Data Final Inv�lida (AAAAMMDD) : ' + DT_INV
 -------------------------------------------------------------------------------}
Function RegistroH005(DT_INV,VL_INV:String): Integer; stdcall; export;
const
 Tipo = 'H005';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   ddmmaaaaToSPEDDate(DT_INV);
   FormatoNum(DT_INV,            008, 'Data do invent�rio:    ');
   FormatoNum(VL_INV,            255, 'Valor total do estoque:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if not IsSPEDDate(DT_INV) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_INV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + DT_INV + VL_INV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroH005 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro H010 - INVENT�RIO

 @Author Juliana Andrade
 @Version 16/4/2009 09:34:35 �ltima altera��o por Juliana Andrade

 @param COD_ITEM 'C�digo do item (campo 02 do Registro 0200)
 @param UNID     'Unidade do item
 @param QTD      'Quantidade do item
 @param VL_UNIT  'Valor unit�rio do item
 @param VL_ITEM  'Valor do item
 @param IND_PROP 'Indicador de propriedade/posse do item: 0- Item de propriedade do informante e em seu poder; 1- Item de propriedade do informante em posse de terceiros; 2- Item de propriedade de terceiros em posse do informante
 @param COD_PART 'C�digo do participante (campo 02 do Registro 0150): propriet�rio/possuidor que n�o seja o informante do arquivo
 @param TXT_COMP 'Descri��o complementar.
 @param COD_CTA  'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroH010 devidamente formatado |H010| + COD_ITEM + UNID + QTD + VL_UNIT + VL_ITEM + IND_PROP + COD_PART + TXT_COMP + COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Indicador de propriedade/posse do item: inv�lido: ' + IND_PROP

-------------------------------------------------------------------------------}
Function RegistroH010(COD_ITEM, UNID, QTD, VL_UNIT, VL_ITEM, IND_PROP, COD_PART, TXT_COMP, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = 'H010';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_ITEM,     060, 'C�digo do item (campo 02 do Registro 0200)                                                                                                                                                                           ');
  FormatoAlfa(UNID,         006, 'Unidade do item                                                                                                                                                                                                      ');
  FormatoNum (QTD,          255, 'Quantidade do item                                                                                                                                                                                                   ');
  FormatoNum (VL_UNIT,      255, 'Valor unit�rio do item                                                                                                                                                                                               ');
  FormatoNum (VL_ITEM,      255, 'Valor do item                                                                                                                                                                                                        ');
  FormatoAlfa(IND_PROP,     001, 'Indicador de propriedade/posse do item: 0- Item de propriedade do informante e em seu poder; 1- Item de propriedade do informante em posse de terceiros; 2- Item de propriedade de terceiros em posse do informante  ');
  FormatoAlfa(COD_PART,     060, 'C�digo do participante (campo 02 do Registro 0150): propriet�rio/possuidor que n�o seja o informante do arquivo                                                                                                      ');
  FormatoAlfa(TXT_COMP,     255, 'Descri��o complementar.                                                                                                                                                                                              ');
  FormatoAlfa(COD_CTA,      255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                                                                                                                                ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vIND_PROP(IND_PROP) then
 ErroTStr.add('-1   Indicador de propriedade/posse do item: inv�lido: ' + IND_PROP);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_ITEM + UNID + QTD + VL_UNIT + VL_ITEM + IND_PROP + COD_PART + TXT_COMP + COD_CTA);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de RegistroH010 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro H990 - ENCERRAMENTO DO BLOCO H ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_H  'Quantidade total de linhas do Bloco H:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|H990|' + QTD_LIN_H
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 -------------------------------------------------------------------------------}
Function RegistroH990: Integer; stdcall; export;
const
 Tipo = 'H990';
var
 x, i: integer;
 QTD_LIN_H: String;
begin
 NaoRegistrado;
 Result := -1;

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('H') then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_H := inttostr(i);

   //Formata��o dos Campos
   FormatoNum (QTD_LIN_H,        255, 'Quantidade total de linhas do Bloco H:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_H);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de RegistroH990 ---
//ShowMessage(Result);
end;

//------------ BLOCO 1: OUTRAS INFORMA��ES -------------

{*------------------------------------------------------------------------------
 BLOCO 1: OUTRAS INFORMA��ES
 Registro 1001 - ABERTURA DO BLOCO 1 ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_MOV  'Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return -2   Indicador de movimento : ' + IND_MOV
 -------------------------------------------------------------------------------}
Function Registro1001(IND_MOV:String): Integer; stdcall; export;
const
 Tipo = '1001';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum(IND_MOV,    01, 'Indicador de movimento:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro1001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
  Registro 1100: REGISTRO DE INFORMA��ES SOBRE EXPORTA��O ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_DOC 'Informe o tipo de documento:
 @param NRO_DE  'N�mero da declara��o
 @param DT_DE   'Data da declara��o (DDMMAAAA)
 @param NAT_EXP 'Preencher com:
 @param NRO_RE  'N� do registro de Exporta��o
 @param DT_RE   'Data do Registro de Exporta��o (DDMMAAAA)
 @param CHC_EMB 'N� do conhecimento de embarque
 @param DT_CHC  'Data do conhecimento de embarque (DDMMAAAA)
 @param DT_AVB  'Data da averba��o da Declara��o de exporta��o (ddmmaaaa)
 @param TP_CHC  'Informa��o do tipo de conhecimento de transporte (Preencher conforme tabela de tipo de documento de carga do SISCOMEX)
 @param PAIS    'C�digo do pa�s de destino da mercadoria (Preencher conforme tabela do SISCOMEX)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1100|' + IND_DOC, NRO_DE, DT_DE, NAT_EXP, NRO_RE, DT_RE, CHC_EMB, DT_CHC, DT_AVB, TP_CHC, PAIS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DE
 @return '-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_RE
 @return '-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_CHC
 @return '-4   Data Final Inv�lida (AAAAMMDD) : ' + DT_AVB
 @return '-5   Informe o tipo de documento: ' + IND_DOC
 @return '-6   Informa��o do tipo de conhecimento de transporte inv�lido ' + TP_CHC
 -------------------------------------------------------------------------------}
 Function Registro1100(IND_DOC, NRO_DE, DT_DE, NAT_EXP, NRO_RE, DT_RE, CHC_EMB, DT_CHC, DT_AVB, TP_CHC, PAIS: String): Integer; stdcall; export;

const
 Tipo = '1100';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (IND_DOC,     001, 'Informe o tipo de documento:                                                                                            ');
   FormatoNum (NRO_DE,      011, 'N�mero da declara��o                                                                                                    ');
   ddmmaaaaToSPEDDate(DT_DE);
   FormatoNum (DT_DE,       008, 'Data da declara��o (DDMMAAAA)                                                                                           ');
   FormatoNum (NAT_EXP,     001, 'Preencher com:                                                                                                          ');
   FormatoNum (NRO_RE,      012, 'N� do registro de Exporta��o                                                                                            ');
   ddmmaaaaToSPEDDate(DT_RE);
   FormatoNum (DT_RE,       008, 'Data do Registro de Exporta��o (DDMMAAAA)                                                                               ');
   FormatoAlfa (CHC_EMB,    016, 'N� do conhecimento de embarque                                                                                          ');
   ddmmaaaaToSPEDDate(DT_CHC);
   FormatoNum (DT_CHC,      008, 'Data do conhecimento de embarque (DDMMAAAA)                                                                             ');
   ddmmaaaaToSPEDDate(DT_AVB);
   FormatoNum (DT_AVB,      008, 'Data da averba��o da Declara��o de exporta��o (ddmmaaaa)                                                                ');
   FormatoNum (TP_CHC,      002, 'Informa��o do tipo de conhecimento de transporte (Preencher conforme tabela de tipo de documento de carga do SISCOMEX)  ');
   FormatoNum (PAIS,        003, 'C�digo do pa�s de destino da mercadoria (Preencher conforme tabela do SISCOMEX)                                         ');

  //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
  //ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

  //Teste de Integridade dos campos

  if not IsSPEDDate(DT_DE) then
   ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DE);

  if not IsSPEDDate(DT_RE) then
   ErroTStr.add('-2   Data Final Inv�lida (AAAAMMDD) : ' + DT_RE);

  if not IsSPEDDate(DT_CHC) then
   ErroTStr.add('-3   Data Final Inv�lida (AAAAMMDD) : ' + DT_CHC);

  if not IsSPEDDate(DT_AVB) then
   ErroTStr.add('-4   Data Final Inv�lida (AAAAMMDD) : ' + DT_AVB);

  if not vIND_DOC_Informe_tipo_documento(IND_DOC) then
   ErroTStr.add('-5   Informe o tipo de documento: ' + IND_DOC);

  if not vTP_CHC(TP_CHC) then
   ErroTStr.add('-6   Informa��o do tipo de conhecimento de transporte inv�lido ' + TP_CHC);

  //Incremento do contador de observa��es
  if ObsTStr.count > 0 then
   Inc(RegSPED[IdxOfReg(tipo)].obs);

  //Resposta em caso de n�o haver erros
  if ErroTStr.count = 0 then
   begin
    result := 0;
    Trata_SPED('|' + Tipo + '|' + IND_DOC + NRO_DE + DT_DE + NAT_EXP + NRO_RE + DT_RE + CHC_EMB + DT_CHC + DT_AVB + TP_CHC + PAIS);

  //Incremento do contador de registros
    Inc(RegSPED[IdxOfReg(tipo)].ok);
   end
  else
   begin
    Trata_Erro(ErroTStr);

    //Incremento do contador de erros
    Inc(RegSPED[IdxOfReg(tipo)].erro);
   end;
  end;

   //--- Teste de Registro1100 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
  Registro 1105: DOCUMENTOS FISCAIS DE EXPORTA��O ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_MOD  'C�digo do modelo da NF, conforme tabela 4.1.1
 @param SERIE    'S�rie da Nota Fiscal
 @param NUM_DOC  'N�mero de Nota Fiscal de Exporta��o emitida pelo Exportador
 @param CHV_NFE  'Chave da Nota Fiscal Eletr�nica
 @param DT_DOC   'Data da emiss�o da NF de exporta��o
 @param COD_ITEM 'C�digo do item (campo 02 do Registro 0200)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1105|' + COD_MOD, SERIE, NUM_DOC, CHV_NFE, DT_DOC, COD_ITEM
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 @return '-2   C�digo do modelo da NF, conforme tabela 4.1.1 inv�lido ' + COD_MOD
 -------------------------------------------------------------------------------}
Function Registro1105(COD_MOD, SERIE, NUM_DOC, CHV_NFE, DT_DOC, COD_ITEM: String): Integer; stdcall; export;

const
 Tipo = '1105';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_MOD,      002, 'C�digo do modelo da NF, conforme tabela 4.1.1                                                                           ');
   FormatoAlfa(SERIE,        003, 'S�rie da Nota Fiscal                                                                                                    ');
   FormatoNum (NUM_DOC,      009, 'N�mero de Nota Fiscal de Exporta��o emitida pelo Exportador                                                             '); // todo mudan�a no tamanho de 006 para 009
   FormatoNum (CHV_NFE,      044, 'Chave da Nota Fiscal Eletr�nica                                                                                         ');
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,       008, 'Data da emiss�o da NF de exporta��o                                                                                     ');
   FormatoAlfa(COD_ITEM,     255, 'C�digo do item (campo 02 do Registro 0200)                                                                              '); // todo mudan�a no tamanho de 255 para 060

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

    //Teste de Integridade dos campos

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-2   C�digo do modelo da NF, conforme tabela 4.1.1 inv�lido ' + COD_MOD);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_MOD + SERIE + NUM_DOC + CHV_NFE + DT_DOC + COD_ITEM);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

   //--- Teste de Registro1105 ---
   //ShowMessage(Result);
end;
{*------------------------------------------------------------------------------
  Registro 1110: OPERA��ES DE EXPORTA��O INDIRETA DE PRODUTOS N�O INDUSTRIALIZADOS PELO ESTABELECIMENTO EMITENTE. ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_PART 'C�digo do participante-Fornecedor da Mercadoria destinada � exporta��o (campo 02 do Registro 0150)
 @param COD_MOD  'C�digo do documento fiscal, conforme a Tabela 4.1.1
 @param SER      'S�rie do documento fiscal recebido com fins espec�ficos de exporta��o.
 @param NUM_DOC  'N�mero do documento fiscal recebido com fins espec�ficos de exporta��o.
 @param DT_DOC   'Data da emiss�o do documento fiscal recebido com fins espec�ficos de exporta��o
 @param CHV_NFE  'Chave da Nota Fiscal Eletr�nica
 @param NR_      'N�mero do Memorando de Exporta��o
 @param QTD      'Quantidade do item efetivamente exportado.
 @param UNID     'Unidade do item  (Campo 02 do registro 0190)

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1110|' + COD_PART, COD_MOD, SER, NUM_DOC, DT_DOC, CHV_NFE, NR_, QTD, UNID
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 @return '-2   C�digo do documento fiscal, conforme a Tabela 4.1.1 inv�lido 
 -------------------------------------------------------------------------------}
Function Registro1110(COD_PART, COD_MOD, SER, NUM_DOC, DT_DOC, CHV_NFE, NR_, QTD, UNID: String): Integer; stdcall; export;
const
 Tipo = '1110';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_PART,     060, 'C�digo do participante-Fornecedor da Mercadoria destinada � exporta��o (campo 02 do Registro 0150)                      '); // todo mudan�a no tamanho de 255 para 60
   FormatoAlfa(COD_MOD,      002, 'C�digo do documento fiscal, conforme a Tabela 4.1.1                                                                     ');
   FormatoAlfa(SER,          004, 'S�rie do documento fiscal recebido com fins espec�ficos de exporta��o.                                                  '); // todo mudan�a no tamanho de 255 para 004
   FormatoNum (NUM_DOC,      009, 'N�mero do documento fiscal recebido com fins espec�ficos de exporta��o.                                                 '); // todo mudan�a no tamanho de 255 para 009
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,       008, 'Data da emiss�o do documento fiscal recebido com fins espec�ficos de exporta��o                                         ');
   FormatoNum (CHV_NFE,      044, 'Chave da Nota Fiscal Eletr�nica                                                                                         ');
   FormatoNum (NR_,          255, 'N�mero do Memorando de Exporta��o                                                                                       ');
   FormatoNum (QTD,          255, 'Quantidade do item efetivamente exportado.                                                                              ');
   FormatoAlfa(UNID,         006, 'Unidade do item  (Campo 02 do registro 0190)                                                                            '); // todo mudan�a no tamanho de 255 para 006

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-1   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-2   C�digo do documento fiscal, conforme a Tabela 4.1.1 inv�lido ' + COD_MOD);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_PART + COD_MOD + SER + NUM_DOC + DT_DOC + CHV_NFE + NR_ + QTD + UNID);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

   //--- Teste de Registro1110 ---
   //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
  Registro 1200: CONTROLE DE CR�DITOS FISCAIS - ICMS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_AJ_APUR  'C�digo de ajuste, conforme informado na Tabela indicada no item 5.1.1.
 @param SLD_CRED     'Saldo de cr�ditos fiscais de per�odos anteriores
 @param CRED_APR     'Total de cr�dito apropriado no m�s
 @param CRED_RECEB   'Total de cr�ditos recebidos por transfer�ncia
 @param CRED_UTIL    'Total de cr�ditos utilizados no per�odo
 @param SLD_CRED_FIM 'Saldo de cr�dito fiscal acumulado a transportar para o per�odo seguinte

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1200|' + COD_AJ_APUR, SLD_CRED, CRED_APR, CRED_RECEB, CRED_UTIL, SLD_CRED_FIM
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 -------------------------------------------------------------------------------}
 Function Registro1200(COD_AJ_APUR, SLD_CRED, CRED_APR, CRED_RECEB, CRED_UTIL, SLD_CRED_FIM: String): Integer; stdcall; export;

const
 Tipo = '1200';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_AJ_APUR,      008, 'C�digo de ajuste, conforme informado na Tabela indicada no item 5.1.1.                                                  ');
   FormatoNum (SLD_CRED,         255, 'Saldo de cr�ditos fiscais de per�odos anteriores                                                                        ');
   FormatoNum (CRED_APR,         255, 'Total de cr�dito apropriado no m�s                                                                                      ');
   FormatoNum (CRED_RECEB,       255, 'Total de cr�ditos recebidos por transfer�ncia                                                                           ');
   FormatoNum (CRED_UTIL,        255, 'Total de cr�ditos utilizados no per�odo                                                                                 ');
   FormatoNum (SLD_CRED_FIM,     255, 'Saldo de cr�dito fiscal acumulado a transportar para o per�odo seguinte                                                 ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
   result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_AJ_APUR + SLD_CRED + CRED_APR + CRED_RECEB + CRED_UTIL + SLD_CRED_FIM);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
   Trata_Erro(ErroTStr);

     //Incremento do contador de erros
    Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

    //--- Teste de Registro1200 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
  Registro 1210: UTILIZA��O DE CR�DITOS FISCAIS - ICMS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param TIPO_UTIL    'Tipo de utiliza��o do cr�dito:
 @param NR_DOC       'N�mero do documento utilizado na baixa de cr�ditos
 @param VL_CRED_UTIL 'Total de cr�dito utilizado

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1210|' + TIPO_UTIL, NR_DOC, VL_CRED_UTIL
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro1210(TIPO_UTIL, NR_DOC, VL_CRED_UTIL: String): Integer; stdcall; export;

const
 Tipo = '1210';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (TIPO_UTIL,        001, 'Tipo de utiliza��o do cr�dito:                                                                                          ');
   FormatoAlfa(NR_DOC,           255, 'N�mero do documento utilizado na baixa de cr�ditos                                                                      ');
   FormatoNum (VL_CRED_UTIL,     255, 'Total de cr�dito utilizado                                                                                              ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + TIPO_UTIL + NR_DOC + VL_CRED_UTIL);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de Registro1210 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 1300 - MOVIMENTA��O DI�RIA DE COMBUST�VEIS

 @Author Juliana Andrade
 @Version 20/4/2009 01:09:24 �ltima altera��o por  Juliana Andrade

 @param COD_ITEM     'C�digo do Produto, constante do registro 0200
 @param DT_FECH      'Data do fechamento da movimenta��o
 @param ESTQ_ABERT   'Estoque no inicio do dia, em litros
 @param VOL_ENTR     'Volume Recebido no dia (em litros)
 @param VOL_DISP     'Volume Dispon�vel (04 + 05), em litros
 @param VOL_SAIDAS   'Volume Total das Sa�das, em litros
 @param ESTQ_ESCR    'Estoque Escritural (06 - 07), litros
 @param VAL_AJ_PERDA 'Valor da Perda, em litros
 @param VAL_AJ_GANHO 'Valor do ganho, em litros
 @param FECH_FISICO  'Estoque de Fechamento, em litros

 @return Caso nenhum erro encontrado retorna Registro1300 devidamente formatado |1300| + COD_ITEM + DT_FECH + ESTQ_ABERT + VOL_ENTR + VOL_DISP + VOL_SAIDAS + ESTQ_ESCR + VAL_AJ_PERDA + VAL_AJ_GANHO + FECH_FISICO
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_FECH
-------------------------------------------------------------------------------}
Function Registro1300(COD_ITEM, DT_FECH, ESTQ_ABERT, VOL_ENTR, VOL_DISP, VOL_SAIDAS, ESTQ_ESCR,
                        VAL_AJ_PERDA, VAL_AJ_GANHO, FECH_FISICO: String): Integer; stdcall; export;

const
 Tipo = '1300';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_ITEM,         255, 'C�digo do Produto, constante do registro 0200                                                                                                                                                                             '); // todo mudan�a no tamanho de 060 para 255
  ddmmaaaaToSPEDDate(DT_FECH);
  FormatoNum (DT_FECH,          008, 'Data do fechamento da movimenta��o                                                                                                                                                                                        ');
  FormatoNum (ESTQ_ABERT,       255, 'Estoque no inicio do dia, em litros                                                                                                                                                                                       ');
  FormatoNum (VOL_ENTR,         255, 'Volume Recebido no dia (em litros)                                                                                                                                                                                        ');
  FormatoNum (VOL_DISP,         255, 'Volume Dispon�vel (04 + 05), em litros                                                                                                                                                                                    ');
  FormatoNum (VOL_SAIDAS,       255, 'Volume Total das Sa�das, em litros                                                                                                                                                                                        ');
  FormatoNum (ESTQ_ESCR,        255, 'Estoque Escritural (06 - 07), litros                                                                                                                                                                                      ');
  FormatoNum (VAL_AJ_PERDA,     255, 'Valor da Perda, em litros                                                                                                                                                                                                 ');
  FormatoNum (VAL_AJ_GANHO,     255, 'Valor do ganho, em litros                                                                                                                                                                                                 ');
  FormatoNum (FECH_FISICO,      255, 'Estoque de Fechamento, em litros                                                                                                                                                                                          ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_FECH)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_FECH);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_ITEM + DT_FECH + ESTQ_ABERT + VOL_ENTR + VOL_DISP + VOL_SAIDAS + ESTQ_ESCR + VAL_AJ_PERDA + VAL_AJ_GANHO + FECH_FISICO);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1300 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro 1310 - MOVIMENTA��O DI�RIA DE COMBUST�VEIS POR TANQUE

 @Author Juliana Andrade
 @Version 20/4/2009 01:13:43 �ltima altera��o por  Juliana Andrade

 @param NUM_TANQUE   'Tanque que armazena o combust�vel.
 @param ESTQ_ABERT   'Estoque no inicio do dia, em litros
 @param VOL_ENTR     'Volume Recebido no dia (em litros)
 @param VOL_DISP     'Volume Dispon�vel (03 + 04), em litros
 @param VOL_SAIDAS   'Volume Total das Sa�das, em litros
 @param ESTQ_ESCR    'Estoque Escritural(05 - 06), litros
 @param VAL_AJ_PERDA 'Valor da Perda, em litros
 @param VAL_AJ_GANHO 'Valor do ganho, em litros
 @param FECH_FISICO  'Volume aferido no tanque, em litros. Estoque de fechamento f�sico do tanque.

 @return Caso nenhum erro encontrado retorna Registro1310 devidamente formatado |1310| + NUM_TANQUE + ESTQ_ABERT + VOL_ENTR + VOL_DISP + VOL_SAIDAS + ESTQ_ESCR + VAL_AJ_PERDA + VAL_AJ_GANHO + FECH_FISICO
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro1310(NUM_TANQUE, ESTQ_ABERT, VOL_ENTR, VOL_DISP, VOL_SAIDAS, ESTQ_ESCR,
                      VAL_AJ_PERDA, VAL_AJ_GANHO, FECH_FISICO: String): Integer; stdcall; export;

const
 Tipo = '1310';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_TANQUE,       255, 'Tanque que armazena o combust�vel.                                                                                                                                                                                        ');
  FormatoNum (ESTQ_ABERT,       255, 'Estoque no inicio do dia, em litros                                                                                                                                                                                       ');
  FormatoNum (VOL_ENTR,         255, 'Volume Recebido no dia (em litros)                                                                                                                                                                                        ');
  FormatoNum (VOL_DISP,         255, 'Volume Dispon�vel (03 + 04), em litros                                                                                                                                                                                    ');
  FormatoNum (VOL_SAIDAS,       255, 'Volume Total das Sa�das, em litros                                                                                                                                                                                        ');
  FormatoNum (ESTQ_ESCR,        255, 'Estoque Escritural(05 - 06), litros                                                                                                                                                                                       ');
  FormatoNum (VAL_AJ_PERDA,     255, 'Valor da Perda, em litros                                                                                                                                                                                                 ');
  FormatoNum (VAL_AJ_GANHO,     255, 'Valor do ganho, em litros                                                                                                                                                                                                 ');
  FormatoNum (FECH_FISICO,      255, 'Volume aferido no tanque, em litros. Estoque de fechamento f�sico do tanque.                                                                                                                                              ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_TANQUE + ESTQ_ABERT + VOL_ENTR + VOL_DISP + VOL_SAIDAS + ESTQ_ESCR + VAL_AJ_PERDA + VAL_AJ_GANHO + FECH_FISICO);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1310 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro 1320 - VOLUME DE VENDAS

 @Author Juliana Andrade
 @Version 20/4/2009 01:16:49 �ltima altera��o por  Juliana Andrade

 @param NUM_BICO    'Bico Ligado � Bomba
 @param NR_INTERV   'N�mero da interven��o
 @param MOT_INTERV  'Motivo da Interven��o
 @param NOM_INTERV  'Nome do Interventor
 @param CNPJ_INTERV 'CNPJ da empresa respons�vel pela interven��o
 @param CPF_INTERV  'CPF do t�cnico respons�vel pela interven��o
 @param VAL_FECHA   'Valor da leitura final do contador, no fechamento do bico.
 @param VAL_ABERT   'Valor da leitura inicial do contador, na abertura do bico.
 @param VOL_AFERI   'Aferi��es da Bomba, em litros
 @param VOL_VENDAS  'Vendas (08 - 09 - 10 ) do bico , em litros

 @return Caso nenhum erro encontrado retorna Registro1320 devidamente formatado |1320| + NUM_BICO + NR_INTERV + MOT_INTERV + NOM_INTERV + CNPJ_INTERV + CPF_INTERV + VAL_FECHA + VAL_ABERT + VOL_AFERI + VOL_VENDAS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   CNPJ Inv�lido :: ' + CNPJ_INTERV
 @return '-2   CPF Inv�lido :: ' +  CPF_INTERV
-------------------------------------------------------------------------------}
Function Registro1320(NUM_BICO, NR_INTERV, MOT_INTERV, NOM_INTERV, CNPJ_INTERV, CPF_INTERV,
                       VAL_FECHA, VAL_ABERT, VOL_AFERI, VOL_VENDAS: String): Integer; stdcall; export;

const
 Tipo = '1320';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_BICO,        255, 'Bico Ligado � Bomba                                                                                                                                                                                                       ');
  FormatoNum (NR_INTERV,       255, 'N�mero da interven��o                                                                                                                                                                                                     ');
  FormatoAlfa(MOT_INTERV,      050, 'Motivo da Interven��o                                                                                                                                                                                                     ');
  FormatoAlfa(NOM_INTERV,      030, 'Nome do Interventor                                                                                                                                                                                                       ');
  FormatoNum (CNPJ_INTERV,     014, 'CNPJ da empresa respons�vel pela interven��o                                                                                                                                                                              ');
  FormatoNum (CPF_INTERV,      011, 'CPF do t�cnico respons�vel pela interven��o                                                                                                                                                                               ');
  FormatoNum (VAL_FECHA,       255, 'Valor da leitura final do contador, no fechamento do bico.                                                                                                                                                                ');
  FormatoNum (VAL_ABERT,       255, 'Valor da leitura inicial do contador, na abertura do bico.                                                                                                                                                                ');
  FormatoNum (VOL_AFERI,       255, 'Aferi��es da Bomba, em litros                                                                                                                                                                                             ');
  FormatoNum (VOL_VENDAS,      255, 'Vendas (08 - 09 - 10 ) do bico , em litros                                                                                                                                                                                ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if (not vCNPJ(CNPJ_INTERV)) and (RemovenumInvalid(CNPJ_INTERV) <> '') then
 ErroTStr.add('-1   CNPJ Inv�lido :: ' + CNPJ_INTERV);

if (not vCPF(CPF_INTERV)) and (RemovenumInvalid(CPF_INTERV) <> '') then
 ErroTStr.add('-2   CPF Inv�lido :: ' +  CPF_INTERV);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_BICO + NR_INTERV + MOT_INTERV + NOM_INTERV + CNPJ_INTERV + CPF_INTERV + VAL_FECHA + VAL_ABERT + VOL_AFERI + VOL_VENDAS);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1320 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 1350 - BOMBAS

 @Author
 @Version 20/4/2009 11:13:19 �ltima altera��o por Juliana Andrade

 @param SERIE        'N�mero de S�rie da Bomba
 @param FABRICANTE   'Nome do Fabricante da Bomba
 @param MODELO       'Modelo da Bomba
 @param TIPO_MEDICAO 'Identificador de medi��o: 0 - anal�gico; 1 - digital

 @return Caso nenhum erro encontrado retorna Registro1350 devidamente formatado |1350| + SERIE + FABRICANTE + MODELO + TIPO_MEDICAO
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Identificador de medi��o: inv�lido ' + TIPO_MEDICAO
-------------------------------------------------------------------------------}
Function Registro1350(SERIE, FABRICANTE, MODELO, TIPO_MEDICAO: String): Integer; stdcall; export;

const
 Tipo = '1350';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(SERIE,            255, 'N�mero de S�rie da Bomba                              ');
  FormatoAlfa(FABRICANTE,       060, 'Nome do Fabricante da Bomba                           ');
  FormatoAlfa(MODELO,           255, 'Modelo da Bomba                                       ');
  FormatoAlfa(TIPO_MEDICAO,     001, 'Identificador de medi��o: 0 - anal�gico; 1 - digital  ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos
if not vTIPO_MEDICAO(TIPO_MEDICAO) then
 ErroTStr.add('-1   Identificador de medi��o: inv�lido ' + TIPO_MEDICAO);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + SERIE + FABRICANTE + MODELO + TIPO_MEDICAO);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1350 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 1360 - LACRES DA BOMBA

 @Author Juliana Andrade
 @Version 20/4/2009 11:28:11 �ltima altera��o por  Juliana Andrade

 @param NUM_LACRE    'N�mero do Lacre associado na Bomba
 @param DT_APLICACAO 'Data de aplica��o do Lacre

 @return Caso nenhum erro encontrado retorna Registro1360 devidamente formatado |1360| + NUM_LACRE + DT_APLICACAO
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return '-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_APLICACAO
-------------------------------------------------------------------------------}
Function Registro1360(NUM_LACRE, DT_APLICACAO: String): Integer; stdcall; export;

const
 Tipo = '1360';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(NUM_LACRE,        020, 'N�mero do Lacre associado na Bomba                    ');
  ddmmaaaaToSPEDDate(DT_APLICACAO);
  FormatoNum (DT_APLICACAO,     008, 'Data de aplica��o do Lacre                            ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

if not(IsSPEDDate(DT_APLICACAO)) then
 ErroTStr.add('-1   Data Inicial Inv�lida (DDMMAAAA) :: ' + DT_APLICACAO);

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_LACRE + DT_APLICACAO);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1360 ---
  //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
 Registro 1370 - BICOS DA BOMBA

 @Author Juliana Andrade
 @Version 20/4/2009 11:31:58 �ltima altera��o por  Juliana Andrade

 @param NUM_BICO   'N�mero seq�encial do bico ligado a bomba
 @param COD_ITEM   'C�digo do Produto, constante do registro 0200
 @param NUM_TANQUE 'Tanque que armazena o combust�vel.

 @return Caso nenhum erro encontrado retorna Registro1370 devidamente formatado |1370| + NUM_BICO + COD_ITEM + NUM_TANQUE
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro1370(NUM_BICO, COD_ITEM, NUM_TANQUE: String): Integer; stdcall; export;

const
 Tipo = '1370';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoNum (NUM_BICO,       003, 'N�mero seq�encial do bico ligado a bomba              ');
  FormatoAlfa(COD_ITEM,       060, 'C�digo do Produto, constante do registro 0200         ');
  FormatoNum (NUM_TANQUE,     255, 'Tanque que armazena o combust�vel.                    ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + NUM_BICO + COD_ITEM + NUM_TANQUE);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1370 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
  Registro 1400: INFORMA��O SOBRE VALORES AGREGADOS ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param COD_ITEM 'C�digo do item (campo 02 do Registro 0200)
 @param MUN      'C�digo do Munic�pio de origem
 @param VALOR    'Valor mensal correspondente ao munic�pio

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1400|' + COD_ITEM, MUN, VALOR
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   C�digo do Munic�pio de origem : ' + MUN
 -------------------------------------------------------------------------------}
Function Registro1400(COD_ITEM, MUN, VALOR: String): Integer; stdcall; export;

const
 Tipo = '1400';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(COD_ITEM,     060, 'C�digo do item (campo 02 do Registro 0200)                                                                              '); // todo mudan�a no tamanho de 255 para 60
   FormatoNum (MUN,          007, 'C�digo do Munic�pio de origem                                                                                           ');
   FormatoNum (VALOR,        255, 'Valor mensal correspondente ao munic�pio                                                                                ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCod_Municipio(MUN) then
    ErroTStr.add('-1   C�digo do Munic�pio de origem : ' + MUN);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + COD_ITEM + MUN + VALOR);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

     //--- Teste de Registro1400 ---
     //ShowMessage(Result);
end;



{*------------------------------------------------------------------------------
  Registro 1500: NOTA FISCAL/CONTA DE ENERGIA EL�TRICA (C�DIGO 06) - OPERA��ES INTERESTADUAIS. ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_OPER        'Indicador do tipo de opera��o:
 @param IND_EMIT        'Indicador do emitente do documento fiscal:
 @param COD_PART        'C�digo do participante (campo 02 do Registro 0150):
 @param COD_MOD         'C�digo do modelo do documento fiscal conforme a Tabela 4.1.1
 @param COD_SIT         'C�digo da situa��o do documento fiscal conforme a Tabela 4.1.2
 @param SER             'S�rie do documento fiscal
 @param SUB             'Subs�rie do documento fiscal
 @param COD_CONS        'C�digo de classe de consumo de energia el�trica conforme a Tabela 4.4.5 ou C�digo da classe de consumo de g�s canalizado conforme Tabela 4.4.3.
 @param NUM_DOC         'N�mero do documento fiscal
 @param DT_DOC          'Data da emiss�o do documento fiscal
 @param DT_E_S          'Data da entrada ou da sa�da
 @param VL_DOC          'Valor total do documento fiscal
 @param VL_DESC         'Valor total do desconto
 @param VL_FORN         'Valor total fornecido/consumido
 @param VL_SERV_NT      'Valor total dos servi�os n�o-tributados pelo ICMS
 @param VL_TERC         'Valor total cobrado em nome de terceiros
 @param VL_DA           'Valor total de despesas acess�rias indicadas no documento fiscal
 @param VL_BC_ICMS      'Valor acumulado da base de c�lculo do ICMS
 @param VL_ICMS         'Valor acumulado do ICMS
 @param VL_BC_ICMS_ST   'Valor acumulado da base de c�lculo do ICMS substitui��o tribut�ria
 @param VL_ICMS_ST      'Valor acumulado do ICMS retido por substitui��o tribut�ria
 @param COD_INF         'C�digo da informa��o complementar do documento fiscal (campo 02 do Registro 0450)
 @param VL_PIS          'Valor do PIS
 @param VL_COFINS       'Valor da COFINS

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1500|' + IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, COD_CONS, NUM_DOC, DT_DOC, DT_E_S, VL_DOC, VL_DESC, VL_FORN, VL_SERV_NT, VL_TERC, VL_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, COD_INF, VL_PIS, VL_COFINS
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Indicador do tipo de opera��o : ' + IND_OPER
 @return -2   Indicador do emitente do documento fiscal: : ' + IND_EMIT
 @return -3   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD
 @return -4   C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2 : ' + COD_SIT
 @return -5   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC
 @return -6   Data Final Inv�lida (AAAAMMDD) : ' + DT_E_S
 -------------------------------------------------------------------------------}
Function Registro1500(IND_OPER, IND_EMIT, COD_PART, COD_MOD, COD_SIT, SER, SUB, COD_CONS,
                      NUM_DOC, DT_DOC, DT_E_S, VL_DOC, VL_DESC, VL_FORN, VL_SERV_NT, VL_TERC,
                      VL_DA, VL_BC_ICMS, VL_ICMS, VL_BC_ICMS_ST, VL_ICMS_ST, COD_INF, VL_PIS, VL_COFINS: String): Integer; stdcall; export;

const
 Tipo = '1500';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoAlfa(IND_OPER,          001, 'Indicador do tipo de opera��o:                                                                                                                    ');
   FormatoAlfa(IND_EMIT,          001, 'Indicador do emitente do documento fiscal:                                                                                                        ');
   FormatoAlfa(COD_PART,          060, 'C�digo do participante (campo 02 do Registro 0150):                                                                                               '); // todo mudan�a no tamanho de 255 para 060
   FormatoAlfa(COD_MOD,           002, 'C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1                                                                                     ');
   FormatoNum (COD_SIT,           002, 'C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2                                                                                   ');
   FormatoAlfa(SER,               004, 'S�rie do documento fiscal                                                                                                                         '); // todo mudan�a no tamanho de 255 para 4
   FormatoNum (SUB,               003, 'Subs�rie do documento fiscal                                                                                                                      '); // todo mudan�a no tamanho de 255 para 3
   FormatoNum (COD_CONS,          002, 'C�digo de classe de consumo de energia el�trica, conforme a Tabela 4.4.5 ou C�digo da classe de consumo de g�s canalizado conforme Tabela 4.4.3.  ');
   FormatoNum (NUM_DOC,           009, 'N�mero do documento fiscal                                                                                                                        '); // todo mudan�a no tamanho de 255 para 9
   ddmmaaaaToSPEDDate(DT_DOC);
   FormatoNum (DT_DOC,            008, 'Data da emiss�o do documento fiscal                                                                                                               ');
   ddmmaaaaToSPEDDate(DT_E_S);
   FormatoNum (DT_E_S,            008, 'Data da entrada ou da sa�da                                                                                                                       ');
   FormatoNum (VL_DOC,            255, 'Valor total do documento fiscal                                                                                                                   ');
   FormatoNum (VL_DESC,           255, 'Valor total do desconto                                                                                                                           ');
   FormatoNum (VL_FORN,           255, 'Valor total fornecido/consumido                                                                                                                   ');
   FormatoNum (VL_SERV_NT,        255, 'Valor total dos servi�os n�o-tributados pelo ICMS                                                                                                 ');
   FormatoNum (VL_TERC,           255, 'Valor total cobrado em nome de terceiros                                                                                                          ');
   FormatoNum (VL_DA,             255, 'Valor total de despesas acess�rias indicadas no documento fiscal                                                                                  ');
   FormatoNum (VL_BC_ICMS,        255, 'Valor acumulado da base de c�lculo do ICMS                                                                                                        ');
   FormatoNum (VL_ICMS,           255, 'Valor acumulado do ICMS                                                                                                                           ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor acumulado da base de c�lculo do ICMS substitui��o tribut�ria                                                                                ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor acumulado do ICMS retido por substitui��o tribut�ria                                                                                        ');
   FormatoAlfa(COD_INF,           006, 'C�digo da informa��o complementar do documento fiscal (campo 02 do Registro 0450)                                                                 '); // todo mudan�a no tamanho de 255 para 6
   FormatoNum (VL_PIS,            255, 'Valor do PIS                                                                                                                                      ');
   FormatoNum (VL_COFINS,         255, 'Valor da COFINS                                                                                                                                   ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

   if not  vInd_tipo_operacao(IND_OPER) then
    ErroTStr.add('-1   Indicador do tipo de opera��o : ' + IND_OPER);

   if not  vInd_emitente_documento_fiscal(IND_EMIT) then
    ErroTStr.add('-2   Indicador do emitente do documento fiscal: : ' + IND_EMIT);

   if not vCod_modelo_documento_fiscal_4_1_1(COD_MOD) then
    ErroTStr.add('-3   C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1 : ' + COD_MOD);

   if not vCod_situacao_documento_fiscal(COD_SIT) then
    ErroTStr.add('-4   C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2 : ' + COD_SIT);

   if not IsSPEDDate(DT_DOC) then
    ErroTStr.add('-5   Data Final Inv�lida (AAAAMMDD) : ' + DT_DOC);

   if not IsSPEDDate(DT_E_S) then
    ErroTStr.add('-6   Data Final Inv�lida (AAAAMMDD) : ' + DT_E_S);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + IND_OPER + IND_EMIT + COD_PART + COD_MOD + COD_SIT + SER + SUB + COD_CONS + NUM_DOC + DT_DOC + DT_E_S + VL_DOC + VL_DESC + VL_FORN + VL_SERV_NT + VL_TERC + VL_DA + VL_BC_ICMS + VL_ICMS + VL_BC_ICMS_ST + VL_ICMS_ST + COD_INF + VL_PIS + VL_COFINS);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

     //--- Teste de Registro1500 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
  Registro 1510: ITENS DO DOCUMENTO NOTA FISCAL/CONTA ENERGIA EL�TRICA (C�DIGO 06) ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param NUM_ITEM       'N�mero seq�encial do item no documento fiscal
 @param COD_ITEM       'C�digo do item (campo 02 do Registro 0200)
 @param COD_CLASS      'C�digo de classifica��o do item de energia el�trica, conforme a Tabela 4.4.1
 @param QTD            'Quantidade do item
 @param UNID           'Unidade do item (Campo 02 do registro 0190)
 @param VL_ITEM        'Valor do item
 @param VL_DESC        'Valor total do desconto
 @param CST_ICMS       'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
 @param CFOP           'C�digo Fiscal de Opera��o e Presta��o
 @param VL_BC_ICMS     'Valor da base de c�lculo do ICMS
 @param ALIQ_ICMS      'Al�quota do ICMS
 @param VL_ICMS        'Valor do ICMS creditado/debitado
 @param VL_BC_ICMS_ST  'Valor da base de c�lculo referente � substitui��o tribut�ria
 @param ALIQ_ST        'Al�quota do ICMS da substitui��o tribut�ria na unidade da federa��o de destino
 @param VL_ICMS_ST     'Valor do ICMS referente � substitui��o tribut�ria
 @param IND_REC        'Indicador do tipo de receita:
 @param COD_PART       'C�digo do participante receptor da receita, terceiro da opera��o (campo 02 do Registro 0150)
 @param VL_PIS         'Valor do PIS
 @param VL_COFINS      'Valor da COFINS
 @param COD_CTA        'C�digo da conta anal�tica cont�bil debitada/creditada

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1510|' + NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS, CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST, IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   Numero de CFOP inv�lido: ' + CFOP
 @return -2   Indicador do tipo de receita: ' + IND_REC
 -------------------------------------------------------------------------------}
Function Registro1510(NUM_ITEM, COD_ITEM, COD_CLASS, QTD, UNID, VL_ITEM, VL_DESC, CST_ICMS,
                       CFOP, VL_BC_ICMS, ALIQ_ICMS, VL_ICMS, VL_BC_ICMS_ST, ALIQ_ST, VL_ICMS_ST,
                       IND_REC, COD_PART, VL_PIS, VL_COFINS, COD_CTA: String): Integer; stdcall; export;

const
 Tipo = '1510';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

 if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Formata��o dos Campos
   FormatoNum (NUM_ITEM,          003, 'N�mero seq�encial do item no documento fiscal                                                                                                     ');  // todo mudan�a no tamanho de 255 para 3
   FormatoAlfa(COD_ITEM,          060, 'C�digo do item (campo 02 do Registro 0200)                                                                                                        ');  // todo mudan�a no tamanho de 255 para 060
   FormatoNum (COD_CLASS,         004, 'C�digo de classifica��o do item de energia el�trica, conforme a Tabela 4.4.1                                                                      ');
   FormatoNum (QTD,               255, 'Quantidade do item                                                                                                                                ');
   FormatoAlfa(UNID,              006, 'Unidade do item (Campo 02 do registro 0190)                                                                                                       ');  // todo mudan�a no tamanho de 255 para 6
   FormatoNum (VL_ITEM,           255, 'Valor do item                                                                                                                                     ');
   FormatoNum (VL_DESC,           255, 'Valor total do desconto                                                                                                                           ');
   FormatoNum (CST_ICMS,          003, 'C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1                                                                           ');
   FormatoNum (CFOP,              004, 'C�digo Fiscal de Opera��o e Presta��o                                                                                                             ');
   FormatoNum (VL_BC_ICMS,        255, 'Valor da base de c�lculo do ICMS                                                                                                                  ');
   FormatoNum (ALIQ_ICMS,         006, 'Al�quota do ICMS                                                                                                                                  ');  // todo mudan�a no tamanho de 255 para 6
   FormatoNum (VL_ICMS,           255, 'Valor do ICMS creditado/debitado                                                                                                                  ');
   FormatoNum (VL_BC_ICMS_ST,     255, 'Valor da base de c�lculo referente � substitui��o tribut�ria                                                                                      ');
   FormatoNum (ALIQ_ST,           255, 'Al�quota do ICMS da substitui��o tribut�ria na unidade da federa��o de destino                                                                    ');
   FormatoNum (VL_ICMS_ST,        255, 'Valor do ICMS referente � substitui��o tribut�ria                                                                                                 ');
   FormatoAlfa(IND_REC,           001, 'Indicador do tipo de receita:                                                                                                                     ');
   FormatoAlfa(COD_PART,          060, 'C�digo do participante receptor da receita, terceiro da opera��o (campo 02 do Registro 0150)                                                      ');  // todo mudan�a no tamanho de 255 para 060
   FormatoNum (VL_PIS,            255, 'Valor do PIS                                                                                                                                      ');
   FormatoNum (VL_COFINS,         255, 'Valor da COFINS                                                                                                                                   ');
   FormatoAlfa(COD_CTA,           255, 'C�digo da conta anal�tica cont�bil debitada/creditada                                                                                             ');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos

    if not vCOD_CFOP(CFOP) then
      ErroTStr.add('-1   Numero de CFOP inv�lido: ' + CFOP);

    if not vInd_tipo_receita(IND_REC) then
      ErroTStr.add('-2   Indicador do tipo de receita: ' + IND_REC);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     result := 0;
     Trata_SPED('|' + Tipo + '|' + NUM_ITEM + COD_ITEM + COD_CLASS + QTD + UNID + VL_ITEM + VL_DESC + CST_ICMS + CFOP + VL_BC_ICMS + ALIQ_ICMS + VL_ICMS + VL_BC_ICMS_ST + ALIQ_ST + VL_ICMS_ST + IND_REC + COD_PART + VL_PIS + VL_COFINS + COD_CTA);

   //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

  //--- Teste de Registro1510 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
 Registro 1600 - TOTAL DAS OPERA��ES COM CART�O DE CR�DITO E/OU D�BITO

 @Author Juliana Andrade
 @Version 20/4/2009 11:49:31 �ltima altera��o por  Juliana Andrade

 @param COD_PART    'C�digo do participante (campo 02 do Registro 0150): identifica��o da administradora do cart�o de d�bito/cr�dito
 @param TOT_CREDITO 'Valor total das opera��es realizadas no per�odo referente a  Cart�o de Cr�dito
 @param TOT_DEBITO  'Valor total das opera��es realizadas no per�odo referente a Cart�o de D�bito

 @return Caso nenhum erro encontrado retorna Registro1600 devidamente formatado |1600| + COD_PART + TOT_CREDITO + TOT_DEBITO
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
-------------------------------------------------------------------------------}
Function Registro1600(COD_PART, TOT_CREDITO, TOT_DEBITO: String): Integer; stdcall; export;

const
 Tipo = '1600';
begin
 NaoRegistrado;                                                       //Testa se registrado
 Result := -1;                                                        //Por default retorna Erro

if Testa_State(tipo) then                                            //Se fun��o Inicia_SPED Chamada
 begin
  RegistroTStr.add( ' REGISTRO ' + Tipo );

  //Formata��o dos Campos
  FormatoAlfa(COD_PART,        060, 'C�digo do participante (campo 02 do Registro 0150): identifica��o da administradora do cart�o de d�bito/cr�dito  ');
  FormatoNum (TOT_CREDITO,     255, 'Valor total das opera��es realizadas no per�odo referente a  Cart�o de Cr�dito                                   ');
  FormatoNum (TOT_DEBITO,      255, 'Valor total das opera��es realizadas no per�odo referente a Cart�o de D�bito                                     ');

//if Quebra_Sequencia(IdxOfReg(tipo)+1) then
// ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

//Teste de Integridade dos campos

//Incremento do contador de observa��es
if ObsTStr.count > 0 then
 Inc(RegSPED[IdxOfReg(tipo)].obs);

//Resposta em caso de n�o haver erros
if ErroTStr.count = 0 then
 begin
  result := 0;
  Trata_SPED('|' + Tipo + '|' + COD_PART + TOT_CREDITO + TOT_DEBITO);

//Incremento do contador de registros
  Inc(RegSPED[IdxOfReg(tipo)].ok);
 end
else
 begin
  Trata_Erro(ErroTStr);

  //Incremento do contador de erros
  Inc(RegSPED[IdxOfReg(tipo)].erro);
 end;
end;

  //--- Teste de Registro1600 ---
  //ShowMessage(Result);
end;


{*------------------------------------------------------------------------------
  Registro 1990 - ENCERRAMENTO DO BLOCO 1 ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN_1 'Quantidade total de linhas do Bloco 1:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|1990|' + QTD_LIN_1
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 -------------------------------------------------------------------------------}
Function Registro1990: Integer; stdcall; export;
const
 Tipo = '1990';
var
 x, i: integer;
 QTD_LIN_1: String;
begin
 NaoRegistrado;
 Result := -1;

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add( ' REGISTRO ' + Tipo );

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('1') then
      i := i + RegSPED[x].ok;
    end;
   QTD_LIN_1 := inttostr(i);

   //Formata��o dos Campos
   FormatoNum (QTD_LIN_1,        255, 'Quantidade total de linhas do Bloco 1:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_1);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro1990 ---
//ShowMessage(Result);
end;


//------------ BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL -------------

{*------------------------------------------------------------------------------
  BLOCO 9: CONTROLE E ENCERRAMENTO DO ARQUIVO DIGITAL
  Registro 9001 - ABERTURA DO BLOCO 9 ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param IND_MOV 'Indicador de movimento:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|9001|' + IND_MOV
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 @return -2   Indicador de movimento : ' + IND_MOV
 -------------------------------------------------------------------------------}
Function Registro9001(IND_MOV:String): Integer; stdcall; export;
const
 Tipo = '9001';

begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   FormatoNum (IND_MOV,           01, 'Indicador de movimento:');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');
   if not vIND_MOV(IND_MOV) then
    ErroTStr.add('-2   Indicador de movimento : ' + IND_MOV);

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + IND_MOV);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

//--- Teste de Registro9001 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
  Registro 9900 - REGISTROS DO ARQUIVO ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|9900|' + QTD_REG_BLC_TEMP
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 -------------------------------------------------------------------------------}
 Function Registro9900: Integer; stdcall; export;
const
 Tipo = '9900';

var
 x: integer;
 REG_BLC, QTD_REG_BLC: String;


begin
 NaoRegistrado;                                                     //Testa se registrado
 Result := -1;                                                      //Por default retorna Erro

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Formata��o dos Campos
   //Totalizacao dos regitros gerados
   for x := 0 to high(RegSPED) do
    begin
     if RegSPED[x].ok >0 then
      begin
        if RegSPED[x].tipo <> '9900' then
          begin
            QTD_REG_BLC:= inttostr(RegSPED[x].ok);
            REG_BLC:= (RegSPED[x].tipo);

            FormatoAlfa(REG_BLC,              04, 'Registro que ser� totalizado no pr�ximo campo:');
            FormatoNum (QTD_REG_BLC,         255, 'Total de registros do tipo informado no campo anterior:');
            //QTD_REG_BLC_TEMP := QTD_REG_BLC_TEMP + REG_BLC + QTD_REG_BLC;
            Trata_SPED('|' + Tipo + '|' + REG_BLC + QTD_REG_BLC);
            Inc(RegSPED[IdxOfReg(Tipo)].ok);
          end
      else if RegSPED[x].tipo = '9900' then
        begin
          Inc(RegSPED[IdxOfReg(tipo)].ok);
        end;
      end;
    end;

    Trata_SPED('|' + Tipo + '|' + Tipo + '|' + inttostr(RegSPED[IdxOfReg(Tipo)].ok + 2) + '|');
    Trata_SPED('|' + Tipo + '|' + '9990' + '|' + '1' + '|');
    Trata_SPED('|' + Tipo + '|' + '9999' + '|' + '1' + '|');

   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos


   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;
   //  Trata_SPED('|' + Tipo + '|' + QTD_REG_BLC_TEMP);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
     Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
   end;

//--- Teste de Registro9900 ---
//ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
  Registro 9990 - ENCERRAMENTO DO BLOCO 9 ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|9990|' + QTD_LIN_9
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 -------------------------------------------------------------------------------}
Function Registro9990: Integer; stdcall; export;
const
 Tipo = '9990';
var
 i, x: integer;
 QTD_LIN_9: String;
begin
 NaoRegistrado;
 Result := -1;

 if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
  begin
   RegistroTStr.add(' REGISTRO ' + Tipo);

   //Totaliza registros gerados com sucesso do Bloco em questao
   i := 1;
   for x := 0 to high(RegSPED) do
    begin
     if uppercase(RegSPED[x].bloco) = uppercase('9') then
      i := i + RegSPED[x].ok;
    end;
   i := i + 2;
   QTD_LIN_9 := inttostr(i);

   //Formata��o dos Campos
   FormatoNum (QTD_LIN_9,        255, 'Quantidade total de linhas do Bloco 9:');



   //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
   // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

   //Teste de Integridade dos campos
   if RegSPED[IdxOfReg(tipo)].ok > 0 then
    ErroTStr.add('-1   S� deve haver 1(um) Registro' + TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO +' chamada mais de 1(uma) vez');

   //Incremento do contador de observa��es
   if ObsTStr.count > 0 then
    Inc(RegSPED[IdxOfReg(tipo)].obs);

   //Resposta em caso de n�o haver erros
   if ErroTStr.count = 0 then
    begin
     //Incremento do contador de registros
     Inc(RegSPED[IdxOfReg(tipo)].ok);

     result := 0;

     Trata_SPED('|' + Tipo + '|' + QTD_LIN_9);
    end
   else
    begin
     Trata_Erro(ErroTStr);

     //Incremento do contador de erros
    Inc(RegSPED[IdxOfReg(tipo)].erro);
    end;
  end;

 //--- Teste de Registro9990 ---
 //ShowMessage(Result);
end;

{*------------------------------------------------------------------------------
  Registro 9999 - ENCERRAMENTO DO ARQUIVO DIGITAL ---

 @Author Alexandre Magno
 @Version 15/01/2009 �ltima altera��o por Alexandre Magno

 @param QTD_LIN           'Quantidade total de linhas do arquivo digital:

 @return Caso nenhum erro encontrado retorna RegistroC001 devidamente formatado '|9999|' + QTD_LIN_9
 @return 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.
 @return -1   S� deve haver 1(um) Registro' + TIPO + ' no arquivo do SPED : Fun��o Registro' + TIPO + ' chamada mais de 1(uma) vez
 -------------------------------------------------------------------------------}
Function Registro9999: Integer; stdcall; export;
const
 Tipo = '9999';

var
 i, x, idx : integer;
 QTD_LIN: String;
 temp_str: string;

 procedure Testa_Relacao(reg_pai, reg_filho: string; um_para_n: boolean);
  begin
   if RegSPED[IdxOfReg(reg_pai)].ok <> RegSPED[IdxOfReg(reg_filho)].ok then
    begin
     if um_para_n then
      temp_str := 'Deve haver 1 ou mais Registros' + reg_filho +' para cada Registro' + reg_pai
     else
      temp_str := 'Deve haver 1 Registro' + reg_filho +' para cada Registro' + reg_pai;

 {    ErroTStr.add('-' + inttostr(idx) + ' '+ temp_str +
                  ' - Total de Registros' + reg_pai +' = ' + IntToStr(RegSPED[IdxOfReg('reg_pai')].ok) +
                  ' - Total de Registros' + reg_filho +' = ' + IntToStr(RegSPED[IdxOfReg('reg_filho')].ok) );

  }
     inc(idx);
    end;
  end;

begin
NaoRegistrado;
Result := -1;

if Testa_State(tipo) then                                                //Se fun��o Inicia_SPED Chamada
 begin
  //Totaliza registros gerados no arquivo
  i := 2;          //TODO: Verificar no validador se contagem de registros deve incluir registros de finalizacao de blocos
  for x := 0 to high(RegSPED) do
   i := i + RegSPED[x].ok;

  QTD_LIN := inttostr(i);

  //Formata��o dos Campos
  FormatoNum (QTD_LIN,           255, 'Quantidade total de linhas do arquivo digital:');

  //if Quebra_Sequencia(IdxOfReg(tipo)+1) then
  // ObsTStr.add(#9 + 'Quebra de sequ�ncia conforme L�gica de Ordena��o Inter-Registros.');

  //Teste de Integridade dos campos
  if RegSPED[IdxOfReg(Tipo)].ok > 0 then
   ErroTStr.add('-1   S� deve haver 1(um) Registro'+ TIPO +' no arquivo do SPED : Fun��o Registro'+ TIPO + ' chamada mais de 1(uma) vez');


  //Teste dos Registros Obrigat�rios
  for x := 0 to high(RegSPED) do
   begin
    if (RegSPED[x].obrigatorio) and (RegSPED[x].ok = 0) then
    // ErroTStr.add('-' + inttostr(x+1) + ' Registro' + RegSPED[x].tipo + ' obrigat�rio : O arquivo deve conter pelo menos 1 registro deste tipo');
   end;

  //Teste de Registro 1:1 e 1:N
  idx := 0;                                       //TODO: Validar relacoes entre registros do SPED Fiscal!

  Testa_Relacao('0150', '0175', true);
  Testa_Relacao('0200', '0205', true);
  Testa_Relacao('0200', '0206', false);
  Testa_Relacao('0220', '0220', true);

  Testa_Relacao('C100', 'C110', true);
  Testa_Relacao('C110', 'C111', true);
  Testa_Relacao('C100', 'C170', true);
  Testa_Relacao('C110', 'C112', true);
  Testa_Relacao('C110', 'C113', true);
  Testa_Relacao('C110', 'C114', true);
  Testa_Relacao('C110', 'C115', true);
  Testa_Relacao('C100', 'C120', true);
  Testa_Relacao('C100', 'C130', false);
  Testa_Relacao('C100', 'C140', false);
  Testa_Relacao('C140', 'C141', true);
  Testa_Relacao('C100', 'C160', false);
  Testa_Relacao('C100', 'C165', true);
  Testa_Relacao('C170', 'C171', true);
  Testa_Relacao('C170', 'C172', false);
  Testa_Relacao('C170', 'C173', true);
  Testa_Relacao('C170', 'C174', true);
  Testa_Relacao('C170', 'C175', true);
  Testa_Relacao('C170', 'C176', true);
  Testa_Relacao('C170', 'C177', false);
  Testa_Relacao('C170', 'C178', false);
  Testa_Relacao('C170', 'C179', false);
  Testa_Relacao('C100', 'C190', true);
  Testa_Relacao('C100', 'C195', true);
  Testa_Relacao('C195', 'C197', true);
  Testa_Relacao('C001', 'C300', true);
  Testa_Relacao('C300', 'C310', true);
  Testa_Relacao('C300', 'C320', true);
  Testa_Relacao('C320', 'C321', true);
  Testa_Relacao('C001', 'C350', true);
  Testa_Relacao('C350', 'C370', true);
  Testa_Relacao('C350', 'C390', true);
  Testa_Relacao('C001', 'C400', true);
  Testa_Relacao('C400', 'C405', true);
  Testa_Relacao('C405', 'C410', true);
  Testa_Relacao('C405', 'C420', true);
  Testa_Relacao('C420', 'C425', true);
  Testa_Relacao('C405', 'C460', true);
  Testa_Relacao('C460', 'C470', true);
  Testa_Relacao('C405', 'C490', true);
  Testa_Relacao('C001', 'C495', true);
  Testa_Relacao('C001', 'C500', true);
  Testa_Relacao('C500', 'C510', true);
  Testa_Relacao('C500', 'C590', true);
  Testa_Relacao('C001', 'C600', true);
  Testa_Relacao('C600', 'C601', true);
  Testa_Relacao('C600', 'C610', true);
  Testa_Relacao('C600', 'C690', true);
  Testa_Relacao('C001', 'C700', true);
  Testa_Relacao('C700', 'C790', true);
  Testa_Relacao('C790', 'C791', true);

  Testa_Relacao('D100', 'D110', true);
  Testa_Relacao('D100', 'D120', false);
  Testa_Relacao('D100', 'D130', true);
  Testa_Relacao('D100', 'D140', false);
  Testa_Relacao('D100', 'D150', false);
  Testa_Relacao('D100', 'D160', true);
  Testa_Relacao('D160', 'D161', false);
  Testa_Relacao('D160', 'D162', true);
  Testa_Relacao('D100', 'D170', false);
  Testa_Relacao('D100', 'D180', true);
  Testa_Relacao('D100', 'D190', true);
  Testa_Relacao('D300', 'D301', true);
  Testa_Relacao('D300', 'D310', true);
  Testa_Relacao('D001', 'D350', true);
  Testa_Relacao('D350', 'D355', true);
  Testa_Relacao('D355', 'D360', false);
  Testa_Relacao('D355', 'D365', true);
  Testa_Relacao('D365', 'D370', true);
  Testa_Relacao('D355', 'D390', true);
  Testa_Relacao('D400', 'D410', true);
  Testa_Relacao('D410', 'D411', true);
  Testa_Relacao('D400', 'D420', true);
  Testa_Relacao('D500', 'D510', true);
  Testa_Relacao('D500', 'D530', true);
  Testa_Relacao('D500', 'D590', true);
  Testa_Relacao('D600', 'D610', true);
  Testa_Relacao('D600', 'D690', true);
  Testa_Relacao('D600', 'D696', true);
  Testa_Relacao('D696', 'D697', true);

  Testa_Relacao('E001', 'E100', true);
  Testa_Relacao('E100', 'E110', false);
  Testa_Relacao('E110', 'E111', true);
  Testa_Relacao('E111', 'E112', true);
  Testa_Relacao('E111', 'E113', true);
  Testa_Relacao('E110', 'E115', true);
  Testa_Relacao('E110', 'E116', true);
  Testa_Relacao('E001', 'E200', true);
  Testa_Relacao('E200', 'E210', false);
  Testa_Relacao('E210', 'E220', true);
  Testa_Relacao('E220', 'E230', true);
  Testa_Relacao('E220', 'E240', true);
  Testa_Relacao('E210', 'E250', true);
  Testa_Relacao('E500', 'E510', true);
  Testa_Relacao('E500', 'E520', false);
  Testa_Relacao('E520', 'E530', true);

  Testa_Relacao('H001', 'E005', true);
  Testa_Relacao('H005', 'E010', true);

  Testa_Relacao('1001', '1100', true);
  Testa_Relacao('1100', '1105', true);
  Testa_Relacao('1105', '1110', true);
  Testa_Relacao('1001', '1200', true);
  Testa_Relacao('1200', '1210', true);
  Testa_Relacao('1001', '1300', true);
  Testa_Relacao('1300', '1310', true);
  Testa_Relacao('1310', '1320', true);
  Testa_Relacao('1001', '1350', true);
  Testa_Relacao('1350', '1360', true);
  Testa_Relacao('1350', '1370', true);
  Testa_Relacao('1001', '1400', true);
  Testa_Relacao('1001', '1500', true);
  Testa_Relacao('1500', '1510', true);
  Testa_Relacao('1001', '1600', true);

   //Incremento do contador de observa��es
  if ObsTStr.count > 0 then
   Inc(RegSPED[IdxOfReg(tipo)].obs);

  //Resposta em caso de n�o haver erros
  if ErroTStr.count = 0 then
   begin
   result := 0;
    Trata_SPED('|' + Tipo + '|' + QTD_LIN);

        //Incremento do contador de registros
        Inc(RegSPED[IdxOfReg(tipo)].ok);
   end
  else
   begin
    Trata_Erro(ErroTStr);

    //Incremento do contador de erros
    Inc(RegSPED[IdxOfReg(tipo)].erro);
   end;

  end;

//--- Teste de Registro9999 ---
//ShowMessage(Result);
end;
exports

Info_Versao,

Inicia_SPED,
Finaliza_SPED,
Trata_SPED,

vCod_Leiaute,
vMovimento,
vCEP,
vUF,
vCPF,
vCNPJ,
vInscEst,

vCod_situacao_documento_fiscal,
vInd_tipo_transporte,
vInd_emitente_titulo,
vInd_tipo_operacao,
vInd_emitente_documento_fiscal,
vInd_origem_processo,
vInd_tipo_titulo_credito,
vInd_tipo_referencia_base,
vInd_tipo_receita,
vCod_classific_item_4_4_2,
vCod_modelo_documento_fiscal_4_1_1,
vInd_tipo_veiculo_transportador,
vInd_natureza_frete,
vInd_tipo_frete,
vInd_tipo_transporte_carga_coletada,
vInd_tipo_servico_prestado,
vInd_origem,
vCOD_CFOP,
vCod_Municipio,
vCOD_NCM,
vCOD_PAIS,
vIND_PERFIL,
vIND_ATIV,
vCOD_FIN,
vIND_MOV,
vTIPO_ITEM,
vIND_OPER,
vIND_PGTO,
vCOD_DOC_IMP,
vIND_APUR,
vTP_PROD,
vIND_ARM,
vIND_VEIC_OPER,
vIND_FRT_RED,
vIND_NAV,
vIND_TFA,
vIND_REC,
vIND_MOV_ST,
vIND_AJ,
vIND_DOC,
vIND_PROP,
vIND_DOC_Informe_tipo_documento,
vTP_CHC,
vTIPO_MEDICAO,

//  bloco 0
Registro0000,
Registro0001,
Registro0005,
Registro0015,
Registro0100,
Registro0150,
Registro0175,
Registro0190,
Registro0200,
Registro0205,
Registro0206,
Registro0220,
Registro0400,
Registro0450,
Registro0460,
Registro0990,
//  bloco c
RegistroC001,
RegistroC100,
RegistroC110,
RegistroC111,
RegistroC112,
RegistroC113,
RegistroC114,
RegistroC115,
RegistroC120,
RegistroC130,
RegistroC140,
RegistroC141,
RegistroC160,
RegistroC165,
RegistroC170,
RegistroC171,
RegistroC172,
RegistroC173,
RegistroC174,
RegistroC175,
RegistroC176,
RegistroC177,
RegistroC178,
RegistroC179,
RegistroC190,
RegistroC195,
RegistroC197,
RegistroC300,
RegistroC310,
RegistroC320,
RegistroC321,
RegistroC350,
RegistroC370,
RegistroC390,
RegistroC400,
RegistroC405,
RegistroC410,
RegistroC420,
RegistroC425,
RegistroC460,
RegistroC470,
RegistroC490,
RegistroC495,
RegistroC500,
RegistroC510,
RegistroC590,
RegistroC600,
RegistroC601,
RegistroC610,
RegistroC690,
RegistroC700,
RegistroC790,
RegistroC791,
RegistroC990,
 //  bloco d
RegistroD001,
RegistroD100,
RegistroD110,
RegistroD120,
RegistroD130,
RegistroD140,
RegistroD150,
RegistroD160,
RegistroD161,
RegistroD162,
RegistroD170,
RegistroD180,
RegistroD190,
RegistroD300,
RegistroD301,
RegistroD310,
RegistroD350,
RegistroD355,
RegistroD360,
RegistroD365,
RegistroD370,
RegistroD390,
RegistroD400,
RegistroD410,
RegistroD411,
RegistroD420,
RegistroD500,
RegistroD510,
RegistroD530,
RegistroD590,
RegistroD600,
RegistroD610,
RegistroD690,
RegistroD695,
RegistroD696,
RegistroD697,
RegistroD990,
// bloco e
RegistroE001,
RegistroE100,
RegistroE110,
RegistroE111,
RegistroE112,
RegistroE113,
RegistroE115,
RegistroE116,
RegistroE200,
RegistroE210,
RegistroE220,
RegistroE230,
RegistroE240,
RegistroE250,
RegistroE500,
RegistroE510,
RegistroE520,
RegistroE530,
RegistroE990,

// bloco g
RegistroG001,
RegistroG990,

// bloco h
RegistroH001,
RegistroH005,
RegistroH010,
RegistroH990,

// bloco1
Registro1001,
Registro1100,
Registro1105,
Registro1110,
Registro1200,
Registro1210,
Registro1300,
Registro1310,
Registro1320,
Registro1350,
Registro1360,
Registro1370,
Registro1400,
Registro1500,
Registro1510,
Registro1600,
Registro1990,

// bloco 9
Registro9001,
Registro9900,
Registro9990,
Registro9999;

end.
