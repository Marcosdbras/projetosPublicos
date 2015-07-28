unit unTEF;

interface

uses
  Windows,
  SysUtils,
  Controls,
  Forms,
  IdGlobal,
  DateUtils,
  Dialogs,
  Mensagem;


type
  // ---< Registro TEFParam >---
  regTEFParam = record
                NSU           : integer;
                end;

  // ---< Funções Genéricas >---
  function RightFromPos (sString: string; iPos: integer) : string;
  function RemoveAspas(sString: string): String;
  function Decimais(numero: string): integer;

  // ---< Procedures usadas internamente >---
  procedure TEFVerificaArquivosPendentes;
  procedure TEFVerificaTEFTmp(sExibeErro: string);
  procedure TEFVerificaTEFParam;
  procedure TEFProximoNSU;
  procedure TEFCriaArquivoREQIntPos001;
  procedure TEFVerificaIntPosSts(sOperacao:string; iNSU: integer);
  procedure TEFVerificaIntPos001(sOperacao:string; iNSU: integer);
  procedure TEFGravaOperacao(sOperacao:string);
  procedure TEFImprimeTransacao(sTipo:string);
  // ---< Procedures bloquear teclado >---
  procedure BlockInput(ABlockInput : boolean); stdcall; external 'USER32.DLL';
  // ---< Procedures usadas pelo sistema de automação >---
  procedure TEFLimpaVariaveis;
  procedure TEFConfirmaOperacao;
  procedure TEFNaoConfirmaOperacao;
  procedure TEFVerificaOperacaoPendente;
  procedure TEFVerificaGerenciadorAtivo;
  procedure TEFModoAdministrativo;
  procedure TEFPedidoAutorizacaoCartao;
  procedure TEFPedidoAutorizacaoCheque;
  procedure TEFVendaCartao;
  procedure TEFVendaCheque;
  procedure TEFCancelaTransacao;
  procedure TEFFechaOperacao;

var
  // ---< Variáveis Gerais >---
  iTEFTempoEspera    : integer = 7; // Tempo em seg. para esperar resposta do GP
  iTEFTempoMensagem  : integer = 5; // Tempo em seg. para exibição de mensagens
  iTEFProximoNSU     : integer = 0; // Nº sequencial único da transação gerado pelo TEFDelphi
  iTEFTecban         : integer = 0; // 0 = Usar o GP das redes - 1 = Usar o GP Tecban / 2 Hipercard
  sTEFPath           : string  = 'C:\TEF_DIAL\';
  sTEFTemp_Path      : string  = 'C:\DataSAC\TEF_DIAL\';
  sTEFRetorno        : string;
  sTEFResposta       : string;

  // ---< Variáveis da transação >---
  sTEFDoctoVinculado : string;    // 002-000  DOCUMENTO FISCAL VINCULADO
  sTEFValorTotal     : string;    // 003-000	VALOR TOTAL
  sTEFMoeda          : string;    // 004-000	MOEDA - "0" = Real / "1" = Dollar
  sTEFCMC7           : string;    // 005-000	CMC-7
  sTEFTipoDePessoa   : string;    // 006-000	TIPO DE PESSOA - "F"ísica / "J"uridica
  sTEFDoctoPessoa    : string;    // 007-000	DOCUMENTO DA PESSOA
  sTEFDataDoCheque   : string;    // 008-000	DATA DO CHEQUE
  sTEFStatusTransac  : string;    // 009-000	STATUS DA TRANSAÇÃO
  sTEFNomeDaRede     : string;    // 010-000	NOME DA REDE
  sTEFTipoTransac    : string;    // 011-000	TIPO DA TRANSAÇÃO
  sTEFNSUTransacao   : string;    // 012-000	NÚMERO DA TRANSAÇÃO - NSU
  sTEFCodAutorizacao : string;    // 013-000	CÓDIGO DE AUTORIZAÇÃO DA TRANSAÇÃO
  sTEFNumeroLote     : string;    // 014-000	NÚMERO DO LOTE DA TRANSAÇÃO
  sTEFTsTransacaoH   : string;    // 015-000	TIMESTAMP DA TRANSAÇÃO - HOST
  sTEFTsTransacaoL   : string;    // 016-000	TIMESTAMP DA TRANSAÇÃO - LOCAL
  sTEFTipoParcela    : string;    // 017-000	TIPO PARCELAMENTO
  sTEFDataTransacao  : string;    // 022-000	DATA DA TRANSAÇÃO - COMPROVANTE
  sTEFHoraTransacao  : string;    // 023-000	HORA DA TRANSAÇÃO - COMPROVANTE
  sTEFDataPreDatado  : string;    // 024-000	DATA PRÉ-DATADO
  sTEFNumTransCanc   : string;    // 025-000	NÚMERO DA TRANSAÇÃO CANCELADA - NSU
  sTEFTsTransCanc    : string;    // 026-000	TIMESTAMP DA TRANSAÇÃO CANCELADA
  sTEFFinalizacao    : string;    // 027-000	FINALIZAÇÃO
  sTEFMensOperador   : string;    // 030-000	TEXTO ESPECIAL OPERADOR
  sTEFMensCliente    : string;    // 031-000	TEXTO ESPECIAL CLIENTE
  sTEFAutenticacao   : string;    // 032-000	AUTENTICAÇÃO
  sTEFBanco          : string;    // 033-000	BANCO
  sTEFAgencia        : string;    // 034-000	AGÊNCIA
  sTEFAgenciaDC      : string;    // 035-000	AGÊNCIA - DC
  sTEFCtaCorrente    : string;    // 036-000	CONTA CORRENTE
  sTEFCtaCorrenteDC  : string;    // 037-000	CONTA CORRENTE - DC
  sTEFNumCheque      : string;    // 038-000	NÚMERO DO CHEQUE
  sTEFNumChequeDC    : string;    // 039-000	NÚMERO DO CHEQUE  - DC
  sTEFAdministradora : string;    // 040-000	NOME DA ADMINISTRADORA

implementation

uses principal, modulo, unECF, funcoes, venda;

var
  // ---< Arquivo TEFParam >---
  TEFParam : file of regTEFParam;
  Param : regTEFParam;
  NomeParam : string;

  texto_msg : pansichar;

