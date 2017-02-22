unit Unit_Validacao_Sintegra;

interface

uses
  SysUtils,
  Windows,
  Dialogs,
  DateUtils,
  Messages,
  Classes;

Function Info_Versao: ShortString; 
Procedure NaoRegistrado;
Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): ShortString; 

Function Verifica_Convenio(Cod_Convenio: ShortString): Boolean; 
Function Verifica_Conhecimento(Cod_Conhecimento: ShortString): Boolean; 
Function Verifica_Relacionamento(Cod_Relacionamento: ShortString): Boolean; 
Function Verifica_Operacao(Cod_Operacao: ShortString): Boolean; 
Function Verifica_Finalidade(Cod_Finalidade: ShortString): Boolean; 
Function Verifica_Modelo(Cod_Modelo: ShortString): Boolean; 
Function Verifica_Pais(Cod_Pais: ShortString): Boolean; 
Function Verifica_Tipo_Operacao(Cod_Tipo_Operacao: ShortString): Boolean; 
Function Verifica_Situacao(Situacao: ShortString): Boolean; 
Function Verifica_Averbacao(Averbacao: ShortString): Boolean; 
Function Verifica_Emitente(Emitente: ShortString): Boolean; 
Function Verifica_CST(CST: ShortString): Boolean; 
Function Verifica_CIF_FOB(CIF_FOB: ShortString): Boolean; 
Function Verifica_NumeroItem(Nro_Item: ShortString): Boolean; 
Function Verifica_Posse(Cod_Posse: ShortString): Boolean; 
Function Verifica_Tipo_Receita(Cod_Tipo_Receita: ShortString): Boolean; 
Function Verifica_Tipo_Informacao(Cod_Tipo_Informacao: ShortString): Boolean; 
Function Verifica_CEP_UF(cCep:ShortString ; cEstado:ShortString): Boolean; 
Function Verifica_CEP(cCep:ShortString): Boolean; 
Function Verifica_UF(UF: ShortString): Boolean; 
Function Verifica_CPF(CPF: ShortString): Boolean; 
Function Verifica_CNPJ(CGC: ShortString): Boolean; 
Function Verifica_InscEst(Inscricao, UF: string): Boolean; 
Function Verifica_Antecipacao(Antecipacao: ShortString): Boolean; 
Function Verifica_Incentivo(Incentivo_Fiscal: ShortString): Boolean; 
Function Verifica_Motivo_Intervencao(Motivo_Intervencao: ShortString): Boolean; 
Function Verifica_Equipamento(Cod_Equipamento: ShortString): Boolean; 
Function Verifica_Beneficio(Cod_Beneficio: ShortString): Boolean; 
Function Verifica_ME_EPP(COD_ME_EPP: ShortString): Boolean; 
Function Verifica_Ressarcimento(Ressarcimento: ShortString): Boolean; 
Function Verifica_Codigo_Sefaz(Codigo_Sefaz: ShortString): Boolean; 
Function Verifica_Modal_Transporte(Modal: ShortString): Boolean; 
Function Verifica_EMail(email: ShortString): Boolean; 
Function Verifica_Comando_Geracao(Comando: ShortString): Boolean; 
Function Verifica_Desconto(Desconto: ShortString): Boolean; 
Function Verifica_Tipo_Desconto(Tipo: ShortString): Boolean; 
Function Verifica_Tipo_Acrescimo(Tipo: ShortString): Boolean; 
Function Verifica_Indicador_Cancelamento(Indicador: ShortString): Boolean; 
Function Verifica_Regra_de_Calculo(Regra: ShortString): Boolean; 
Function Verifica_Denominacao(Denominacao: ShortString): Boolean; 
Function Verifica_Indicador_Estorno(Indicador: ShortString): Boolean; 

Function IsSintegraDate(Date_Str: ShortString): boolean; 
Function IsSintegraMesAno(MesAno_Str: ShortString): boolean; 
Function SintegraDatetoDateTime(Date_Str: ShortString): TDateTime; 
Procedure ddmmaaaaToSintegraDate(var Date_Str: ShortString); 
Function AlfaStuff(Str: ShortString; Tamanho: Byte): ShortString; 
Function NumStuff(Str: ShortString; Tamanho: Byte): ShortString; 
Procedure FormatoAlfa(Var Str: ShortString; Tamanho: Byte); 
Procedure FormatoNum(var Str: ShortString; Tamanho: Byte); 

var
 Total_r10, Total_r11, Total_r50, Total_r51, Total_r53, Total_r54, Total_r55,
 Total_r57, Total_r56, Total_r60, Total_r61, Total_r70, Total_r71, Total_r74,
 Total_r75, Total_r76, Total_r77, Total_r85, Total_r86, Total_r88, Total_r90,
 Total_E00, Total_E01, Total_E02, Total_E12, Total_E13, Total_E14, total_E15,
 Total_E16, Total_E21, Total_EAD: integer;

 Texto_EAD: TStrings;
 CGC_MF_Info, Insc_Est_Info, UF_Info: ShortString;

 Data_Inicial_Info, Data_Final_Info: TDateTime;
 Periodo_Str: ShortString;
 State: Boolean = True;
 Registrado: Boolean = true;

const
 AlfaArray: PChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZàâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ 0123456789.;,<>?/[]{}*&^%$#@!_+-="`~|\';       //é necessário passar caracteres acentuados nos dois formatos pois UPPER e LOWER case não funcionam com caracteres acentuados
 NumArray: PChar = '0123456789';
 AlfaNumArray: Pchar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

implementation

//--- Retorna Informações sobre Versão do Produto
Function Info_Versao: ShortString; 
begin
 Result := 'DataSAC 2.0';
end;                             

Procedure NaoRegistrado;
begin
{ if not Registrado then
  begin
   ShowMessage('SIntegra32Dll.dll NÃO REGISTRADA... ' + #13#10 +
               'Adiquira agora mesmo a sua versão REGISTRADA!' + #13#13 +
               'Maiores informações:' + #13#10 +
               ' Site   : www.igara.com.br' + #13#10 +
               ' E-Mail: victory@igara.com.br');
  end;
  }
end;

//--- Remove caracteres invalidos de uma ShortString ---
//Usage: "NotToRemoveStr" is the Char Array NOT to be removed, "FromStr" is the ShortString to be removed from
Function RemoveInvalid(NotToRemoveStr: String; FromStr: String): ShortString; 
var
 TempStr: String;
 Res: ShortString;
 x: Byte;
begin
 TempStr := UpperCase(FromStr);
 Res := '';
 for x := 1 to Length(TempStr)  do
  begin
   if Pos(TempStr[x], NotToRemoveStr) <> 0 then
    Res := Res + FromStr[x];
  end;
 Result := Res;
end;

//------ Verifica Integridade do Código de Identificação do Convênio ------
//Cod_Convenio = 1 - Estrutura conforme Convênio ICMS 57/95, na versão estabelecida pelo Convênio ICMS 31/99 e com as alterações promovidas até o Convênio ICMS 30/02.
//             = 2 - Estrutura conforme Convênio ICMS 57/95, na versão estabelecida pelo Convênio ICMS 69/02 e com as alterações promovidas pelo Convênio ICMS 142/02.
//             = 3 - Estrutura conforme Convênio ICMS 57/95, com as alterações promovidas pelo Convênio ICMS 76/03.
Function Verifica_Convenio(Cod_Convenio: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Convenio) = '' then
  Exit;
 try
  if StrToInt(Cod_Convenio) in [1, 2, 3] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Tipo do Conhecimento (Campo 09 Registro 85) ------
//campo 9 do regitro 85
//Cod_Conhecimento = 01 - AWB
//                   02 - MAWB
//                   03 - HAWB
//                   04 - COMAT
//                   06 - R. EXPRESSAS
//                   07 - ETIQ. REXPRESSAS
//                   08 - HR. EXPRESSAS
//                   09 - AV7
//                   10 - BL
//                   11 - MBL
//                   12 - HBL
//                   13 - CRT
//                   14 - DSIC
//                   16 - COMAT BL
//                   17 - RWB
//                   18 - HRWB
//                   19 - TIF/DTA
//                   20 - CP2
//                   91 - NÂO IATA
//                   92 - MNAO IATA
//                   93 - HNAO IATA
//                   99 - OUTROS
Function Verifica_Conhecimento(Cod_Conhecimento: ShortString): Boolean; 
var
 i: Byte;
const
 Conhecimentos: array[1..22] of String[2] = ('01', '02', '03', '04', '06', '07', '08', '09',
                                             '10', '11', '12', '13', '14', '16', '17', '18',
                                             '19', '20', '91', '92', '93', '99');
