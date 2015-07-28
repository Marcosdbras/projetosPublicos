unit Unit_Validacao_SPED;

interface

uses
  ShareMem,
  SysUtils,
  Windows,
  Dialogs,
  DateUtils,
  Classes;

type
 TRegistro = record
  tipo: shortstring;
  bloco: shortstring;
  ok:   integer;
  erro: integer;
  obs:  integer;
  obrigatorio: boolean;
  ocorrencia: shortstring;
end;

Function  Info_Versao: integer; stdcall; export;
Procedure Trata_Erro(var ErroTStr: TStrings); overload; export;
Procedure Trata_Erro(ErroStr: String); overload; export;
Procedure Trata_SPED(SPEDStr: String);
Procedure Trata_Log(LogTStr: TStrings);
Function  Testa_State(tipo: String): Boolean;
Function  Quebra_Sequencia(idx: integer): Boolean;
Procedure NaoRegistrado;
Function  RemoveAlfaInvalid(FromStr: String): String; stdcall; export;
Function  RemoveNumInvalid(FromStr: String): String; stdcall; export;
Function  IdxOfReg(reg: String): integer;
Function  IsSPEDDate(Date_Str: String): boolean; stdcall; export;
Function  SPEDDateToDateTime(Date_Str: String): TDateTime; stdcall; export;
Procedure ddmmaaaaToSPEDDate(var Date_Str: String); stdcall; export;
Procedure FormatoAlfa(Var Str: String; Tamanho: integer; DescStr: String);
Procedure FormatoNum(var Str: String; Tamanho: Byte; DescStr: String);

Function vCod_Leiaute(COD_VER: String): Boolean; stdcall; export;
Function vMovimento(Movimento: String): Boolean; stdcall; export;
Function vCEP(cCep:String): Boolean; stdcall; export;
Function vUF(UF: String): Boolean; stdcall; export;
Function vCPF(const CPF: String): Boolean; stdcall; export;
Function vCNPJ(const CGC: String): Boolean; stdcall; export;
Function vInscEst(Inscricao, UF: string): Boolean; stdcall; export;

Function vCod_situacao_documento_fiscal(COD_SIT: String): Boolean; stdcall; export;
Function vInd_tipo_transporte(IND_CARG: String): Boolean; stdcall; export;
Function vInd_emitente_titulo(IND_EMIT: String): Boolean; stdcall; export;
Function vInd_tipo_operacao(IND_OPER: String): Boolean; stdcall; export;
Function vInd_emitente_documento_fiscal(IND_EMIT: String): Boolean; stdcall; export;
Function vInd_origem_processo(IND_PROC: String): Boolean; stdcall; export;
Function vInd_tipo_titulo_credito(IND_TIT: String): Boolean; stdcall; export;
Function vInd_tipo_referencia_base(IND_MED: String): Boolean; stdcall; export;
Function vInd_tipo_receita(IND_REC: String): Boolean; stdcall; export;
Function vCod_classific_item_4_4_2(COD_CLASS: String): Boolean; stdcall; export;
Function vCod_modelo_documento_fiscal_4_1_1(COD_MOD: String): Boolean; stdcall; export;
Function vInd_tipo_veiculo_transportador(IND_VEIC: String): Boolean; stdcall; export;
Function vInd_natureza_frete(IND_NAT_FRT: String): Boolean; stdcall; export;
Function vInd_tipo_frete(IND_FRT: String): Boolean; stdcall; export;             //TODO: Funcao nova! Adequar demo!
Function vInd_tipo_transporte_carga_coletada(IND_CARG: String): Boolean; stdcall; export;
Function vInd_tipo_servico_prestado(IND_SERV: String): Boolean; stdcall; export;
Function vInd_origem(IND_ORIG: String): Boolean; stdcall; export;
Function vCOD_CFOP(COD_CFOP: String): Boolean; stdcall; export;
Function vCod_Municipio(Cod_Municipio: String): Boolean; stdcall; export;
Function vCOD_NCM(COD_NCM: String): Boolean; stdcall; export;
Function vCOD_PAIS(COD_PAIS: String): Boolean; stdcall; export;
Function vIND_PERFIL(IND_PERFIL: String): Boolean; stdcall; export;
Function vIND_ATIV(IND_ATIV: String): Boolean; stdcall; export;
Function vCOD_FIN(COD_FIN: String): Boolean; stdcall; export;
Function vIND_MOV(IND_MOV: String): Boolean; stdcall; export;
Function vTIPO_ITEM(TIPO_ITEM: String): Boolean; stdcall; export; // todo inclui
Function vIND_OPER(IND_OPER: String): Boolean; stdcall; export;
Function vIND_PGTO(IND_PGTO: String): Boolean; stdcall; export;
Function vCOD_DOC_IMP(COD_DOC_IMP: String): Boolean; stdcall; export;
Function vIND_APUR(IND_APUR: String): Boolean; stdcall; export;
Function vTP_PROD(TP_PROD: String): Boolean; stdcall; export;
Function vIND_ARM(IND_ARM: String): Boolean; stdcall; export;
Function vIND_VEIC_OPER(IND_VEIC_OPER: String): Boolean; stdcall; export;
Function vIND_FRT_RED(IND_FRT_RED: String): Boolean; stdcall; export;
Function vIND_NAV(IND_NAV: String): Boolean; stdcall; export;
Function vIND_TFA(IND_TFA: String): Boolean; stdcall; export;
Function vIND_REC(IND_REC: String): Boolean; stdcall; export;
Function vIND_MOV_ST(IND_MOV_ST: String): Boolean; stdcall; export;
Function vIND_AJ(IND_AJ: String): Boolean; stdcall; export;
Function vIND_DOC(IND_DOC: String): Boolean; stdcall; export;
Function vIND_PROP(IND_PROP: String): Boolean; stdcall; export;
Function vIND_DOC_Informe_tipo_documento(IND_DOC: String): Boolean; stdcall; export;
Function vTP_CHC(TP_CHC: String): Boolean; stdcall; export;
Function vTIPO_MEDICAO(TIPO_MEDICAO: String): Boolean; stdcall; export;


//TODO: Verificar necessidade de 4.4.6- Tabela de Códigos dos Totalizadores Parciais da REDUÇÃO Z

const
 Um       = '1';
 Varios   = 'V';
 UmParaUm = '1:1';
 UmParaN  = '1:N';

var
 //TODO: Ajustar tamanho depois de removido os valores OLD
 RegSPED: array[0..153] of TRegistro;

 State: Boolean = false;
 Registrado: Boolean = true;

 Periodo_Str, CGC_MF_Info, Insc_Est_Info, UF_Info: String;

 Path_Erro, Path_SPED, Path_Log,UF_Informante: String;
 Path_cfop, Path_Municipio, Path_ncm, Path_pais: String;

 Data_Inicial_Info, Data_Final_Info: TDateTime;

 ErroTStr, RegistroTStr, ObsTStr, LogTStr: TStrings;

 //x: integer;

implementation

//retorna indice de um registro com base na string do mesmo

Function IdxOfReg(reg: String): integer;
var
 i: integer;
begin
 result := 0;

 for i := 0 to high(RegSPED) do
  begin
   if RegSPED[i].tipo = reg then
    begin
     result := i;
     break;
    end;
  end;
end;

//--- Retorna Informações sobre Versão do Produto ---
Function Info_Versao: integer; stdcall; export;
begin
 Result := 106;                         //Versao 1.06
end;

//--- Tratamento de erro dos Registros ---
Procedure Trata_Erro(var ErroTStr: TStrings);
var
 sFile: TextFile;
 i: Integer;