// ---< Retorna os caracteres a direita a partir da posição iPos >---
function RightFromPos (sString: string; iPos: integer) : string;
begin
  result := Trim(Copy(sString,iPos,(Length(sString)-iPos+1)));
end;  {RightFromPos}

// ---< Remove as aspas iniciais e finais da string >---
function RemoveAspas(sString: string): String;
begin
  Result := Trim(sString);
  if IsDelimiter('"', Result, 1) then
    Delete(Result,1,1);
  if IsDelimiter('"', Result, Length(Result)) then
    Delete(Result,Length(Result),1);
end; {RemoveAspas}

function Decimais(numero: string): integer;
begin
  result := Length(FloatToStr(Frac(StrToFloat(numero)))) - 2;
end;

// ---< Exibe uma mensagem por iTempo segundos sem intervenção do usuário >---
procedure TEFMensagem (sLinha1,sLinha2,sLinha3,sLinha4: string);
var
  fMensagem : TfrmMensagem;
begin
  fMensagem := TfrmMensagem.Create(Application);
  fMensagem.Show;
  fMensagem.lblLinha1.Caption := sLinha1;
  fMensagem.lblLinha2.Caption := sLinha2;
  fMensagem.lblLinha3.Caption := sLinha3;
  fMensagem.lblLinha4.Caption := sLinha4;
  fMensagem.Refresh;
  Sleep(iTEFTempoMensagem*1000);
  fMensagem.Free;
end;  {TEFMensagem}

// ---< Retorna os segundos da hora >---
function SegundosDaHora(const DateTime: TDateTime): Integer;
var
   H, M, S, MS: Word;
begin
   DecodeTime(DateTime, H, M, S, MS);
   Result := (H * 3600) + (M * 60) + S;
end;

// ---< Verifica se existe algum arquivo temporário indevidamente >---
procedure TEFVerificaArquivosPendentes;
var
  aArquivo : TextFile;
begin

  sTEFRetorno := '0';

  try
    if FileExists(sTEFPath + 'REQ\IntPos.Tmp') then
      DeleteFile(sTEFPath + 'REQ\IntPos.Tmp');

    if FileExists(sTEFPath + 'REQ\IntPos.001') then
      DeleteFile(sTEFPath + 'REQ\IntPos.001');

    if FileExists(sTEFPath + 'RESP\IntPos.Sts') then
      DeleteFile(sTEFPath + 'RESP\IntPos.Sts');

    if FileExists(sTEFTemp_Path + 'TEF.Imp') then
      DeleteFile(sTEFTemp_Path + 'TEF.Imp');

    if FileExists(sTEFTemp_Path + 'TEFParc.Txt') then
      DeleteFile(sTEFTemp_Path + 'TEFParc.Txt');

    if FileExists(sTEFTemp_Path + 'IntPos.001') then
    begin
      if FileExists(sTEFPath +'RESP\IntPos.001') = false then
      begin
        CopyFile(pansichar(sTEFTemp_Path + 'IntPos.001'),
          pansichar(sTEFPath + 'RESP\IntPos.001'),false);
      end;
      DeleteFile(sTEFTemp_Path + 'InsPos.001');
    end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('a');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {VerificaArquivosPendentes}

// ---< Limpa as variáveis do TEF >---
procedure TEFLimpaVariaveis;
VAR F : textfile;
begin
  sTEFDoctoVinculado := '';
  sTEFValorTotal     := '';
  sTEFMoeda          := '';
  sTEFCMC7           := '';
  sTEFTipoDePessoa   := '';
  sTEFDoctoPessoa    := '';
  sTEFDataDoCheque   := '';
  sTEFStatusTransac  := '';
  sTEFNomeDaRede     := '';
  sTEFTipoTransac    := '';
  sTEFNSUTransacao   := '';
  sTEFCodAutorizacao := '';
  sTEFNumeroLote     := '';
  sTEFTsTransacaoH   := '';
  sTEFTsTransacaoL   := '';
  sTEFTipoParcela    := '';
  sTEFDataTransacao  := '';
  sTEFHoraTransacao  := '';
  sTEFDataPreDatado  := '';
  sTEFNumTransCanc   := '';
  sTEFTsTransCanc    := '';
  sTEFFinalizacao    := '';
  sTEFMensOperador   := '';
  sTEFMensCliente    := '';
  sTEFAutenticacao   := '';
  sTEFBanco          := '';
  sTEFAgencia        := '';
  sTEFAgenciaDC      := '';
  sTEFCtaCorrente    := '';
  sTEFCtaCorrenteDC  := '';
  sTEFNumCheque      := '';
  sTEFNumChequeDC    := '';
  sTEFAdministradora := '';






  case iTEFTecban of
  0 : sTEFPath := 'C:\TEF_DIAL\';
  1 : sTEFPath := 'C:\TEF_DISC\';
  2 : sTEFPath := 'C:\HiperTEF\HiperLINK\';
  end;


end;  {TEFLimpaVariaveis}

// ---< Verifica e abre arquivo TEF.tmp >---
// sExibeErro : 'S" = exibe mensagem, 'N' = Não exibe
procedure TEFVerificaTEFTmp(sExibeErro:string);
var
  aIntPos001 : TextFile;
  sNomeArquivo : string;
  f: textfile;
begin

  sTEFRetorno := '0';
  try
    sNomeArquivo := sTEFPath + 'RESP\IntPos.001';
    if FileExists(sNomeArquivo) then
      begin
        AssignFile(aIntPos001,sNomeArquivo);
        Reset(aIntPos001);
        if EOF(aIntPos001) then
        begin
          if bHabilita_msg then showmessage('b');
          sTEFRetorno := '1';
        end;
        Close(aIntPos001);
      end
    else
    begin
      if bHabilita_msg then showmessage('c');
      sTEFRetorno := '1';
    end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('d');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

  if (sTEFRetorno <> '0') and (sExibeErro = 'S') then
    application.messagebox('Não existe nenhuma operação pendente!','Atenção!',mb_ok+MB_ICONWARNING);

end;  {TEFVerificaTEFTmp}

// ---< Verifica se existe o arquivo TEFParam e cria se necessário >---
procedure TEFVerificaTEFParam;
begin

  sTEFRetorno := '0';
  NomeParam :=  sTEFTemp_Path + 'TEFDelphi.dat';

  try
    Assign(TEFParam,NomeParam);
    // ---> Se arquivo não existe, cria
    if not FileExists(NomeParam) then
      begin
        Rewrite(TEFParam);
        Param.NSU := 0;
        Write(TEFParam,Param);
        Close(TEFParam);
      end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('e');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {VerificaTEFParam}