begin
 Result := False;
 if Trim(Cod_Conhecimento) = '' then
  Exit;

 if length(Cod_Conhecimento) = 1 then
  Cod_Conhecimento := '0' + Cod_Conhecimento;

 try
  for i := 0 to High(Conhecimentos) do
   begin
    if Cod_Conhecimento = Conhecimentos[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Tipo de Relacionamento (Campo 15 Registro 86) ------
//campo 15 do regitro 86
//0 - Código destinado a especificar a existência de relacionamento de um Registro de Exportação com uma NF de remessa com fim específico (1:1).
//1 - Código destinado a especificar a existência de relacionamento de um Registro de Exportação com mais de uma NF de remessa com fim específico (1:N).
//2 - Código destinado a especificar a existência de relacionamento de mais de um Registro de Exportação com somente uma NF de remessa com fim específico (N:1).
Function Verifica_Relacionamento(Cod_Relacionamento: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Relacionamento) = '' then
  Exit;
 try
  if StrToInt(Cod_Relacionamento) in [0, 1, 2] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Código de Identificação da Natureza das Operações Informadas ------
//Cod_Operacao = 1 - Interestaduais somente sujeitas ao regime de substituição tributária
//               2 - Interestaduais - operações com ou sem substituição tributária
//               3 - Totalidade das operações do informante
Function Verifica_Operacao(Cod_Operacao: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Operacao) = '' then
  Exit;
 try
  if StrToInt(Cod_Operacao) in [1, 2, 3] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Código de Finalidades da Apresentação do Arquivo Magnético  ------
//Cod_Finalidade = 1 - Normal
//                 2 - Retificação total de arquivo: substituição total de informações prestadas pelo contribuinte referentes a este período
//                 3 - Retificação aditiva de arquivo: acréscimo de informação não incluída em arquivos já apresentados
//                 5 - Desfazimento: arquivo de informação referente a operações/prestações não efetivadas . Neste caso, o arquivo deverá conter, além dos registros tipo 10 e tipo 90, apenas os registros Referentes as operações/prestações não efetivadas
//                 6 - Transmissão de Dados de Produtos Controlados previstos em Norma de Procedimento, por meio do Programa Validador fornecido pelo fisco paranaense
Function Verifica_Finalidade(Cod_Finalidade: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Finalidade) = '' then
  Exit;
 try
  if StrToInt(Cod_Finalidade) in [1, 2, 3, 5, 6] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Código de Modelo de Documentos Fiscais ------
//Cod_Modelo = 01 Nota Fiscal, modelo 1 ou 1-A
//             02 Nota Fiscal de Venda a Consumidor, modelo 2
//             04 Nota Fiscal de Produtor, modelo 4
//             06 Nota Fiscal/Conta de Energia Elétrica, modelo 6
//             07 Nota Fiscal de Serviço de Transporte, modelo 7
//             08 Conhecimento de Transporte Rodoviário de Cargas, modelo 8
//             09 Conhecimento de Transporte Aquaviário de Cargas, modelo 9
//             10 Conhecimento Aéreo, modelo 10
//             11 Conhecimento de Transporte Ferroviário de Cargas, modelo 11
//             13 Bilhete de Passagem Rodoviário, modelo 13
//             14 Bilhete de Passagem Aquaviário, modelo 14
//             15 Bilhete de Passagem e Nota de Bagagem, modelo 15
//             16 Bilhete de Passagem Ferroviário, modelo 16
//             17 Despacho de Transporte, modelo 17
//             18 Resumo de Movimento Diário, modelo 18
//             20 Ordem de Coleta de Cargas, modelo 20
//             21 Nota Fiscal de Serviço de Comunicação, modelo 21
//             22 Nota Fiscal de Serviço de Telecomunicações, modelo 22
//             24 Autorização de Carregamento e Transporte, modelo 24
//             25 Manifesto de Carga, modelo 25
//             26 Conhecimento de Transporte Multimodal de Cargas, modelo 26
//             27 Nota fiscal de Serviço de Transporte Ferroviário, modelo 27 (ajuste SINIEF 07/06)
//             33 Cupom Fiscal
//             55 Nota Fiscal Eletrônica, modelo 55 (Convênio ICMS 12/06)
Function Verifica_Modelo(Cod_Modelo: ShortString): Boolean; 
var
 i: Byte;
const
 Modelos: array[1..28] of String[2] = ('24','14','15','16','13','10','11','09','08','17',
                                       '25','01','06','03','21','04','22','07','02','20',
                                       '18','2B','2C','2D','26','27','33', '55');
begin
 Result := False;
 if Trim(Cod_Modelo) = '' then
  Exit;

 try
  for i := 0 to High(Modelos) do
   begin
    if Cod_Modelo = Modelos[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Código do Pais segundo tabela do SISCOMEX ------
//COD_PAIS    DESC_PAIS                                              BLOCO
//========    ===================================================    ===================================================
//       8    ABU DHABI                                              ORIENTE MEDIO
//      13    AFEGANISTAO                                            ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     756    AFRICA DO SUL                                          AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//      17    ALBANIA                                                EUROPA ORIENTAL                                        
//      20    ALBORAN-PEREJIL, ILHAS                                 ORIENTE MEDIO                                          
//      23    ALEMANHA                                               UNIAO EUROPEIA - UE                                    
//      25    ALEMANHA, REPUBLICA DEMOCRATICA DA                     UNIAO EUROPEIA - UE                                    
//      37    ANDORRA                                                DEMAIS DA EUROPA OCIDENTAL                             
//      40    ANGOLA                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//      41    ANGUILLA                                               DEMAIS DA AMERICA                                      
//      43    ANTIGUA E BARBUDA                                      COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//      47    ANTILHAS HOLANDESAS                                    DEMAIS DA AMERICA                                      
//      53    ARABIA SAUDITA                                         ORIENTE MEDIO
//      59    ARGELIA                                                ORGANIZACAO DOS PAISES EXPORTADORES DE PETROLEO -
//      63    ARGENTINA                                              MERCADO COMUM DO SUL - MERCOSUL                        
//      64    ARMENIA                                                COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//      65    ARUBA                                                  DEMAIS DA AMERICA                                      
//      69    AUSTRALIA                                              ORGANIZACAO DE COOPERACAO P/DESENVOLV.ECONOMICO -      
//      72    AUSTRIA                                                UNIAO EUROPEIA - UE                                    
//      73    AZERBAIJAO                                             COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//      77    BAHAMAS                                                COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//      80    BAHREIN                                                ORIENTE MEDIO                                          
//      81    BANGLADESH                                             ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//      83    BARBADOS                                               COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//      85    BELARUS                                                COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//      87    BELGICA                                                UNIAO EUROPEIA - UE                                    
//      88    BELIZE                                                 COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     229    BENIN                                                  AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//      90    BERMUDAS                                               DEMAIS DA AMERICA                                      
//      97    BOLIVIA                                                ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//      98    BOSNIA-HERZEGOVINA                                     DEMAIS DA EUROPA OCIDENTAL                             
//     101    BOTSUANA                                               AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     108    BRUNEI                                                 ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     111    BULGARIA                                               EUROPA ORIENTAL                                        
//      31    BURKINA FASO                                           AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     115    BURUNDI                                                AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     119    BUTAO                                                  ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     127    CABO VERDE                                             AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     131    CACHEMIRA                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     145    CAMAROES                                               AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     141    CAMBOJA                                                ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     149    CANADA                                                 ACORDO DE LIVRE COMERCIO DA AMERICA DO NORTE - NAF     
//     150    CANAL, ILHAS DO                                        UNIAO EUROPEIA - UE                                    
//     152    CANAL, ILHAS DO                                        UNIAO EUROPEIA - UE                                    
//     150    CANAL, ILHAS DO                                        GRUPO DOS 7 (G-7)                                      
//     151    CANARIAS, ILHAS                                        UNIAO EUROPEIA - UE                                    
//     154    CATAR                                                  ORIENTE MEDIO                                          
//     137    CAYMAN, ILHAS                                          DEMAIS DA AMERICA                                      
//     153    CAZAQUISTAO                                            COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     788    CHADE                                                  AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     158    CHILE                                                  ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//     160    CHINA                                                  ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     163    CHIPRE                                                 UNIAO EUROPEIA - UE                                    
//     511    CHRISTMAS (NAVIDAD), ILHA                              OCEANIA                                                
//     741    CINGAPURA                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     165    COCOS (KEELING), ILHAS                                 OCEANIA                                                
//     169    COLOMBIA                                               ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//     173    COMORES, ILHAS                                         LIGA ARABE                                             
//     177    CONGO                                                  AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     888    CONGO, REPUBLICA DEMOCRATICA DO                        AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     183    COOK, ILHAS                                            OCEANIA                                                
//     190    COREIA, REPUBLICA DA (SUL)                             ORGANIZACAO DE COOPERACAO P/DESENVOLV.ECONOMICO -      
//     187    COREIA, REPUBLICA POPULAR DEMOCRATICA (NORTE)          ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     193    COSTA DO MARFIM                                        AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     196    COSTA RICA                                             MERCADO COMUM CENTRO AMERICANO - MCCA                  
//     198    COVEITE                                                ORIENTE MEDIO                                          
//     195    CROACIA                                                DEMAIS DA EUROPA OCIDENTAL                             
//     199    CUBA                                                   ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//     232    DINAMARCA                                              UNIAO EUROPEIA - UE                                    
//     783    DJIBUTI                                                LIGA ARABE                                             
//     235    DOMINICA, ILHA DE                                      COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     237    DUBAI                                                  ORIENTE MEDIO                                          
//     240    EGITO                                                  LIGA ARABE                                             
//     687    EL SALVADOR                                            MERCADO COMUM CENTRO AMERICANO - MCCA                  
//     244    EMIRADOS ARABES UNIDOS                                 ORIENTE MEDIO                                          
//     239    EQUADOR                                                ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//     243    ERITREIA                                               AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     247    ESLOVACA, REPUBLICA                                    UNIAO EUROPEIA - UE                                    
//     246    ESLOVENIA                                              UNIAO EUROPEIA - UE                                    
//     245    ESPANHA                                                UNIAO EUROPEIA - UE                                    
//     249    ESTADOS UNIDOS                                         ACORDO DE LIVRE COMERCIO DA AMERICA DO NORTE - NAF     
//     251    ESTONIA                                                UNIAO EUROPEIA - UE                                    
//     253    ETIOPIA                                                AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     255    FALKLAND (ILHAS MALVINAS)                              DEMAIS DA AMERICA                                      
//     259    FEROE, ILHAS                                           DEMAIS DA EUROPA OCIDENTAL                             
//     263    FEZZAN                                                 ORGANIZACAO DOS PAISES EXPORTADORES DE PETROLEO -      
//     870    FIJI                                                   OCEANIA                                                
//     267    FILIPINAS                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     271    FINLANDIA                                              UNIAO EUROPEIA - UE                                    
//     275    FRANCA                                                 UNIAO EUROPEIA - UE                                    
//     281    GABAO                                                  ORGANIZACAO DOS PAISES EXPORTADORES DE PETROLEO -      
//     285    GAMBIA                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     289    GANA                                                   AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     291    GEORGIA                                                EUROPA ORIENTAL                                        
//     293    GIBRALTAR                                              DEMAIS DA EUROPA OCIDENTAL                             
//     297    GRANADA                                                COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     301    GRECIA                                                 UNIAO EUROPEIA - UE                                    
//     305    GROENLANDIA                                            DEMAIS DA AMERICA                                      
//     309    GUADALUPE                                              DEMAIS DA AMERICA                                      
//     313    GUAM                                                   OCEANIA                                                
//     317    GUATEMALA                                              MERCADO COMUM CENTRO AMERICANO - MCCA                  
//     337    GUIANA                                                 COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     325    GUIANA FRANCESA                                        DEMAIS DA AMERICA                                      
//     329    GUINE                                                  AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     331    GUINE EQUATORIAL                                       AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     334    GUINE-BISSAU                                           AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     341    HAITI                                                  COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     345    HONDURAS                                               MERCADO COMUM CENTRO AMERICANO - MCCA                  
//     351    HONG KONG                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     355    HUNGRIA                                                UNIAO EUROPEIA - UE                                    
//     357    IEMEN                                                  ORIENTE MEDIO                                          
//     358    IEMEN DEMOCRATICO                                      ORIENTE MEDIO                                          
//     361    INDIA                                                  ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     365    INDONESIA                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     367    INGLATERRA                                             UNIAO EUROPEIA - UE                                    
//     372    IRA, REPUBLICA ISLAMICA DO                             ORIENTE MEDIO                                          
//     369    IRAQUE                                                 ORIENTE MEDIO                                          
//     375    IRLANDA                                                UNIAO EUROPEIA - UE                                    
//     379    ISLANDIA                                               ASSOCIACAO EUROPEIA DE LIVRE COMERCIO - AELC           
//     383    ISRAEL                                                 ORIENTE MEDIO                                          
//     386    ITALIA                                                 UNIAO EUROPEIA - UE                                    
//     388    IUGOSLAVIA                                             DEMAIS DA EUROPA OCIDENTAL                             
//     391    JAMAICA                                                COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     395    JAMMU                                                  ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     399    JAPAO                                                  GRUPO DOS 7 (G-7)                                      
//     396    JOHNSTON, ILHA                                         OCEANIA                                                
//     403    JORDANIA                                               ORIENTE MEDIO                                          
//     411    KIRIBATI                                               OCEANIA                                                
//     420    LAOS, REPUBLICA POPULAR DEMOCRATICA DO                 ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     426    LESOTO                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     427    LETONIA                                                UNIAO EUROPEIA - UE                                    
//     431    LIBANO                                                 ORIENTE MEDIO                                          
//     434    LIBERIA                                                AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     438    LIBIA                                                  ORGANIZACAO DOS PAISES EXPORTADORES DE PETROLEO -      
//     440    LIECHTENSTEIN                                          ASSOCIACAO EUROPEIA DE LIVRE COMERCIO - AELC           
//     442    LITUANIA                                               UNIAO EUROPEIA - UE                                    
//     445    LUXEMBURGO                                             UNIAO EUROPEIA - UE                                    
//     447    MACAU                                                  ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     449    MACEDONIA, ANTIGA REPUBLICA IUGOSLAVA DA               DEMAIS DA EUROPA OCIDENTAL                             
//     450    MADAGASCAR                                             AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     452    MADEIRA, ILHA DA                                       UNIAO EUROPEIA - UE                                    
//     455    MALASIA                                                ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     458    MALAVI                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     461    MALDIVAS                                               ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     464    MALI                                                   AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     467    MALTA                                                  UNIAO EUROPEIA - UE                                    
//     359    MAN, ILHA DE                                           UNIAO EUROPEIA - UE                                    
//     472    MARIANAS DO NORTE, ILHAS                               OCEANIA                                                
//     474    MARROCOS                                               LIGA ARABE                                             
//     476    MARSHALL, ILHAS                                        OCEANIA                                                
//     477    MARTINICA                                              DEMAIS DA AMERICA                                      
//     485    MAURICIO                                               AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     488    MAURITANIA                                             LIGA ARABE                                             
//     493    MEXICO                                                 ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//      93    MIANMAR (BIRMANIA)                                     ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     499    MICRONESIA, ESTADOS FEDERADOS DA                       OCEANIA                                                
//     490    MIDWAY, ILHAS                                          OCEANIA                                                
//     505    MOCAMBIQUE                                             AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     494    MOLDOVA, REPUBLICA DA                                  COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     495    MONACO                                                 UNIAO EUROPEIA - UE                                    
//     497    MONGOLIA                                               ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     501    MONTSERRAT                                             COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     507    NAMIBIA                                                AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     508    NAURU                                                  OCEANIA                                                
//     517    NEPAL                                                  ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     521    NICARAGUA                                              MERCADO COMUM CENTRO AMERICANO - MCCA                  
//     525    NIGER                                                  AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     528    NIGERIA                                                ORGANIZACAO DOS PAISES EXPORTADORES DE PETROLEO -      
//     531    NIUE                                                   OCEANIA                                                
//     535    NORFOLK, ILHA                                          OCEANIA                                                
//     538    NORUEGA                                                ASSOCIACAO EUROPEIA DE LIVRE COMERCIO - AELC           
//     542    NOVA CALEDONIA                                         OCEANIA                                                
//     548    NOVA ZELANDIA                                          ORGANIZACAO DE COOPERACAO P/DESENVOLV.ECONOMICO -      
//     556    OMA                                                    ORIENTE MEDIO                                          
//     563    PACIFICO, ILHAS DO (ADMINISTRACAO DOS EUA)             OCEANIA                                                
//     566    PACIFICO, ILHAS DO (EUA)                               OCEANIA                                                
//     569    PACIFICO, ILHAS DO (TERRITORIO FIDEICOMISSO EUA)       OCEANIA                                                
//     573    PAISES BAIXOS (HOLANDA)                                UNIAO EUROPEIA - UE                                    
//     575    PALAU                                                  OCEANIA                                                
//     579    PALESTINA,AUTORIDADE (5797) POR CRIAR                  LIGA ARABE                                             
//     580    PANAMA                                                 DEMAIS DA AMERICA LATINA                               
//     545    PAPUA NOVA GUINE                                       OCEANIA                                                
//     583    PAPUA, TERRITORIO DE                                   OCEANIA                                                
//     576    PAQUISTAO                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     586    PARAGUAI                                               MERCADO COMUM DO SUL - MERCOSUL                        
//     589    PERU                                                   ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//     593    PITCAIRN                                               OCEANIA                                                
//     599    POLINESIA FRANCESA                                     OCEANIA                                                
//     603    POLONIA                                                UNIAO EUROPEIA - UE                                    
//     611    PORTO RICO                                             ESTADOS UNIDOS (INCLUSIVE PORTO RICO)                  
//     607    PORTUGAL                                               UNIAO EUROPEIA - UE                                    
//     990    PROVISAO DE NAVIOS E AERONAVES                         PROVISAO DE NAVIOS E AERONAVES                         
//     623    QUENIA                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)
//     625    QUIRGUIZ, REPUBLICA                                    COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     628    REINO UNIDO                                            UNIAO EUROPEIA - UE                                    
//     640    REPUBLICA CENTRO-AFRICANA                              AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     647    REPUBLICA DOMINICANA                                   DEMAIS DA AMERICA LATINA                               
//     660    REUNIAO                                                AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     670    ROMENIA                                                EUROPA ORIENTAL                                        
//     675    RUANDA                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     676    RUSSIA, FEDERACAO DA                                   COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     685    SAARA OCIDENTAL                                        AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     678    SAINT KITTS E NEVIS                                    COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     677    SALOMAO, ILHAS                                         OCEANIA                                                
//     690    SAMOA                                                  OCEANIA                                                
//     691    SAMOA AMERICANA                                        OCEANIA                                                
//     697    SAN MARINO                                             UNIAO EUROPEIA - UE                                    
//     710    SANTA HELENA                                           AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     715    SANTA LUCIA                                            COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     695    SAO CRISTOVAO E NEVIS                                  COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     700    SAO PEDRO E MIQUELLON                                  DEMAIS DA AMERICA                                      
//     720    SAO TOME E PRINCIPE                                    AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     705    SAO VICENTE E GRANADINAS                               COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     728    SENEGAL                                                AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     735    SERRA LEOA                                             AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     731    SEYCHELLES                                             AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     738    SIKKIM                                                 ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     744    SIRIA, REPUBLICA ARABE DA                              ORIENTE MEDIO                                          
//     748    SOMALIA                                                LIGA ARABE                                             
//     750    SRI LANKA                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     754    SUAZILANDIA                                            AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     759    SUDAO                                                  LIGA ARABE                                             
//     764    SUECIA                                                 UNIAO EUROPEIA - UE                                    
//     767    SUICA                                                  ASSOCIACAO EUROPEIA DE LIVRE COMERCIO - AELC           
//     770    SURINAME                                               COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     772    TADJIQUISTAO                                           COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     776    TAILANDIA                                              ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     161    TAIWAN (FORMOSA)                                       ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     780    TANZANIA, REPUBLICA UNIDA DA                           AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     791    TCHECA, REPUBLICA                                      UNIAO EUROPEIA - UE                                    
//     790    TCHECOSLOVAQUIA                                        EUROPA ORIENTAL                                        
//     786    TERRITORIO ANTARTICO BRITANICO                         UNIAO EUROPEIA - UE                                    
//     782    TERRITORIO BRITANICO DO OCEANO INDICO                  AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     795    TIMOR LESTE                                            ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     800    TOGO                                                   AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     810    TONGA                                                  OCEANIA
//     805    TOQUELAU                                               OCEANIA
//     815    TRINIDAD E TOBAGO                                      COMUNIDADE E MERCADO COMUM DO CARIBE - CARICOM         
//     820    TUNISIA                                                LIGA ARABE                                             
//     823    TURCAS E CAICOS, ILHAS                                 DEMAIS DA AMERICA                                      
//     824    TURCOMENISTAO                                          COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI
//     827    TURQUIA                                                ORGANIZACAO DE COOPERACAO P/DESENVOLV.ECONOMICO -
//     828    TUVALU                                                 OCEANIA                                                
//     831    UCRANIA                                                COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     833    UGANDA                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     840    UNIAO DAS REPUBLICAS SOCIALISTAS SOVIETICAS            EUROPA ORIENTAL                                        
//     845    URUGUAI                                                MERCADO COMUM DO SUL - MERCOSUL                        
//     847    UZBEQUISTAO                                            COMUNIDADE DOS ESTADOS INDEPENDENTES - CEI             
//     551    VANUATU                                                OCEANIA                                                
//     848    VATICANO, ESTADO DA CIDADE DO                          DEMAIS DA EUROPA OCIDENTAL
//     850    VENEZUELA                                              ASSOCIACAO LATINO AMERICANA DE INTEGRACAO - ALADI      
//     858    VIETNA                                                 ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     855    VIETNA DO NORTE                                        ASIA (EXCLUSIVE ORIENTE MEDIO)                         
//     866    VIRGENS, ILHAS (AMERICANAS)                            DEMAIS DA AMERICA                                      
//     863    VIRGENS, ILHAS (BRITANICAS)                            DEMAIS DA AMERICA                                      
//     873    WAKE, ILHA                                             OCEANIA                                                
//     875    WALLIS E FUTUNA, ILHAS                                 OCEANIA                                                
//     890    ZAMBIA                                                 AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     665    ZIMBABUE                                               AFRICA (EXCLUSIVE ORIENTE MEDIO)                       
//     895    ZONA DO CANAL DO PANAMA                                DEMAIS DA AMERICA
Function Verifica_Pais(Cod_Pais: ShortString): Boolean; 
//var
// i: integer;
const
 Paises: array[1..259] of String[4] = ('0008', '0013', '0017', '0020', '0023', '0025', '0037', '0040', '0041', '0043',
                                       '0047', '0053', '0059', '0063', '0064', '0065', '0069', '0072', '0073', '0077',
                                       '0080', '0081', '0083', '0085', '0087', '0088', '0090', '0097', '0098', '0031',
                                       '0093', '0101', '0229', '0108', '0111', '0115', '0141', '0149', '0150', '0152',
                                       '0151', '0154', '0137', '0153', '0788', '0158', '0160', '0163', '0511', '0741',
                                       '0165', '0169', '0173', '0177', '0888', '0183', '0190', '0187', '0193', '0196',
                                       '0198', '0195', '0199', '0232', '0783', '0235', '0237', '0240', '0687', '0244',
                                       '0239', '0243', '0247', '0246', '0245', '0249', '0251', '0253', '0255', '0259',
                                       '0263', '0870', '0267', '0271', '0275', '0281', '0285', '0289', '0291', '0293',
                                       '0297', '0301', '0305', '0309', '0313', '0317', '0337', '0325', '0329', '0331',
                                       '0334', '0341', '0345', '0351', '0355', '0357', '0358', '0361', '0365', '0367',
                                       '0372', '0369', '0375', '0379', '0383', '0386', '0388', '0391', '0395', '0399',
                                       '0396', '0403', '0411', '0420', '0426', '0427', '0431', '0434', '0438', '0440',
                                       '0442', '0445', '0447', '0449', '0450', '0452', '0455', '0458', '0461', '0464',
                                       '0467', '0359', '0472', '0474', '0476', '0477', '0485', '0488', '0493', '0499',
                                       '0490', '0505', '0494', '0495', '0497', '0501', '0507', '0508', '0517', '0521',
                                       '0525', '0528', '0531', '0535', '0538', '0542', '0548', '0556', '0563', '0566',
                                       '0569', '0573', '0575', '0579', '0580', '0545', '0583', '0576', '0586', '0589',
                                       '0593', '0599', '0603', '0611', '0607', '0990', '0623', '0625', '0628', '0640',
                                       '0647', '0660', '0670', '0675', '0676', '0685', '0678', '0677', '0690', '0691',
                                       '0697', '0710', '0715', '0695', '0700', '0720', '0705', '0728', '0735', '0731',
                                       '0738', '0744', '0748', '0750', '0754', '0759', '0764', '0767', '0770', '0772',
                                       '0776', '0161', '0780', '0791', '0790', '0786', '0782', '0795', '0800', '0810',
                                       '0805', '0815', '0820', '0823', '0824', '0827', '0828', '0831', '0833', '0840',
                                       '0845', '0847', '0551', '0848', '0850', '0858', '0855', '0866', '0863', '0873',
                                       '0875', '0890', '0665', '0895', '0756', '0119', '0127', '0131', '0145'); 

begin
 Result := true; //Função desabilitada em 20/11/2007 deve-se verificar a tabela de códigos de países válidos

{
 Result := False;
 if Trim(Cod_Pais) = '' then
  Exit;

 try
  for i := 0 to High(Paises) do
   begin
    if Cod_Pais = Paises[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
 }
end;

//------ Verifica Integridade do Código de Identificação da Natureza das Operações Informadas ------
//campo 10 do regitro 56
//Tipo_Operacao = 1 - venda para concessionária
//                2- "Faturamento Direto" - Convênio ICMS 51/00
//                3 - Venda direta
//                0 - Outras
Function Verifica_Tipo_Operacao(Cod_Tipo_Operacao: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Tipo_Operacao) = '' then
  Exit;
 try
  if StrToInt(Cod_Tipo_Operacao) in [0, 1, 2, 3] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Tipo de Equipamento
//Tipo_Operacao = 1 - ECF - MR
//                2- ECF-IF-INTERLIGADO A UAP
//                3 - OUTROS
Function Verifica_TipEquip(Cod_Equipamento: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Equipamento) = '' then
  Exit;
 try
  if StrToInt(Cod_Equipamento) in [1, 2, 3] then
   Result := True;
 except
  Result := False;
 end;
end;


//------ Verifica Situação do Documento Fiscal quanto ao Cancelamento ------
//Situacao = S - Documento Fiscal Regularmente Cancelado
//           N - Documento Fiscal Não Regularmente Cancelado
//           E - Lançamento Extemporâneo de Documento Fiscal Normal
//           X - Lançamento Extemporâneo de Documento Fiscal Cancelado
//           2 - Documento com USO DENEGADO – exclusivamente para uso dos emitentes de Nota Fiscal Eletrônica – Modelo 55
//           4 - Documento com USO INUTILIZADO – exclusivamente para uso dos emitentes de Nota Fiscal Eletrônica – Modelo 55
Function Verifica_Situacao(Situacao: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Situacao) = '' then
  Exit;
 try
  if Situacao[1] in ['S', 'N', 'E', 'X'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Averbação do Despacho de Exportação ------
//campo 04 do regitro 85
//Averbação = S - SIM
//            N - Não
Function Verifica_Averbacao(Averbacao: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Averbacao) = '' then
  Exit;
 try
  if Averbacao[1] in ['S', 'N'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Emitente da Nota Fiscal ------
//Emitente = P - Próprio (se nota fiscal emitida pelo contribuinte informante)
//           T - Terceiros (se emitida por terceiros)
Function Verifica_Emitente(Emitente: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Emitente) = '' then
  Exit;
 try
  if Emitente[1] in ['P', 'T'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica CST (Código da Situação Tributária) ------
//CST[1] = 0, 1 ou 2, conforme tabela A – Origem da Mercadoria do Anexo ao Convênio SINIEF s/nº, de 15.12.70
//CST[2] = 0 a 9, exceto 8
//CST[3] = 0 ou 1, ambos conforme tabela B – Tributação pelo ICMS, do mesmo anexo

//Tabela A - Origem da Mercadoria
//0 - nacional
//1 - estrangeira - importação direta
//2 - estrangeira - adquirida no mercado interno

//Tabela B - Tributação pelo ICMS
//00 - Tributada integralmente
//10 - Tributada e com cobrança do ICMS por substituição tributária
//20 - Com redução de base de cálculo
//30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária
//40 - Isenta
//41 - Não tributada
//50 - Suspensão
//51 - Diferimento
//60 - ICMS cobrado anteriormente por substituição tributária
//70 - Com redução de base de cálculo e cobrança do ICMS por substituição tributária
//90 - Outras
Function Verifica_CST(CST: ShortString): Boolean; 
var
 tabela_B: ShortString;
begin
 Result := False;
 if Trim(CST) = '' then
  Exit;

 tabela_B := CST[2] + CST[3];

 try
  if (CST[1] in ['0', '1', '2']) and
     ((tabela_B = '00') or
      (tabela_B = '10') or
      (tabela_B = '20') or
      (tabela_B = '30') or
      (tabela_B = '40') or
      (tabela_B = '41') or
      (tabela_B = '50') or
      (tabela_B = '51') or
      (tabela_B = '60') or
      (tabela_B = '70') or
      (tabela_B = '90')) then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica CIF/FOB - Modalidade do Frete ------
//Situacao = 1 - CIF
//           2 - FOB
//           0 - OUTROS nos casos em que não se aplica a informação de cláusula CIF ou FOB
Function Verifica_CIF_FOB(CIF_FOB: ShortString): Boolean; 
begin
 Result := False;
 if Trim(CIF_FOB) = '' then
  Exit;
 try
  if CIF_FOB[1] in ['0', '1', '2'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Posição Sequencial do Item na Nota ------
//Situacao = 001..990 - Posição do Produto/Serviço constante na nota fiscal
//           991 - identifica o registro do frete;
//           992 - identifica o registro do seguro;
//           993 - PIS/COFINS;
//           994 - Apropriação de crédito de ativo imobilizado;
//           995 - ressarcimento de Substituição Tributária;
//           996 - transferência de crédito;
//           997 - complemento de valor de Nota Fiscal e/ou ICMS;
//           998 - serviços não tributados;
//           999 - identifica o registro de outras despesas acessórias
Function Verifica_NumeroItem(Nro_Item: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Nro_Item) = '' then
  Exit;
 try
  if (StrToInt(Nro_Item) >= 1) and (StrToInt(Nro_Item) <= 999) then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Código de Posse das Mercadorias Inventariadas ------
//Cod_Posse = 1 - Mercadorias de propriedade do informante e em seu poder
//            2 - Mercadoria de propriedade do informante e em poder de terceiros
//            3 - Mercadorias de propriedade de terceiros em poder do informante
Function Verifica_Posse(Cod_Posse: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Posse) = '' then
  Exit;
 try
  if strtoint(Cod_Posse) in [1, 2, 3] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Código da identificação do tipo de receita ------
//Cod_Posse = 1 - Receita própria
//            2 - Receita de Terceiros
Function Verifica_Tipo_Receita(Cod_Tipo_Receita: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Tipo_Receita) = '' then
  Exit;
 try
  if strtoint(Cod_Tipo_Receita) in [1, 2] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Tipo da informação do PROGRAMA DE DESENVOLVIMENTO DA INDÚSTRIA NÁUTICA ------
//Preencher com A, B ou C, conforme abaixo :
//         A – fornecimentos;
//         B – aquisições;
//         C – importações
Function Verifica_Tipo_Informacao(Cod_Tipo_Informacao: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Tipo_Informacao) = '' then
  Exit;
 try
  if Cod_Tipo_Informacao[1] in ['A','B','C'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade de CEP por estado ------
function Verifica_CEP_UF(cCep:ShortString ; cEstado:ShortString): Boolean; 
var
 cCEP1: integer;
const 
 NumArray: PChar = '0123456789';
begin
 Result := False;
 if Trim(cCep) = '' then
  Exit;

 cCep := RemoveInvalid(NumArray , cCep);

 cCEP1 := StrToInt(copy(cCep,1,3));
 if Length(trim(cCep)) > 0 then
  begin
   if (StrToInt(cCep) <= 1000000.0) then
    begin
     //MessageDlg('CEP tem que ser maior que [01000-000]',mtError,[mbOk],0);
     Result := False
    end
   else
    begin
     if Length(trim(copy(cCep,6,3))) < 3 then Result := False else
     if (cEstado = 'SP') and (cCEP1 >= 010) and (cCEP1 <= 199) then Result := True else
     if (cEstado = 'RJ') and (cCEP1 >= 200) and (cCEP1 <= 289) then Result := True else
     if (cEstado = 'ES') and (cCEP1 >= 290) and (cCEP1 <= 299) then Result := True else
     if (cEstado = 'MG') and (cCEP1 >= 300) and (cCEP1 <= 399) then Result := True else
     if (cEstado = 'BA') and (cCEP1 >= 400) and (cCEP1 <= 489) then Result := True else
     if (cEstado = 'SE') and (cCEP1 >= 490) and (cCEP1 <= 499) then Result := True else
     if (cEstado = 'PE') and (cCEP1 >= 500) and (cCEP1 <= 569) then Result := True else
     if (cEstado = 'AL') and (cCEP1 >= 570) and (cCEP1 <= 579) then Result := True else
     if (cEstado = 'PB') and (cCEP1 >= 580) and (cCEP1 <= 589) then Result := True else
     if (cEstado = 'RN') and (cCEP1 >= 590) and (cCEP1 <= 599) then Result := True else
     if (cEstado = 'CE') and (cCEP1 >= 600) and (cCEP1 <= 639) then Result := True else
     if (cEstado = 'PI') and (cCEP1 >= 640) and (cCEP1 <= 649) then Result := True else
     if (cEstado = 'MA') and (cCEP1 >= 650) and (cCEP1 <= 659) then Result := True else
     if (cEstado = 'PA') and (cCEP1 >= 660) and (cCEP1 <= 688) then Result := True else
     if (cEstado = 'AM') and ((cCEP1 >= 690) and (cCEP1 <= 692) or (cCEP1 >= 694) and (cCEP1 <= 698)) then Result := True else
     if (cEstado = 'AP') and (cCEP1 = 689) then Result := True else
     if (cEstado = 'RR') and (cCEP1 = 693) then Result := True else
     if (cEstado = 'AC') and (cCEP1 = 699) then Result := True else
     if ((cEstado = 'DF') or (cEstado = 'GO')) and (cCEP1 >= 700) and (cCEP1 <= 767) then Result := True else
     if (cEstado = 'TO') and (cCEP1 >= 770) and (cCEP1 <= 779) then Result := True else
     if (cEstado = 'MT') and (cCEP1 >= 780) and (cCEP1 <= 788) then Result := True else
     if (cEstado = 'MS') and (cCEP1 >= 790) and (cCEP1 <= 799) then Result := True else
     if (cEstado = 'RO') and (cCEP1 >= 768) and (cCEP1 <= 769) then Result := True else
     if (cEstado = 'PR') and (cCEP1 >= 800) and (cCEP1 <= 879) then Result := True else
     if (cEstado = 'SC') and (cCEP1 >= 880) and (cCEP1 <= 899) then Result := True else
     if (cEstado = 'RS') and (cCEP1 >= 900) and (cCEP1 <= 999) then Result := True else Result := False
    end;
  end
 else
  Result := True;
end;


//------ Verifica Integridade de CEP ------
function Verifica_CEP(cCep:ShortString): Boolean; 
var
 cCEP1 : Integer;
const
 NumArray: PChar = '0123456789';
begin
 Result := False;
 if Trim(cCep) = '' then
  Exit;

 cCep := RemoveInvalid(NumArray, cCep);    //Remove Caracteres Invalidos

 cCEP1 := StrToInt(copy(cCep,1,3));
 if Length(trim(cCep)) > 0 then
  begin
   if (StrToInt(cCep) <= 1000000.0) then
    begin
     //MessageDlg('CEP tem que ser maior que [01000-000] :: ' + cCep,mtError,[mbOk],0);
     Result := False
    end
   else
    begin
     if Length(trim(copy(cCep,6,3))) < 3 then Result := False else
     if (cCEP1 >= 10 ) and (cCEP1 <= 199) then Result := True else
     if (cCEP1 >= 200) and (cCEP1 <= 289) then Result := True else
     if (cCEP1 >= 290) and (cCEP1 <= 299) then Result := True else
     if (cCEP1 >= 300) and (cCEP1 <= 399) then Result := True else
     if (cCEP1 >= 400) and (cCEP1 <= 489) then Result := True else
     if (cCEP1 >= 490) and (cCEP1 <= 499) then Result := True else
     if (cCEP1 >= 500) and (cCEP1 <= 569) then Result := True else
     if (cCEP1 >= 570) and (cCEP1 <= 579) then Result := True else
     if (cCEP1 >= 580) and (cCEP1 <= 589) then Result := True else
     if (cCEP1 >= 590) and (cCEP1 <= 599) then Result := True else
     if (cCEP1 >= 600) and (cCEP1 <= 639) then Result := True else
     if (cCEP1 >= 640) and (cCEP1 <= 649) then Result := True else
     if (cCEP1 >= 650) and (cCEP1 <= 659) then Result := True else
     if (cCEP1 >= 660) and (cCEP1 <= 688) then Result := True else
     if ((cCEP1 >= 690) and (cCEP1 <= 692) or (cCEP1 >= 694) and (cCEP1 <= 698)) then Result := True else
     if (cCEP1 = 689) then Result := True else
     if (cCEP1 = 693) then Result := True else
     if (cCEP1 = 699) then Result := True else
     if (cCEP1 >= 700) and (cCEP1 <= 769) then Result := True else
     if (cCEP1 >= 770) and (cCEP1 <= 779) then Result := True else
     if (cCEP1 >= 780) and (cCEP1 <= 788) then Result := True else
     if (cCEP1 >= 790) and (cCEP1 <= 799) then Result := True else
     if (cCEP1 = 789) then Result := True else
     if (cCEP1 >= 800) and (cCEP1 <= 879) then Result := True else
     if (cCEP1 >= 880) and (cCEP1 <= 899) then Result := True else
     if (cCEP1 >= 900) and (cCEP1 <= 999) then Result := True else Result := False
    end;
  end
 else
  Result := True;
end;

//------ Verifica Integridade de UF ------
Function Verifica_UF(UF: ShortString): Boolean; 
const
 EstadosUniao: array[1..28] of String[2] = ('MG','SP','RJ','AL','AM','BA','DF','MS','MT',
                                            'TO','AC','MA','RO','RR','PE','RS','PA','PB',
                                            'CE','GO','SC','ES','AP','PI','RN','SE','PR',
                                            'EX');
var
 i: Byte;
begin
 Result := False;
 if UF = '' then
  Exit;

 UF := UpperCase(UF);
 for i := Low(EstadosUniao) to High(EstadosUniao) do
  begin
   if EstadosUniao[i] = UF then
    begin
     Result := True;
     Break;
    end;
  end;
end;

//------ Verifica Integridade de CPF ------
Function Verifica_CPF(CPF: ShortString): Boolean; 
const
 _len_max = 11;
 NumArray: PChar = '0123456789';
var
  Digitos: array[1.._len_max] of Byte;
  i, DV1, DV2: Short;
  Calculo: Integer;
  tmp: String[_len_max];
begin
 Result := False;
 if Trim(CPF) = '' then
  Exit;

 try
  tmp := RemoveInvalid(NumArray, CPF);        //Remove caracteres invalidos

  while Length(tmp) < _len_max do
   tmp := tmp + '0';
  for i := 1 to _len_max do
   Digitos[i] := StrToInt(tmp[i]);

  // obtém o primeiro dígito verificador
  Calculo := (10 * Digitos[1]) + (9 * Digitos[2]) + (8 * Digitos[3]) +
             (7 * Digitos[4]) + (6 * Digitos[5]) + (5 * Digitos[6]) +
             (4 * Digitos[7]) + (3 * Digitos[8]) + (2 * Digitos[9]);
  DV1 := 11 - (Calculo mod 11);
  if (DV1 >= 10) then
   DV1 := 0;

  // obtém o segundo dígito verificador
  Calculo := (11 * Digitos[1]) + (10 * Digitos[2]) + (9 * Digitos[3]) +
             (8 * Digitos[4]) + (7 * Digitos[5]) + (6 * Digitos[6]) +
             (5 * Digitos[7]) + (4 * Digitos[8]) + (3 * Digitos[9]) + (2 * DV1);
  DV2 := 11 - (Calculo mod 11);
  if (DV2 >= 10) then
   DV2 := 0;

  // compara os dígitos
  Result := (Digitos[10] = DV1) and (Digitos[11] = DV2);
 except
  Result:=False;
 end;
end;

//------ Verifica Integridade de CNPJ ------
Function Verifica_CNPJ(CGC: ShortString): Boolean; 
var
 Digitos: array[1..14] of Byte;
 i, Resto: ShortInt;
 DV1, DV2: byte;
 Calculo: Integer;
 tmp: String[14];
const
 NumArray: PChar = '0123456789';
begin
 Result := False;
 if Trim(CGC) = '' then
  Exit;

 CGC := removeinvalid(NumArray, CGC);

 try
  tmp := CGC;
  while Length(tmp) < 14 do
   tmp := tmp + '0';
  for i := 1 to 14 do
   Digitos[i] := StrToInt(tmp[i]);

  // obtém o primeiro dígito verificador
  Calculo := (5 * Digitos[1]) + (4 * Digitos[2] ) +
             (3 * Digitos[3]) + (2 * Digitos[4]) + (9 * Digitos[5]) +
             (8 * Digitos[6]) + (7 * Digitos[7]) + (6 * Digitos[8]) +
             (5 * Digitos[9]) + (4 * Digitos[10]) + (3 * Digitos[11]) +
             (2 * Digitos[12]);
  Resto := Calculo mod 11;
  if (Resto = 0) or (Resto = 1) then
   DV1 := 0
  else
   DV1 := 11 - Resto;

  // obtém o segundo dígito verificador
  Calculo := (6 * Digitos[1]) + (5 * Digitos[2]) + (4 * Digitos[3]) +
             (3 * Digitos[4]) + (2 * Digitos[5]) + (9 * Digitos[6]) +
             (8 * Digitos[7]) + (7 * Digitos[8]) + (6 * Digitos[9]) +
             (5 * Digitos[10]) + (4 * Digitos[11]) + (3 * Digitos[12]) +
             (2 * DV1);
  Resto := Calculo mod 11;
  if (Resto = 0) or (Resto = 1) then
   DV2 := 0
  else
   DV2 := 11 - Resto;

  // compara os dígitos
  Result := (Digitos[13] = DV1) and (Digitos[14] = DV2);
 except
  Result:=False;
 end;
end;

//------ Verifica Integridade de Inscrição Estadual ------
//Função desabilitada por problemas na validação de Insc. Est. de produtores rurais
//Para validar Incs. Est. utilize a dll ofical disponível p/ download em www.sintegra.gov.br
function Verifica_InscEst(Inscricao, UF: string): Boolean; 
var
  Contador: ShortInt;
  Casos: ShortInt;
  Digitos: ShortInt;

  Tabela_1: string;
  Tabela_2: string;
  Tabela_3: string;

  Base_1: string;
  Base_2: string;
  Base_3: string;

  Valor_1: ShortInt;

  Soma_1: Integer;
  Soma_2: Integer;

  Erro_1: ShortInt;
  Erro_2: ShortInt;
  Erro_3: ShortInt;

  Posicao_1: string;
  Posicao_2: string;

  Tabela: string;
  Rotina: string;
  Modulo: ShortInt;
  Peso: string;

  Digito: ShortInt;

  Resultado: string;
  Retorno: Boolean;

const
 NumArray: PChar = '0123456789';


//Create: 21/06/2001 - Update: 23/06/2001 - By Paulo Ed Casagrande                                     }
//Unit desenvolvida com base em informações contidas no site : www.sintegra.gov.br                     }
begin
  try
    inscricao := removeinvalid(NumArray, Inscricao);

    Tabela_1 := ' ';
    Tabela_2 := ' ';
    Tabela_3 := ' ';

    // Valores possiveis para os digitos (j)
    //
    // 0 a 9 = Somente o digito indicado.
    //     N = Numeros 0 1 2 3 4 5 6 7 8 ou 9
    //     A = Numeros 1 2 3 4 5 6 7 8 ou 9
    //     B = Numeros 0 3 5 7 ou 8
    //     C = Numeros 4 ou 7
    //     D = Numeros 3 ou 4
    //     E = Numeros 0 ou 8
    //     F = Numeros 0 1 ou 5
    //     G = Numeros 1 7 8 ou 9
    //     H = Numeros 0 1 2 ou 3
    //     I = Numeros 0 1 2 3 ou 4
    //     J = Numeros 0 ou 9
    //     K = Numeros 1 2 3 ou 9
    //
    // -----------------------------------------------------------------------------
    //
    //         Valores possiveis para as rotinas (d) e (g)
    //
    // A a E = Somente a Letra indicada.
    //     0 = B e D
    //     1 = C e E
    //     2 = A e E
    //
    // -----------------------------------------------------------------------------
    //
    //                                  C T  F R M  P  R M  P
    //                                  A A  A O O  E  O O  E
    //                                  S M  T T D  S  T D  S
    //
    //                                  a b  c d e  f  g h  i  jjjjjjjjjjjjjj
    //                                  0000000001111111111222222222233333333
    //                                  1234567890123456789012345678901234567

    if UF = 'AC' then Tabela_1 := '1.09.0.E.11.01. .  .  .     01NNNNNNX.14.00';
    if UF = 'AC' then Tabela_2 := '2.13.0.E.11.02.E.11.01. 01NNNNNNNNNXY.13.14';
    if UF = 'AL' then Tabela_1 := '1.09.0.0.11.01. .  .  .     24BNNNNNX.14.00';
    if UF = 'AP' then Tabela_1 := '1.09.0.1.11.01. .  .  .     03NNNNNNX.14.00';
    if UF = 'AP' then Tabela_2 := '2.09.1.1.11.01. .  .  .     03NNNNNNX.14.00';
    if UF = 'AP' then Tabela_3 := '3.09.0.E.11.01. .  .  .     03NNNNNNX.14.00';
    if UF = 'AM' then Tabela_1 := '1.09.0.E.11.01. .  .  .     0CNNNNNNX.14.00';
    if UF = 'BA' then Tabela_1 := '1.08.0.E.10.02.E.10.03.      NNNNNNYX.14.13';
    if UF = 'BA' then Tabela_2 := '2.08.0.E.11.02.E.11.03.      NNNNNNYX.14.13';
    if UF = 'CE' then Tabela_1 := '1.09.0.E.11.01. .  .  .     0NNNNNNNX.14.13';
    if UF = 'DF' then Tabela_1 := '1.13.0.E.11.02.E.11.01. 07DNNNNNNNNXY.13.14';
    if UF = 'ES' then Tabela_1 := '1.09.0.E.11.01. .  .  .     0ENNNNNNX.14.00';
    if UF = 'GO' then Tabela_1 := '1.09.1.E.11.01. .  .  .     1FNNNNNNX.14.00';
    if UF = 'GO' then Tabela_2 := '2.09.0.E.11.01. .  .  .     1FNNNNNNX.14.00';
    if UF = 'MA' then Tabela_1 := '1.09.0.E.11.01. .  .  .     12NNNNNNX.14.00';
    if UF = 'MT' then Tabela_1 := '1.11.0.E.11.01. .  .  .   NNNNNNNNNNX.14.00';
    if UF = 'MS' then Tabela_1 := '1.09.0.E.11.01. .  .  .     28NNNNNNX.14.00';
    if UF = 'MG' then Tabela_1 := '1.13.0.2.10.10.E.11.11. NNNNNNNNNNNXY.13.14';
    if UF = 'PA' then Tabela_1 := '1.09.0.E.11.01. .  .  .     15NNNNNNX.14.00';
    if UF = 'PB' then Tabela_1 := '1.09.0.E.11.01. .  .  .     16NNNNNNX.14.00';
    if UF = 'PR' then Tabela_1 := '1.10.0.E.11.09.E.11.08.    NNNNNNNNXY.13.14';
    if UF = 'PE' then Tabela_1 := '1.14.1.E.11.07. .  .  .18ANNNNNNNNNNX.14.00';
    if UF = 'PI' then Tabela_1 := '1.09.0.E.11.01. .  .  .     19NNNNNNX.14.00';
    if UF = 'RJ' then Tabela_1 := '1.08.0.E.11.08. .  .  .      GNNNNNNX.14.00';
    if UF = 'RN' then Tabela_1 := '1.09.0.0.11.01. .  .  .     20HNNNNNX.14.00';
    if UF = 'RS' then Tabela_1 := '1.10.0.E.11.01. .  .  .    INNNNNNNNX.14.00';
    if UF = 'RO' then Tabela_1 := '1.09.1.E.11.04. .  .  .     ANNNNNNNX.14.00';
    if UF = 'RO' then Tabela_2 := '2.14.0.E.11.01. .  .  .NNNNNNNNNNNNNX.14.00';
    if UF = 'RR' then Tabela_1 := '1.09.0.D.09.05. .  .  .     24NNNNNNX.14.00';
    if UF = 'SC' then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
    if UF = 'SP' then Tabela_1 := '1.12.0.D.11.12.D.11.13.  NNNNNNNNXNNY.11.14';
    if UF = 'SP' then Tabela_2 := '2.12.0.D.11.12. .  .  .  NNNNNNNNXNNN.11.00';
    if UF = 'SE' then Tabela_1 := '1.09.0.E.11.01. .  .  .     NNNNNNNNX.14.00';
    if UF = 'TO' then Tabela_1 := '1.11.0.E.11.06. .  .  .   29JKNNNNNNX.14.00';

    if UF = 'CNPJ' then Tabela_1 := '1.14.0.E.11.21.E.11.22.NNNNNNNNNNNNXY.13.14';
    if UF = 'CPF' then Tabela_1 := '1.11.0.E.11.31.E.11.32.   NNNNNNNNNXY.13.14';

    // Deixa somente os numeros
    Base_1 := '';
    for Contador := 1 to 30 do if Pos(Copy(Inscricao, Contador, 1), '0123456789') <> 0 then
      Base_1 := Base_1 + Copy(Inscricao, Contador, 1);

    // Repete 3x - 1 para cada caso possivel
    Casos := 0;

    Erro_1 := 0;
    Erro_2 := 0;
    Erro_3 := 0;

    while Casos < 3 do
    begin
      Casos := Casos + 1;
      if Casos = 1 then Tabela := Tabela_1;
      if Casos = 2 then Erro_1 := Erro_3;
      if Casos = 2 then Tabela := Tabela_2;
      if Casos = 3 then Erro_2 := Erro_3;
      if Casos = 3 then Tabela := Tabela_3;
      Erro_3 := 0;
      if Copy(Tabela, 1, 1) <> ' ' then
      begin
        //Verifica o Tamanho
        if Length(Trim(Base_1)) <> (StrToInt(Copy(Tabela, 3, 2))) then Erro_3 := 1;
        if Erro_3 = 0 then
        begin
          // Ajusta o Tamanho
          Base_2 := Copy('              ' + Base_1, Length('              ' + Base_1) - 13, 14);
          // Compara com valores possivel para cada uma da 14 posições
          Contador := 0;
          while (Contador < 14) and (Erro_3 = 0) do
          begin
            Contador := Contador + 1;
            Posicao_1 := Copy(Copy(Tabela, 24, 14), Contador, 1);
            Posicao_2 := Copy(Base_2, Contador, 1);
            if (Posicao_1 = ' ') and (Posicao_2 <> ' ') then Erro_3 := 1;
            if (Posicao_1 = 'N') and (Pos(Posicao_2, '0123456789') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'A') and (Pos(Posicao_2, '123456789') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'B') and (Pos(Posicao_2, '03578') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'C') and (Pos(Posicao_2, '47') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'D') and (Pos(Posicao_2, '34') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'E') and (Pos(Posicao_2, '08') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'F') and (Pos(Posicao_2, '015') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'G') and (Pos(Posicao_2, '1789') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'H') and (Pos(Posicao_2, '0123') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'I') and (Pos(Posicao_2, '01234') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'J') and (Pos(Posicao_2, '09') = 0) then Erro_3 := 1;
            if (Posicao_1 = 'K') and (Pos(Posicao_2, '1239') = 0) then Erro_3 := 1;
            if (Posicao_1 <> Posicao_2) and (Pos(Posicao_1, '0123456789') > 0) then Erro_3 := 1;
          end;
          // Calcula os Digitos
          Rotina := ' ';
          Digitos := 000;
          Digito := 000;
          while (Digitos < 2) and (Erro_3 = 0) do
          begin
            Digitos := Digitos + 1;
            // Carrega peso
            Peso := Copy(Tabela, 5 + (Digitos * 8), 2);
            if Peso <> '  ' then
            begin
              Rotina := Copy(Tabela, 0 + (Digitos * 8), 1);
              Modulo := StrToInt(Copy(Tabela, 2 + (Digitos * 8), 2));
              if Peso = '01' then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
              if Peso = '02' then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
              if Peso = '03' then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.00.02';
              if Peso = '04' then Peso := '00.00.00.00.00.00.00.00.06.05.04.03.02.00';
              if Peso = '05' then Peso := '00.00.00.00.00.01.02.03.04.05.06.07.08.00';
              if Peso = '06' then Peso := '00.00.00.09.08.00.00.07.06.05.04.03.02.00';
              if Peso = '07' then Peso := '05.04.03.02.01.09.08.07.06.05.04.03.02.00';
              if Peso = '08' then Peso := '08.07.06.05.04.03.02.07.06.05.04.03.02.00';
              if Peso = '09' then Peso := '07.06.05.04.03.02.07.06.05.04.03.02.00.00';
              if Peso = '10' then Peso := '00.01.02.01.01.02.01.02.01.02.01.02.00.00';
              if Peso = '11' then Peso := '00.03.02.11.10.09.08.07.06.05.04.03.02.00';
              if Peso = '12' then Peso := '00.00.01.03.04.05.06.07.08.10.00.00.00.00';
              if Peso = '13' then Peso := '00.00.03.02.10.09.08.07.06.05.04.03.02.00';
              if Peso = '21' then Peso := '05.04.03.02.09.08.07.06.05.04.03.02.00.00';
              if Peso = '22' then Peso := '06.05.04.03.02.09.08.07.06.05.04.03.02.00';
              if Peso = '31' then Peso := '00.00.00.10.09.08.07.06.05.04.03.02.00.00';
              if Peso = '32' then Peso := '00.00.00.11.10.09.08.07.06.05.04.03.02.00';
              // Multiplica
              Base_3 := Copy(('0000000000000000' + Trim(Base_2)), Length(('0000000000000000' + Trim(Base_2))) - 13,                14);
              Soma_1 := 0;
              Soma_2 := 0;
              for Contador := 1 to 14 do
              begin
                Valor_1 := (StrToInt(Copy(Base_3, Contador, 01)) * StrToInt(Copy(Peso, Contador * 3 - 2, 2)));
                Soma_1 := Soma_1 + Valor_1;
                if Valor_1 > 9 then Valor_1 := Valor_1 - 9;
                Soma_2 := Soma_2 + Valor_1;
              end;

              //Ajusta valor da soma
              if Pos(Rotina, 'A2') > 0 then Soma_1 := Soma_2;
              if Pos(Rotina, 'B0') > 0 then Soma_1 := Soma_1 * 10;
              if Pos(Rotina, 'C1') > 0 then Soma_1 := Soma_1 + (5 + 4 * StrToInt(Copy(Tabela, 6, 1)));
              // Calcula o Digito
              if Pos(Rotina, 'D0') > 0 then Digito := Soma_1 mod Modulo;
              if Pos(Rotina, 'E12') > 0 then Digito := Modulo - (Soma_1 mod Modulo);
              if Digito < 10 then Resultado := IntToStr(Digito);
              if Digito = 10 then Resultado := '0';
              if Digito = 11 then Resultado := Copy(Tabela, 6, 1);
              // Verifica o Digito
              if (Copy(Base_2, StrToInt(Copy(Tabela, 36 + (Digitos * 3), 2)), 1) <> Resultado) then Erro_3 := 1;
            end;
          end;
        end;
      end;
    end;
    // Retorna o resultado da Verificação
    Retorno := FALSE;
    if (Trim(Tabela_1) <> '') and (ERRO_1 = 0) then Retorno := TRUE;
    if (Trim(Tabela_2) <> '') and (ERRO_2 = 0) then Retorno := TRUE;
    if (Trim(Tabela_3) <> '') and (ERRO_3 = 0) then Retorno := TRUE;
    if Trim(Inscricao) = 'ISENTO' then Retorno := TRUE;
    Result := Retorno;
  except
    Result := False;
  end;

 //TODO: Erro na validação de IE de produtores rurais
 //Função desabilitada por problemas na validação de Insc. Est. de produtores rurais
 //Para validar Incs. Est. utilize a dll ofical disponível p/ download em www.sintegra.gov.br
 Result := True;
end;

//------ Verifica Antecipacao do Documento Fiscal quanto ao Cancelamento ------
//Situacao = '' - Substituição Tributária informada pelo substituto ou pelo substituído
//           1 - Pagamento de substituição efetuada pelo destinatário, quando não efetuada ou efetuada a menor pelo substituto
//           2 - Antecipação tributária efetuada pelo destinatário apenas com complementação do diferencial de aliquota
//           3 - Antecipação tributária com MVA (Margem de Valor Agregado), efetuada pelo destinatário sem encerrar a fase de tributação
//           4 - Antecipação tributária com MVA (Margem de Valor Agregado), efetuada pelo destinatário encerrando a fase de tributação
//           5 - Substituição tributária interna motivada por regime especial de tributação
//           6 - ICMS pago na importação
Function Verifica_Antecipacao(Antecipacao: ShortString): Boolean; 
begin
 Result := False;
 try
  if Antecipacao[1] in [' ', '1', '2', '3', '4', '5'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Situação do Incentivo Fiscal ------
//Incentivo_Fiscal =      S - Com incentivo fiscal - possui incentivo fiscal
//                        N - Sem incentivo fiscal - não possui incentivo fiscal
Function Verifica_Incentivo(Incentivo_Fiscal: ShortString): Boolean; 
begin
 Result := False;
 try
  if Incentivo_Fiscal[1] in ['S', 'N'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Motivo de Intervencao Técnica------
//Motivo_Intervencao = 1- Cessação de uso por substituição do equipamento	1
//                     2 - Cessação de uso por redução do número de caixas	2
//                     3 - Cessação de uso por encerramento das atividades comerciais da empresa	3
//                     4 - Cessação de uso quando ocorrer defeito que implique na substituição da Memória Fiscal e o ECF não for mais autorizável	4
//                     5 - Cessação de uso "ex-offício", quando for constatado que o uso do Equipamento ECF não assegura o controle fiscal das vendas	5
//                     6 - ECF bloqueado, erro na memória fiscal, sendo substituída a memória fiscal anterior pela nova memória fiscal	6
//                     7 - Pedido de uso por substituição do equipamento	7
//                     8 - Pedido de uso quando ocorrer defeito que implique na substituição da Memória Fiscal e o ECF anterior não for mais autorizável	8
//                     9 - Pedido de uso quando ocorrer troca de versão e troca da Memória Fiscal 	9
Function Verifica_Motivo_Intervencao(Motivo_Intervencao: ShortString): Boolean; 
begin
 Result := False;
 try
  if Motivo_Intervencao[1] in ['1', '2', '3', '4', '5', '6','7', '8','8'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica o tipo de equipamento usado ------
// Tipo de equioamento = 1 - ECF-MR
//                       2 - ECF-IF-INTERLIGADO A UAP
//                       3 - OUTROS
Function Verifica_Equipamento(Cod_Equipamento: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Equipamento) = '' then
  Exit;
 try
  if StrToInt(Cod_Equipamento) in [1, 2, 3] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica operações interestaduais com ou sem benefício fiscal ------
// Situação das Operações = 0 - Operações internas (sem benefício fiscal conforme Resolução 3166/2001) - (UF igual a MG ou EX)
//                          1 - Operações interestaduais com benefício fiscal conforme Resolução 3166/2001
//                          2 - Operações interestaduais sem benefício fiscal
Function Verifica_Beneficio(Cod_Beneficio: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Cod_Beneficio) = '' then
  Exit;
 try
  if StrToInt(Cod_Beneficio) in [0, 1, 2] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica situação Micro Empresa ou EPP ------
// Situação das Operações = 0 - Operações internas - (UF igual a MG ou EX)
//                          1 - Operações interestaduais - o remetente da mercadoria é microempresa ou empresa de pequeno porte na outra UF
//                          2 - Operações interestaduais - o remetente da mercadoria não é microempresa ou empresa de pequeno porte na outra UF
Function Verifica_ME_EPP(COD_ME_EPP: ShortString): Boolean; 
begin
 Result := False;
 if Trim(COD_ME_EPP) = '' then
  Exit;
 try
  if StrToInt(COD_ME_EPP) in [0, 1, 2] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica opção de abatimento do valor do ressarcimento do ICMS-ST ------
// Situação das Operações = 0 - Abatimento do valor do ressarcimento do ICMS-ST em "Substituição Tributária a recolher" no período.
//                          1 - Abatimento do valor do ressarcimento do ICMS-ST em "Operações próprias" do período.
Function Verifica_Ressarcimento(Ressarcimento: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Ressarcimento) = '' then
  Exit;
 try
  if StrToInt(Ressarcimento) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Integridade do Código de de Produtos SEFAZ - Combustíveis / Solvente ------
//Codigo_Sefaz = 0000 PRODUTO SEM CORRESPONDENCIA NA TABELA SEFAZ
//               1001 ALCOOL ETILICO ANIDRO COMBUST ÍVEL - AEAC
//               1002 ALCOOL ETILICO HIDRATADO COMBUSTÍVEL - AEHC
//               2107 DIESEL MARITIMO
//               2113 DIESEL TIPO B (INTERIOR)
//               2115 DIESEL TIPO D (METROPOLITANO)
//               3001 GAS NATURAL VEICULAR - GNV
//               2201 GASOLINA A
//               2202 GASOLINA AVIACAO
//               2203 GASOLINA C
//               2212 GASOLINA PB PODIUM A
//               2213 GASOLINA PB PODIUM C
//               2214 GASOLINA PREMIUM A
//               2217 GASOLINA PREMIUM C
//               2306 GLP(PROPANO/BUTANO)
//               2408 OLEO COMBUSTIVEL 3A
//               2410 OLEO COMBUSTIVEL 4A
//               2412 OLEO COMBUSTIVEL 5A
//               2413 OLEO COMBUSTIVEL 6A
//               2414 OLEO COMBUSTIVEL 7A
//               2415 OLEO COMBUSTIVEL 8A
//               2416 OLEO COMBUSTIVEL 9A
//               2417 OLEO COMBUSTIVEL A1
//               2418 OLEO COMBUSTIVEL A2
//               2423 OLEO COMBUSTIVEL PREMIUM
//               2504 QUEROSENE DE AVIACAO - QAV
//               2506 QUEROSENE ILUMINANTE
//               2507 QUEROSENE INTERMEDIARIO
//               2508 QUEROSENE MEDIO
//               8888 SOLVENTES
Function Verifica_Codigo_Sefaz(Codigo_Sefaz: ShortString): Boolean; 
var
 i: Byte;
const
 Codigos: array[1..30] of String[4] = ('0000','1001','1002','2107','2113','2115','3001',
                                       '2201','2202','2203','2212','2213','2214','2217',
                                       '2306','2408','2410','2412','2413','2414','2415',
                                       '2416','2417','2418','2423','2504','2506','2507',
                                       '2508','8888');
begin
 Result := False;
 if Trim(Codigo_Sefaz) = '' then
  Exit;

 try
  for i := 0 to High(Codigos) do
   begin
    if trim(Codigo_Sefaz) = Codigos[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

//------ Verifica opção de abatimento do valor do ressarcimento do ICMS-ST ------
// Modal = 1 Rodoviário
//         2 Ferroviário
//         3 Rodo-ferroviário
//         4 Aquaviário
//         5 Dutoviário
//         6 Aéreo
//         7 Outro
Function Verifica_Modal_Transporte(Modal: ShortString): Boolean; 
begin
 Result := False;
 if Trim(Modal) = '' then
  Exit;
 try
  if StrToInt(Modal) in [1, 2, 3, 4, 5, 6, 7] then
   Result := True;
 except
  Result := False;
 end;
end;

Function Verifica_EMail(email: ShortString): Boolean; 
begin
 Result := False;

 if email <> '' then
  Result := (Pos('@', email) > 0) and (Pos('.', email) > 0);
end;

//------ Verifica ShortString é uma data válida no formato do Sintegra ------
//ShortString deve ser passada no formato (aaaammdd)
Function IsSintegraDate(Date_Str: ShortString): boolean; 
var
 Day, Month, Year: Word;
begin
 Result := False;
 If Trim(Date_Str) = '' then
  Exit;

 try
  Day := strtoint(copy(Date_Str, 7, 8));
  setlength(Date_Str, 6);
  Month := strtoint(copy(Date_Str, 5, 4));
  setlength(Date_Str, 4);
  Year := strtoint(Date_Str);

  if IsValidDate(Year, Month, Day) then
   Result := True;
 except
  result := false;
 end;
end;

//------ Verifica ShortString é um Mes/Ano válido no formato do Sintegra ------
//ShortString deve ser passada no formato (mmaaaa)
Function IsSintegraMesAno(MesAno_Str: ShortString): boolean; 
var
 s_Day, s_Month, s_Year: Word;
begin
 Result := False;
 If Trim(MesAno_Str) = '' then
  Exit;

 try
  s_day   := 01;
  s_year  := strtoint(copy(MesAno_Str, 3, 4));
  s_month := strtoint(copy(MesAno_Str, 0, 2));

  if IsValidDate(s_Year, s_Month, s_Day) then
   Result := True;
 except
  result := false;
 end;
end;

//------ Converte ShortString de data válida no formato do Sintegra para TDateTime ------
//ShortString deve ser passada no formato (aaaammdd)
Function SintegraDatetoDateTime(Date_Str: ShortString): TDateTime; 
var
 Day, Month, Year: Word;
begin
 If Trim(Date_Str) = '' then
  begin
   Result := 0;                 //Retorno da Função = 12/30/1899 12:00 am
   Exit;
  end;

 try
  Day := strtoint(copy(Date_Str, 7, 8));
  setlength(Date_Str, 6);
  Month := strtoint(copy(Date_Str, 5, 4));
  setlength(Date_Str, 4);
  Year := strtoint(Date_Str);

  Result := EncodeDate(Year, Month, Day);
 except
  Result := 0;                  //Retorno da Função = 12/30/1899 12:00 am
 end;
end;

//------ Converte ShortString de data no formato ddmmaaaa para o formato do Sintegra aaaammdd ------
//ShortString deve ser passada no formato (ddmmaaaa)
Procedure ddmmaaaaToSintegraDate(var Date_Str: ShortString); 
var
 TempStr: ShortString;
begin
 If Trim(Date_Str) = '' then
  Exit;

 TempStr := '';
 try
  TempStr := TempStr + copy(Date_Str, 5, length(Date_Str));
  setlength(Date_Str, 4);
  TempStr := TempStr + copy(Date_Str, 3, length(Date_Str));
  setlength(Date_Str, 2);
  TempStr := TempStr + Date_Str;
  Date_Str := TempStr;
 except
  Date_Str := '';
 end;
end;

//------ Preenche ShortString com caracter de Enchimento até o tamanho indicado ------
//Caracter de enchimento alfanumérico de acordo com manual do SIntegra = ' '
Function AlfaStuff(Str: ShortString; Tamanho: Byte): ShortString; 
const
 AlfaStuffChar: ShortString = ' ';
 //--- Habilitar em caso Teste da função AlfaStuff ---
 //AlfaStuffChar: ShortString = '#';
begin
 Result := '';
 If (Tamanho = 0) then
  Exit;

 while length(Str) < Tamanho do
  Str := Str + AlfaStuffChar;
 Result := Str;
end;

//------ Preenche ShortString com caracter de Enchimento até o tamanho indicado ------
//Caracter de enchimento numérico de acordo com manual do SIntegra = '0'
Function NumStuff(Str: ShortString; Tamanho: Byte): ShortString; 
const
 NumStuffChar: ShortString = '0';
begin
 Result := '';
 If (Tamanho = 0) then
  Exit;

 while length(Str) < Tamanho do
  Str := NumStuffChar + Str;
 Result := Str;
end;

//------ Tratamento de ShortString (Retira caracteres invalidos, trunca e preenche espaços) ------
//AlfaArray = quais os caracteres válidos como alfanuméricos de acordo com manual SIntegra
Procedure FormatoAlfa(Var Str: ShortString; Tamanho: Byte); 
begin
 If (Tamanho = 0) then
  begin
   Str := '';
   Exit;
  end;

 Str := TrimLeft(Str);
 Str := RemoveInvalid(AlfaArray, Str);          
 Str := Copy(Str, 0, Tamanho);
 Str := AlfaStuff(Str, Tamanho);
 SetLength(Str, Tamanho);
end;

//------ Tratamento de ShortString (Retira caracteres invalidos, trunca e preenche espaços) ------
//NumArray = quais os caracteres válidos como numéricos de acordo com manual SIntegra
Procedure FormatoNum(var Str: ShortString; Tamanho: Byte); 
begin
 If (Tamanho = 0) then
  begin
   Str := '';
   Exit;
  end;

 Str := RemoveInvalid(NumArray, Str);
 Str := Copy(Str, 0, Tamanho);
 Str := NumStuff(Str, Tamanho);
 SetLength(Str, Tamanho);
end;

//------ Verifica Comando de geração ------
//RFD - Geração do arquivo a partir de biblioteca de comandos do fabricante de ECF
//APL - Geração do arquivo a partir de PAF-ECF
//ALT - Geração do arquivo por outro meio que não os especificados anteriormente
Function Verifica_Comando_Geracao(Comando: ShortString): Boolean; 
const
 Valores : array[1..3] of String[3] = ('RFD', 'APL', 'ALT');
var
 x: Integer;
begin
 Result := False;
 try
  for x := 0 to High(Valores) do
   begin
    if Comando = Valores[x] then
     begin
      Result := True;
      Break;
     end;
   end;
 except
  Result := False;
 end;
end;

//------ Verifica Desconto ------
//S - Sim
//N - Não
Function Verifica_Desconto(Desconto: ShortString): Boolean; 
begin
 Result := False;
 try
  if Desconto[1] in ['S', 'N'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Tipo Desconto ------
//V - Valor Monetário
//P - Valor Percentual
Function Verifica_Tipo_Desconto(Tipo: ShortString): Boolean; 
begin
 Result := False;
 try
  if Tipo[1] in ['V', 'P'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Tipo Acrescimo ------
//V - Valor Monetário
//P - Valor Percentual
Function Verifica_Tipo_Acrescimo(Tipo: ShortString): Boolean; 
begin
 Result := False;
 try
  if Tipo[1] in ['V', 'P'] then
   Result := True;
 except
  Result := False;
 end;
end;

//-------- Verifica Indicador de Cancelamento ------------
//-Ocorreu Cancelamento?
//      S - Sim
//      N - Não
Function Verifica_Indicador_Cancelamento(Indicador: ShortString): Boolean; 
begin
 Result := False;
 try
  if Indicador[1] in ['S', 'N'] then
   Result := True;
 except
  Result := False;
 end;
end;

//-------- Verifica Regra de Calculo ------------
//      A - Arredondamento
//      T - Truncamento
Function Verifica_Regra_de_Calculo(Regra: ShortString): Boolean; 
begin
 Result := False;
 try
  if Regra[1] in ['A', 'T'] then
   Result := True;
 except
  Result := False;
 end;
end;

//------ Verifica Denominacao ------
//MF - Leitura da Memória Fiscal
//RZ - Redução Z
//LX - Leitura X
//CM - Conferência de Mesa
//RV - Registro de Venda
//CC - Comprovante de Crédito ou Débito
//CN - Comprovante Não-Fiscal
//NC - Comprovante Não-Fiscal Cancelamento
//RG - Relatório Gerencial
Function Verifica_Denominacao(Denominacao: ShortString): Boolean; 
const
 Valores : array[1..9] of String[2] = ('MF', 'RZ', 'LX', 'CM', 'RV', 'CC', 'CN', 'NC', 'RG');
var
 x: Integer;
begin
 Result := False;
 try
  for x := 0 to High(Valores) do
   begin
    if Denominacao = Valores[x] then
     begin
      Result := True;
      Break;
     end;
   end;
 except
  Result := False;
 end;
end; 

//-------- Verifica Indicador de Estorno ------------
//-Ocorreu Estorno?
//      S - Sim
//      N - Não
//      P - Estorno Parcial
Function Verifica_Indicador_Estorno(Indicador: ShortString): Boolean; 
begin
 Result := False;
 try
  if Indicador[1] in ['S', 'N', 'P'] then
   Result := True;
 except
  Result := False;
 end;
end;

end.