begin
 if Testa_State('-1') then                                                             //Se função Inicia_SPED Chamada
  begin
   if trim(path_erro) = '' then
    begin
     if fileexists(Path_Erro) then
      DeleteFile(Pchar(Path_Erro));
    end;

   //Gera arquivo de erro com info registros + info erro + info obs
   if (ErroTStr.count > 0) or (ObsTStr.count > 0) then
    begin
     try
      AssignFile(sFile, Path_Erro);

      if not fileexists(Path_Erro) then
       rewrite(sFile);

      Reset(sFile);
      Append(sFile);

      WriteLn(sFile, '');

      //Exporta linhas do Registro
      for i := 0 to RegistroTStr.count - 1 do
       WriteLn(sFile, RegistroTStr.Strings[i]);

      //Exporta linhas de Erro
      if ErroTStr.count > 0 then
       begin
        WriteLn(sFile, '');
        WriteLn(sFile, #9 + 'Erro(s) do Registro:');

        for i := 0 to ErroTStr.count - 1 do
         WriteLn(sFile, #9 + '  ' + ErroTStr.Strings[i]);
       end;

      //Exporta linhas de Observação
      if ObsTStr.count > 0 then
       begin
        WriteLn(sFile, '');
        WriteLn(sFile, #9 + 'Observação do Registro:');

        for i := 0 to ObsTStr.count - 1 do
         WriteLn(sFile, #9 + '  ' + ObsTStr.Strings[i]);

       end;
     except
      showmessage('Erro ao tentar escrever no arquivo ' + Path_Erro);
     end;

     CloseFile(sFile);
    end;

   ErroTStr.clear;
   RegistroTStr.Clear;
   ObsTStr.Clear;
   LogTStr.Clear;
  end;
end;

//--- Tratamento de erro dos Registros ---
Procedure Trata_Erro(ErroStr: String);
var
 sFile: TextFile;
begin
 if trim(path_erro) = '' then
  begin
   Path_erro :=  'c:\Erro_SPED.txt';
   if fileexists(Path_Erro) then
    DeleteFile(Pchar(Path_Erro));
  end;

 //Gera arquivo de erro com info registros + info erro + info obs
 if trim(ErroStr) <> '' then
  begin
   try
    AssignFile(sFile, Path_Erro);

    if not fileexists(Path_Erro) then
     rewrite(sFile);

    Reset(sFile);
    Append(sFile);

    WriteLn(sFile, '');
    WriteLn(sFile, #9 + 'Erro(s) do Registro:');

    WriteLn(sFile, #9 + '  ' + ErroStr);
   except
    showmessage('Erro ao tentar escrever no arquivo ' + Path_Erro);
   end;

   CloseFile(sFile);
  end;

end;

//--- Tratamento dos Arquivos de Saída dos Registros ---
Procedure Trata_SPED(SPEDStr: String);
var
 sFile: TextFile;
 i: integer;
begin
 if Testa_State('-1') then                                                             //Se função Inicia_SPED Chamada
  begin
   if trim(path_SPED) = '' then
    begin
     if fileexists(Path_Erro) then
      DeleteFile(Pchar(Path_Erro));
    end;

   if trim(path_erro) = '' then
    begin
     if fileexists(Path_Erro) then
      DeleteFile(Pchar(Path_Erro));
    end;

   //Gera arquivo de SPED para validacao
   try
    AssignFile(sFile, Path_SPED);

    if not fileexists(Path_SPED) then
     rewrite(sFile);

    Reset(sFile);
    Append(sFile);

    WriteLn(sFile, SPEDStr);
   except
    showmessage('Erro ao tentar escrever no arquivo ' + Path_SPED);
   end;

   CloseFile(sFile);

   //Gera arquivo de erro com info registros + info obs
   if ObsTStr.count > 0 then
    begin
     try
      AssignFile(sFile, Path_Erro);

      if not fileexists(Path_Erro) then
       rewrite(sFile);

      Reset(sFile);
      Append(sFile);

      WriteLn(sFile, '');

      //Exporta linhas do Registro
      for i := 0 to RegistroTStr.count - 1 do
       WriteLn(sFile, RegistroTStr.Strings[i]);

      //Exporta linhas de Observação
      WriteLn(sFile, '');
      WriteLn(sFile, #9 + 'Observação do Registro:');

      for i := 0 to ObsTStr.count - 1 do
       WriteLn(sFile, #9 + '  ' + ObsTStr.Strings[i]);

     except
      showmessage('Erro ao tentar escrever no arquivo ' + Path_Erro);
     end;

     CloseFile(sFile);
    end;

   ErroTStr.clear;
   RegistroTStr.Clear;
   ObsTStr.Clear;
   LogTStr.Clear;
  end;
end;

//Verifica a validade do CFOP
{*------------------------------------------------------------------------------
 Código Fiscal de Operação e Prestação

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CFOP    Código Fiscal de Operação e Prestação

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

Function vCOD_CFOP(COD_CFOP: String): Boolean;
var
 Texto: string;
 i: Boolean;
 sFile: TextFile;
begin
Result := False;

 if Testa_State('-1') then                                                             //Se função Inicia_SPED Chamada
  begin
   COD_CFOP :=(copy(COD_CFOP, 1, length(COD_CFOP)-1));                                // retira o ultimo caracter do COD_CFOP

   i := false;                                                                       //variável para pular a primeira linha do arquivo txt True = nao pula; false = pula

   AssignFile(sFile, Path_CFOP);
   Reset(sFile);

   while not Eof(sFile) do
    begin
     Readln(sFile, texto);                                //lê linhas do arquivo e incrementa na variável texto
      if i then                                           //pula a primeira linha do arquixo txt
       begin
        texto :=(copy(texto, 1, 4));
         if texto = COD_CFOP then                         //compara valor recebido pela função com valor lido do arquivo
          Result := true;
       end
      else
       i := true;
    end;
  end;
end;

//Verifica a validade do NCM
{*------------------------------------------------------------------------------
 Código da Nomenclatura Comum do Mercosul

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_NCM    Código da Nomenclatura Comum do Mercosul

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

Function vCOD_NCM(COD_NCM: String): Boolean;
var
 Texto: string;
 i: Boolean;
 sFile: TextFile;
begin
Result := False;

 if Testa_State('-1') then                                                            //Se função Inicia_SPED Chamada
  begin
   COD_NCM :=(copy(COD_NCM,1,length(COD_NCM)-1));                                     // retira o ultimo caracter do COD_NCM

   i := false;                                               // variável para pular a primeira linha do arquivo txt True = nao pula; false = pula

   AssignFile(sFile, Path_Ncm);
   Reset(sFile);

   while not Eof(sFile) do
    begin
     Readln(sFile, texto);                                    // lê linhas do arquivo e incrementa na variável texto
     if i then                                               // pula a primeira linha do arquixo txt
      begin
       texto := (copy(texto, 1, 8));
        if texto = COD_NCM then                              // compara valor recebido pela função com valor lido do arquivo
         Result := true;
      end
     else
      i := true;
    end;
  end;
end;

//Verifica a validade do PAIS
{*------------------------------------------------------------------------------
 Código do país do participante, conforme a tabela indicada no item 3.2.1

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_PAIS    Código do país do participante, conforme a tabela indicada no item 3.2.1

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
Function vCOD_PAIS(COD_PAIS: String): Boolean;
var
 Texto: string;
 i: Boolean;
 sFile: TextFile;
begin
Result := False;

 if Testa_State('-1') then                                                             //Se função Inicia_SPED Chamada
  begin
   COD_PAIS := (copy(COD_PAIS, 1, length(COD_PAIS)-1));   //retira o ultimo caracter do COD_PAIS

   i := false;                                            //variável para pular a primeira linha do arquivo txt True = nao pula; false = pula

   AssignFile(sFile, Path_Pais);
   Reset(sFile);

   while not Eof(sFile) do
    begin
     Readln(sFile, texto);                                //lê linhas do arquivo e incrementa na variável texto
      if i then                                           //pula a primeira linha do arquixo txt
       begin
        texto := (copy(texto, 1, 4));
        texto := Trim(texto);
         if texto = COD_PAIS then                         //compara valor recebido pela função com valor lido do arquivo
          Result := true;
       end
      else
       i := true;
    end;
  end;
end;

//--- Tratamento dos Logs Inseridos nos Arquivos de Erros ---
Procedure Trata_Log(LogTStr: TStrings);
var
 Total_OK, Total_Erro, Total_Obs, i: integer;
 PercErro: double;
 sFile: TextFile;
begin
 if Testa_State('-1') then                                                             //Se função Inicia_SPED Chamada
  begin
   if trim(path_log) = '' then
    begin
     if fileexists(Path_Erro) then
      DeleteFile(Pchar(Path_Erro));
    end;

   //Gera o Log arquivo de SPED
   try
    AssignFile(sFile, Path_Log);

    if not fileexists(Path_Log) then
     rewrite(sFile);

    Reset(sFile);
    Append(sFile);

    WriteLn(sFile,'Estastísticas dos Registros:');
    WriteLn(sFile, '');
    WriteLn(sFile, 'REGISTROS' + #9 + 'OK' + #9 + 'OBS' + #9 + 'ERROS' + #9 + '%ERRO' + #9 +  'TOTAL');
    WriteLn(sFile, '-----------------------------------------------------');

    Total_OK   := 0;
    Total_Erro := 0;
    Total_Obs  := 0;

    for i := 0 to high(RegSPED) do
     begin
      inttostr(i);     
      Total_OK   := Total_OK + RegSPED[i].ok;
      Total_Erro := Total_Erro + RegSPED[i].erro;
      Total_Obs := Total_Obs + RegSPED[i].obs;

      if (RegSPED[i].ok > 0) or (RegSPED[i].erro > 0) or (RegSPED[i].obs > 0) then
       WriteLn(sFile, 'Registro ' + (RegSPED[i].tipo) + #9 + IntToStr(RegSPED[i].ok) + #9 + IntToStr(RegSPED[i].obs) + #9 + IntToStr(RegSPED[i].erro) + #9 + FormatFloat('###,##0.00', (RegSPED[i].erro/(RegSPED[i].ok + RegSPED[i].erro))*100) + '%' + #9 + IntToStr(RegSPED[i].ok + RegSPED[i].erro));
     end;

    if (total_OK + Total_Erro) > 0 then
     PercErro := ((Total_Erro * 100) / (Total_OK + Total_Erro))
    else
     PercErro := 0;

    WriteLn(sFile, '-----------------------------------------------------');
    WriteLn(sFile, 'Total' + #9 + #9 + IntToStr(Total_OK) + #9 +
                                       IntToStr( Total_Obs) + #9 +
                                       IntToStr(Total_Erro) + #9 +
                                       FormatCurr('###,##0.00', PercErro) + '%' + #9 + IntToStr(Total_OK + Total_Erro));

   except
    showmessage('Erro ao tentar escrever no arquivo ' + Path_Log);
   end;

   CloseFile(sFile);

   ErroTStr.clear;
   RegistroTStr.Clear;
   ObsTStr.Clear;
   LogTStr.Clear;
  end;
end;

//Testa se a função inicia_SPED foi chamada indicando inicio do uso da dll
Function Testa_State(tipo: String): boolean;
begin
Result := State;

if not result then
 begin
  showmessage('-0   Função Inicia_SPED não chamada');
 end;
end;

//--- Função que testa a continuidade Lógica de Ordenação Inter-Registros ---
Function Quebra_Sequencia(idx: integer): Boolean;
var
 x: integer;
begin
 result := false;
 for x:= idx + 1 to high(RegSPED) do
  begin
   inttostr(x);
   if RegSPED[x].ok <> 0 then
    begin
     result := true;
     break;
    end;
  end;
end;

Procedure NaoRegistrado;
begin
 if not Registrado then
  begin
   ShowMessage('SPED32dll.dll NÃO REGISTRADA... ' + #13#10 +
               'A versão não registrada é 100% funcional e permite testar todas as funcionalidades do produto' + #13#13 +
               'Adiquira agora mesmo a sua versão REGISTRADA!' + #13#13 +
               'Maiores informações:' + #13#10 +
               ' Site   : www.igara.com.br' + #13#10 +
               ' E-Mail : tks@igara.com.br');
  end;
end;

Function vChralfaValido(vChr: char): Boolean;
var
 i: Byte;
const
 Invalido: array [1..34] of char = (#00, #01, #02, #03, #04, #05, #06, #07, #08, #09, #10, #11,
                                    #12, #13, #14, #15, #16, #17, #18, #19, #20, #21, #22, #23,
                                    #24, #25, #26, #27, #28, #29, #30, #31, #33, #124);
begin
 Result := true;

 try
  for i := 0 to High(invalido) do
   begin
    inttostr(i);   
    if vChr = invalido[i] then
     begin
      Result := false;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

Function vChrnumValido(vChr: char): Boolean;
var
 i: Byte;
const
 valido: array [1..17] of char  = ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ',','A','B','C','D','E','F');
begin
 Result := false;
 try
  for i := 0 to High(valido) do
   begin
    inttostr(i);
    if vChr = valido[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := false;
 end;
end;

//--- Remove caracteres invalidos de uma String ---
//Usage: "NotToRemoveStr" is the Char Array NOT to be removed, "FromStr" is the String to be removed from
Function RemoveAlfaInvalid(FromStr: String): String; stdcall; export;
var
 Res: String;
 x: Byte;
begin
 Res := '';
 for x := 1 to Length(FromStr) do
  begin
   inttostr(x);  
   if vChralfaValido(FromStr[x]) then
    Res := Res + FromStr[x];
  end;
 Result := Res;
end;

//--- Remove caracteres invalidos de uma integer---
Function RemoveNumInvalid(FromStr: String): String; stdcall; export;
var
 Res: String;
 x: Byte;
begin
 Res := '';
 for x := 1 to Length(FromStr)  do
  begin
   inttostr(x);
   if vChrnumValido(FromStr[x]) then
    Res := Res + FromStr[x];
  end;
 Result := Res;
end;

//++++++++++++++++++++++++++ Inicio de Registros adicionados a partir do dia 7/03/07 +++++++++++++++++++++++++++++++++++++++++++++++++++++



{*------------------------------------------------------------------------------
 Código da versão do leiaute conforme a tabela indicada no Ato  Cotepe.

 Verifica Código da versão do leiaute conforme a tabela indicada no item 3.1.1-------
 
 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_VER    Código da versão do leiaute conforme a tabela indicada no Ato  Cotepe .

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Verifica Código da versão do leiaute conforme a tabela indicada no item 3.1.1-------
//Cod_Finalidade =  001 = 1.0.0.1 Ato Cotepe nº 35/05 Art. 2º do Ato Cotepe 35/05
//                  002 = 1.0.0.2 Ato Cotepe nº 35/05 Art. 2º do Ato Cotepe 35/05

Function vCod_Leiaute(COD_VER: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Finalidade : array[1..4] of String[3] = ('001','002','003','004');
begin
 Result := False;
 if Trim(COD_VER) = '' then
  Exit;
 try
  for i := 0 to High(Finalidade) do
   begin

    if (COD_VER[length(COD_VER)] <> '|') then
     COD_VER := COD_VER + '|';

    if copy(COD_VER,0,(length(COD_VER)-1)) = Finalidade[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;



{*------------------------------------------------------------------------------
 Indicador do tipo de título de crédito

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_TIT    Indicador do tipo de título de crédito

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Indicador do tipo de título de crédito: ------
//IND_TIT =   00- Duplicata;
//            01- Cheque;
//            02- Promissória;
//            03- Recibo;
//            99- Outros (descrever)

Function vInd_tipo_titulo_credito(IND_TIT: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Finalidade : array[1..5] of String[2] = ('00','01','02','03','99');
begin
 Result := False;
 if Trim(IND_TIT) = '' then
  Exit;
 try
  for i := 0 to High(Finalidade) do
   begin
    if (IND_TIT[length(IND_TIT)] <> '|') then
     IND_TIT := IND_TIT + '|';

    if copy(IND_TIT,0,(length(IND_TIT)-1)) = Finalidade[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do emitente do título:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_EMIT   Indicador do emitente do título:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ vInd_ do emitente do título: ------
//IND_EMIT =  0- Emissão própria;
//            1- Terceiros

Function vInd_emitente_titulo(IND_EMIT: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_EMIT) = '' then
  Exit;
 try
  if StrToInt(IND_EMIT[1]) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Código da situação do documento fiscal, conforme a tabela indicada no item 4.1.3

 @Author Victory Fernandes
 @Version 09/10/2009 10:28:11 Última alteração por  Jacira Cardeal

 @param COD_SIT    Código da situação do documento fiscal

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//COD_SIT =  00 Documento regular
//           01 Documento regular extemporâneo
//           02 Documento cancelado
//           03 Documento cancelado extemporâneo
//           04 NFe denegada
//           05 NFe - Numeração inutilizada
//           06 Documento Fiscal Complementar
//           07 Documento Fiscal Complementar extemporâneo.
//           08 Documento Fiscal emitido com base em Regime Especial ou Norma Específica

Function vCod_situacao_documento_fiscal(COD_SIT: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(COD_SIT) = '' then
  Exit;
 try
  if StrToInt(copy(COD_SIT,0,(length(COD_SIT)-1))) in [00,01,02,03,04,05,06,07,08] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Indicador do tipo de transporte da carga coletada

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_CARG    Indicador do tipo de transporte da carga coletada

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//IND_CARG =  0- Rodoviário;
//            1- Ferroviário;
//            2- Rodo-ferroviário;
//            3- Aquaviário;
//            4- Dutoviário;
//            5- Aéreo;
//            9- Outro
Function vInd_tipo_transporte (IND_CARG: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_CARG) = '' then
  Exit;
 try
  if StrToInt(copy(IND_CARG,0,(length(IND_CARG)-1))) in [00,01,02,03,04,05,09] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de operação:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_OPER   Indicador do tipo de operação:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de operação: ------
//IND_OPER =  0- Entrada;
//            1- Saída
Function vInd_tipo_operacao(IND_OPER: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_OPER) = '' then
  Exit;
 try
  if StrToInt(IND_OPER[1]) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do emitente do documento fiscal:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_EMIT   Indicador do emitente do documento fiscal:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do emitente do documento fiscal: ------
//IND_EMIT =  0- Emissão própria;
//            1- Terceiros
Function vInd_emitente_documento_fiscal(IND_EMIT: String): Boolean; stdcall; export;
var
tmp: String;
begin
 Result := False;
 tmp := RemoveNumInvalid(IND_EMIT);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador da origem do processo:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_PROC   Indicador da origem do processo:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador da origem do processo: ------
//IND_PROC =   0- Sefaz;
//             1- Justiça Federal;
//             2- Justiça Estadual;
//             9- Outros

Function vInd_origem_processo(IND_PROC: String): Boolean; stdcall; export;
var
tmp:String;
begin
 Result := False;
 tmp:= RemoveNumInvalid(IND_PROC);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp[1]) in [0,1,2,9] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Indicador de tipo de referência da base de cálculo do ICMS (ST) do produto farmacêutico:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_MED   Indicador de tipo de referência da base de cálculo do ICMS (ST) do produto farmacêutico:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador de tipo de referência da base de cálculo do produto farmacêutico: ------
//IND_MED =   0- Base de cálculo referente ao preço tabelado ou preço máximo sugerido;
//            1- Base de cálculo referente à Lista Negativa;
//            2- Base de cálculo referente à Lista Positiva;
//            3- Base de cálculo referente à Lista Neutra

Function vInd_tipo_referencia_base(IND_MED: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_MED) = '' then
  Exit;
 try
  if StrToInt(IND_MED[1]) in [0,1,2,3] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de receita:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_REC   Indicador do tipo de receita:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------------Indicador do tipo de receita: -----------------------------------
//IND_REC =   0- Receita própria;
//            1- Receita de terceiros

Function vInd_tipo_receita(IND_REC: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_REC) = '' then
  Exit;
 try
  if (IND_REC[length(IND_REC)] <> '|') then
   IND_REC := IND_REC + '|';

  if StrToInt(copy(IND_REC,0,(length(IND_REC)-1))) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Código de classificação do item de energia elétrica, conforme Tabela 4.4.1

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_CLASS   Código de classificação do item de energia elétrica, conforme Tabela 4.4.1

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Código de classificação do item, quando exigido (código 06: conforme a tabela indicada no item 4.4.2) ------
//COD_CLASS =   00 Energia elétrica: consumo
//              01 - Energia elétrica: demanda
//              02 -  Energia elétrica: conexão
//              03 -  Energia elétrica: uso do sistema de transmissão/distribuição
//              04 -  Energia elétrica: encargo emergencial
//              18 -  Energia elétrica: serviços diversos (vistoria, aferição, ligação, religação, troca de medidor, etc.)
//              19 -  Energia elétrica: outros
//              20 -  Cobrança: serviço de terceiros
//              21 -  Cobrança: seguro
//              22 -  Cobrança: financiamento de equipamento/serviços
//              23 -  Cobrança: juros de mora por atraso de pagamento
//              24 -  Cobrança: multa de mora por atraso de pagamento
//              25 -  Cobrança: conta de meses anteriores
//              39 -  Cobrança: outras cobranças
//              40 -  Crédito: impugnação de fornecimento
//              41 -  Crédito: ajuste de conta
//              59 -  Crédito: outros créditos

Function vCod_classific_item_4_4_2(COD_CLASS: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Finalidade : array[1..17] of String[2] = ('00','01','02','03','04','18','19','20',
                                           '21','22','23','24','25','39','40','41','59');
begin
 Result := False;
 if Trim(COD_CLASS) = '' then
  Exit;
 try
  for i := 0 to High(Finalidade) do
   begin

    if (COD_CLASS[length(COD_CLASS)] <> '|') then
     COD_CLASS := COD_CLASS + '|';

    if copy(COD_CLASS,0,(length(COD_CLASS)-1)) = Finalidade[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Código do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_MOD    Código do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Código do modelo do documento fiscal, conforme a tabela indicada no item 4.1.1  ------
// COD_MOD        =  01 - Nota Fiscal
//                   1B - Nota Fiscal Avulsa
//                   02 - Nota Fiscal de Venda a Consumidor
//                   2D - Cupom Fiscal emitido por ECF
//                   2E - Bilhete de Passagem emitido por ECF
//                   04 - Nota Fiscal de Produtor
//                   06 - Nota Fiscal/Conta de Energia Elétrica
//                   07 - Nota Fiscal de Serviço de Transporte
//                   08 - Conhecimento de Transporte Rodoviário de Cargas
//                   8B - Conhecimento de Transporte de Cargas Avulso
//                   09 - Conhecimento de Transporte Aquaviário de Cargas
//                   10 - Conhecimento Aéreo
//                   11 - Conhecimento de Transporte Ferroviário de Cargas
//                   13 - Bilhete de Passagem Rodoviário
//                   14 - Bilhete de Passagem Aquaviário
//                   15 - Bilhete de Passagem e Nota de Bagagem
//                   17 - Despacho de Transporte
//                   16 - Bilhete de Passagem Ferroviário
//                   18 - Resumo de Movimento Diário
//                   20 - Ordem de Coleta de Cargas
//                   21 - Nota Fiscal de Serviço de Comunicação
//                   22 - Nota Fiscal de Serviço de Telecomunicação
//                   23 - GNRE
//                   24 - Autorização de Carregamento e Transporte
//                   25 - Manifesto de Carga
//                   26 - Conhecimento de Transporte Multimodal de Cargas
//                   27 - Nota Fiscal/Conta de Fornecimento de Água Canalizada
//                   28 - Nota Fiscal/Conta de Fornecimento de Gás Canalizado
//                   29 - Manifesto de Vôo
//                   30 - Bilhete/Recibo do Passageiro
//                   55 - Nota Fiscal Eletronica
Function vCod_modelo_documento_fiscal_4_1_1(COD_MOD: String): Boolean; stdcall; export;
var
 i: Byte;
 tmp: String[2];

const
 Finalidade : array[1..32] of String[2] = ('01','1B','02','2D','2E','04','06','07','08','8B','09','10','11','13',
                                           '14','15','17','16','18','19','20','21','22','23','24','25',
                                           '26','27','28','29','30', '55');
begin
 Result := False;
  tmp:= RemoveNumInvalid(COD_MOD);
 if Trim(tmp) = '' then
  Exit;
 try
  i := 0;
  while (i<=High(Finalidade)) do
   begin
  //  if (tmp[length(tmp)] <> '|') then
    // tmp := tmp + '|';
    if (copy(tmp,0,(length(tmp)))= Finalidade[i]) then
     begin
      Result := true;
      break;
     end;
    i := i+1;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo do veículo transportador:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_VEIC   Indicador do tipo do veículo transportador:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Indicador do tipo do veículo transportador: ------
//IND_VEIC =   0- Embarcação;
//             1- Empurrador/rebocador

Function vInd_tipo_veiculo_transportador(IND_VEIC: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_VEIC) = '' then
  Exit;
 try
  if StrToInt(IND_VEIC[1]) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador da natureza do frete:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_NAT_FRT   Indicador da natureza do frete

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Indicador da natureza do frete: ------
//IND_NAT_FRT =   0- Negociável;
//                1- Não negociável

Function vInd_natureza_frete(IND_NAT_FRT: String): Boolean; stdcall; export;
var
tmp:String;
begin
 Result := False;
 tmp:= RemoveNumInvalid(IND_NAT_FRT);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp[1]) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de frete:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_FRT   Indicador do tipo de frete:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//--------------------- Indicador do tipo de frete: ---------------------------
//IND_FRT =   0- Por conta de terceiros;
//            1- Por conta do emitente;
//            2- Por conta do destinatario;
//            9- Sem cobranca frete
Function vInd_tipo_frete(IND_FRT: String): Boolean; stdcall; export;
var
tmp:String;
begin
 Result := False;
 tmp:=RemoveNumInvalid(IND_FRT);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp[1]) in [0, 1, 2, 9] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Indicador do tipo de transporte da carga coletada:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_CARG   Indicador do tipo de transporte da carga coletada:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de transporte da carga coletada: ------
//IND_CARG =   0- Rodoviário;
//             1- Ferroviário;
//             2- Rodo-ferroviário;
//             3- Aquaviário;
//             4- Dutoviário;
//             5- Aéreo;
//             9- Outro
Function vInd_tipo_transporte_carga_coletada(IND_CARG: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_CARG) = '' then
  Exit;
 try
  if StrToInt(IND_CARG[1]) in [0,1,2,3,4,5,9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de serviço prestado:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_SERV   Indicador do tipo de serviço prestado:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de serviço prestado: ------
//IND_SERV =   0- Telefonia;
//             1- Comunicação de dados;
//             2- TV por assinatura;
//             3- Provimento de acesso à Internet;
//             4- Multimídia;
//             9- Outros

Function vInd_tipo_servico_prestado(IND_SERV: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_SERV) = '' then
  Exit;
 try
  if StrToInt(IND_SERV[1]) in [0,1,2,3,4,9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador de origem

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_ORIG   Indicador de origem:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador de origem: ------
//IND_ORIG =  0- Interna;
//            1- Sul/Sudeste, exceto ES;
//            2- Demais unidades da federação;
//            3- Exterior;

Function vInd_origem(IND_ORIG: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_ORIG) = '' then
  Exit;
 try
  if StrToInt(copy(IND_ORIG,0,(length(IND_ORIG)-1))) in [0,1,2,3] then
   Result := True;
 except
  Result := False;
 end;
end;


//++++++++++++++++++++++++++ Término de Registros adicionados a partir do dia 7/03/07 +++++++++++++++++++++++++++++++++++++++++++++++++++++

//------ Verifica Integridade do Código de Finalidades da Apresentação do Arquivo Magnético  ------
//Cod_Finalidade = 1 Normal
//                 2 Retificação total de arquivo: substituição total das informações prestadas referentes ao período
//                 A Intimação escrita de autoridade fiscal
//                 D Intimação através do Diário Oficial do Estado
//                 G Intimação para retificação de dados da GIAM
//Function vFinalidade(Cod_Finalidade: String): Boolean; stdcall; export;
//begin
// Result := False;
// if Trim(Cod_Finalidade) = '' then
//  Exit;

// try
//  if Cod_Finalidade[1] in ['1', '2', 'A', 'D', 'G'] then
//   Result := True;
// except
//  Result := False;
// end;
//end;



//------ Verifica Situação do Documento Fiscal quanto ao Cancelamento ------
//Situacao = S - Documento Fiscal Regularmente Cancelado
//           N - Documento Fiscal Não Regularmente Cancelado
//           E - Lançamento Extemporâneo de Documento Fiscal Normal
//           X - Lançamento Extemporâneo de Documento Fiscal Cancelado
//           D - Registro de desfazimento, com informação referente a operações/prestações não efetivadas
Function vSituacao(Situacao: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(Situacao) = '' then
  Exit;
 try
  if Situacao[1] in ['S', 'N', 'E', 'X', 'D'] then
   Result := True;
 except
  Result := False;
 end;
end;


////------ Verifica se existe Movimento -------
//Movimento = S - Sim
//            N - Não
//Function vMovimento(Movimento: String): Boolean; stdcall; export;
//begin
// Result := False;
// if Trim(Movimento) = '' then
//  Exit;
// try
//  if Movimento[1] in ['S', 'N'] then
//   Result := True;
// except
//  Result := False;
// end;
//end;

{*------------------------------------------------------------------------------         // todo vefificar com Victory
 Indicador de movimento

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param Movimento   Indicador de movimento

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
////------ Indicador de movimento -------
//Movimento = 0 - Bloco com dados informados;
//            1 - Bloco sem dados informados
Function vMovimento(Movimento: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(Movimento) = '' then
  Exit;
 try
  if Movimento[1] in ['0', '1'] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Código do município do domicílio fiscal da entidade, conforme a tabela IBGE

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param Cod_Municipio     Código do município do domicílio fiscal da entidade, conforme a tabela IBGE

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
// ------ Verifica o código do município ------
Function vCod_Municipio(Cod_Municipio: String): Boolean; stdcall; export;
var
 Texto: string;
 i: Boolean;
 sFile: TextFile;
begin
Result := False;

 if Testa_State('-1') then                                                             //Se função Inicia_SPED Chamada
  begin
   Cod_Municipio := (copy(Cod_Municipio, 1, length(Cod_Municipio)-1));  // retira o ultimo caracter do COD_NCM

   i := false;                                                    //variável para pular a primeira linha do arquivo txt True = nao pula; false = pula

   AssignFile(sFile, Path_Municipio);
   Reset(sFile);

   while not Eof(sFile) do
    begin
     Readln(sFile, texto);                                        //lê linhas do arquivo e incrementa na variável texto
      if i then                                                   //pula a primeira linha do arquixo txt
       begin
        texto :=(copy(texto, 1, 7));
         if texto = Cod_Municipio then                            //compara valor recebido pela função com valor lido do arquivo
          Result := true;
       end
      else
       i := true;
    end;
  end;
end;

{*------------------------------------------------------------------------------
 Verifica Integridade de CEP

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CEP   Verifica Integridade de CEP

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Verifica Integridade de CEP ------
//String deve ser passada sem formatação
function vCEP(cCep:String): Boolean; stdcall; export;
var
cCEP1 : Integer;
begin
 Result := False;
 cCep :=(copy(cCep,1,8));
 if (Trim(cCep) = '') or (Trim(cCep) = '|') then
  Exit;

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

{*------------------------------------------------------------------------------
 Sigla da unidade da federação da entidade.

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param UF   Sigla da unidade da federação da entidade.

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Verifica Integridade de UF ------
Function vUF(UF: String): Boolean; stdcall; export;
const
 EstadosUniao: array[1..28] of String[3] = ('MG|','SP|','RJ|','AL|','AM|','BA|','DF|','MS|','MT|',
                                            'TO|','AC|','MA|','RO|','RR|','PE|','RS|','PA|','PB|',
                                            'CE|','GO|','SC|','ES|','AP|','PI|','RN|','SE|','PR|',
                                            'EX|');
var
 i: Byte;
 //tmp: String;
begin
 Result := False;
 UF :=RemoveAlfaInvalid(UF);
 if UF = '' then
  Exit;

 UF := UpperCase(UF);
 trim(UF);
  if (UF[length(UF)] <> '|') then
   UF := UF + '|';
 for i := Low(EstadosUniao) to High(EstadosUniao) do
  begin
   if EstadosUniao[i] = UF then
    begin
     Result := True;
     Break;
    end;
  end;
end;

{*------------------------------------------------------------------------------
 Verifica Integridade de CPF.

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CPF   Verifica Integridade de CPF.

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Verifica Integridade de CPF ------
//String deve ser passada sem formatação
Function vCPF(const CPF: String): Boolean; stdcall; export;
const
 _len_max = 11;
 NumArray: PChar = '0123456789';
var
  Digitos: array[1.._len_max] of Byte;
  i, DV1, DV2: Short;
  Calculo: Integer;
  tmp: String[_len_max];
begin
 tmp := RemovenumInvalid(CPF);
 Result := False;
 if Trim(tmp) = '' then
  Exit;

 try

  while Length(tmp) < _len_max do
   tmp := tmp + '0';
  for i := 1 to _len_max do
   begin
    inttostr(i);
    Digitos[i] := StrToInt(tmp[i]);
   end;
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

{*------------------------------------------------------------------------------
 Verifica Integridade de CNPJ.

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CNPJ   Verifica Integridade de CNPJ.

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Verifica Integridade de CNPJ ------
//String deve ser passada sem formatação
Function vCNPJ(const CGC: String): Boolean; stdcall; export;
var
 Digitos: array[1..14] of Byte;
 i, Resto: ShortInt;
 DV1, DV2: byte;
 Calculo: Integer;
 tmp: String[14];
begin
 Result := False;
 tmp := RemovenumInvalid(CGC);
 if Trim(tmp) = '' then
  begin
   Result := true;
   Exit;
  end;

 try
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

{*------------------------------------------------------------------------------
 Verifica Integridade de Inscrição Estadual.

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IE    Inscrição Estadual.
 @param UF   Sigla da unidade da federação da entidade.

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Verifica Integridade de Inscrição Estadual ------
//Incricao: String deve ser passada sem formatação
//Tipo: String da UF ou "CNPJ" ou "CPF"

//Função desabilitada por problemas na validação de Insc. Est. de produtores rurais.
//Para validar Insc. Est. utilize a dll oficial disponível p/ download em www.SPED.gov.br.
function vInscEst(Inscricao, UF: string): Boolean; stdcall; export;
{var
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
  Retorno: Boolean;}
// Create: 21/06/2001 - Update: 23/06/2001 - By Paulo Ed Casagrande
// Unit desenvolvida com base em informações contidas no site : www.SPED.gov.br
begin
{  try
    Tabela_1 := ' ';
    Tabela_2 := ' ';
    Tabela_3 := ' ';

  //           Valores possiveis para os digitos (j)
  //
  //   0 a 9 = Somente o digito indicado.
  //       N = Numeros 0 1 2 3 4 5 6 7 8 ou 9
  //       A = Numeros 1 2 3 4 5 6 7 8 ou 9
  //       B = Numeros 0 3 5 7 ou 8
  //       C = Numeros 4 ou 7
  //       D = Numeros 3 ou 4
  //       E = Numeros 0 ou 8
  //       F = Numeros 0 1 ou 5
  //       G = Numeros 1 7 8 ou 9
  //       H = Numeros 0 1 2 ou 3
  //       I = Numeros 0 1 2 3 ou 4
  //       J = Numeros 0 ou 9
  //       K = Numeros 1 2 3 ou 9
  //
  //   -----------------------------------------------------------------------------
  //
  //           Valores possiveis para as rotinas (d) e (g)
  //
  //   A a E = Somente a Letra indicada.
  //       0 = B e D
  //       1 = C e E
  //       2 = A e E
  //
  //   -----------------------------------------------------------------------------
  //
  //                                    C T  F R M  P  R M  P
  //                                    A A  A O O  E  O O  E
  //                                    S M  T T D  S  T D  S
  //
  //                                    a b  c d e  f  g h  i  jjjjjjjjjjjjjj
  //                                    0000000001111111111222222222233333333
  //                                    1234567890123456789012345678901234567

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

    //Deixa somente os numeros
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
        // Verifica o Tamanho
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

              // Ajusta valor da soma
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
  end;    }

 //Função temporariamente desabilitada por problemas na validação de Insc. Est. de produtores rurais
 Result := True;
end;


//------ Verifica String é uma data válida no formato do SPED ------
Function IsSPEDDate(Date_Str: String): boolean; stdcall; export;
var
 Day, Month, Year: Word;
begin
 Result := False;
 If Trim(Date_Str) = '' then
   Exit;

 try
  //String deve ser passada no formato (aaaammdd)
  //Day := strtoint(copy(Date_Str, 7, 2));
  //setlength(Date_Str, 6);
  //Month := strtoint(copy(Date_Str, 5, 4));
  //setlength(Date_Str, 4);
  //Year := strtoint(Date_Str);

  //String deve ser passada no formato (ddmmaaaa)
  Year := strtoint(copy(Date_Str, 5, 4));
  setlength(Date_Str, 4);
  Month := strtoint(copy(Date_Str, 3, 2));
  setlength(Date_Str, 2);
  Day := strtoint(Date_Str);

  if IsValidDate(Year, Month, Day) then
   Result := True;
 except
  result := false;
 end;
end;

//------ Converte String de data válida no formato do SPED para TDateTime ------
//String deve ser passada no formato (ddmmaaaa)
Function SPEDDateToDateTime(Date_Str: String): TDateTime; stdcall; export;
begin
 If Trim(Date_Str) = '' then
  begin
   Result := 0;                 //Retorno da Função = 12/30/1899 12:00 am
   Exit;
  end;

 try
  Date_Str := copy(Date_Str, 0, length(Date_Str)-1);

  Insert('/', Date_str, 3);
  Insert('/', Date_str, 6);

  Result := strtodate(Date_Str);
 except
  Result := 0;                  //Retorno da Função = 12/30/1899 12:00 am
 end;
end;

//------ Converte String de data no formato ddmmaaaa para o formato do SPED aaaammdd ------
//String deve ser passada no formato (ddmmaaaa)
Procedure ddmmaaaaToSPEDDate(var Date_Str: String); stdcall; export;
var
 TempStr: String;
 dt_temp: TDatetime;
begin
 If Trim(Date_Str) = '' then
  Exit;

 TempStr := '';
 try
  dt_temp := strtodatetime(Date_Str);
  Date_Str := formatdatetime('DDMMYYYY', dt_temp);

 except
  Date_Str := '';
 end;
end;

//------ Tratamento de String (Retira caracteres invalidos, trunca e preenche espaços) ------
//AlfaArray = quais os caracteres válidos como alfanuméricos de acordo com manual SPED
Procedure FormatoAlfa(Var Str: String; Tamanho: integer; DescStr: String);
var
 str_antes: String;
begin
 If (Tamanho = 0) then
  begin
   Str := '';
   Exit;
  end;

 str_antes := str;

 Str := TrimLeft(Str);
 Str := RemovealfaInvalid(Str);

 if length(str) > tamanho then
  ObsTStr.add(DescStr + #9 + 'Quantidade de caracteres maior que o permitido - Permitido: ' + inttostr(Tamanho) + '; Passados: ' + inttostr(length(str)));     //Adiciona linha de informação q é usada para log de obs em Trata_Erro

 Str := Copy(Str, 0, Tamanho);
 Str := Str + '|';
 //Str := AlfaStuff(Str, Tamanho);
 //SetLength(Str, Tamanho);

 RegistroTStr.add(#9 + DescStr + #9 + Str_Antes + ' -> ' + Str);     //Adiciona linha de informação q é usada para log de erros em Trata_Erro
end;



//------ Tratamento de String (Retira caracteres invalidos, trunca e preenche espaços) ------
//NumArray = quais os caracteres válidos como numéricos de acordo com manual SPED
Procedure FormatoNum(var Str: String; Tamanho: Byte; DescStr: String);
var
 str_antes: string;
begin
 If (Tamanho = 0) then
  begin
   Str := '';
   Exit;
  end;

 str_antes := str;

 Str := RemovenumInvalid(Str);

 if length(str) > tamanho then
  begin
   ObsTStr.add(DescStr + #9 + 'Quantidade de caracteres maior que o permitido - Permitido: ' + inttostr(Tamanho) + '; Passados: ' + inttostr(length(str)));     //Adiciona linha de informação q é usada para log de obs em Trata_Erro

  end;

 Str := Copy(Str, 0, Tamanho);
 Str := Str + '|';
 //Str := NumStuff(Str, Tamanho);
 //SetLength(Str, Tamanho);

 RegistroTStr.add(#9 + DescStr + #9 + Str_Antes + ' -> ' + Str);     //Adiciona linha de informação q é usada para log de erros em Trata_Erro
end;
{
//------ Tratamento de String (Retira caracteres invalidos, trunca e preenche espaços) ------
//NumArray = quais os caracteres válidos como numéricos de acordo com manual SPED
Procedure FormatoNum2(var Str: String; Tamanho: Byte); stdcall; export;
begin
 If (Tamanho = 0) then
  begin
   Str := '';
   Exit;
  end;

 Str := RemovenumInvalid(Str);
 Str := Copy(Str, 0, Tamanho);
 Str := NumStuff(Str, Tamanho);
 SetLength(Str, Tamanho);
end;
}
//------------------------ Novas Tabelas Inseridas -----------------------------


//-------------------- Tabela Documentos Fiscais do ICMS -----------------------
//        DF_ICMS: 01 - Nota Fiscal 1/1A
//                 1B - Nota Fiscal Avulsa -
//                 02 - Nota Fiscal de Venda a Consumidor 2
//                 2D - Cupom Fiscal emitido por ECF -
//                 2E - Bilhete de Passagem emitido por ECF -
//                 04 - Nota Fiscal de Produtor 4
//                 06 - Nota Fiscal/Conta de Energia Elétrica 6
//                 07 - Nota Fiscal de Serviço de Transporte 7
//                 08 - Conhecimento de Transporte Rodovi ário de Cargas 8
//                 8B - Conhecimento de Transporte de Cargas Avulso -
//                 09 - Conhecimento de Transporte Aquaviário de Cargas 9
//                 10 - Conhecimento Aéreo 10
//                 11 - Conhecimento de Transporte Ferroviário de Cargas 11
//                 13 - Bilhete de Passagem Rodoviário 13
//                 14 - Bilhete de Passagem Aquaviário 14
//                 15 - Bilhete de Passagem e Nota de Bagagem 15
//                 17 - Despacho de Transporte 17
//                 16 - Bilhete de Passagem Ferroviário 16
//                 18 - Resumo de Movimento Diário 18
//                 20 - Ordem de Coleta de Cargas 20
//                 21 - Nota Fiscal de Serviço de Comunicação 21
//                 22 - Nota Fiscal de Serviço de Telecomunicação 22
//                 23 - GNRE 23
//                 24 - Autorizaçã o de Carregamento e Transporte 24
//                 25 - Manifesto de Carga 25
//                 26 - Conhecimento de Transporte Multimodal de Cargas 26
//                 27 - Nota Fiscal/Conta de Fornecimento de Água Canalizada -
//                 28 - Nota Fiscal/Conta de Fornecimento de Gás Canalizado -
//                 29 - Manifesto de Vôo -
//                 30 - Bilhete/Recibo do Passageiro -
//                 50 - Documentos fiscais de serviços municipais
Function vDF_ICMS(DF_ICMS: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Documento_Fiscal : array[1..31] of String[2] = ('01','1B','02','2D','2E','04','06','07','08','8B','09','10','11','13','14','15',
                                                 '17','16','18','20','21','22','23','24','25','26','27','28','29','30','50');
 begin
 Result := False;
 if Trim(DF_ICMS) = '' then
  Exit;

 try
  for i := 0 to High(Documento_Fiscal) do
   begin
   inttostr(i);   
    if DF_ICMS = Documento_Fiscal[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

//----------------------- Tabela Situação do Documento -------------------------
//Situacao_Documento: 00 - Lançamento regular de documento
//                    01 - Lançamento extemporâneo de documento
//                    02 - Lançamento de documento cancelado
//                    03 - Lançamento de cancelamento de cupom fiscal anterior
//                    04 - Lançamento extemporâneo de documento cancelado
//                    05 - Lançamento de desfazimento de negócio
//                    06 - Lançamento de documento referenciado
Function vSituacao_Documento(SIT_DOC: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Situacao_Documento : array[1..7] of String[2] = ('00','01','02','03','04','05','06');
 begin
 Result := False;
 if Trim(SIT_DOC) = '' then
  Exit;

 try
  for i := 0 to High(Situacao_Documento) do
   begin
   inttostr(i);   
    if SIT_DOC = Situacao_Documento[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

// -------------------- Tabela Gênero do Item de Mercadoria/Serviço ------------
//         GIO: 00 - Serviço
//              01 - Animais vivos
//              02 - Carnes e miudezas, comestíveis
//              03 - Peixes e crustáceos, moluscos e os outros invertebrados aquáticos
//              04 - Leite e laticínios; ovos de aves; mel natural; produtos comestíveis de origem animal, não especificados nem compreendidos em outros Capítulos da TIPI
//              05 - Outros produtos de origem animal, não especificados nem compreendidos em outros Capítulos da TIPI
//              06 - Plantas vivas e produtos de floricultura
//              07 - Produtos hortícolas, plantas, raízes e tubérculos, comestíveis
//              08 - Frutas; cascas de cítricos e de melões
//              09 - Café, chá, mate e especiarias
//              10 - Cereais
//              11 - Produtos da indústria de moagem; malte; amidos e féculas; inulina; glúten de trigo
//              12 - Sementes e frutos oleaginosos; grãos, sementes e frutos diversos; plantas industriais ou medicinais; palha e forragem
//              13 - Gomas, resinas e outros sucos e extratos vegetais
//              14 - Matérias para entran çar e outros produtos de origem vegetal, não especificadas nem compreendidas em outros Capítulos da NCM
//              15 - Gorduras e óleos animais ou vegetais; produtos da sua dissociação; gorduras alimentares elaboradas; ceras de origem animal ou vegetal
//              16 - Preparações de carne, de peixes ou de crust áceos, de moluscos ou de outros invertebrados aquáticos
//              17 - Açúcares e produtos de confeitaria
//              18 - Cacau e suas preparações
//              19 - Preparações à base de cereais, farinhas, amidos, féculas ou de leite; produtos de pastelaria
//              20 - Preparações de produtos hortícolas, de frutas ou de outras partes de plantas
//              21 - Preparações alimentícias diversas
//              22 - Bebidas, líquidos alcoólicos e vinagres
//              23 - Resíduos e desperdícios das indústrias alimentares; alimentos preparados para animais
//              24 - Fumo (tabaco) e seus sucedâneos, manufaturados
//              25 - Sal; enxofre; terras e pedras; gesso, cal e cimento
//              26 - Minérios, escórias e cinzas
//              27 - Combustíveis minerais, óleos minerais e produtos de sua destilação; matérias betuminosas; ceras minerais
//              28 - Produtos químicos inorgânicos; compostos inorgânicos ou orgânicos de metais preciosos, de elementos radioativos, de metais das terras raras ou de isótopos
//              29 - Produtos químicos orgânicos
//              30 - Produtos farmacêuticos
//              31 - Adubos ou fertilizantes
//              32 - Extratos tanantes e tintoriais; taninos e seus derivados; pigmentos e outras matérias corantes, tintas e vernizes, mástiques; tintas de escrever
//              33 - Óleos essenciais e resin óides; produtos de perfumaria ou de toucador preparados e preparações cosméticas
//              35 - Matérias albuminóides; produtos à base de amidos ou de féculas modificados; colas; enzimas
//              36 - Pólvoras e explosivos; artigos de pirotecnia; fósforos; ligas pirofóricas; matérias inflamáveis
//              37 - Produtos para fotografia e cinematografia
//              38 - Produtos diversos das indústrias químicas
//              39 - Plásticos e suas obras
//              40 - Borracha e suas obras
//              41 - Peles, exceto a peleteria (peles com pêlo*), e couros
//              42 - Obras de couro; artigos de correeiro ou de seleiro; artigos de viagem, bolsas e artefatos semelhantes; obras de tripa
//              43 - Peleteria (peles com pêlo*) e suas obras; peleteria (peles com pêlo*) artificial
//              44 - Madeira, carvão vegetal e obras de madeira
//              45 - Cortiça e suas obras
//              46 - Obras de espartaria ou de cestaria
//              47 - Pastas de madeira ou de outras matérias fibrosas celulósicas; papel ou cartão de reciclar (desperdícios e aparas)
//              48 - Papel e cartão; obras de pasta de celulose, de papel ou de cartão
//              49 - Livros, jornais, gravuras e outros produtos das indústrias gráficas; textos manuscritos ou datilografados, planos e plantas
//              50 - Seda
//              51 - Lã e pêlos finos ou grosseiros; fios e tecidos de crina
//              52 - Algodão
//              53 - Outras fibras têxteis vegetais; fios de papel e tecido de fios de papel
//              54 - Filamentos sint éticos ou artificiais
//              55 - Fibras sintéticas ou artificiais, descontínuas
//              56 - Pastas ("ouates"), feltros e falsos tecidos; fios especiais; cordéis, cordas e cabos; artigos de cordoaria
//              57 - Tapetes e outros revestimentos para pavimentos, de matérias têxteis
//              58 - Tecidos especiais; tecidos tufados; rendas; tapeçarias; passamanarias; bordados
//              59 - Tecidos impregnados, revestidos, recobertos ou estratificados; artigos para usos técnicos de matérias têxteis
//              60 - Tecidos de malha
//              61 - Vestuário e seus acess órios, de malha
//              62 - Vestuário e seus acess órios, exceto de malha
//              63 - Outros artefatos têxteis confeccionados; sortidos; artefatos de mat érias têxteis, calçados, chapéus e artefatos de uso semelhante, usados; trapos
//              64 - Calçados, polainas e artefatos semelhantes, e suas partes
//              65 - Chapéus e artefatos de uso semelhante, e suas partes
//              66 - Guarda-chuvas, sombrinhas, guarda-sóis, bengalas, bengalas -assentos, chicotes, e suas partes
//              67 - Penas e penugem preparadas, e suas obras; flores arttificiais; obras de cabelo
//              68 - Obras de pedra, gesso, cimento, amianto, mica ou de matérias semelhantes
//              69 - Produtos cerâmicos
//              70 - Vidro e suas obras
//              71 - Pérolas naturais ou cultivadas, pedras preciosas ou semipreciosas e semelhantes, metais preciosos, metais folheados ou chapeados de metais preciosos, e suas obras; bijuterias; moedas
//              72 - Ferro fundido, ferro e aço
//              73 - Obras de ferro fundido, ferro ou aço
//              74 - Cobre e suas obras
//              75 - Níquel e suas obras
//              76 - Alumínio e suas obras
//              77 - (Reservado para uma eventual utilização futura no SH)
//              78 - Chumbo e suas obras
//              79 - Zinco e suas obras
//              80 - Estanho e suas obras
//              81 - Outros metais comuns; ceramais ("cermets"); obras dessas matérias
//              82 - Ferramentas, artefatos de cutelaria e talheres, e suas partes, de metais comuns
//              83 - Obras diversas de metais comuns
//              84 - Reatores nucleares, caldeiras, máquinas, aparelhos e instrumentos mecânicos, e suas partes
//              85 - Máquinas, aparelhos e materiais elétricos, e suas partes; aparelhos de gravação ou de reprodução de som, aparelhos de gravação ou de reprodução de imagens e de som em televisão, e suas partes e acess órios
//              86 - Veículos e material para vias férreas ou semelhantes, e suas partes; aparelhos mecânicos (incluídos os eletromecânicos) de sinalização para vias de comunicação
//              87 - Veículos automóveis, tratores, ciclos e outros veículos terrestres, suas partes e acessórios
//              88 - Aeronaves e aparelhos espaciais, e suas partes
//              89 - Embarcações e estruturas flutuantes
//              90 - Instrumentos e aparelhos de óptica, fotografia ou cinematografia, medida, controle ou de precisão; instrumentos e aparelhos médico-cirúrgicos; suas partes e acess órios
//              91 - Aparelhos de relojoaria e suas partes
//              92 - Instrumentos musicais, suas partes e acessórios
//              93 - Armas e munições; suas partes e acessórios
//              94 - Móveis, mobiliário médico-cirúrgico; colchões; iluminação e construção pré-fabricadas
//              95 - Brinquedos, jogos, artigos para divertimento ou para esporte; suas partes e acessórios
//              96 - Obras diversas
//              97 - Objetos de arte, de coleçã o e antiguidades
//              98 - (Reservado para usos especiais pelas Partes Contratantes)
//              99 - Operações especiais (utilizado exclusivamente pelo Brasil para classificar operações especiais na exportação)

Function vGenero_Item(GIO: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Genero_Item : array[1..99] of String[2] = ('00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15',
                                            '16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31',
                                            '32','33','35','36','37','38','39','40','41','42','43','44','45','46','47','48',
                                            '49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64',
                                            '65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',
                                            '81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96',
                                            '97','98','99');
 begin
 Result := False;
 if Trim(GIO) = '' then
  Exit;

 try
  for i := 0 to High(Genero_Item) do
   begin
   inttostr(i);
    if GIO = Genero_Item[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tabela Código de Tributação do IPI - CTIPI

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_TIPI    Código de Tributação do IPI

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//--------------- Tabela Código de Tributação do IPI - CTIPI -------------------
//  COD_Tributacao: 00 - Entrada com recuperação de crédito
//                  01 - Entrada tributada com alíquota zero
//                  02 - Entrada isenta
//                  03 - Entrada não-tributada
//                  04 - Entrada imune
//                  05 - Entrada com suspensão
//                  49 - Outras entradas
//                  50 - Saída tributada
//                  51 - Saída tributada com alíquota zero
//                  52 - Saída isenta
//                  53 - Saída não-tributada
//                  54 - Saída imune
//                  55 - Saída com suspensão
//                  99 - Outras saídas
Function vCOD_Tributacao_IPI(COD_TIPI: String): Boolean; stdcall; export;
var
 i: Byte;
const
 COD_Tributacao : array[1..14] of String[2] = ('00','01','02','03','04','05','49','50','51','52','53','54','55','99');
 begin
 Result := False;
 if Trim(COD_TIPI) = '' then
  Exit;

 try
  for i := 0 to High(COD_Tributacao) do
   begin
   inttostr(i);
    if COD_TIPI = COD_Tributacao[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tabela Classificação de Itens de Energia Elétrica

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CIE    Classificação de Itens de Energia Elétrica

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//-------------- Tabela Classificação de Itens de Energia Elétrica -------------
//Classe_Item_Energia: 00 - Energia elétrica: consumo
//                     01 - Energia elétrica: demanda
//                     02 - Energia elétrica: conexão
//                     03 - Energia elétrica: uso do sistema de transmissão/distribuição
//                     04 - Energia elétrica: encargo emergencial
//                     18 - Energia elétrica: servi ços diversos (vistoria, aferição, ligação, religação, troca de medidor, etc.)
//                     19 - Energia elétrica: outros
//                     20 - Cobrança: serviço de terceiros
//                     21 - Cobrança: seguro
//                     22 - Cobrança: financiamento de equipamento/serviços
//                     23 - Cobrança: juros de mora por atraso de pagamento
//                     24 - Cobrança: multa de mora por atraso de pagamento
//                     25 - Cobrança: conta de meses anteriores
//                     39 - Cobrança: outras cobranças
//                     40 - Crédito: impugnação de fornecimento
//                     41 - Crédito: ajuste de conta
//                     59 - Crédito: outros créditos
Function vClasse_Item_Energia(CIE: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Classe_Item_Energia : array[1..17] of String[2] = ('00','01','02','03','04','18','19','20','21','22','23','24','25','39','40','41','59');
 begin
 Result := False;
 if Trim(CIE) = '' then
  Exit;

 try
  for i := 0 to High(Classe_Item_Energia) do
   begin
   inttostr(i);   
    if CIE = Classe_Item_Energia[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tabela Classes de Consumo de Água Canalizada

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CCA    Classes de Consumo de Água Canalizada 

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//--------------- Tabela Classes de Consumo de Água Canalizada -----------------
//Classe_Consumo_Agua: 00 - 01 registro consolidando os documentos de consumo residencial até R$ 50,00
//                     01 - 01 registro consolidando os documentos de consumo residencial de R$ 50,01 a R$ 100,00
//                     02 - 01 registro consolidando os documentos de consumo residencial de R$ 100,01 a R$ 200,00
//                     03 - 01 registro consolidando os documentos de consumo residencial de R$ 201,01 a R$ 300,00
//                     04 - 01 registro consolidando os documentos de consumo residencial de R$ 300,01 a R$ 400,00
//                     05 - 01 registro consolidando os documentos de consumo residencial de R$ 400,01 a R$ 500,00
//                     06 - 01 registro consolidando os documentos de consumo residencial de R$ 500,01 a R$ 1000,00
//                     07 - 01 registro consolidando os documentos de consumo residencial acima de R$ 1.000,01
//                     20 - 01 registro consolidando os documentos de consumo consumo comercial/industrial até R$ 50,00
//                     21 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 50,01 a R$ 100,00
//                     22 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 100,01 a R$ 200,00
//                     23 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 200,01 a R$ 300,00
//                     24 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 300,01 a R$ 400,00
//                     25 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 400,01 a R$ 500,00
//                     26 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 500,01 a R$ 1.000,00
//                     27 - 01 registro por documento fiscal de consumo consumo comercial/industrial acima de R$ 1.000,01
//                     70 - 01 registro consolidando os documentos de consumo de órgão público
//                     91 - 01 registro consolidando os documentos de outros tipos de consumo até R$ 50,00
//                     92 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 50,01 a R$ 100,00
//                     93 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 100,01 a R$ 200,00
//                     94 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 200,01 a R$ 300,00
//                     95 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 300,01 a R$ 400,00
//                     96 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 400,01 a R$ 500,00
//                     97 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 500,01 a R$ 1.000,00
//                     99 - 01 registro consolidando os documentos de outros tipos de consumo acima de R$ 1.000,01
Function vClasse_Consumo_Agua(CCA: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Classe_Consumo_Agua : array[1..25] of String[2] = ('00','01','02','03','04','05','06','07','20','21','22','23','24','25','26','27',
                                                    '70','91','92','93','94','95','96','97','99');
 begin
 Result := False;
 if Trim(CCA) = '' then
  Exit;

 try
  for i := 0 to High(Classe_Consumo_Agua) do
   begin
    inttostr(i);
    if CCA = Classe_Consumo_Agua[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Tabela Classes de Consumo de Gás Canalizado

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CCG   Classes de Consumo de Gás Canalizado

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}


//---------------- Tabela Classes de Consumo de Gás Canalizado -----------------
//Classe_Consumo_Gas: 00 - 01 registro consolidando os documentos de consumo residencial até R$ 50,00
//                    01 - 01 registro consolidando os documentos de consumo residencial de R$ 50,01 a R$ 100,00
//                    02 - 01 registro consolidando os documentos de consumo residencial de R$ 100,01 a R$ 200,00
//                    03 - 01 registro consolidando os documentos de consumo residencial de R$ 201,01 a R$ 300,00
//                    04 - 01 registro consolidando os documentos de consumo residencial de R$ 300,01 a R$ 400,00
//                    05 - 01 registro consolidando os documentos de consumo residencial de R$ 400,01 a R$ 500,00
//                    06 - 01 registro consolidando os documentos de consumo residencial de R$ 500,01 a R$ 1000,00
//                    07 - 01 registro consolidando os documentos de consumo residencial acima de R$ 1.000,01
//                    20 - 01 registro consolidando os documentos de consumo consumo comercial/industrial até R$ 50,00
//                    21 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 50,01 a R$ 100,00
//                    22 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 100,01 a R$ 200,00
//                    23 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 200,01 a R$ 300,00
//                    24 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 300,01 a R$ 400,00
//                    25 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 400,01 a R$ 500,00
//                    26 - 01 registro consolidando os documentos de consumo consumo comercial/industrial de R$ 500,01 a R$ 1.000,00
//                    27 - 01 registro por documento fiscal de consumo consumo comercial/industrial acima de R$ 1.000,01
//                    70 - 01 registro consolidando os documentos de consumo de órgão público
//                    91 - 01 registro consolidando os documentos de outros tipos de consumo até R$ 50,00
//                    92 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 50,01 a R$ 100,00
//                    93 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 100,01 a R$ 200,00
//                    94 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 200,01 a R$ 300,00
//                    95 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 300,01 a R$ 400,00
//                    96 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 400,01 a R$ 500,00
//                    97 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 500,01 a R$ 1.000,00
//                    99 - 01 registro consolidando os documentos de outros tipos de consumo acima de R$ 1.000,01
Function vClasse_Consumo_Gas(CCG: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Classe_Consumo_Gas : array[1..25] of String[2] = ('00','01','02','03','04','05','06','07','20','21','22','23','24','25','26','27',
                                                   '70','91','92','93','94','95','96','97','99');
 begin
 Result := False;
 if Trim(CCG) = '' then
  Exit;

 try
  for i := 0 to High(Classe_Consumo_Gas) do
   begin
    inttostr(i);
    if CCG = Classe_Consumo_Gas[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tabela Classes de Consumo dos Serviços de Comunicação e Telecomunicação

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CCCT    Classes de Consumo dos Serviços de Comunicação e Telecomunicação

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//-- Tabela Classes de Consumo dos Serviços de Comunicação e Telecomunicação --
//Classe_Consumo_C&T: 00 - 01 registro consolidando os documentos de consumo residencial/pessoa física até R$ 50,00
//                    01 - 01 registro consolidando os documentos de consumo residencial/pessoa física de R$ 50,01 a R$ 100,00
//                    02 - 01 registro consolidando os documentos de consumo residencial/pessoa física de R$ 100,01 a R$ 200,00
//                    03 - 01 registro consolidando os documentos de consumo residencial/pessoa física de R$ 201,01 a R$ 300,00
//                    04 - 01 registro consolidando os documentos de consumo residencial/pessoa física de R$ 300,01 a R$ 400,00
//                    05 - 01 registro consolidando os documentos de consumo residencial/pessoa física de R$ 400,01 a R$ 500,00
//                    06 - 01 registro consolidando os documentos de consumo residencial/pessoa física de R$ 500,01 a R$ 1000,00
//                    07 - 01 registro por documento fiscal de consumo residencial/pessoa física acima de R$ 1.000,01
//                    10 - 01 registro consolidando os documentos de consumo comercial/industrial até R$ 50,00
//                    11 - 01 registro consolidando os documentos de consumo comercial/industrial de R$ 50,01 a R$ 100,00
//                    12 - 01 registro consolidando os documentos de consumo comercial/industrial de R$ 100,01 a R$ 200,00
//                    13 - 01 registro consolidando os documentos de consumo comercial/industrial de R$ 200,01 a R$ 300,00
//                    14 - 01 registro consolidando os documentos de consumo comercial/industrial de R$ 300,01 a R$ 400,00
//                    15 - 01 registro consolidando os documentos de consumo comercial/industrial de R$ 400,01 a R$ 500,00
//                    16 - 01 registro consolidando os documentos de consumo comercial/industrial de R$ 500,01 a R$ 1.000,00
//                    17 - 01 registro por documento fiscal de consumo comercial/industrial acima de R$ 1.000,01
//                    70 - 01 registro consolidando os documentos de consumo do poder público até R$ 50,00
//                    71 - 01 registro consolidando os documentos de consumo poder público de R$ 50,01 a R$ 100,00
//                    72 - 01 registro consolidando os documentos de consumo poder público de R$ 100,01 a R$ 200,00
//                    73 - 01 registro consolidando os documentos de consumo poder público de R$ 200,01 a R$ 300,00
//                    74 - 01 registro consolidando os documentos de consumo poder público de R$ 300,01 a R$ 400,00
//                    75 - 01 registro consolidando os documentos de consumo poder público de R$ 400,01 a R$ 500,00
//                    76 - 01 registro consolidando os documentos de consumo poder público de R$ 500,01 a R$ 1.000,00
//                    77 - 01 registro por documento fiscal de consumo poder público acima de R$ 1.000,01
//                    78 - 01 registro por documento fiscal de consumo de órgão público isento do ICMS
//                    79 - 01 registro por documento fiscal de consumo de órgãos semi-públicos
//                    90 - 01 registro consolidando os documentos de outros tipos de consumo até R$ 50,00
//                    91 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 50,01 a R$ 100,00
//                    92 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 100,01 a R$ 200,00
//                    93 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 200,01 a R$ 300,00
//                    94 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 300,01 a R$ 400,00
//                    95 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 400,01 a R$ 500,00
//                    96 - 01 registro consolidando os documentos de outros tipos de consumo de R$ 500,01 a R$ 1.000,00
//                    99 - 01 registro por documento fiscal de outros tipos de consumo acima de R$ 1.000,01
Function vClasse_Consumo_CT(CCCT: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Classe_Consumo_CT : array[1..34] of String[2] = ('00','01','02','03','04','05','06','07','10','11','12','13','14','15','16','17',
                                                  '70','71','72','73','74','75','76','77','78','79','90','91','92','93','94','95',
                                                  '96','99');
 begin
 Result := False;
 if Trim(CCCT) = '' then
  Exit;

 try
  for i := 0 to High(Classe_Consumo_CT) do
   begin
    inttostr(i);  
    if CCCT = Classe_Consumo_CT[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tabela Classificação de Itens dos Serviços de Comunicação e Telecomunicação

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param CISCT    Classificação de Itens dos Serviços de Comunicação e Telecomunicação
 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//--- Tabela Classificação de Itens dos Serviços de Comunicação e Telecomunicação ---
//Classificacao_Item_SCT: 000 - Assinatura de serviço: telefonia
//                        001 - Assinatura de serviço: comunicação de dados
//                        002 - Assinatura de serviço: TV por assinatura
//                        003 - Assinatura de serviço: provimento de acesso à Internet
//                        004 - Assinatura de serviço: multim ídia
//                        099 - Assinatura de serviço: outras assinaturas
//                        100 - Habilitação de servi ço: telefonia
//                        101 - Habilitação de servi ço: comunicação de dados
//                        102 - Habilitação de servi ço: TV por assinatura
//                        103 - Habilitação de servi ço: provimento de acesso à Internet
//                        104 - Habilitação de servi ço: multim ídia
//                        199 - Habilitação de servi ço: outras habilitações
//                        200 - Serviço medido: chamadas locais
//                        201 - Serviço medido: chamadas interurbanas no Estado
//                        202 - Serviço medido: chamadas interurbanas para fora do Estado
//                        203 - Serviço medido: chamadas internacionais
//                        204 - Serviço medido: números especiais (0300, 0500, 0600, 0800, etc.)
//                        205 - Serviço medido: comunicação de dados
//                        206 - Serviço medido: chamadas originadas em roaming
//                        207 - Serviço medido: chamadas recebidas em roaming
//                        208 - Serviço medido: adicional de chamada
//                        209 - Serviço medido: provimento de acesso à Internet
//                        210 - Serviço medido: pay-per-view (programaçã o de TV)
//                        211 - Serviço medido: mensagem SMS
//                        212 - Serviço medido: mensagem MMS
//                        213 - Serviço medido: outras mensagens
//                        214 - Serviço medido: multimídia
//                        299 - Serviço medido: outros serviços
//                        300 - Serviço pré-pago: cart ão p/ telefonia fixa
//                        301 - Serviço pré-pago: cart ão p/ telefonia móvel
//                        302 - Serviço pré-pago: cart ão p/ de acesso à Internet
//                        303 - Serviço pré-pago: ficha telef ônica
//                        304 - Serviço pré-pago: recarga de créditos de telefonia fixa
//                        305 - Serviço pré-pago: recarga de créditos de telefonia móvel
//                        306 - Serviço pré-pago: recarga de créditos de acesso à Internet
//                        399 - Serviço pré-pago: outras cobranças
//                        400 - Serviço adicional: substituição de número, troca de aparelho, emissão de 2ª via de conta, conta detalhada, etc.
//                        401 - Serviço facilidade: identificador de chamadas, caixa postal, transferência temporária, nãoperturbe, etc.
//                        699 - Outros serviços
//                        700 - Locação: aparelho telefônico
//                        701 - Locação: aparelho identificador de chamadas
//                        702 - Locação: modem
//                        703 - Locação: rack
//                        704 - Locação: sala/recinto
//                        705 - Locação: roteador
//                        706 - Locação: servidor
//                        707 - Locação: multiplexador
//                        708 - Locação: decodificador/conversor
//                        799 - Locação: outras locações
//                        800 - Cobrança: serviço de terceiros
//                        801 - Cobrança: seguro
//                        802 - Cobrança: financiamento de equipamento/serviços
//                        803 - Cobrança: juros de mora por atraso de pagamento
//                        804 - Cobrança: multa de mora por atraso de pagamento
//                        805 - Cobrança: conta de meses anteriores
//                        899 - Cobrança: outras cobranças
//                        900 - Crédito: impugnação de servi ços
//                        901 - Crédito: ajuste de conta
//                        999 - Crédito: outros créditos
Function vClassificacao_Item_SCT(CISCT: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Classificacao_Item_SCT : array[1..59] of String[3] = ('000','001','002','003','004','099','100','101','102','103','104','199','200','201',
                                                  '202','203','204','205','206','207','208','209','210','211','212','213','214','299',
                                                  '300','301','302','303','304','305','306','399','400','401','699','700','701','702',
                                                  '703','704','705','706','707','708','799','800','801','802','803','804','805','899',
                                                  '900','901','999');
 begin
 Result := False;
 if Trim(CISCT) = '' then
  Exit;

 try
  for i := 0 to High(Classificacao_Item_SCT) do
   begin
    inttostr(i);  
    if CISCT = Classificacao_Item_SCT[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Tabela Livros Fiscais

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param LV    Livros Fiscais

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------------------------- Tabela Livros Fiscais ------------------------------
//        Livros_Fiscais: 01 - Livro Registro de Entradas (RE)
//                        02 - Livro Registro de Saídas (RS)
//                        2D - Mapa-Resumo de Equipamento Emissor de Cupom Fiscal (MR-ECF)
//                        04 - Livro Registro do Selo Especial de Controle (RSEC)
//                        05 - Livro Registro de Impressão de Documentos Fiscais (RIDF)
//                        06 - Livro Registro de Utilização de Documentos Fiscais (RUDF)
//                        07 - Livro Registro de Inventário (RI)
//                        08 - Livro Registro de Apuração do IPI (RAIPI) 8 IPI
//                        09 - Livro Registro de Apuração do ICMS (RAICMS)
Function vLivros_Fiscais(LV: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Livros_Fiscais : array[1..9] of String[3] = ('01','02','2D','04','05','06','07','08','09');
 begin
 Result := False;
 if Trim(LV) = '' then
  Exit;

 try
  for i := 0 to High(Livros_Fiscais) do
   begin
    inttostr(i);  
    if LV = Livros_Fiscais[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tabela Ajustes da Apuração do ICMS

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param AAICMS    Ajustes da Apuração do ICMS

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------------------- Tabela Ajustes da Apuração do ICMS -----------------------
//  Ajuste_Apuracao_ICMS: 000 - Débito: saídas internas
//                        001 - Débito: saídas interestaduais
//                        002 - Débito: saídas internas com ICMS da substituição tributária
//                        003 - Débito: saídas interestaduais com ICMS da substituição tributária
//                        100 - Outro débito: diferencial de alíquotas
//                        101 - Outro débito: transferência de crédito
//                        102 - Outro débito: pagamento de débito próprio
//                        103 - Outro débito: pagamento de débito de terceiro
//                        104 - Outro débito: compensação de débito
//                        105 - Outro débito: imputaçã o de crédito
//                        106 - Outro débito: transferência de saldo credor para estabelecimento com inscrição centralizadora
//                        107 - Outro débito: transferência de saldo devedor de estabelecimento com inscrição centralizada
//                        108 - Outro débito: diferimento do ICMS
//                        109 - Outro débito: diferimento do ICMS da importação
//                        110 - Outro débito: microempresas
//                        111 - Outro débito: ICMS resultante da alíquota adicional dos itens incluídos no Fundo de Combate à Pobreza
//                        112 - Outro débito: diferencial do gatilho da substituição tributária regulada por pauta fiscal
//                        199 - Outros débitos
//                        200 - Estorno de crédito: entradas internas
//                        201 - Estorno de crédito: entradas interestaduais
//                        202 - Estorno de crédito: entradas internas com ICMS da substituiçã o tributária
//                        203 - Estorno de crédito: entradas interestaduais com ICMS da substituição tributária
//                        204 - Estorno de crédito: entradas do exterior
//                        205 - Estorno de crédito: complemento relativo à diferença do ICMS da substituição tributária calculado a menor
//                        206 - Estorno de crédito: complemento do diferencial de alíquotas do ICMS relativo a aquisições para o ativo fixo
//                        207 - Estorno de crédito: complemento do diferencial de alíquotas do ICMS relativo a aquisições para uso e/ou consumo
//                        208 - Estorno de crédito: complemento do diferencial de alíquotas do ICMS relativo a outras situações
//                        209 - Estorno de crédito: complemento relativo a antecipação tributária
//                        210 - Estorno de crédito: complemento relativo a programa de benef ício fiscal
//                        220 - Estorno de crédito: mercadorias n ão-tributadas
//                        221 - Estorno de crédito: mercadorias para uso/consumo
//                        222 - Estorno de crédito: bens do ativo fixo
//                        223 - Estorno de crédito: mercadorias deterioradas
//                        224 - Estorno de crédito: transferência de saldo credor específico decorrente de programa de benefício fiscal
//                        225 - Estorno de crédito: mercadorias p/ Suframa
//                        299 - Outros estornos de créditos
//                        300 - Crédito: entradas internas
//                        301 - Crédito: entradas interestaduais
//                        302 - Crédito: entradas internas com ICMS da substituição tributária
//                        303 - Crédito: entradas interestaduais com ICMS da substituição tributária
//                        304 - Crédito: entradas do exterior
//                        305 - Crédito: complemento relativo à diferença do ICMS da substituiçã o tributária calculado a menor
//                        306 - Crédito: complemento do diferencial de alíquotas do ICMS relativo a aquisições para o ativo fixo
//                        307 - Crédito: complemento do diferencial de alíquotas do ICMS relativo a aquisições para uso e/ou consumo
//                        308 - Crédito: complemento do diferencial de alíquotas do ICMS relativo a outras situa ções
//                        309 - Crédito: complemento relativo a antecipação tributária
//                        310 - Crédito: complemento relativo a programa de benefício fiscal
//                        399 - Crédito: saldo credor de período anterior
//                        400 - Outro crédito: bens do ativo fixo
//                        401 - Outro crédito: substituição tributária pelo frete pago a autônomo em operação de entrada
//                        402 - Outro crédito: entradas internas com ICMS da substituição tributária
//                        403 - Outro crédito: entradas interestaduais com ICMS da substituição tributária
//                        404 - Outro crédito: ressarcimento de valor de ICMS da substituição tributária
//                        405 - Outro crédito: complemento relativo à diferença do ICMS da substituiçã o tributária calculado a menor
//                        406 - Outro crédito: complemento do diferencial de alíquotas do ICMS relativo a aquisições para o ativo fixo
//                        407 - Outro crédito: complemento do diferencial de alíquotas do ICMS relativo a aquisições para uso e/ou consumo
//                        408 - Outro crédito: complemento do diferencial de alíquotas do ICMS relativo a outras situações
//                        409 - Outro crédito: complemento relativo a antecipação tributária
//                        410 - Outro crédito: complemento relativo a programa de benefício fiscal
//                        420 - Outro crédito: recuperação de crédito
//                        421 - Outro crédito: restituiçã o do indébito
//                        422 - Outro crédito: incentivo fiscal
//                        423 - Outro crédito: crédito presumido/outorgado
//                        424 - Outro débito: diferimento do ICMS
//                        425 - Outro débito: diferimento do ICMS da importação
//                        426 - Outro crédito: manutenção do crédito
//                        427 - Outro crédito: imputação de créditos
//                        428 - Outro crédito: transferência de créditos
//                        429 - Outro crédito: transferência de saldo credor de estabelecimento com inscrição centralizada
//                        430 - Outro crédito: transferência de saldo devedor para estabelecimento com inscrição centralizadora
//                        431 - Outro crédito: transferência de saldo credor espec ífico decorrente de programa de benefício fiscal
//                        432 - Outro crédito: utilização de crédito acumulado
//                        433 - Outro crédito: d ébito não-pago no vencimento
//                        434 - Outro crédito: mercadorias para a Suframa
//                        435 - Outro crédito: auto de infração
//                        499 - Outros créditos
//                        500 - Estorno de débito: saídas internas
//                        501 - Estorno de débito: saídas interestaduais
//                        502 - Estorno de débito: saídas internas com ICMS da substituição tributária
//                        503 - Estorno de débito: saídas interestaduais com ICMS da substituição tributária
//                        504 - Estorno de débito: devolução de mercadorias
//                        599 - Outros estornos de débitos
//                        600 - Dedução: programa de incentivo à cultura
//                        601 - Dedução: programa de benefício fiscal
//                        699 - Outras deduções
Function vAjuste_Apuracao_ICMS(AAICMS: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Ajuste_Apuracao_ICMS : array[1..85] of String[3] = ('000','001','002','003','100','101','102','103','104','105','106','107','108','109',
                                                     '110','111','112','199','200','201','202','203','204','205','206','207','208','209',
                                                     '210','220','221','222','223','224','225','299','300','301','302','303','304','305',
                                                     '306','307','308','309','310','399','400','401','402','403','404','405','406','407',
                                                     '408','409','410','420','421','422','423','424','425','426','427','428','429','430',
                                                     '431','432','433','434','435','499','500','501','502','503','504','599','600','601',
                                                     '699');
 begin
 Result := False;
 if Trim(AAICMS) = '' then
  Exit;

 try
  for i := 0 to High(Ajuste_Apuracao_ICMS) do
   begin
    inttostr(i);  
    if AAICMS = Ajuste_Apuracao_ICMS[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Ajustes das Obrigações do ICMS a Recolher

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param AICMS_REC    Ajustes das Obrigações do ICMS a Recolher

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//-------------- Tabela Ajustes das Obrigações do ICMS a Recolher --------------
//     Ajuste_ICMS_REC: 000 ICMS normal a recolher
//                      001 ICMS da substituição tributária pelas entradas
//                      002 ICMS da substituição tributária pelas saídas para o Estado
//                      003 Antecipação do diferencial de alíquotas do ICMS
//                      004 Antecipação do ICMS da importação
//                      005 Antecipação tributária
//                      006 ICMS resultante da alíquota adicional dos itens incluídos no Fundo de Combate à Pobreza
//                      090 Outras obrigações do ICMS
//                      999 ICMS da substituição tributária pelas saídas para outro Estado
Function vAjuste_ICMS_REC(AICMS_REC: String): Boolean; stdcall; export;
var
 i: Byte;
const
 Ajuste_ICMS_REC : array[1..9] of String[3] = ('000','001','002','003','004','005','006','090','999');
 begin
 Result := False;
 if Trim(AICMS_REC) = '' then
  Exit;

 try
  for i := 0 to High(Ajuste_ICMS_REC) do
   begin
    inttostr(i);
    if AICMS_REC = Ajuste_ICMS_REC[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Perfil de apresentação do arquivo fiscal:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_PERFIL    Perfil de apresentação do arquivo fiscal:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}


//------ Perfil de apresentação do arquivo fiscal: ------
//IND_PERFIL =  A - Perfil A
//              B - Perfil B
//              C - Perfil C
Function vIND_PERFIL(IND_PERFIL: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_PERFIL) = '' then
  Exit;
 try
  if IND_PERFIL[1] in ['A','B','C'] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Indicador de tipo de atividade

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_ATIV   Indicador de tipo de atividade

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Indicador de tipo de atividade: ------
//IND_ATIV =  0 - Industrial ou equiparado a industrial
//            1 - Outros
Function vIND_ATIV(IND_ATIV: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_ATIV) = '' then
  Exit;
 try
 if IND_ATIV[1] in ['0','1'] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Codigo da Finalidade do arquivo

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_FIN    Codigo da Finalidade do arquivo

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Codigo da Finalidade do arquivo: ------
//COD_FIN =  0 - Remessa do arquivo original
//           1 - Remessa do arquivo substituto
Function vCOD_FIN(COD_FIN: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(COD_FIN) = '' then
  Exit;
 try
  if COD_FIN[1] in ['0','1'] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Movimentação física do ITEM/PRODUTO:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_MOV   Indicador de movimento:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Movimentação física do ITEM/PRODUTO: ------
//IND_MOV =  0- SIM (Bloco com dados informados)
//           1- NÃO (Bloco sem dados informados)
Function vIND_MOV(IND_MOV: String): Boolean; stdcall; export;
var
tmp: String;
begin
 Result := False;
 tmp:= RemoveNumInvalid(IND_MOV);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrtoInt(tmp[1]) in [0,1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tipo do item - Atividades Industriais, Comerciais e Serviços:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param TIPO_ITEM    Tipo do item - Atividades Industriais, Comerciais e Serviços

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Tipo do item - Atividades Industriais, Comerciais e Serviços: ------
//TIPO_ITEM =  00 - Mercadoria para Revenda;
//             01 - Matéria-Prima;
//             02 - Embalagem;
//             03 - Produto em Processo;
//             04 - Produto Acabado;
//             05 - Subproduto;
//             06 - Produto Intermediário;
//             07 - Material de Uso e Consumo;
//             08 - Ativo Imobilizado;
//             09 - Serviços;
//             10 - Outros insumos;
//             99 - Outras
Function vTIPO_ITEM(TIPO_ITEM: String): Boolean; stdcall; export;
var
 i: Byte;
 tmp: String[2];
const
 ATIPO_ITEM : array[1..12] of String[2] = ('00','01','02','03','04','05','06','07','08','09','10','99');
 begin
 tmp := RemoveNumInvalid(TIPO_ITEM);
 Result := False;
 if Trim(tmp) = '' then         // todo verificar esta passagem de parametro
  Exit;

 try
  for i := 0 to High(ATIPO_ITEM) do
   begin
    inttostr(i);
    if tmp = ATIPO_ITEM[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de operação:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_OPER    Indicador do tipo de operação:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de operação: ------
//IND_OPER = 0 - Entrada
//           1 - Saída
Function vIND_OPER(IND_OPER: String): Boolean; stdcall; export;
var
 tmp: String;
begin
 Result := False;
  tmp := RemoveNumInvalid(IND_OPER);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
 end;
{*------------------------------------------------------------------------------
 Indicador do tipo de pagamento:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_PGTO    Indicador do tipo de pagamento:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Indicador do tipo de pagamento: ------
//IND_PGTO =  0- À vista;
//            1- A prazo;
//            9- Sem pagamento

Function vIND_PGTO(IND_PGTO: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_PGTO) = '' then
  Exit;
 try
  if StrToInt(IND_PGTO[1]) in [0, 1, 9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Documento de importação:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param COD_DOC_IMP   Documento de importação:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Documento de importação: ------
//COD_DOC_IMP =  0 - Declaração de Importação;
//               1 - Declaração Simplificada de Importação.
Function vCOD_DOC_IMP(COD_DOC_IMP: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(COD_DOC_IMP) = '' then
  Exit;
 try
  if StrToInt(COD_DOC_IMP[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador de período de apuração do IPI:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_APUR   Indicador de período de apuração do IPI:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador de período de apuração do IPI: ------
//IND_APUR =     0 - Mensal
//               1 - Decendial
Function vIND_APUR(IND_APUR: String): Boolean; stdcall; export;
var
tmp: String;
begin
 Result := False;
 tmp:= RemoveNumInvalid(IND_APUR);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Tipo de produto

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param TP_PROD   Tipo de produto

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}

//------ Tipo de produto: ------
//TP_PROD =    0- Similar;
//             1- Genérico;
//             2- Ético ou de marca;

Function vTP_PROD(TP_PROD: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(TP_PROD) = '' then
  Exit;
 try
  if StrToInt(TP_PROD[1]) in [0, 1, 2] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
  Indicador do tipo da arma de fogo:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_ARM    Indicador do tipo da arma de fogo:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo da arma de fogo:------
//IND_ARM =    0- Uso permitido;
//             1- Uso restrito;

Function vIND_ARM(IND_ARM: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_ARM) = '' then
  Exit;
 try
  if StrToInt(IND_ARM[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;


{*------------------------------------------------------------------------------
 Indicador do tipo de operação com veículo:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_VEIC_OPER    Indicador do tipo de operação com veículo:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de operação com veículo:------
//IND_VEIC_OPER = 0- Venda para concessionária;
//                1- Faturamento direto;
//                2- Venda direta;
//                3- Venda da concessionária;
//                9- Outros

Function vIND_VEIC_OPER(IND_VEIC_OPER: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_VEIC_OPER) = '' then
  Exit;
 try
  if StrToInt(IND_VEIC_OPER[1]) in [0, 1, 2, 3, 9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo do frete da operação de redespacho:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_FRT_RED    Indicador do tipo do frete da operação de redespacho:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo do frete da operação de redespacho:------
//IND_FRT_RED =    0 - Sem redespacho;
//                 1 - Por conta do emitente;
//                 2 - Por conta do destinatário;
//                 9 - Outros.

Function vIND_FRT_RED(IND_FRT_RED: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_FRT_RED) = '' then
  Exit;
 try
  if StrToInt(IND_FRT_RED[1]) in [0, 1, 2, 9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo da navegação:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_NAV    Indicador do tipo da navegação

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo da navegação:------
//IND_NAV =   0- Interior;
//            1- Cabotagem;


Function vIND_NAV(IND_NAV: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_NAV) = '' then
  Exit;
 try
  if StrToInt(IND_NAV[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de tarifa aplicada:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_TFA    Indicador do tipo de tarifa aplicada:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de tarifa aplicada:------
//IND_TFA =  0- Exp.;
//           1- Enc.;
//           2- C.I.;
//           9- Outra

Function vIND_TFA(IND_TFA: String): Boolean; stdcall; export;
var
tmp:String;
begin
 Result := False;
 tmp:=RemoveNumInvalid(IND_TFA);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp[1]) in [0, 1, 2, 9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de receita

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_REC   Indicador do tipo de receita

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de receita: ------
//IND_REC =   0- Receita própria - serviços prestados;
//            1- Receita própria - cobrança de débitos;
//            2- Receita própria - venda de mercadorias;
//            3- Receita própria - venda de serviço pré-pago;
//            4- Outras receitas próprias;
//            5- Receitas de terceiros (co-faturamento);
//            9- Outras receitas de terceiros


Function vIND_REC(IND_REC: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_REC) = '' then
  Exit;
 try
  if (IND_REC[length(IND_REC)] <> '|') then
   IND_REC := IND_REC + '|';

  if StrToInt(copy(IND_REC,0,(length(IND_REC)-1))) in [0, 1, 2, 3, 4, 5 , 9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador de movimento

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_MOV_ST   Indicador de movimento

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador de movimento:------
//IND_MOV_ST =   0- Sem operações com ST;
//               1- Com operações de ST;


Function vIND_MOV_ST(IND_MOV_ST: String): Boolean; stdcall; export;
var
tmp:String;
begin
 Result := False;
 tmp:= RemoveNumInvalid(IND_MOV_ST);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador do tipo de ajuste

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_AJ    Indicador do tipo de ajuste

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador do tipo de ajuste:------
//IND_AJ =   0- Ajuste a débito;
//           1- Ajuste a crédito


Function vIND_AJ(IND_AJ: String): Boolean; stdcall; export;

begin
 Result := False;
 IND_AJ:=RemoveNumInvalid(IND_AJ);
 if Trim(IND_AJ) = '' then
  Exit;
 try
  if StrToInt(IND_AJ[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador da origem do documento vinculado ao ajuste:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_DOC    Indicador da origem do documento vinculado ao ajuste

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador da origem do documento vinculado ao ajuste:------
//IND_DOC =  0 - Processo Judicial;
//           1 - Processo Administrativo;
//           2 - PER/DCOMP;
//           9 - Outros.

Function vIND_DOC(IND_DOC: String): Boolean; stdcall; export;
begin
 Result := False;
 IND_DOC:=RemoveNumInvalid(IND_DOC);
 if Trim(IND_DOC) = '' then
  Exit;
 try
  if StrToInt(IND_DOC[1]) in [0, 1, 2, 9] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Indicador de propriedade/posse do item

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_PROP    Indicador de propriedade/posse do item

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Indicador de propriedade/posse do item: ------
//IND_PROP =   0- Item de propriedade do informante e em seu poder;
//             1- Item de propriedade do informante em posse de terceiros;
//             2- Item de propriedade de terceiros em posse do informante;

Function vIND_PROP(IND_PROP: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_PROP) = '' then
  Exit;
 try
  if StrToInt(IND_PROP[1]) in [0, 1, 2] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Informe o tipo de documento:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param IND_DOC    Informe o tipo de documento:

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Informe o tipo de documento:------
//IND_DOC =  0- Declaração de Exportação;;
//           1- Declaração Simplificada de Exportação.


Function vIND_DOC_Informe_tipo_documento(IND_DOC: String): Boolean; stdcall; export;
begin
 Result := False;
 if Trim(IND_DOC) = '' then
  Exit;
 try
  if StrToInt(IND_DOC[1]) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Informação do tipo de conhecimento de transporte

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param TP_CHC    Informação do tipo de conhecimento de transporte

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Informação do tipo de conhecimento de transporte : ------
//TP_CHC = 01 - AWB;
//         02 - MAWB;
//         03 - HAWB;
//         04 - COMAT;
//         06 - R. EXPRESSAS;
//         07 - ETIQ. REXPRESSAS;
//         08 - HR. EXPRESSAS;
//         09 - AV7;
//         10 - BL;
//         11 - MBL;
//         12 - HBL;
//         13 - CRT;
//         14 - DSIC;
//         16 - COMAT BL;
//         17 - RWB;
//         18 - HRWB;
//         19 - TIF/DTA;
//         20 - CP2;
//         91 - NÂO IATA;
//         92 - MNAO IATA;
//         93 - HNAO IATA;
//         99 - OUTROS.
Function vTP_CHC(TP_CHC: String): Boolean; stdcall; export;
var
 i: Byte;
const
 ATP_CHC : array[1..22] of String[2] = ('01','02','03','04','06','07','08','09','10','11', '12', '13', '14','16', '17', '18', '19', '20','91','92', '93', '99');
 begin
 Result := False;
 if Trim(TP_CHC) = '' then         // todo verificar esta passagem de parametro
  Exit;
 TP_CHC := RemoveNumInvalid(TP_CHC);
 try
  for i := 0 to High(ATP_CHC) do
   begin
    inttostr(i);
    if TP_CHC = ATP_CHC[i] then
     begin
      Result := true;
      break;
     end;
   end;
 except
  Result := False;
 end;
end;

{*------------------------------------------------------------------------------
 Identificador de medição:

 @Author Victory Fernandes
 @Version 09/10/2009 11:28:11 Última alteração por  Jacira Cardeal

 @param TIPO_MEDICAO    Identificador de medição

 @return Booleano indicando se parâmetro informando é válido ou não
-------------------------------------------------------------------------------}
//------ Identificador de medição:------
//TIPO_MEDICAO =  0- analógico;
//                1- digital


Function vTIPO_MEDICAO(TIPO_MEDICAO: String): Boolean; stdcall; export;
var
 tmp: String;
begin
 Result := False;
  tmp := RemoveNumInvalid(TIPO_MEDICAO);
 if Trim(tmp) = '' then
  Exit;
 try
  if StrToInt(tmp) in [0, 1] then
   Result := True;
 except
  Result := False;
 end;
 end;


end.