// ---< Retorna o próximo NSU para arquivos de mensagens >---
procedure TEFProximoNSU;
begin

  NomeParam :=  sTEFTemp_Path + 'TEFDelphi.dat';

  try
    TEFVerificaTEFParam;
    if sTEFRetorno = '0' then
      begin
        Assign(TEFParam,NomeParam);
        Reset(TEFParam);
        Read(TEFParam,Param);
        Inc(Param.NSU);
        Seek(TEFParam,0);
        Write(TEFParam,Param);
        Close(TEFParam);
        iTEFProximoNSU := Param.NSU;
      end
    else
    begin
      if bHabilita_msg then showmessage('f');
      sTEFRetorno := '1';
    end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('g');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFProximoNSU}

// ---< Cria o arquivo IntPos.tmp para receber comandos >---
procedure TEFCriaArquivoREQIntPos001;
var
  IntPosTmp : TextFile;
begin

  sTEFRetorno := '0';

  try
    AssignFile(IntPosTmp,sTEFPath + 'REQ\IntPos.tmp');
    Rewrite(IntPosTmp);
    //TESTE 04
//    writeln(intpostmp,'555-555');
    CloseFile(IntPosTmp);

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('h');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFCriaArquivoREQIntPos001}

// ---< Verifica se alguma operação ficou pendente (queda do sistema) >---
procedure TEFVerificaOperacaoPendente;
var
  aArquivo : TextFile;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaArquivosPendentes;
    if sTEFRetorno = '0' then
      begin
        TEFVerificaTEFTmp('N');
        if sTEFRetorno = '0' then
        begin
          TEFVerificaGerenciadorAtivo;
          TEFNaoConfirmaOperacao;
        end;
      end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('i');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVerificaOperacaoPendente}

// ---< Verifica a integridade do arquivo resposta IntPos.Sts >---
procedure TEFVerificaIntPosSts (sOperacao:string; iNSU:integer);
var
  IntPosSts : TextFile;
  sNomeArquivo, sLinha : string;
  iInicio, iFim, iTempo : integer;
  tempo_gp : integer;
begin

  sTEFRetorno := '0';
  try
    Screen.Cursor := crHourGlass;
    sNomeArquivo := sTEFPath + 'RESP\IntPos.Sts';


    AssignFile(IntPosSts,sNomeArquivo);

    tempo_gp := 0;
    repeat // LOOPING --> ESPERAR 7 SEGUNDOS OU VERIFICAR SE EXISTE O ARQUIVO INTPOS.STS
      sleep(1000);
      Inc(tempo_gp);
      application.ProcessMessages;
    until (FileExists(sNomeArquivo) or (tempo_gp > iTEFTempoEspera));



    if FileExists(sNomeArquivo) then
      begin
        Reset(IntPosSts);
        if not EOF(IntPosSts) then
          begin
            ReadLn(IntPosSts, sLinha);
            if Trim(sLinha) <> '000-000 = ' + sOperacao then
            begin
              if bHabilita_msg then showmessage('j');
              sTEFRetorno := '1';
            end;
            ReadLn(IntPosSts, sLinha);
            if Copy(Trim(sLinha),1,7) = '001-000'then
            begin
              if StrToInt(RightFromPos(sLinha,11)) <> iNSU then
              begin
                if bHabilita_msg then showmessage('l');
                sTEFRetorno := '1';
              end;
            end;
          end
        else
        begin
          if bHabilita_msg then showmessage('m');
          sTEFRetorno := '1';
        end;
        CloseFile(IntPosSts);
        DeleteFile(sNomeArquivo);
      end
    else
    begin
      if bHabilita_msg then showmessage('n');
      sTEFRetorno := '1';
    end;
    Screen.Cursor := crDefault;
  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('o');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVerificaIntPosSts}

// ---< Verifica a integridade do arquivo retorno IntPos.001 >---
procedure TEFVerificaIntPos001 (sOperacao: string; iNSU: integer);
var
  bRet : boolean;
  IntPos001, TEFParc, F : TextFile;
  sNomeArquivo, sLinha, sDoctoRet, sValorRet, sLinhas, sParcela : string;
  sRedeRet, sVencParcela, sValorParcela, sNSUParcela : string;
  iParcelas, i : integer;
  TEXTO : STRING;
  linha28 : string;
  bArquivo_igual : boolean;
begin
  sTEFRetorno := '0';

  try
    Screen.Cursor := crHourGlass;
    sDoctoRet := '';
    sValorRet := '';
    sRedeRet := '';
    sNomeArquivo := sTEFPath + 'RESP\IntPos.001';

    bArquivo_Igual := false;


    repeat
      if FileExists(sNomeArquivo) then
      begin
        try
          // aguardar 1,5 segundos para que o arquivo retornado possa ser liberado
          sleep(1500);
          AssignFile(IntPos001,sNomeArquivo);
          Reset(IntPos001);
          while not EOF(IntPos001) do
          begin
            ReadLn(IntPos001, sLinha);
            if Copy(Trim(sLinha),1,7) = '001-000' then
            begin
              // verificar se o numero do 001-000 é igual ao exigido
              // ficar fazendo o looping ateh q o arquivo seja igual
              if StrToInt(RightFromPos(sLinha,11)) <> iNSU then
              begin
                closefile(IntPos001);
                DeleteFile(sNomeArquivo);
                barquivo_igual := false;
                break;
              end
              else
              begin
                closefile(IntPos001);
                barquivo_igual := true;
                break;
              end;
            end;
          end;
        except
          sleep(5000);
        end;
      end;
    until
      FileExists(sNomeArquivo) and bArquivo_Igual;





    try
      if FileExists(sNomeArquivo) then
      begin

        repeat
          copyfile(pansichar(sTEFPath + 'RESP\IntPos.001'),pansichar(sTEFTemp_Path+'IntPos.001'),false);
        until
          FileExists(sTEFTemp_Path+'IntPos.001');


        AssignFile(IntPos001,sNomeArquivo);
        Reset(IntPos001);

        if not EOF(IntPos001) then
          begin
            ReadLn(IntPos001, sLinha);
            if Trim(sLinha) <> '000-000 = ' + sOperacao then
            begin
              if bHabilita_msg then showmessage('p');
              sTEFRetorno := '1';
            end;
            ReadLn(IntPos001, sLinha);
            if Copy(Trim(sLinha),1,7) = '001-000' then
              if StrToInt(RightFromPos(sLinha,11)) <> iNSU then
              begin
                 if bHabilita_msg then showmessage('q');
                 sTEFRetorno := '1';
              end;

            if sTEFRetorno = '0' then
              repeat
                ReadLn(IntPos001, sLinha);
                if Copy(Trim(sLinha),1,7) = '002-000' then
                  sTEFDoctoVinculado := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '003-000' then
                  sTEFValorTotal := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '004-000' then
                  sTEFMoeda := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '005-000' then
                  sTEFCMC7 := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '006-000' then
                  sTEFTipoDePessoa := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '007-000' then
                  sTEFDoctoPessoa := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '008-000' then
                  sTEFDataDoCheque := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '009-000' then
                  sTEFStatusTransac := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '010-000' then
                  sTEFNomeDaRede := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '011-000' then
                  sTEFTipoTransac := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '012-000' then
                  sTEFNSUTransacao := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '013-000' then
                  sTEFCodAutorizacao := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '014-000' then
                  sTEFNumeroLote := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '015-000' then
                  sTEFTsTransacaoH := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '016-000' then
                  sTEFTsTransacaoL := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '017-000' then
                  sTEFTipoParcela := RightFromPos(sLinha,11);


                // ---> Se existe parcelamento
                if Copy(Trim(sLinha),1,7) = '018-000' then
                  begin
                    iParcelas := StrToInt(RightFromPos(sLinha,11));
                    AssignFile(TEFParc,sTEFTemp_Path + 'TEFParc.txt');
                    Rewrite(TEFParc);
                    for i := 1 to iParcelas do
                      begin
                        if i < 10 then
                          sParcela := '0' + IntToStr(i)
                        else
                          sParcela := IntToStr(i);
                        sVencParcela := '';
                        sValorParcela := '';
                        sNSUParcela := '';
                        ReadLn(IntPos001, sLinha);
                        if Copy(Trim(sLinha),1,3) = '019' then
                          sVencParcela := RightFromPos(sLinha,11);
                        ReadLn(IntPos001, sLinha);
                        if Copy(Trim(sLinha),1,3) = '020' then
                          sValorParcela := RightFromPos(sLinha,11);
                        ReadLn(IntPos001, sLinha);
                        if Copy(Trim(sLinha),1,3) = '021' then
                          sNSUParcela := RightFromPos(sLinha,11);
                        while Length(sValorParcela) < 12 do
                          sValorParcela := sValorParcela + ' ';
                        while Length(sNSUParcela) < 12 do
                          sNSUParcela := sNSUParcela + ' ';
                        if (sParcela <> '') and
                           (sVencParcela <> '') and
                           (sValorParcela <> '') and
                           (sNSUParcela <> '') then
                           WriteLn(TEFParc,sParcela + sVencParcela + sValorParcela + sNSUParcela);
                      end;
                    Close(TEFParc);
                  end;

                if Copy(Trim(sLinha),1,7) = '022-000' then
                  sTEFDataTransacao := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '023-000' then
                  sTEFHoraTransacao := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '024-000' then
                  sTEFDataPreDatado := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '025-000' then
                  sTEFNumTransCanc := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '026-000' then
                  sTEFTsTransCanc := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '027-000' then
                  sTEFFinalizacao := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '028-000' then
                begin
                  sLinhas := RightFromPos(sLinha,11);
                  linha28 := RightFromPos(sLinha,11);
                end;
                if Copy(Trim(sLinha),1,7) = '030-000' then
                  sTEFMensOperador := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '031-000' then
                  sTEFMensCliente := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '032-000' then
                  sTEFAutenticacao := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '033-000' then
                  sTEFBanco := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '034-000' then
                  sTEFAgencia := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '035-000' then
                  sTEFAgenciaDC := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '036-000' then
                  sTEFCtaCorrente := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '037-000' then
                  sTEFCtaCorrenteDC := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '038-000' then
                  sTEFNumCheque := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '039-000' then
                  sTEFNumChequeDC := RightFromPos(sLinha,11);
                if Copy(Trim(sLinha),1,7) = '040-000' then
                  sTEFAdministradora := RightFromPos(sLinha,11);
              until EOF(IntPos001);
          end
        else
        begin
          if bHabilita_msg then showmessage('r');
          sTEFRetorno := '1';
        end;
      end
      else
      begin
        if bHabilita_msg then showmessage('ra');
        sTEFRetorno := '1';
      end;
    except
      on E:Exception do
      begin
        if bHabilita_msg then
        begin
          showmessage(e.Message);
        end;
        sTEFRetorno := '1';
        Exit;
      end;
    end;

    CloseFile(IntPos001);

    Screen.Cursor := crDefault;

    if Trim(sTEFMensOperador) <> '' then
      begin


        if sTEFDoctoVinculado <> '' then
          sDoctoRet := 'Docto No: '+ Trim(sTEFDoctoVinculado);
        if sTEFValorTotal <> '' then
          sValorRet := 'Valor: '+ formatfloat('###,###,##0.00',StrToInt(sTEFValorTotal)/100);
        if sTEFNomeDaRede <> '' then
          sRedeRet := 'Rede: '+ sTEFNomeDaRede;
        if sTEFStatusTransac <> '0' then
          sTEFMensOperador := sTEFMensOperador + ' - Status ' + sTEFStatusTransac;



        if (sTEFStatusTransac <> '0') or (sLinhas = '0') then
        begin
          if linha28 = '0' then
          begin

            texto_msg := pansichar('' + #13#10 +
                        '' + #13#10 +
                        '' + #13#10 +
                        sTEFMensOperador);
            application.messagebox(texto_msg,'Atenção',mb_ok+mb_iconWarning);
          end
          else
          begin
           texto_msg := pansichar(
                        sRedeRet + #13#10 +
                        sDoctoRet + #13#10 +
                        sValorRet + #13#10 +
                        sTEFMensOperador);

            application.messagebox(texto_msg,'Atenção',mb_ok+mb_iconWarning);

          end;
        end
        else
        begin

//          TEFMensagem(sRedeRet,sDoctoRet,sValorRet,sTEFMensOperador);
          TEFMensagem('','','',sTEFMensOperador);
        end;
      end;

    if sTEFStatusTransac <> '0' then
      begin
        if bHabilita_msg then showmessage('s');
        sTEFRetorno := '1';
        DeleteFile(sNomeArquivo);
      end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('t');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVerificaIntPos001}

// ---< Grava a operação no arquivo IntPos.001 >---
procedure TEFGravaOperacao (sOperacao : string);
var
  bRet : boolean;
  IntPosTmp, IntPos001 : TextFile;
  sLinha : string;
begin
  sTEFRetorno := '0';

  try
    TEFCriaArquivoREQIntPos001; // 5 passo

    if sTEFRetorno = '0' then
      begin

        // ---< Verifica se existe operação pendente >---
        if (sOperacao = 'CNF') or (sOperacao = 'NCN') then
          begin
            TEFVerificaTEFTmp('S');
            if sTEFRetorno = '0' then
              begin
                AssignFile(IntPos001,sTEFPath + 'RESP\IntPos.001');
                Reset(IntPos001);
                Repeat
                  ReadLn(IntPos001,sLinha);
                  if Copy(Trim(sLinha),1,7) = '002-000' then
                    sTEFDoctoVinculado := RightFromPos(sLinha,11);
                  if Copy(Trim(sLinha),1,7) = '010-000' then
                    sTEFNomeDaRede := RightFromPos(sLinha,11);
                  if Copy(Trim(sLinha),1,7) = '012-000' then
                    sTEFNSUTransacao := RightFromPos(sLinha,11);
                  if Copy(Trim(sLinha),1,7) = '027-000' then
                    sTEFFinalizacao := RightFromPos(sLinha,11);
                until EOF(IntPos001);

                Close(IntPos001);
                DeleteFile(sTEFPath + 'RESP\IntPos.001');
              end;
          end;

        AssignFile(IntPosTmp,sTEFPath + 'REQ\IntPos.tmp');
        Append(IntPosTmp);
        TEFProximoNSU();

        WriteLn(IntPosTmp,('000-000 = ' + sOperacao));
        WriteLn(IntPosTmp,('001-000 = ' + IntToStr(iTEFProximoNSU)));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CRT') or
           (sOperacao = 'CNC') or
           (sOperacao = 'CNF') or
           (sOperacao = 'NCN') then
           if Trim(sTEFDoctoVinculado) <> '' then
             WriteLn(IntPosTmp,('002-000 = ' + sTEFDoctoVinculado));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CRT') or
           (sOperacao = 'CNC') then
          if Trim(sTEFValorTotal) <> '' then
            WriteLn(IntPosTmp,('003-000 = ' + sTEFValorTotal));

        if (sOperacao = 'CRT') then
          if Trim(sTEFMoeda) <> '' then
            WriteLn(IntPosTmp,('004-000 = ' + sTEFMoeda));






        if (sOperacao = 'CHQ') or
           (sOperacao = 'CNC') then
          begin
            if Trim(sTEFCMC7) <> '' then
              WriteLn(IntPosTmp,('005-000 = ' + sTEFCMC7));
            if Trim(sTEFTipoDePessoa) <> '' then
              WriteLn(IntPosTmp,('006-000 = ' + sTEFTipoDePessoa));
            if Trim(sTEFDoctoPessoa) <> '' then
              WriteLn(IntPosTmp,('007-000 = ' + sTEFDoctoPessoa));
            if Trim(sTEFDataDoCheque) <> '' then
              WriteLn(IntPosTmp,('008-000 = ' + sTEFDataDoCheque));
          end;

        if (sOperacao = 'CNC') or
           (sOperacao = 'CNF') or
           (sOperacao = 'NCN') then
          begin
            if Trim(sTEFNomeDaRede) <> '' then
              WriteLn(IntPosTmp,('010-000 = ' + sTEFNomeDaRede));
            if Trim(sTEFNSUTransacao) <> '' then
              WriteLn(IntPosTmp,('012-000 = ' + sTEFNSUTransacao));
          end;

        if (sOperacao = 'CNC') then
          begin
            if Trim(sTEFDataTransacao) <> '' then
              WriteLn(IntPosTmp,('022-000 = ' + sTEFDataTransacao));
            if Trim(sTEFHoraTransacao) <> '' then
              WriteLn(IntPosTmp,('023-000 = ' + sTEFHoraTransacao));
          end;

        if (sOperacao = 'CNF') or
           (sOperacao = 'NCN') then
          if Trim(sTEFFinalizacao) <> '' then
            WriteLn(IntPosTmp,('027-000 = ' + sTEFFinalizacao));

        if (sOperacao = 'CHQ') or
           (sOperacao = 'CNC') then
          begin
            if Trim(sTEFBanco) <> '' then
              WriteLn(IntPosTmp,('033-000 = ' + sTEFBanco));
            if Trim(sTEFAgencia) <> '' then
              WriteLn(IntPosTmp,('034-000 = ' + sTEFAgencia));
            if Trim(sTEFAgenciaDC) <> '' then
              WriteLn(IntPosTmp,('035-000 = ' + sTEFAgenciaDC));
            if Trim(sTEFCtaCorrente) <> '' then
              WriteLn(IntPosTmp,('036-000 = ' + sTEFCtaCorrente));
            if Trim(sTEFCtaCorrenteDC) <> '' then
              WriteLn(IntPosTmp,('037-000 = ' + sTEFCtaCorrenteDC));
            if Trim(sTEFNumCheque) <> '' then
              WriteLn(IntPosTmp,('038-000 = ' + sTEFNumCheque));
            if Trim(sTEFNumChequeDC) <> '' then
              WriteLn(IntPosTmp,('039-000 = ' + sTEFNumChequeDC));
          end;

       (**************  CAMPO PARA TESTE DE CERTIFICACAO **************)
       (************** PEDRO ******************************************)
//        WRITELN(IntPosTmp,'777-777 = TESTE REDECARD');




        WriteLn(IntPosTmp,'999-999 = 0');
        Close(IntPosTmp);
        bRet := CopyFileTo(sTEFPath + 'REQ\IntPos.tmp',sTEFPath + 'REQ\IntPos.001');
        DeleteFile(sTEFPath + 'REQ\IntPos.tmp');

        // ---> Verifica se houve resposta do GP

        TEFVerificaIntPosSts(sOperacao,iTEFProximoNSU);


        // ---> Verifica arquivo de retorno do GP
        if (sTEFRetorno = '0') and
           ((sOperacao = 'ADM') or
            (sOperacao = 'CHQ') or
            (sOperacao = 'CRT') or
            (sOperacao = 'CNC')) then
            TEFVerificaIntPos001(sOperacao,iTEFProximoNSU);

      end;  // sTEFRetorno = '0'

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('u');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFGravaOperacao}




//********************************



// ---< Imprime a transação >---
//      sTipo : 'V' = Cupom vinculado, 'R" = Relatório Gerencial
procedure TEFImprimeTransacao(sTipo:string);
var
  TEFImp : TextFile;
  sLinha : string;
  bContinua, bParar : boolean;
begin

  TRY
    sTEFRetorno := '0';
    try
      if sTipo = 'V' then // Cupom Não Fiscal Vinculado
      begin
        // abrir o comprovante nao fiscal vinculado

        sNumero_Cupom := Zerar(somenteNumero(cECF_COO_Nao_Fiscal(iecf_modelo)),6);

{        showmessage('sforma_temp: '+sForma_Temp+#13+
                    'sTefValorTotal: '+floattostr(StrToFloat(sTEFValorTotal)/100)+#13+
                    'sTEFDoctoVinculado: '+sTEFDoctoVinculado);
}

        sMsg := cECF_Abre_CNFV(iECF_Modelo,sForma_Temp,(StrToFloat(sTEFValorTotal)/100),sTEFDoctoVinculado);
        if sMsg <> 'OK' then
        begin
          BlockInput(false);


          if application.MessageBox('Impressora não responde!'+#13+
                                    'Tentar novamente?',
                                    'Abertura CNFV',
                                    mb_yesno+mb_iconWarning) = idYes then
          begin
            BlockInput(true);
            Application.ProcessMessages;
            sleep(5000);
            sTipo := 'R';
            sTefRetorno := '1';
          end
          else
          begin
            sTefRetorno := '1';
          end;
        end
        else
        begin
          try
            // apos abrir o comprovante nao fiscal, armazenar o mesmo no banco de dados
            with frmModulo do
            begin
              if sNumero_Cupom <> '000000' then
              begin
                spNao_Fiscal.close;
                spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
                spNao_fiscal.ParamByName('ecf').asstring := sECF_Serial;
                spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
                spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
                spNao_fiscal.ParamByName('indice').asstring := 'CC';
                spNao_fiscal.ParamByName('Descricao').asstring := 'CNFV';
                spNao_fiscal.ParamByName('valor').asfloat := rValor_Total_Cartao;
                spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
                spNao_fiscal.ParamByName('GNF').asstring := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
                spNao_fiscal.ParamByName('GRG').clear;
                spNao_fiscal.ParamByName('CDC').AsString := cECF_Numero_Contador_Comprovante_CD(iECF_Modelo);
                spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CC';
                spnao_fiscal.Prepare;
                spNao_Fiscal.Execute;
              end;
            end;
          except

          end;

          // bloqueia teclado
          BLOCKINPUT(true);

          // rodar o arquivo de retorno para imprimir o cnfv
          AssignFile(TEFImp,sTEFTemp_Path + 'TEF.Imp');
          Reset(TEFImp);
          Repeat
            ReadLn(TEFImp,sLinha);
            if not EOF(TEFImp) then
            begin
              if sLinha = '' then sLinha := '   ';
              // envia o comando para o ecf
              sMsg := cECF_Usa_CNFV(iECF_Modelo,sLinha);
              // verifica o resultado do comando enviado ao ecf
              if sMsg <> 'OK' then
              begin
                // ecf retornou erro
                // desbloquear o teclado
                BlockInput(false);
                Application.ProcessMessages;

                if application.MessageBox('Impressora não responde!'+#13+
                                          'Tentar novamente?',
                                          'Impressão CNFV',
                                          mb_yesno+mb_iconWarning) = idYes then
                begin
                  BlockInput(true);
                  Application.ProcessMessages;
                  sleep(5000);
                  sTipo := 'R';
                  sTefRetorno := '1';
                  break;
                end
                else
                begin
                  sTefRetorno := '1';
                  break;
                end;
              end;
            end;
          until EOF(TEFImp);
          // fechar o arquivo
          Close(TEFImp);



          if sTefRetorno = '0' then
          begin
            // fechar o comprovante
            sMsg := cECF_Fecha_CNFV(iECF_Modelo);
            // verificar retorno do ECF
            if sMsg <> 'OK' then
            begin
              // desbloquear o teclado
              BlockInput(false);
              if application.MessageBox('Impressora não responde!'+#13+
                                        'Tentar novamente?',
                                        'Fechamento CNFV',
                                        mb_yesno+mb_iconWarning) = idYes then
              begin
                BlockInput(true);
                Application.ProcessMessages;
                sleep(5000);
                sTipo := 'R';
                sTefRetorno := '1';
              end
              else
              begin
                sTipo := '';
                sTefRetorno := '1';
              end;
            end;
          end;
        end;
      end;


      (*****************************************
       Caso o CNFV tenha retornado erro, ativar
       a impressao do relatorio gerencial
      ******************************************)

      if sTipo = 'R' then // Relatório gerencial
      begin
        // Fechar CNFV caso esteja aberto


        sTEFRetorno := '0';



        // repetir enquanto nao seja parado
        repeat
          cECF_Fecha_CNFV(iECF_Modelo);
          // Abrir o Relatorio Gerencial
          sMsg := cECF_Abre_Gerencial(iECF_Modelo,'');
          sNumero_Cupom := zerar(somenteNumero(cECF_Numero_Cupom(iECF_Modelo)),6);
          bContinua := true;
          bParar := true;
          // rodar o arquivo de retorno para imprimir o cnfv
          AssignFile(TEFImp,sTEFTemp_Path + 'TEF.Imp');
          Reset(TEFImp);
          Repeat
            ReadLn(TEFImp,sLinha);
            if not EOF(TEFImp) then
            begin
              if sLinha = '' then sLinha := '   ';
              // bloqueia teclado
              BLOCKINPUT(TRUE);
              // envia o comando para o ecf
              sMsg := cECF_Usa_Gerencial(iECF_Modelo,sLinha);
              // verifica o resultado do comando enviado ao ecf
              if sMsg <> 'OK' then
              begin
                // ecf retornou erro
                // desbloquear o teclado
                BlockInput(false);
                if application.MessageBox('Impressora não responde!'+#13+
                                          'Tentar novamente?',
                                          'Comprovante TEF',
                                          mb_yesno+mb_iconWarning) = idYes then
                begin
                  BlockInput(true);
                  Application.ProcessMessages;
                  sleep(5000);
                  bParar := false;
                  bContinua := false;
                  sTefRetorno := '0';
                  break;
                end
                else
                begin
                  bContinua := false;
                  sTefRetorno := '1';
                  bParar := true;
                  break;
                end;
              end;
            end;
          until EOF(TEFImp) or (bcontinua = false);
          // fechar o arquivo
          Close(TEFImp);

          // fechar o gerencial
          if sTefRetorno = '0' then
          begin
            repeat
              sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
              if sMsg <> 'OK' then
              begin
                  BlockInput(false);
                  if application.MessageBox('Impressora não responde!'+#13+
                                            'Tentar novamente?',
                                            'Fechamento do Gerencial',
                                            mb_yesno+mb_iconWarning) = idYes then
                  begin
                    BlockInput(true);
                    Application.ProcessMessages;
                    sleep(5000);
                    sMsg := cECF_Fecha_Gerencial(iECF_modelo);
                  end
                  else
                  begin
                    bContinua := false;
                    sTefRetorno := '1';
                    bParar := true;
                    break;
                  end;
              end
              else
              begin
                try
                // registrar Gerencial no banco de dados
                with frmmodulo do
                begin
                  if sNumero_Cupom <> '000000' then
                  begin
                    spNao_Fiscal.Close;
                    spNao_fiscal.parambyname('codigo').asstring := codifica_cupom;
                    spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
                    spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
                    spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
                    spNao_fiscal.ParamByName('indice').asstring := 'RG';
                    spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
                    spNao_fiscal.ParamByName('valor').asfloat := 0;
                    spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
                    spNao_fiscal.ParamByName('GNF').asstring := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
                    spNao_fiscal.ParamByName('GRG').asstring := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
                    spNao_fiscal.ParamByName('CDC').Clear;
                    spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
                    spNao_Fiscal.Prepare;
                    spNao_Fiscal.Execute;
                  end;
                end;
                except
                end;
              end;
            until sMsg = 'OK';
          end;
        until bParar = true;
        // liberar o teclado
        BlockInput(false);
      end;
    except
      on E: Exception do
        begin
          BlockInput(false);
          sTEFRetorno := '1';
          Exit;
        end;
    end;
  FINALLY
    BlockInput(FALSE);
  END;

end;  {TEFImprimeTransacao}


// ---< Executa a confirmação da transação por meio de cartão >---
procedure TEFConfirmaOperacao;
var
  IntPos001, TEFImp : TextFile;
  iLinhas : integer;
  sLinha : string;
  i : integer;
  ESP : BOOLEAN;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaTEFTmp('S');

    if sTEFRetorno = '0' then
      begin
        iLinhas := 0;
        ESP := TRUE;
        AssignFile(IntPos001,sTEFPath + 'RESP\IntPos.001');
        Reset(IntPos001);
        AssignFile(TEFImp,sTEFTemp_Path + 'TEF.Imp');
        Rewrite(TEFImp);
        for i := 1 to 2 do
        begin

          Repeat
            ReadLn(IntPos001,sLinha);
            if Copy(Trim(sLinha),1,3) = '029' then
              begin
                WriteLn(TEFImp,RemoveAspas(RightFromPos(sLinha,11)));
                Inc(iLinhas);
              end;
          until EOF(IntPos001);

          IF ESP THEN
          BEGIN
            writeln(tefimp,'   ');
            writeln(tefimp,'   ');
            writeln(tefimp,'   ');
            ESP := FALSE;
          END;
          reset(Intpos001);
        end;
        Close(IntPos001);
        writeln(tefimp,'   ');
        writeln(tefimp,'   ');
        writeln(tefimp,'   ');
        Close(TEFImp);
        if iLinhas = 0 then
          DeleteFile(sTEFTemp_Path + 'TEF.Imp');
      end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('v');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFConfirmaOperacao}

// ---< Executa a não confirmação da transação por meio de cartão >---
procedure TEFNaoConfirmaOperacao;
var
  IntPos001 : TextFile;
  sLinha, sDocto, sValor, sRede, sTextoValor : string;
  abc : string;
begin

  sTEFRetorno := '0';

  try

    TEFVerificaTEFTmp('S');

    if sTEFRetorno = '0' then
      begin
        AssignFile(IntPos001,sTEFPath + 'RESP\IntPos.001');
        Reset(IntPos001);
        Repeat
          ReadLn(IntPos001,sLinha);
          if Copy(Trim(sLinha),1,7) = '012-000' then
            sDocto := RightFromPos(sLinha,11);
          if Copy(Trim(sLinha),1,7) = '003-000' then
            sValor := RightFromPos(sLinha,11);
          if Copy(Trim(sLinha),1,7) = '010-000' then
            sRede := RightFromPos(sLinha,11);
          if copy(Trim(sLinha),1,7) = '028-000' then
            abc := RightFromPos(sLinha,11);

        until EOF(IntPos001);
        Close(IntPos001);
        if sValor <> '' then
          sTextoValor := 'Valor:' + Formatfloat('###,###,##0.00',StrToInt(sValor)/100)
        else
          sTextoValor := '';

          texto_msg := pansichar('Cancelada a transação:'+#13+#10+
                       ('Rede: ' + Trim(sRede))+#13+#10+
                       ('Doc No: '+Trim(sDocto))+#13+#10+
                       sTextoValor);

          if (trim(sRede ) <> '') or (trim(sdocto)<>'') or (trim(stextovalor) <> '') then
          begin
            BlockInput(false);
            application.messagebox(texto_msg,'Atenção',mb_ok+mb_iconwarning);
            TEFGravaOperacao('NCN');
          end
          else
          begin
            if FileExists( sTEFPath+'RESP\IntPos.001' ) then
              DeleteFile (sTEFPath+'RESP\IntPos.001');
          end;

        if (FileExists(sTEFTemp_Path + 'IntPos.001')) then
           DeleteFile(sTEFTemp_Path + 'IntPos.001');


      end

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('x');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFNaoConfirmaOperacao}


// ---< Verifica se o Gerenciador Padrão está ativo >---
procedure TEFVerificaGerenciadorAtivo;
var
  Ativo001 : TextFile;
  iRet : integer;
  sLinha : string;
  itentativas : integer;
  texto1, texto2 : string;
begin
  sTEFRetorno := '0';
  try
    Screen.Cursor := crHourGlass;
    if not DirectoryExists(sTEFTemp_Path) then
      CreateDir(sTEFTemp_Path);

      TEFGravaOperacao('ATV');  // 4 passo
      if sTEFRetorno <> '0' then
      begin

        repeat
          application.messagebox('Gerenciador Padrão não está ativo!','Atenção',mb_ok+MB_ICONWARNING);
          TEFGravaOperacao('ATV');  // 4 passo
        until stefretorno = '0';







      {

        try
          application.messagebox('Gerenciador Padrão não está ativo'+
                                 ' e será ativado automaticamente!',
                                 'Atenção!',mb_ok+mb_iconwarning);

          case iTEFTecban of
          0:
          begin
            iRet := WinExec(pChar('C:\TEF_DIAL\TEF_DIAL.EXE'),SW_HIDE);
            texto1 := 'C:\TEF_DIAL\RESP\ATIVO.001';
            texto2 := 'C:\TEF_DIAL\RESP\INTPOS.STS';
          end;
          1:
          begin
            iRet := WinExec(pChar('C:\TEF_DISC\TEF_DISC.EXE'),SW_HIDE);
            texto1 := 'C:\TEF_DISC\RESP\ATIVO.001';
            texto2 := 'C:\TEF_DISC\RESP\INTPOS.STS';
            sTEFRetorno := '0';
          end;
          2:
          begin
            iRet := WinExec(pChar('C:\HiperTEF\HiperTEF.EXE'),SW_HIDE);
            texto1 := 'C:\HiperTEF\RESP\ATIVO.001';
            texto2 := 'C:\HiperTEF\RESP\INTPOS.STS';
            sTEFRetorno := '0';
          end;
          end;


          if Iteftecban = 0 then
          begin
           for iTentativas := 1 to 7 do
           begin
             if ( FileExists( TEXTO1 ) ) or ( FileExists( TEXTO2 ) ) then
             begin
               sTEFRetorno := '0';
               break;
             end
             Else
             begin
              application.messagebox('Gerenciador Padrão não está ativo'+
                                     ' e será ativado automaticamente!',
                                     'Atenção!',mb_ok+mb_iconwarning);
              iRet := WinExec(pChar('C:\TEF_DIAL\TEF_DIAL.EXE'),SW_HIDE);
              texto1 := 'C:\TEF_DIAL\RESP\ATIVO.001';
              texto2 := 'C:\TEF_DIAL\RESP\INTPOS.STS';
             end;
             Sleep( 1000 );
             if ( iTentativas = 7 ) then
             begin
                Application.MessageBox( 'Não foi possível ativar o gerenciador padrão!'+
                                        ' Favor verificar!','Erro',MB_Iconerror + MB_OK );
                stefretorno := '1';
                Break;
             end;
           end;
          end;
        except
          on E: Exception do
          begin
            application.messagebox('Gerenciador Padrão NÃO foi ativado!',
                                   'Erro',mb_ok+mb_iconwarning);
            sTEFRetorno := '1';
            Exit;
          end;
        end;
        }


      end;



  except
    on E: Exception do
    begin
      if bHabilita_msg then showmessage('z');
      sTEFRetorno := '1';
      Exit;
    end;
  end;
  Screen.Cursor := crDefault;

end;  {TEFVerificaGerenciadorAtivo}


// ---< Executa o Módulo Administrativo do GP >---
procedure TEFModoAdministrativo;
begin

  sTEFRetorno := '0';

  try
      TEFVerificaGerenciadorAtivo;

    if sTEFRetorno = '0' then
      TEFGravaOperacao('ADM');
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('y');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFModoAdministrativo}

// ---< Executa pedido de autorização para transação por meio de cartão >---
procedure TEFPedidoAutorizacaoCartao;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaGerenciadorAtivo;  // 3 passo
    if sTEFRetorno = '0' then
      TEFGravaOperacao('CRT');

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('k');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFPedidoAutorizacaoCartao}

// ---< Executa pedido de autorização para transação por meio de cheque >---
procedure TEFPedidoAutorizacaoCheque;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaGerenciadorAtivo;
    if sTEFRetorno = '0' then
      TEFGravaOperacao('CHQ');

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('w');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFPedidoAutorizacaoCheque}

// ---< Executa a venda por meio de cartão >---
procedure TEFVendaCartao;
begin

  sTEFRetorno := '0';

  try
    TEFPedidoAutorizacaoCartao; // 2 passo
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('1');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVendaCartao}

// ---< Executa a venda por meio de cheque >---
procedure TEFVendaCheque;
begin

  sTEFRetorno := '0';

  try
    TEFPedidoAutorizacaoCheque;
    if sTEFRetorno = '0' then
    begin
      TEFConfirmaOperacao;
    end;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('2');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFVendaCheque}

// ---< Cancela Transação efetivada >---
procedure TEFCancelaTransacao;
begin

  sTEFRetorno := '0';

  try
    TEFVerificaGerenciadorAtivo;
    if sTEFRetorno = '0' then
      TEFGravaOperacao('CNC');
    if sTEFRetorno = '0' then
      TEFConfirmaOperacao;

  except
    on E: Exception do
      begin
        if bHabilita_msg then showmessage('3');
        sTEFRetorno := '1';
        Exit;
      end;
  end;

end;  {TEFCancelaTransacao}

// ---< Confirma e encerra a transação do TEF >---
procedure TEFFechaOperacao;
begin

  sTEFRetorno := '0';
  TEFGravaOperacao('CNF');
  if (sTEFRetorno = '0') and (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
  begin
    DeleteFile(sTEFTemp_Path + 'TEF.Imp');
  end;
  if (FileExists(sTEFTemp_Path + 'IntPos.001')) then
    DeleteFile(sTEFTemp_Path + 'IntPos.001');

end;  {TEFFechaOperacao}

end.
